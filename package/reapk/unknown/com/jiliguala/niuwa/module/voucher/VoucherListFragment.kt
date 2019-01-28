package com.jiliguala.niuwa.module.voucher

import android.content.IntentFilter
import android.os.Bundle
import android.os.Handler
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.AbsListView
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.base.BaseMvpFragment
import com.jiliguala.niuwa.common.widget.customview.OnErrorClickListener
import com.jiliguala.niuwa.common.widget.pulltorefresh.PullToRefreshBase
import com.jiliguala.niuwa.logic.network.json.CouponListTemplate
import com.jiliguala.niuwa.receivers.CompletePurchasedReceiver
import com.jiliguala.niuwa.services.SystemMsgService
import kotlinx.android.synthetic.main.fragment_voucher_list.*


class VoucherListFragment : BaseMvpFragment<VoucherListPresenter, VoucherListUI>(), VoucherListUI {

    private var mRootView: View? = null
    private var page = 0
    private lateinit var mAdapter: VoucherListAdapter
    private var mStatus: String? = null
    private var mCourses: ArrayList<CouponListTemplate.Data> = ArrayList()
    private var mCompletedPurchasedReceiver: CompletePurchasedReceiver? = null
    private val mHander = Handler()


    override fun createPresenter(): VoucherListPresenter {
        return VoucherListPresenter()
    }

    override fun getUi(): VoucherListUI {
        return this
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        mStatus = arguments?.getString("status")
        presenter.setStatus(mStatus)
    }

    override fun onCreateView(inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        mRootView = inflater?.inflate(R.layout.fragment_voucher_list, null)
        return mRootView
    }

    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initView()
        setAdapter()
        setViewListener()
        autoRefresh()
        registerCompletedPurchasedReceiver()
    }

    override fun onDestroy() {
        super.onDestroy()
        unRegisterPurchasedReceiver()
        mHander.removeCallbacksAndMessages(null)
    }

    private fun registerCompletedPurchasedReceiver() {
        mCompletedPurchasedReceiver = CompletePurchasedReceiver({
            autoRefresh()
        })
        val filter = IntentFilter()
        filter.addAction(CompletePurchasedReceiver.ACTION_NAME)
        activity.registerReceiver(mCompletedPurchasedReceiver, filter)
    }


    private fun unRegisterPurchasedReceiver() {
        if (mCompletedPurchasedReceiver != null) {
            activity.unregisterReceiver(mCompletedPurchasedReceiver)
        }
    }

    private fun initView() {
        list.mode = PullToRefreshBase.Mode.DISABLED
    }

    private fun setAdapter() {
        mAdapter = VoucherListAdapter(activity)
        list.setAdapter(mAdapter)
    }

    private fun setViewListener() {
        list.setOnScrollListener(object : AbsListView.OnScrollListener {
            override fun onScrollStateChanged(absListView: AbsListView, scrollState: Int) {
                when (scrollState) {
                // 当不滚动时
                    AbsListView.OnScrollListener.SCROLL_STATE_IDLE ->
                        // 判断滚动到底部
                        if (absListView.lastVisiblePosition == absListView.count - 1) {
                            if (list != null && !presenter.isLoadingMore) {
                                presenter.loadMore(page + 1)
                            }
                        }
                }
            }

            override fun onScroll(view: AbsListView, firstVisibleItem: Int, visibleItemCount: Int, totalItemCount: Int) {

            }
        })

        superview.setOnErrorClickListener(object : OnErrorClickListener {
            override fun onRefreshButtonClick() {
                autoRefresh()
            }

            override fun onErrorPageBackBtnClick() {

            }
        })

        superview.setOnEmptyViewClickListener({ goInteract() })

    }

    private fun goInteract() {

    }


    fun autoRefresh() {
        if (list.isRefreshing) {
            list.onRefreshComplete()
        }
        mHander.postDelayed({
            list.isRefreshing = true
            presenter.refreshNew()
        }, 500)
    }


    override fun onRefreshNewSuccess(data: CouponListTemplate?) {
        list.onRefreshComplete()
        if (data?.data == null || data.data.isEmpty()) {
            list.visibility = View.GONE
            superview.showEmptyView()
            return
        }

        list.visibility = View.VISIBLE
        mCourses = ArrayList(data.data)
        mAdapter.updateDataSet(mCourses, true)
        mAdapter.notifyDataSetChanged()
        showErrorView()
        page = 0

//        list.visibility = View.GONE
//        superview.showEmptyView()
    }

    private fun showErrorView() {
        if (mAdapter.count == 0) {
            list.visibility = View.GONE
            superview.showErrorView()
        }
    }

    override fun onRefreshNewFailed() {
        list.onRefreshComplete()
        showErrorView()
    }

    override fun onLoadMoreSuccess(data: CouponListTemplate?) {
        if (data != null) {
            mCourses.addAll(data.data)
            mAdapter.updateDataSet(data.data, false)
            mAdapter.notifyDataSetChanged()
            if (!data.data.isEmpty())
                page++
        }
    }

    override fun onLoadMoreFailed() {
        SystemMsgService.sendMessage(resources.getString(R.string.network_error_tips))
    }

    override fun setUserVisibleHint(isVisibleToUser: Boolean) {
        super.setUserVisibleHint(isVisibleToUser)
        //hack viewpager快速切换fragment会导致listview加载异常,所以在这里重新layout下
        if (isVisibleToUser && list?.refreshableView != null) {
            if (mCourses.size > 0 && list.refreshableView.childCount - list.refreshableView.headerViewsCount - list.refreshableView.footerViewsCount == 0) {
                mRootView?.requestLayout()
            }
        }
    }
}