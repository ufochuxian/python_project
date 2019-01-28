package com.jiliguala.niuwa.module.order

import android.app.Activity
import android.content.Intent
import android.content.pm.ActivityInfo
import android.os.Bundle
import android.os.Handler
import android.text.TextUtils
import android.view.View
import android.widget.LinearLayout
import com.blog.www.guideview.util.UnitConvertUtils
import com.bumptech.glide.Glide
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.base.BaseActivity
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.bus.RxBus
import com.jiliguala.niuwa.logic.bus.event.BaseEvent
import com.jiliguala.niuwa.logic.bus.event.StoryEvent
import com.jiliguala.niuwa.logic.network.JsonParseEngine
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.helper.RequestHelper
import com.jiliguala.niuwa.logic.network.json.CouponListTemplate
import com.jiliguala.niuwa.logic.network.json.OrderTemplete
import com.jiliguala.niuwa.logic.network.json.PingPPPayResult
import com.jiliguala.niuwa.logic.network.json.PostStoryTemplete
import com.jiliguala.niuwa.module.NewRoadMap.PurchasedGiftActivity
import com.jiliguala.niuwa.module.interact.course.detail.view.ConfirmPayResultDialog
import com.jiliguala.niuwa.module.pingplusplus.OrderPayDialog
import com.jiliguala.niuwa.module.pingplusplus.PayDialog
import com.jiliguala.niuwa.receivers.CompletePurchasedReceiver
import com.jiliguala.niuwa.services.SystemMsgService
import com.pingplusplus.android.Pingpp
import kotlinx.android.synthetic.main.activity_order_confirm.*
import kotlinx.android.synthetic.main.item_order_discount.view.*
import okhttp3.RequestBody
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers
import java.util.*


/**
 *
 * Created by yammoo on 2018/4/11.
 */

open class OrderConfirmActivity : BaseActivity(), PayDialog.onPayClickListenr, PayDialog.CallBack {

    companion object {
        val TAG: String = "OrderConfirmActivity"
        const val REQUEST_CODE_ADDRESS = 100
    }

    private var mItemId: String? = null
    var mOrder: OrderTemplete.Data.Order? = null
    private val mPayDialog: OrderPayDialog  by lazy {
        OrderPayDialog(this, "", mOrder?.oid, PayDialog.REQUEST_CHARGE_WECHAT, "0")
    }
    val mConfirmPayResultDialog: ConfirmPayResultDialog by lazy {
        ConfirmPayResultDialog(this)
    }
    val mHandler = Handler()

    var mPayResult: PingPPPayResult.Data? = null


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_order_confirm)
        initView()
        handleIntent()
        requestServer()
        reportAmplitude()
    }

    open fun handleIntent() {
        mItemId = intent.getStringExtra(CommonSets.COMMON_PARAM.ITEM_ID)
    }

    open fun reportAmplitude() {
        val mutableList: MutableMap<String, Any> = mutableMapOf()
        mutableList[AmplitudeConstants.TYPE_NAME.ItemId] = mItemId as Any
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_ORDER_SUBMIT_PAGE, mutableList)
    }

    open fun initView() {
        note_container.visibility = View.GONE
        back_icon.setOnClickListener { finish() }
        text_container.setOnClickListener { goAddress() }
        submit_order.setOnClickListener {
            submitOrder()
        }
        setClickEnable(false)
    }


    fun setClickEnable(enable: Boolean) {
        text_container.isEnabled = enable
        submit_order.isEnabled = enable
        note_edit.isEnabled = enable
    }

    private fun submitOrder() {

        if (mOrder == null) return
        if (!checkAddress()) {
            SystemMsgService.sendMessage("请先完善收货信息")
            return
        }

        onSubmit()
    }

    open fun onSubmit() {

        reportSubmitClick()

        try {
            mPayDialog.setItemId(mItemId)
            mPayDialog.setMoneyAccount(mOrder?.sum)
            mPayDialog.setOnPayClickListener(this)
            mPayDialog.setCallBack(this)
            mPayDialog.show()
        } catch (e: Exception) {

        }
    }

    open fun reportSubmitClick() {
        val mutableMapOf = mutableMapOf<String, Any>()
        mutableMapOf[AmplitudeConstants.TYPE_NAME.ItemId] = mItemId as Any
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_ORDER_SUBMIT_CLICK, mutableMapOf)
    }

    private fun checkAddress(): Boolean {
        if (!TextUtils.isEmpty(name.text)
                && !TextUtils.isEmpty(phone_num.text)
                && !TextUtils.isEmpty(address.text)) {
            return true
        }
        return false
    }

    open fun goAddress() {
        if (mOrder == null) return
        val intent = Intent(this, OrderAddressActivity::class.java)
        intent.putExtra(CommonSets.COMMON_PARAM.SOURCE, "OrderConfirmActivity")
        intent.putExtra("receiver", mOrder?.receiver)
        intent.putExtra("itemId", mItemId)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_ORDER_ID, mOrder?.oid)
        startActivityForResult(intent, REQUEST_CODE_ADDRESS)
    }


    open fun requestServer() {
        subscriptions.add(RestApiManager.getInstance()
                .restAPI
                .requestWechatOrder(generateItemId(mItemId))
                .subscribeOn(Schedulers.io())
                .unsubscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    if (it?.data?.order != null) {
                        updateUI(it.data.order)
                    }
                }, {
//JLGLLog.d("OrderConfirmActivity", it.toString())
                }, {

                }))
    }

    fun getNoteStr(): String {
        return note_edit.text.toString()
    }

    private fun generateItemId(itemID: String?): RequestBody? {
        val data = PostStoryTemplete()
        data.itemid = itemID
        val json = JsonParseEngine.generateJsonFromObj(data)
        return RequestHelper.generateRequestBody(json)
    }


    fun updateUI(order: OrderTemplete.Data.Order) {
        this.mOrder = order

        updateReceiver(order.receiver)

        val item = order.item
        if (!TextUtils.isEmpty(item?.thmb)) {
            Glide.with(this).load(item.thmb).dontAnimate().into(icon)
        }

        ttl.text = item?.ttl
        story_money_txt.text = order.total

        discount_container.visibility = if (order.discountvec != null && order.discountvec.size > 0) View.VISIBLE else View.GONE
        discount_container.removeAllViews()
        order.discountvec?.forEach {
            val discountView: View = View.inflate(this, R.layout.item_order_discount, null)
            val params = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, UnitConvertUtils.dip2px(this, 54f))
            discountView.title.text = it.ttl
            discountView.price.text = it.price
            discount_container.addView(discountView, params)
        }

        freight_money.text = order.shipping
        subtotal.text = String.format("¥ %s", order.sum)
        total_money_txt.text = String.format("¥ %s", order.price)

        note_edit.setText(order.comment)

        updateBtnSubmit(order)
    }

    open fun updateBtnSubmit(order: OrderTemplete.Data.Order) {
        setClickEnable(true)
    }


    private fun updateReceiver(receiver: OrderTemplete.Data.Order.Receiver?) {
        add_address_tv.visibility = if (!TextUtils.isEmpty(receiver?.tel)) View.GONE else View.VISIBLE
        top_text_container.visibility = if (!TextUtils.isEmpty(receiver?.tel)) View.VISIBLE else View.GONE
        name.text = receiver?.name
        phone_num.text = receiver?.tel
        address.text = receiver?.addr
    }


    override fun onWeixinPayClick() {
        SystemMsgService.sendMessage("正在进入微信,请稍后...")
//        reportClickPurchase()
    }

    override fun onZhiFuBaoPayClick() {
//        reportClickPurchase()
    }

    override fun onConfirmClick() {

    }


    override fun onReceivedPayResultTimeout() {
        mPayDialog.enablePayBtn()
        mPayDialog.dismiss()
//JLGLLog.i(TAG, "onReceivedPayResultTimeout")
        SystemMsgService.sendMessage(getString(R.string.pay_fail_notice))
        dismissConfirmPayResultDialog()
        onBackPressed()
    }

    fun dismissConfirmPayResultDialog() {
        mConfirmPayResultDialog.dismiss()
    }

    override fun onReceivedPayResult(data: PingPPPayResult.Data?, payAmount: String?, itemId: String?, channel: String?, orderId: String?, coupon: CouponListTemplate.Data?, guaBeanUse:Int) {
        if (data == null || TextUtils.isEmpty(data.status)) {
            return
        }
        mPayResult = data
        if (data.status == "paid") {
            reportAvenueAmplitude(itemId, payAmount, channel, coupon,guaBeanUse)
            mConfirmPayResultDialog.setPayResultDesc("恭喜您购买成功!")
            val intent = Intent(CompletePurchasedReceiver.ACTION_NAME)
            intent.putExtra(CompletePurchasedReceiver.EXTRA_KEY_CREATE_ORDER, true)
            intent.putExtra(CompletePurchasedReceiver.EXTRA_KEY_ITEMID, itemId)
            sendBroadcast(intent)

            RxBus.getDefault().post(StoryEvent(BaseEvent.EventType.PURCHASE_WECHAT_CLASS_SUCCESS))

        }

        mHandler.postDelayed({
            dismissConfirmPayResultDialog()
            onPaySuccessEnd()
        }, 2000)

//JLGLLog.i(TAG, "onReceivedPayResult,status-->" + data.status)
    }

    private fun onPaySuccessEnd() {
        if (!TextUtils.isEmpty(mPayResult?.content)
                && !TextUtils.isEmpty(mPayResult?.content)
                && !TextUtils.isEmpty(mPayResult?.image)
                && !TextUtils.isEmpty(mPayResult?.button)
                && !TextUtils.isEmpty(mPayResult?.url)) {
            val intent = Intent(this, PurchasedGiftActivity::class.java)
            intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_PINGPP_RESULT, mPayResult)
            intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_LANSCAPE,
                    requestedOrientation == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE)
            startActivity(intent)
        }
        onBackPressed()
    }

    private fun reportAvenueAmplitude(itemId: String?, payAmount: String?, channel: String?, coupon: CouponListTemplate.Data?,guaBeanUse:Int) {
        val price = java.lang.Double.parseDouble(payAmount) / 100
        val map = HashMap<String, Any>()
        map[AmplitudeConstants.TYPE_NAME.CHANNEL] = channel as Any
//        map[AmplitudeConstants.TYPE_NAME.PLATFORM] = "android"
        AmplitudeMgr.getInstance().logRevenue(itemId, 1, price, itemId, map)
    }

    override fun onFreePayResult() {
        showConfirmPayResultDialog()
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == Pingpp.REQUEST_CODE_PAYMENT) {
            if (resultCode == Activity.RESULT_OK) {
                val result = data?.extras?.getString("pay_result")
                /* 处理返回值
                 * "success" - payment succeed
                 * "fail"    - payment failed
                 * "cancel"  - user canceld
                 * "invalid" - payment plugin not installed
                 */
                /*val errorMsg = data?.extras?.getString("error_msg") // 错误信息
                val extraMsg = data?.extras?.getString("extra_msg") // 错误信息*/

                mPayDialog.enablePayBtn()

                if ("cancel" == result) {
                    hidePayPage()
                    mPayDialog.requestOrderResultWithNoRetry()
                }

                if ("success" == result) {
                    showConfirmPayResultDialog()
                    mPayDialog.reportOrderNoStatusToServer()
                }

                if ("fail" == result) {
                    // 支付失败
                    SystemMsgService.sendMessage(getString(R.string.pay_fail_notice))
                }

            }
        } else if (requestCode == REQUEST_CODE_ADDRESS) {
            if (resultCode == Activity.RESULT_OK) {
                val receiver = data?.extras?.getSerializable("receiver")
                if (receiver is OrderTemplete.Data.Order.Receiver) {
                    mOrder?.receiver = receiver
                    updateReceiver(receiver)
                }
            }
        }
    }

    private fun showConfirmPayResultDialog() {
        mConfirmPayResultDialog.show()
    }

    fun hidePayPage() {
        mPayDialog.dismiss()
    }

}