package com.jiliguala.niuwa.module.guadou.presenter

import android.text.TextUtils
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.common.base.BasePresenter
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.json.BaseTemplate
import com.jiliguala.niuwa.logic.network.json.GuaDou
import com.jiliguala.niuwa.logic.network.json.GuaDouBundle
import com.jiliguala.niuwa.module.guadou.GuaDouViewUI
import rx.Subscriber
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers

class RechargeGuaDouPresenter : BasePresenter<GuaDouViewUI>() {

    private var mGuaDouBundle: GuaDouBundle? = null

    fun requestGuaDouState() {
        subscription.add(RestApiManager.getInstance()
                .restAPI
                .getGuaDouState(null)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(object : Subscriber<BaseTemplate<GuaDouBundle>>() {
                    override fun onNext(template: BaseTemplate<GuaDouBundle>?) {
                        if (template != null && ui != null) {
                            mGuaDouBundle = template.data
                            ui.onRequestDataSuccess(mGuaDouBundle)
                        }
                    }

                    override fun onCompleted() {

                    }

                    override fun onError(e: Throwable?) {
                        if (ui != null) {
                            ui.onRequestDataFail(e)
                        }
                    }
                }))
    }

    fun recharge(prod: GuaDou?) {
        if (TextUtils.isEmpty(prod?.itemId)) {
//JLGLLog.d(TAG, "呱豆ID为空")
        } else {
//JLGLLog.d(TAG, "recharge %s", prod?.itemId)
            ui.showPayPage(prod)
        }
    }

    fun reportRechargeView() {
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_GUA_BEAN_RECHARGE_VIEW)
    }

    fun reportRechargeItemClick(guaDou: GuaDou?) {
        val map: HashMap<String, Any> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.TYPE] = PROFILE_VIEW
        map[AmplitudeConstants.TYPE_NAME.GUA_BEAN_AMOUNT] = guaDou?.getDisplayAmount() ?: 0
        map[AmplitudeConstants.TYPE_NAME.PRICE] = guaDou?.getDisplayPrice() ?: 0
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_RECHARGE_AMOUNT_SELECT_CLICK, map)
    }

    fun reportRechargeClick(guaDou: GuaDou?) {
        val map: HashMap<String, Any> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.TYPE] = PROFILE_VIEW
        map[AmplitudeConstants.TYPE_NAME.GUA_BEAN_AMOUNT] = guaDou?.getDisplayAmount() ?: 0
        map[AmplitudeConstants.TYPE_NAME.PRICE] = guaDou?.getDisplayPrice() ?: 0
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_GUA_BEAN_RECHARGE_CLICK, map)
    }

    fun reportMoreRechargeClick() {
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_MORE_RECHARGE_AMOUNT_SELECT)
    }

    fun reportPayDialog(mChosenProd: GuaDou?) {
        val map = HashMap<String, Any?>()
        map[AmplitudeConstants.TYPE_NAME.TYPE] = "ProfileView"
        map[AmplitudeConstants.TYPE_NAME.GUA_BEAN_AMOUNT] = mChosenProd?.getDisplayAmount() ?: 0
        map[AmplitudeConstants.TYPE_NAME.PRICE] = mChosenProd?.getDisplayPrice() ?: 0
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_ANDROID_PAY_DIALOG, map)
    }

    companion object {
        private const val TAG = "RechargeGuaDouPresenter"
        private const val PROFILE_VIEW = "ProfileView"
    }
}