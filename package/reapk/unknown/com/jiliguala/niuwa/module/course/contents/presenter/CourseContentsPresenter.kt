package com.jiliguala.niuwa.module.course.contents.presenter

import com.jiliguala.niuwa.common.base.BasePresenter
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.json.BaseTemplate
import com.jiliguala.niuwa.logic.network.json.ShowBundleTemplate
import com.jiliguala.niuwa.module.course.contents.ContentsViewUI
import com.jiliguala.niuwa.module.course.contents.CourseContents
import rx.Subscriber
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers

class CourseContentsPresenter : BasePresenter<ContentsViewUI>() {

    fun requestCourses() {
        subscription.add(RestApiManager
                .getInstance()
                .restAPI
                .getCourseContents(AccountCenter.newInstance().curBabyId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(object : Subscriber<BaseTemplate<CourseContents>>() {
                    override fun onNext(template: BaseTemplate<CourseContents>?) {
                        if (template != null && ui != null) {
                            ui.onRequestDataSuccess(template.data)
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

    fun requestCourseBanner() {
        subscription.add(RestApiManager
                .getInstance()
                .restAPI
                .getShowBundle(AccountCenter.newInstance().curBabyId, "lessonDetails")
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(object : Subscriber<ShowBundleTemplate>() {
                    override fun onNext(template: ShowBundleTemplate?) {
                        if (ui != null) {
                            ui.onRequestBundle(template)
                        }
                    }

                    override fun onCompleted() {

                    }

                    override fun onError(e: Throwable?) {

                    }
                })
        )
    }

    fun reportMajorContentsView() {
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_MAJOR_LESSON_LIST_VIEW)
    }

    fun reportCardClick(type: String?) {
        val map = mutableMapOf<String, Any?>()
        map[AmplitudeConstants.TYPE_NAME.TYPE] = type
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_MAJOR_LESSON_CARD_CLICK, map)
    }
}