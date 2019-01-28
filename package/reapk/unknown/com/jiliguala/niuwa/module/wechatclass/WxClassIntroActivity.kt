package com.jiliguala.niuwa.module.wechatclass

import android.os.Bundle
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.module.webview.InternalWebActivity


class WxClassIntroActivity : InternalWebActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_WECHAT_CLASS_ENROLL_PAGE)
    }

}