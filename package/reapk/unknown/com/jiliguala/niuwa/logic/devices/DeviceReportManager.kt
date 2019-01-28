package com.jiliguala.niuwa.logic.devices

import com.amplitude.api.Amplitude
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.common.util.DeviceUtils
import com.jiliguala.niuwa.logic.network.JsonParseEngine
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.helper.RequestHelper
import com.jiliguala.niuwa.logic.network.json.TrackEvent
import okhttp3.RequestBody
import rx.Observable
import rx.schedulers.Schedulers
import rx.subscriptions.CompositeSubscription
import java.util.concurrent.TimeUnit

/**
 * Created by yammoo on 2018/4/2.
 */

class DeviceReportManager private constructor() {

    var mSubscriptions = CompositeSubscription()

    companion object {
        val instance: DeviceReportManager by lazy { DeviceReportManager() }
    }

    fun reportDevice() {
        val imei: String? = DeviceUtils.getIMEI()
//JLGLLog.d("DeviceReportManager", "imei: %s", imei)
        if (!imei.isNullOrBlank() && imei != "0") {
            mSubscriptions.add(Observable.timer(10, TimeUnit.SECONDS)
                    .observeOn(Schedulers.io())
                    .flatMap {
                        RestApiManager.getInstance().restAPI.postTrackEvent(generateRecord(imei
                                , Amplitude.getInstance().deviceId
                                , "activate"
                        ))
                    }
                    .subscribe({
//JLGLLog.d("DeviceReportManager", "onNext")
                    }, {
//JLGLLog.d("DeviceReportManager", "onError %s", it.toString())
                    }, {
//JLGLLog.d("DeviceReportManager", "onComplete")
                    })
            )
        }
    }

    fun generateRecord(imei: String?, amplitudeId: String?, type: String?): RequestBody? {
        val str = JsonParseEngine.generateJsonFromObj(TrackEvent(imei, amplitudeId, type))
        return RequestHelper.generateRequestBody(str)
    }

}