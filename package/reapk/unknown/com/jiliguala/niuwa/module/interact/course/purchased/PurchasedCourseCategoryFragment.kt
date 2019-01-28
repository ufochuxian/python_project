package com.jiliguala.niuwa.module.interact.course.purchased

import android.os.Bundle
import android.support.v7.widget.GridLayoutManager
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.base.BaseFragment
import com.jiliguala.niuwa.common.widget.customview.OnErrorClickListener
import com.jiliguala.niuwa.common.widget.customview.SuperView
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.json.ShowBundleTemplate
import com.jiliguala.niuwa.module.interact.course.adapter.PurchasedCourseCategoryAdapter
import com.jiliguala.niuwa.module.interact.course.bundle.InteractBundlePurchaseView
import com.jiliguala.niuwa.ui.photo.ScreenSizeUtil
import rx.Subscriber
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers


class PurchasedCourseCategoryFragment : BaseFragment() {

    private lateinit var mAdapter: PurchasedCourseCategoryAdapter
    private lateinit var mRootView: View
    private lateinit var mRecyclerView: RecyclerView
    private lateinit var mSuperView: SuperView
    private lateinit var mBundlePurchaseView: InteractBundlePurchaseView

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        mRootView = inflater.inflate(R.layout.fragment_purchased_course_category, null)
        initView()
        setViewListener()
        return mRootView
    }

    override fun onResume() {
        super.onResume()
        requestServer()
        requestShowBundle()
    }


    private fun initView() {
        mSuperView = mRootView.findViewById(R.id.superview) as SuperView
        mRecyclerView = mRootView.findViewById(R.id.recyclerView) as RecyclerView
        mBundlePurchaseView = mRootView.findViewById(R.id.bundle_purchase) as InteractBundlePurchaseView
        mRecyclerView.layoutManager = GridLayoutManager(activity, 2)
        mAdapter = PurchasedCourseCategoryAdapter(activity)
        mRecyclerView.adapter = mAdapter
    }


    private fun setViewListener() {
        mSuperView.setOnErrorClickListener(object : OnErrorClickListener {
            override fun onRefreshButtonClick() {
                requestServer()
            }

            override fun onErrorPageBackBtnClick() {

            }
        })
    }

    private fun requestServer() {
        val curBabyId = AccountCenter.newInstance().curBabyId
        subscriptions.add(RestApiManager.getInstance().restAPI.requestLessonPaid(curBabyId)
                .subscribeOn(Schedulers.io())
                .unsubscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    if (it?.data != null && it.data.size > 0) {
                        mRecyclerView.visibility = View.VISIBLE
                        mAdapter.updateData(it.data)
                        mAdapter.notifyDataSetChanged()
                    } else {
                        mRecyclerView.visibility = View.INVISIBLE
                        mSuperView.showEmptyView()
                    }
                }, {
                    showError()
                })
        )
    }

    private fun requestShowBundle() {
        subscriptions.add(RestApiManager.getInstance()
                .restAPI
                .getShowBundle(AccountCenter.newInstance().curBabyId, "")
                .subscribeOn(Schedulers.io())
                .unsubscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(object : Subscriber<ShowBundleTemplate>() {

                    override fun onCompleted() {

                    }

                    override fun onError(e: Throwable) {

                    }

                    override fun onNext(template: ShowBundleTemplate?) {
                        val dp10 = ScreenSizeUtil.Dp2Px(context, 10f)
                        mBundlePurchaseView.show(template?.data)
                        mRecyclerView.setPadding(dp10, dp10, dp10, if (template?.data != null) mBundlePurchaseView.measuredHeight else dp10)
                    }
                }))
    }

    private fun showError() {
        mRecyclerView.visibility = View.INVISIBLE
        mSuperView.showErrorView()
    }


}