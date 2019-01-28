package com.jiliguala.niuwa.module.guadou

import android.app.Activity
import android.content.Intent
import android.content.pm.ActivityInfo
import android.os.Bundle
import android.os.Handler
import android.support.v4.content.ContextCompat
import android.support.v7.widget.GridLayoutManager
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.text.Spannable
import android.text.SpannableStringBuilder
import android.text.TextPaint
import android.text.TextUtils
import android.text.method.LinkMovementMethod
import android.text.style.CharacterStyle
import android.text.style.ClickableSpan
import android.view.View
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.base.BaseMvpActivity
import com.jiliguala.niuwa.common.util.InstallStateChecker
import com.jiliguala.niuwa.common.util.xutils.ClickManager
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.amplitude.AmplitudePurchaseMgr
import com.jiliguala.niuwa.logic.amplitude.AmplitudeUtils
import com.jiliguala.niuwa.logic.bus.RxBus
import com.jiliguala.niuwa.logic.bus.event.AccountEvent
import com.jiliguala.niuwa.logic.bus.event.BaseEvent
import com.jiliguala.niuwa.logic.network.json.CouponListTemplate
import com.jiliguala.niuwa.logic.network.json.GuaDou
import com.jiliguala.niuwa.logic.network.json.GuaDouBundle
import com.jiliguala.niuwa.logic.network.json.PingPPPayResult
import com.jiliguala.niuwa.logic.prefixparse.PrefixParser
import com.jiliguala.niuwa.logic.prefixparse.PrefixParser.JLGL_CONSULTATION
import com.jiliguala.niuwa.logic.prefixparse.PrefixParser.JLGL_GUA_BEAN_RECORD
import com.jiliguala.niuwa.module.NewRoadMap.PurchasedGiftActivity
import com.jiliguala.niuwa.module.NewRoadMap.PurchasedGiftLandscapeActivity
import com.jiliguala.niuwa.module.guadou.adapter.GuaDouAdapter
import com.jiliguala.niuwa.module.guadou.presenter.RechargeGuaDouPresenter
import com.jiliguala.niuwa.module.interact.course.detail.view.ConfirmPayResultDialog
import com.jiliguala.niuwa.module.onboading.OnBoardingIntentHelper
import com.jiliguala.niuwa.module.onboading.WxBindActivity
import com.jiliguala.niuwa.module.pingplusplus.GuaDouPayDialog
import com.jiliguala.niuwa.module.pingplusplus.PayDialog
import com.jiliguala.niuwa.module.unit.fragment.OnItemClickListener
import com.jiliguala.niuwa.services.SystemMsgService
import com.pingplusplus.android.Pingpp
import kotlinx.android.synthetic.main.activity_recharge_gua_dou.*

class RechargeGuaDouActivity : BaseMvpActivity<RechargeGuaDouPresenter, GuaDouViewUI>(), GuaDouViewUI, OnItemClickListener, PayDialog.onPayClickListenr, PayDialog.CallBack {

    private lateinit var mLayout: RecyclerView.LayoutManager
    private lateinit var mAdapter: GuaDouAdapter
    private var mGuaDouBundle: GuaDouBundle? = null
    private var mChosenProd: GuaDou? = null

    private var mPayDialog: GuaDouPayDialog? = null
    private var mItemId: String? = null
    private var mPayResult: PingPPPayResult.Data? = null
    private var mConfirmPayResultDialog: ConfirmPayResultDialog? = null

    override fun createPresenter(): RechargeGuaDouPresenter {
        return RechargeGuaDouPresenter()
    }

    override fun getUi(): GuaDouViewUI {
        return this
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_recharge_gua_dou)
        setRecyclerViewLayoutManager()
        mAdapter = GuaDouAdapter(this)
        bundle_list.adapter = mAdapter
        back_icon.setOnClickListener { finish() }
        ClickManager.avoidMultiClick(record_recharge) {
            PrefixParser.handleSchemaJump(this, JLGL_GUA_BEAN_RECORD)
        }
        pay_confirm.setOnClickListener {
            presenter.reportRechargeClick(mChosenProd)
            presenter.recharge(mChosenProd)
        }
        choose_more.setOnClickListener {
            presenter.reportMoreRechargeClick()
            mAdapter.setGuaDouData(mGuaDouBundle?.topOptions, mChosenProd?.itemId)
            it.visibility = View.GONE
        }
        setRemarkTextStyle()
        presenter.reportRechargeView()
        addEventObserver()
        swipe_refresh.addOnRefreshListener {
            presenter.requestGuaDouState()
        }
        presenter.requestGuaDouState()
    }

    private fun addEventObserver() {
        subscriptions.add(RxBus.getDefault()
                .toObserverable(AccountEvent::class.java)
                .subscribe({ loginEvent ->
//JLGLLog.i(TAG, "login received, LoginEvent = %s", loginEvent)
                    when (loginEvent.eventType) {
                        BaseEvent.EventType.PURCHASE_LOGIN_SUCCESS -> {
                            hidePayPage()
                            presenter.requestGuaDouState()
                        }
                        BaseEvent.EventType.PURCHASE_BIND_WEIXIN -> testBindWx()
                    }
                }, { throwable -> JLGLLog.w(TAG, "error", throwable) }))
    }

    private fun testBindWx() {
        if (!InstallStateChecker.newInstance().checkWechatInstalled()) {
            goToMobilePage()
        } else {
            goWxBind()
        }
    }

    private fun goWxBind() {
        SystemMsgService.sendMessage("请绑定微信才能保存珍贵的学习记录哦")
        val intent = Intent(this, WxBindActivity::class.java)
        intent.flags = Intent.FLAG_ACTIVITY_SINGLE_TOP
        startActivity(intent)
    }


    private fun goToMobilePage() {
        SystemMsgService.sendMessage("请补充手机号才能保存珍贵的学习记录哦")
        val intent = OnBoardingIntentHelper.makeIntentForPurchaseCompletion(this, R.string.purchase_register_phone_sub_title, OnBoardingIntentHelper.PURCHASE_GET_CHARGE)
        startActivity(intent)
    }

    /**
     * Set RecyclerView's LayoutManager to the one given.
     */
    private fun setRecyclerViewLayoutManager() {
        var scrollPosition = 0

        // If a layout manager has already been set, get current scroll position.
        if (bundle_list.layoutManager != null) {
            scrollPosition = (bundle_list.layoutManager as LinearLayoutManager)
                    .findFirstCompletelyVisibleItemPosition()
        }

        mLayout = GridLayoutManager(this, SPAN_COUNT)

        with(bundle_list) {
            layoutManager = mLayout
            scrollToPosition(scrollPosition)
        }
    }

    private fun setRemarkTextStyle() {
        val builder = SpannableStringBuilder(remark_question.text)
        var start = remark_question.text.indexOf(RECHARGE_COMMON_PROBLEM)
        if (start > -1) {
            val questionClickableSpan = object : ClickableSpan() {
                override fun onClick(widget: View) {
//JLGLLog.d(TAG, "click common question")
                    PrefixParser.handleSchemaJump(this@RechargeGuaDouActivity, URL_RECHARGE_COMMON_PROBLEM)
                }

                override fun updateDrawState(ds: TextPaint?) {
                    super.updateDrawState(ds)
                    ds?.color = ContextCompat.getColor(this@RechargeGuaDouActivity, R.color.green_89)
                    ds?.isUnderlineText = false
                }
            }
            setSpan(builder, questionClickableSpan, start, start + RECHARGE_COMMON_PROBLEM.length, remark_question.text.length)
        }

        start = remark_question.text.indexOf(CONNECT_CONSULTATION)
        if (start > -1) {
            val serviceClickableSpan = object : ClickableSpan() {
                override fun onClick(widget: View) {
                    PrefixParser.handleSchemaJump(this@RechargeGuaDouActivity, JLGL_CONSULTATION)
                }

                override fun updateDrawState(ds: TextPaint?) {
                    super.updateDrawState(ds)
                    ds?.color = ContextCompat.getColor(this@RechargeGuaDouActivity, R.color.green_89)
                    ds?.isUnderlineText = false
                }
            }
            setSpan(builder, serviceClickableSpan, start, start + CONNECT_CONSULTATION.length, remark_question.text.length)
            remark_question.movementMethod = LinkMovementMethod.getInstance()
        }

        remark_question.text = builder
    }

    private fun setSpan(builder: SpannableStringBuilder, span: CharacterStyle, start: Int, end: Int, length: Int) {
        if (start >= 0 && end <= length && start < end) {
            builder.setSpan(span, start, end, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
        }
    }

    override fun onItemClick(position: Int) {
//JLGLLog.d(TAG, "choose item %d", position)
        mChosenProd = mGuaDouBundle?.topOptions?.get(position)
        presenter.reportRechargeItemClick(mChosenProd)
    }

    override fun onRequestDataSuccess(data: GuaDouBundle?, isLoadMore: Boolean) {
        swipe_refresh.refreshComplete()
        mGuaDouBundle = data
        mChosenProd = getChooseProd(mGuaDouBundle)
        balance.text = String.format(resources.getString(R.string.gua_dou_balance), data?.getDisplayBalance())
        data?.topOptions?.let {
            val count = SPAN_COUNT * 2
            if (it.size > count) {
                mAdapter.setGuaDouData(it.sliceArray(0 until count), mChosenProd?.itemId)
                choose_more.visibility = View.VISIBLE
            } else {
                mAdapter.setGuaDouData(it, mChosenProd?.itemId)
                choose_more.visibility = View.GONE
            }
            pay_confirm.visibility = View.VISIBLE
        }
    }

    private fun getChooseProd(bundle: GuaDouBundle?): GuaDou? {
        bundle?.topOptions?.forEach {
            if (it.itemId == bundle.defaultOption) {
                return it
            }
        }
        return null
    }

    override fun onRequestDataFail(ex: Throwable?, isLoadMore: Boolean) {
//JLGLLog.e(TAG, "fail to request gua dou", ex)
        swipe_refresh.refreshComplete()
        pay_confirm.visibility = View.GONE
    }

    override fun showPayPage(guaDou: GuaDou?) {
        if (guaDou != null) {
            if (mPayDialog == null) {
                mPayDialog = GuaDouPayDialog(this, guaDou.price.toString(), guaDou.itemId, PayDialog.REQUEST_CHARGE_USE_GET)
                mPayDialog?.setOnPayClickListener(this)
                mPayDialog?.setCallBack(this)
            } else {
                mPayDialog?.setItemId(guaDou.itemId)
                mPayDialog?.setMoneyAccount((guaDou.price / 100).toString())
            }
            this.mItemId = guaDou.itemId
            mPayDialog?.show()
            presenter.reportPayDialog(mChosenProd)
        }
    }

    fun hidePayPage() {
        mPayDialog?.dismiss()
    }


    override fun onReceivedPayResultTimeout() {
        mPayDialog?.enablePayBtn()
        mPayDialog?.dismiss()
//JLGLLog.i(TAG, "onReceivedPayResultTimeout")
        SystemMsgService.sendMessage(getString(R.string.pay_fail_notice))
        dismissConfirmPayResultDialog()
        onBackPressed()
    }


    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == Pingpp.REQUEST_CODE_PAYMENT) {
            if (resultCode == Activity.RESULT_OK) {
                val result = data.extras?.getString("pay_result")
                /* 处理返回值
                 * "success" - payment succeed
                 * "fail"    - payment failed
                 * "cancel"  - user canceld
                 * "invalid" - payment plugin not installed
                 */
                val errorMsg = data.extras?.getString("error_msg") // 错误信息

                mPayDialog?.enablePayBtn()

                var msg: String? = null

                if ("cancel" == result) {
                    hidePayPage()
                    mPayDialog?.requestOrderResultWithNoRetry()
                    msg = "Cancelled"
                }

                if ("success" == result) {
                    showConfirmPayResultDialog()
                    mPayDialog?.reportOrderNoStatusToServer()
                }

                if ("fail" == result) {
                    // 支付失败
                    SystemMsgService.sendMessage(getString(R.string.pay_fail_notice))
                    msg = "Unknown"
                }

                if (!TextUtils.isEmpty(msg)) {
                    AmplitudePurchaseMgr.reportRevenueFail(mChosenProd?.itemId, "ProfileView", msg)
                }
            }
        }
    }

    override fun onReceivedPayResult(data: PingPPPayResult.Data?, payAmount: String?, itemId: String?, channel: String?, orderId: String?, coupon: CouponListTemplate.Data?, guaBeanUse: Int) {
        if (data == null || TextUtils.isEmpty(data.status)) {
            return
        }

        mPayResult = data

        if (data.status == "paid") {
            reportAvenueAmplitude(itemId, payAmount, channel, coupon, guaBeanUse)
            if (mConfirmPayResultDialog == null) {
                showConfirmPayResultDialog()
            }
            mConfirmPayResultDialog?.setPayResultDesc("恭喜您购买成功!")
        }

        Handler().postDelayed({
            dismissConfirmPayResultDialog()
            onPaySuccessEnd()
        }, 2000)
    }

    private fun reportAvenueAmplitude(mItemID: String?, payAmount: String?, channel: String?, coupon: CouponListTemplate.Data?, guaBeanUse: Int) {
        val price = java.lang.Double.parseDouble(payAmount) / 100
        val map = HashMap<String, Any?>()
//        map[AmplitudeConstants.TYPE_NAME.GUA_BEAN_AMOUNT] = mChosenProd?.getDisplayAmount()
        map[AmplitudeConstants.TYPE_NAME.CHANNEL] = channel
//        map[AmplitudeConstants.TYPE_NAME.PLATFORM] = "android"
        map[AmplitudeConstants.TYPE_NAME.USE_COUPON] = coupon != null
        map[AmplitudeConstants.TYPE_NAME.COUPON_PRICE] = coupon?.amount?.toDouble() ?: 0 / 100
        map[AmplitudeConstants.TYPE_NAME.COUPON_ID] = coupon?._id ?: "NA"
        map[AmplitudeConstants.TYPE_NAME.COUPON_TYPE] = AmplitudeUtils.convertCouponType(coupon?.cat)
        map[AmplitudeConstants.TYPE_NAME.USE_GUA_BEAN] = AmplitudeUtils.convertBool(guaBeanUse != 0)
        map[AmplitudeConstants.TYPE_NAME.GUA_BEAN_AMOUNT] = AmplitudeUtils.coverGuaDou(mChosenProd?.getDisplayAmount() ?: 0)
        AmplitudeMgr.getInstance().logRevenue("GuaBean", 1, price, "ProfileView", map)
    }


    private fun dismissConfirmPayResultDialog() {
        mConfirmPayResultDialog?.dismiss()
    }

    private fun onPaySuccessEnd() {
        if (mPayResult != null && !TextUtils.isEmpty(mPayResult?.content)
                && !TextUtils.isEmpty(mPayResult?.content)
                && !TextUtils.isEmpty(mPayResult?.image)
                && !TextUtils.isEmpty(mPayResult?.button)
                && !TextUtils.isEmpty(mPayResult?.url)) {
            val intent = Intent()
            val isLandscape = requestedOrientation == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE
            if (isLandscape) {
                intent.setClass(this, PurchasedGiftLandscapeActivity::class.java)
                intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_LANSCAPE, true)
            } else {
                intent.setClass(this, PurchasedGiftActivity::class.java)
            }
            intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_PINGPP_RESULT, mPayResult)
            startActivity(intent)
        }
        hidePayPage()
        presenter.requestGuaDouState()
    }


    override fun onFreePayResult() {
        showConfirmPayResultDialog()
    }

    fun showConfirmPayResultDialog() {
        if (mConfirmPayResultDialog == null) {
            mConfirmPayResultDialog = ConfirmPayResultDialog(this)
        }
        mConfirmPayResultDialog?.show()
    }

    override fun onWeixinPayClick() {
        SystemMsgService.sendMessage("正在进入微信,请稍后...")
    }

    override fun onZhiFuBaoPayClick() {

    }

    override fun onConfirmClick() {

    }

    companion object {
        private const val TAG = "RechargeGuaDouActivity"
        private const val URL_RECHARGE_COMMON_PROBLEM = "https://mp.weixin.qq.com/s/ixrV4QwI7yCJhNMfzoSe0A "
        private const val RECHARGE_COMMON_PROBLEM = "充值常见问题"
        private const val CONNECT_CONSULTATION = "联系客服"
        private var SPAN_COUNT = 3
    }
}
