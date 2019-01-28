package com.jiliguala.niuwa.module.course.contents

import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import android.view.View
import android.widget.Toast
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.base.BaseMvpActivity
import com.jiliguala.niuwa.common.widget.customview.OnErrorClickListener
import com.jiliguala.niuwa.logic.network.json.ShowBundleTemplate
import com.jiliguala.niuwa.module.NewRoadMap.LevelPagerFragment
import com.jiliguala.niuwa.module.course.contents.adapter.CourseContentsAdapter
import com.jiliguala.niuwa.module.course.contents.presenter.CourseContentsPresenter
import kotlinx.android.synthetic.main.activity_course_contents.*

class CourseContentsActivity : BaseMvpActivity<CourseContentsPresenter, ContentsViewUI>(), ContentsViewUI, OnItemClickListener {

    private lateinit var mAdapter: CourseContentsAdapter
    private var mData: List<CourseCategory>? = null
    private lateinit var mLayout: LinearLayoutManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_course_contents)
        presenter.reportMajorContentsView()
        back_icon.setOnClickListener {
            finish()
        }
        super_view.setOnErrorClickListener(object : OnErrorClickListener {
            override fun onRefreshButtonClick() {
                refresh()
            }

            override fun onErrorPageBackBtnClick() {

            }
        })
        super_view.setErrorImage(R.drawable.img_bad_internet)
        setRecyclerViewLayoutManager()
        mAdapter = CourseContentsAdapter(this, this)
        course_list.adapter = mAdapter
    }

    override fun onResume() {
        super.onResume()
        refresh()
    }

    private fun refresh() {
        super_view.showLoadingView()
        course_list.visibility = View.GONE
        presenter.requestCourses()
        presenter.requestCourseBanner()
    }

    override fun createPresenter(): CourseContentsPresenter {
        return CourseContentsPresenter()
    }

    override fun getUi(): ContentsViewUI {
        return this
    }

    /**
     * Set RecyclerView's LayoutManager to the one given.
     */
    private fun setRecyclerViewLayoutManager() {
        var scrollPosition = 0

        // If a layout manager has already been set, get current scroll position.
        if (course_list.layoutManager != null) {
            scrollPosition = (course_list.layoutManager as LinearLayoutManager)
                    .findFirstCompletelyVisibleItemPosition()
        }

        mLayout = LinearLayoutManager(this)

        with(course_list) {
            layoutManager = mLayout
            scrollToPosition(scrollPosition)
        }
    }

    override fun onRequestDataSuccess(data: CourseContents?) {
        super_view.hideAllView()
        course_list.visibility = View.VISIBLE
        mData = data?.categories
        course_list.scrollToPosition(0)
        mAdapter.setCourse(data)
    }

    override fun onRequestDataFail(ex: Throwable?) {
//JLGLLog.e(TAG, "fail to request course contents", ex)
        super_view.showErrorView()
    }

    override fun onRequestBundle(template: ShowBundleTemplate?) {
        bundle_purchase.show(template?.data)
        course_list.setPadding(0, 0, 0, if (template?.data != null) bundle_purchase.measuredHeight else 0)
    }

    override fun onItemClick(categoryPosition: Int, position: Int) {
        mData?.get(categoryPosition)?.let {
//JLGLLog.d(TAG, "click %d type -> %s", categoryPosition, it.type)
            presenter.reportCardClick(it.levels?.get(position)?.id)
            if (it.levels?.get(position)?.locked == true) {
                Toast.makeText(this, getString(R.string.no_available_course), Toast.LENGTH_SHORT).show()
            } else {
                val levelPagerFragment = LevelPagerFragment.newInstance(it.type, position)
                levelPagerFragment.show(supportFragmentManager, LevelPagerFragment.TAG)
            }
        }
    }

    companion object {
        private const val TAG = "CourseContentsActivity"
    }
}
