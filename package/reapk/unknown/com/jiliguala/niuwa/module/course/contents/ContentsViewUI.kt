package com.jiliguala.niuwa.module.course.contents

import com.jiliguala.niuwa.common.base.BaseUI
import com.jiliguala.niuwa.logic.network.json.ShowBundleTemplate

interface ContentsViewUI : BaseUI {
    fun onRequestDataSuccess(data: CourseContents?)
    fun onRequestDataFail(ex: Throwable?)
    fun onRequestBundle(template: ShowBundleTemplate?)
}
