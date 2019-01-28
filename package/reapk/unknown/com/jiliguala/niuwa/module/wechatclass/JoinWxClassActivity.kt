package com.jiliguala.niuwa.module.wechatclass

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.os.Bundle
import com.jiliguala.niuwa.GlobalCtxHolder
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.base.BaseActivity
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.services.SystemMsgService
import com.jiliguala.niuwa.wxapi.WXEntryActivity
import com.tencent.mm.opensdk.openapi.IWXAPI
import com.tencent.mm.opensdk.openapi.WXAPIFactory
import kotlinx.android.synthetic.main.activity_join_wx_class.*
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers


class JoinWxClassActivity : BaseActivity() {


    val mApi: IWXAPI by lazy {
        WXAPIFactory.createWXAPI(GlobalCtxHolder.getContext(), WXEntryActivity.WEI_XIN_LOGIN_APP_ID)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_join_wx_class)
        back_icon.setOnClickListener({
            finish()
        })
        action_copy.setOnClickListener({
            copy()
            AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_COPY_ID_CLICK)
        })
        go_wechat.setOnClickListener({
            copy()
            goWechat()
            AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_GO_WECHAT_CLICK)
        })
        requestAssistantCode()

        reportView()
    }

    private fun reportView() {
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_ENROLL_GUIDE_PAGE)
    }

    private fun requestAssistantCode() {
        subscriptions.add(RestApiManager.getInstance().restAPI
                .wechatAssistQrcode
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    weixin_number.text = it?.data?.nick
                }, {

                }))
    }

    private fun goWechat() {
        if (mApi.isWXAppInstalled) {
            mApi.openWXApp()
        } else {
            SystemMsgService.sendMessage("未安装微信，请下载后添加小助手")
        }
    }


    private fun copy() {
        val clipboard = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        val text = weixin_number.text.toString().trim()
        val myClip = ClipData.newPlainText("text", text)
        clipboard.primaryClip = myClip
        SystemMsgService.sendMessage("已复制微信号")
    }
}