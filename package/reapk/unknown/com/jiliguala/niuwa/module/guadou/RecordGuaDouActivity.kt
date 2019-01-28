package com.jiliguala.niuwa.module.guadou

import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.view.View
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.base.BaseMvpActivity
import com.jiliguala.niuwa.common.widget.pulltorefresh.widget.GreenHeaderView
import com.jiliguala.niuwa.logic.network.json.GuaDou
import com.jiliguala.niuwa.logic.network.json.GuaDouBundle
import com.jiliguala.niuwa.module.guadou.adapter.RecordGuaDouAdapter
import com.jiliguala.niuwa.module.guadou.presenter.RecordGuaDouPresenter
import kotlinx.android.synthetic.main.activity_record_gua_dou.*

class RecordGuaDouActivity : BaseMvpActivity<RecordGuaDouPresenter, GuaDouViewUI>(), GuaDouViewUI {

    private lateinit var mLayout: LinearLayoutManager
    private lateinit var mAdapter: RecordGuaDouAdapter
    private var mGuaDouBundle: GuaDouBundle? = null
    private var page: Int = 0
    private var mIsRefreshing: Boolean = false
    private var mIsLoadingMore: Boolean = false
    private var noMoreData: Boolean = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_record_gua_dou)
        setRecyclerViewLayoutManager()
        mAdapter = RecordGuaDouAdapter()
        record_list.adapter = mAdapter
        back_icon.setOnClickListener { finish() }
        refresh_view.setHeaderView(GreenHeaderView(this))
        refresh_view.addOnRefreshListener {
            if (!mIsRefreshing) {
//JLGLLog.d(TAG, "onRefresh")
                mIsRefreshing = true
                noMoreData = false
                page = 0
                presenter.requestGuaDouRecord(page, false)
            }
        }
        presenter.reportRecordClick()
        record_list.addOnScrollListener(object : RecyclerView.OnScrollListener() {
            override fun onScrolled(recyclerView: RecyclerView, dx: Int, dy: Int) {
                if (recyclerView.adapter.itemCount - 1 == mLayout.findLastVisibleItemPosition()) {
//JLGLLog.d(TAG, "load more %s", mIsRefreshing)
                    if (!mIsLoadingMore && !mIsRefreshing && !noMoreData) {
//JLGLLog.d(TAG, "request at load more %s", mIsRefreshing)
                        mIsLoadingMore = true
                        presenter.requestGuaDouRecord(++page, true)
                    }
                }
            }
        })
        mIsRefreshing = true
        presenter.requestGuaDouRecord(page, false)
    }

    /**
     * Set RecyclerView's LayoutManager to the one given.
     */
    private fun setRecyclerViewLayoutManager() {
        var scrollPosition = 0

        // If a layout manager has already been set, get current scroll position.
        if (record_list.layoutManager != null) {
            scrollPosition = (record_list.layoutManager as LinearLayoutManager)
                    .findFirstCompletelyVisibleItemPosition()
        }

        mLayout = LinearLayoutManager(this)

        with(record_list) {
            layoutManager = mLayout
            scrollToPosition(scrollPosition)
        }
    }

    override fun createPresenter(): RecordGuaDouPresenter {
        return RecordGuaDouPresenter()
    }

    override fun getUi(): GuaDouViewUI {
        return this
    }

    override fun onRequestDataSuccess(data: GuaDouBundle?, isLoadMore: Boolean) {
        refresh_view.refreshComplete()
        if (isLoadMore && data?.records?.size == 0) {
//JLGLLog.d(TAG, "no more data")
            noMoreData = true
        } else {
            mGuaDouBundle = data
            mAdapter.updateRecordData(data?.records, isLoadMore)
            empty_record.visibility = if (data?.records?.isNotEmpty() == true) View.GONE else View.VISIBLE
        }
        mIsRefreshing = false
        mIsLoadingMore = false
    }

    override fun onRequestDataFail(ex: Throwable?, isLoadMore: Boolean) {
        refresh_view.refreshComplete()
        mIsRefreshing = false
        mIsLoadingMore = false
//JLGLLog.e(TAG, "fail to request gua dou recharge record", ex)
    }

    override fun showPayPage(guaDou: GuaDou?) {

    }

    companion object {
        private const val TAG = "RecordGuaDouActivity"
    }
}
