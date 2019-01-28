package com.jiliguala.niuwa.module.order

import android.content.Intent
import android.text.TextUtils
import android.view.View
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.R.id.note_container
import com.jiliguala.niuwa.R.id.submit_order
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.bus.RxBus
import com.jiliguala.niuwa.logic.bus.event.BaseEvent
import com.jiliguala.niuwa.logic.bus.event.MessageCenterEvent
import com.jiliguala.niuwa.logic.network.JsonParseEngine
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.helper.RequestHelper
import com.jiliguala.niuwa.logic.network.json.OrderTemplete
import com.jiliguala.niuwa.logic.network.json.PostRealObjectOrder
import com.jiliguala.niuwa.services.SystemMsgService
import kotlinx.android.synthetic.main.activity_order_confirm.*
import okhttp3.RequestBody
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers


/**
 *
 * Created by yammoo on 2018/4/11.
 */

class OrderObjectConfirmActivity : OrderConfirmActivity() {

    var mOid: String? = null

    override fun handleIntent() {
        mOid = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_ORDER_ID)
    }

    override fun reportAmplitude() {
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_GIFT_ORDER_PAGE)
    }

    override fun reportSubmitClick() {
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_GIFT_ORDER_PAGE_CLICK)
    }

    override fun initView() {
        super.initView()
        note_container.visibility = View.VISIBLE
    }

    override fun updateBtnSubmit(order: OrderTemplete.Data.Order) {
        setClickEnable(!TextUtils.isEmpty(order.button))
        submit_order.text = order.button ?: "订单已提交"
    }

    override fun requestServer() {
        subscriptions.add(RestApiManager.getInstance()
                .restAPI
                .requestRealObject(mOid)
                .subscribeOn(Schedulers.io())
                .unsubscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    if (it?.data != null) {
                        updateUI(it.data)
                    }
                }, {
//JLGLLog.d("OrderConfirmActivity", it.toString())
                }, {

                }))
    }

    override fun onSubmit() {
        subscriptions.add(RestApiManager.getInstance()
                .restAPI
                .postRealObjectOrder(generateObjectOrder(mOid, getNoteStr()))
                .subscribeOn(Schedulers.io())
                .unsubscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    submitSuccess()
                }, {
//JLGLLog.d("OrderConfirmActivity", it.toString())
                }, {

                }))
    }


    private fun submitSuccess() {
        SystemMsgService.sendMessage("订单提交成功")
        onBackPressed()
        RxBus.getDefault().post(MessageCenterEvent(BaseEvent.EventType.MESSAGE_CENTER_REFRESH))
    }


    override fun goAddress() {
        if (mOrder == null) return
        val intent = Intent(this, OrderObjectAddressActivity::class.java)
        intent.putExtra("receiver", mOrder?.receiver)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_ORDER_ID, mOid)
        startActivityForResult(intent, REQUEST_CODE_ADDRESS)
    }

    private fun generateObjectOrder(oid: String?, comment: String?): RequestBody? {
        val data = PostRealObjectOrder()
        data.oid = oid
        data.comment = comment
        val json = JsonParseEngine.generateJsonFromObj(data)
        return RequestHelper.generateRequestBody(json)
    }


}