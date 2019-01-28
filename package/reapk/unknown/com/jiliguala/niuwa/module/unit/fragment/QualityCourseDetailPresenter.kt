package com.jiliguala.niuwa.module.unit.fragment

import android.text.TextUtils
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.common.base.BasePresenter
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.bus.RxBus
import com.jiliguala.niuwa.logic.bus.event.BaseEvent
import com.jiliguala.niuwa.logic.bus.event.McPcEvent
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.json.BaseTemplate
import com.jiliguala.niuwa.logic.network.json.SingleLessonData
import com.jiliguala.niuwa.module.mcphonics.detail.Model.McPcSubTaskTicket
import com.jiliguala.niuwa.module.unit.presenter.LessonView
import rx.Subscriber
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers
import java.util.*

class QualityCourseDetailPresenter : BasePresenter<LessonView>() {

    private var babyId: String = AccountCenter.newInstance().curBabyId
    private var isCourseFinished: Boolean = false
    private lateinit var lessonId: String
    private lateinit var category: String
    private var taskTicket: McPcSubTaskTicket? = null
    private var mCourse: SingleLessonData? = null

    init {
        subscription.add(RxBus.getDefault()
                .toObserverable(McPcEvent::class.java)
                .subscribe({ mcPcEvent ->
                    when (mcPcEvent.type) {
                        BaseEvent.EventType.MC_PC_SUB_COURSE_FINISH -> {
//JLGLLog.d(TAG, "onCourseFinished")
//JLGLLog.i(TAG, "MC_PC_SUB_COURSE_FINISH")
                            taskTicket = mcPcEvent.mcPcSubTaskTicket
                            refreshSingleLessonData()
                        }
                        BaseEvent.EventType.MC_PC_SUB_COURSE_SEND_PROGRESS_FAIL -> {
//JLGLLog.w(TAG, "MC_PC_SUB_COURSE_SEND_PROGRESS_FAIL")
                            taskTicket = mcPcEvent.mcPcSubTaskTicket
                            refreshSingleLessonData()
                        }
                        BaseEvent.EventType.ON_PRESS_BACK_SHARE_PAGE -> {
//JLGLLog.i(TAG, "ON_PRESS_BACK_SHARE_PAGE")
                            ui.onBack()
                        }
                        else -> {

                        }
                    }
                }, { throwable ->
//JLGLLog.w(QualityCourseDetailFragment.TAG, "error", throwable)
                })
        )
    }

    fun setLessonId(lessonId: String) {
        this.lessonId = lessonId
    }

    fun requestSingleLessonData() {
        if (TextUtils.isEmpty(babyId) && TextUtils.isEmpty(lessonId)) {
            return
        }
        subscription.add(RestApiManager.getInstance()
                .restAPI
                .requestSingleLesson(babyId, lessonId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(object : Subscriber<BaseTemplate<SingleLessonData>>() {
                    override fun onCompleted() {

                    }

                    override fun onError(e: Throwable) {
                        if (ui != null) {
                            ui.onRequestDataFail("fail to request single lesson data")
                        }
                    }

                    override fun onNext(template: BaseTemplate<SingleLessonData>?) {
                        if (template != null && ui != null) {
                            mCourse = template.data
                            isCourseFinished = isCourseComplete()
                            category = mCourse?.category ?: ""
                            reportLessonView()
                            ui.onRequestDataSuccess(mCourse)
                        }
                    }
                }))
    }

    private fun isCourseComplete(): Boolean {
        return isCourseComplete(mCourse)
    }

    private fun isCourseComplete(course: SingleLessonData?): Boolean {
        if (course?.subs == null) return false

        for (sub: SingleLessonData.Lesson in course.subs!!) {
            if (!sub.isComplete()) {
                return false
            }
        }
        return true
    }

    fun refreshSingleLessonData() {
        if (TextUtils.isEmpty(babyId) && TextUtils.isEmpty(lessonId)) {
            return
        }
        subscription.add(RestApiManager.getInstance()
                .restAPI
                .requestSingleLesson(babyId, lessonId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(object : Subscriber<BaseTemplate<SingleLessonData>>() {
                    override fun onCompleted() {

                    }

                    override fun onError(e: Throwable) {
                        if (ui != null) {
                            ui.onRequestDataFail("fail to request single lesson data")
                        }
                    }

                    override fun onNext(template: BaseTemplate<SingleLessonData>?) {
                        if (template != null && ui != null) {
                            ui.onRefreshDataSuccess(template.data)
                            template.data?.let { handleJumpLesson(it) }
                            // 同步mCourse
                            mCourse = template.data
                        }
                    }
                }))
    }

    private fun handleJumpLesson(course: SingleLessonData) {
        taskTicket?.let {
            val oldPos = it.getPosition()
//JLGLLog.i(TAG, "handleJumpSubCourse,pos:%s", oldPos)
            val currentPos = oldPos + 1

            if (!mCourse?.subs?.get(oldPos)?.isComplete()!! && course.subs?.get(oldPos)?.isComplete()!!) {
                // 同步mCourse
                mCourse = course
                reportSubLessonComplete(it)

                if (currentPos == course.subs?.size && isCourseComplete(course)) {
                    reportLessonComplete()
                    ui.openReport()
                    return
                }
            }

            // start next course
            if (currentPos < course.subs?.size!!) {
                val currentLesson = course.subs!![currentPos]
                if (currentLesson.isCurrent()) {
                    // clear the taskTicket
                    taskTicket = null
                    ui.startLesson(course, currentPos, true)
                }
            }
        }
    }

    private fun reportLessonView() {
        val map: HashMap<String, Any> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.ID] = lessonId
        map[AmplitudeConstants.TYPE_NAME.CATEGORY] = category
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_LESSON_VIEW, map)
    }

    fun reportSubLessonClick(lesson: SingleLessonData.Lesson) {
        val map: HashMap<String, Any?> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.ID] = lesson._id
        map[AmplitudeConstants.TYPE_NAME.TYPE] = lesson.typ
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_SUB_LESSON_CLICK, map)
    }

    fun reportSubLessonView(lesson: SingleLessonData.Lesson) {
        val map: HashMap<String, Any?> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.ID] = lesson._id
        map[AmplitudeConstants.TYPE_NAME.TYPE] = lesson.typ
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_SUB_LESSON_VIEW, map)
    }

    fun reportSubLessonComplete(taskTicket: McPcSubTaskTicket) {
        val mapAmp = HashMap<String, Any>()
        mapAmp[AmplitudeConstants.TYPE_NAME.ID] = taskTicket.sub!!._id
        mapAmp[AmplitudeConstants.TYPE_NAME.TYPE] = taskTicket.sub.typ
        mapAmp[AmplitudeConstants.TYPE_NAME.SCORE] = NA
        mapAmp[AmplitudeConstants.TYPE_NAME.SECTION_COUNT] = taskTicket.subSectionCount
        mapAmp[AmplitudeConstants.TYPE_NAME.SECTION] = taskTicket.subSection
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_SUB_LESSON_COMPLETE, mapAmp)
    }

    fun reportLessonComplete() {
        val map: HashMap<String, Any?> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.ID] = lessonId
        map[AmplitudeConstants.TYPE_NAME.CATEGORY] = category
        map[AmplitudeConstants.TYPE_NAME.SCORE] = NA
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_LESSON_COMPLETE, map)
    }

    fun reportCourseReport() {
        val mapAmp = HashMap<String, Any>()
        mapAmp[AmplitudeConstants.TYPE_NAME.ID] = lessonId
        mapAmp[AmplitudeConstants.TYPE_NAME.CATEGORY] = category
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_LESSON_REPORT_VIEW, mapAmp)
    }

    companion object {
        const val TAG = "QualityCourseDetailPresenter"
        const val NA = "NA"
    }
}