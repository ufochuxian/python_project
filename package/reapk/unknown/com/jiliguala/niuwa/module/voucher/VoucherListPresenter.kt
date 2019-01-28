package com.jiliguala.niuwa.module.voucher

import com.jiliguala.niuwa.common.base.BasePresenter
import com.jiliguala.niuwa.common.util.RxUtils
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.json.CouponListTemplate
import rx.Subscriber
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers
import rx.subscriptions.CompositeSubscription
import java.util.*

/**
 * Created by chen on 16/7/25.
 */
class VoucherListPresenter : BasePresenter<VoucherListUI>() {

    var isLoadingMore = false
    private var mSubscriptions = CompositeSubscription()
    private val mData = ArrayList<Any>()
    private var mStatus: String? = null

    init {
        mSubscriptions = RxUtils.getNewCompositeSubIfUnsubscribed(mSubscriptions)
    }


    fun loadMore(page: Int) {
        isLoadingMore = true
        requestServer(page, true)
    }

    fun setStatus(status: String?) {
        mStatus = status
    }

    fun requestServer(page: Int, loadMore: Boolean) {
        mSubscriptions.add(RestApiManager.getInstance()
                .restAPI.requestCouponList(mStatus, page, AccountCenter.newInstance().curBabyId)
                .subscribeOn(Schedulers.io())
                .unsubscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(if (loadMore) loadMoreSub() else refreshNewSub()))
    }

    private fun loadMoreSub(): Subscriber<CouponListTemplate> {
        return object : Subscriber<CouponListTemplate>() {
            override fun onCompleted() {

            }

            override fun onError(e: Throwable) {
                isLoadingMore = false
                ui?.onLoadMoreFailed()
            }

            override fun onNext(template: CouponListTemplate) {
                isLoadingMore = false
                ui?.onLoadMoreSuccess(template)
            }
        }
    }

    private fun refreshNewSub(): Subscriber<CouponListTemplate> {
        return object : Subscriber<CouponListTemplate>() {
            override fun onCompleted() {

            }

            override fun onError(e: Throwable) {
                ui?.onRefreshNewFailed()
            }

            override fun onNext(recommendCourseTemplete: CouponListTemplate?) {
                if (recommendCourseTemplete?.data != null) {
                    mData.clear()
                    mData.addAll(recommendCourseTemplete.data)
                    ui?.onRefreshNewSuccess(recommendCourseTemplete)
                } else {
                    ui?.onRefreshNewFailed()
                }
            }
        }
    }

    fun refreshNew() {
        requestServer(0, false)
    }

    fun onDestroy() {
        RxUtils.unsubscribeIfNotNull(mSubscriptions)
    }

}
