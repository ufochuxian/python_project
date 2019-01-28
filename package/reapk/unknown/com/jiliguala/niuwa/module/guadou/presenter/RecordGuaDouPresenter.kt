package com.jiliguala.niuwa.module.guadou.presenter

import com.jiliguala.niuwa.common.base.BasePresenter
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.json.BaseTemplate
import com.jiliguala.niuwa.logic.network.json.GuaDouBundle
import com.jiliguala.niuwa.module.guadou.GuaDouViewUI
import rx.Subscriber
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers

class RecordGuaDouPresenter : BasePresenter<GuaDouViewUI>() {

    private var mGuaDouBundle: GuaDouBundle? = null

    fun requestGuaDouRecord(page: Int, isLoadMore: Boolean) {
        subscription.add(RestApiManager.getInstance()
                .restAPI
                .getGuaDouRecord(page)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(object : Subscriber<BaseTemplate<GuaDouBundle>>() {
                    override fun onNext(template: BaseTemplate<GuaDouBundle>?) {
                        if (template != null) {
                            mGuaDouBundle = template.data
                            ui.onRequestDataSuccess(mGuaDouBundle, isLoadMore)
                        }
                    }

                    override fun onCompleted() {

                    }

                    override fun onError(e: Throwable?) {
                        ui.onRequestDataFail(e, isLoadMore)
                    }
                }))
    }


    fun reportRecordClick() {
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_RECHARGE_RECORD_VIEW)
    }
}