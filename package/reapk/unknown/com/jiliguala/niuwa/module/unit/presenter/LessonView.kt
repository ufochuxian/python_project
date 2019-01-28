package com.jiliguala.niuwa.module.unit.presenter

import com.jiliguala.niuwa.common.base.BaseUI
import com.jiliguala.niuwa.logic.network.json.SingleLessonData

interface LessonView : BaseUI {

    fun onRequestDataSuccess(data: SingleLessonData?)
    fun onRefreshDataSuccess(data: SingleLessonData?)
    fun onRequestDataFail(errorMsg: String)
    fun startLesson(data: SingleLessonData?, position: Int, isDelay: Boolean)
    fun openReport()
    fun onBack()
}
