package com.jiliguala.niuwa.module.picturebook

import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import com.jiliguala.niuwa.module.picturebook.fingerread.SpanIndex

interface PicBookPageView {

    fun showData(page: PicBookTemplate.Data.Page)

    fun highLight(text: String?, start: Int, end: Int)

    fun setPageNumber(text: String)

    fun showFlipNotice(b: Boolean)

    fun setTurnMode(auto: Boolean)

    fun setRecordEnable(b: Boolean)

    fun setMinePlayEnable(b: Boolean)

    fun showRecording(b: Boolean)

    fun setAudioPlayEnable(b: Boolean)

    fun showMinePlaying(b: Boolean)

    fun showStar(star: Int)

    fun hideStar()

    fun showAudioPlaying(b: Boolean)

    fun setDefaultColor()

    fun setSentencePage(page: Int)

    fun showRecordProgress(show: Boolean, mRecordTime: Long)

    fun highLight(text: String?, spanIndexList: List<SpanIndex>)

    fun stopFingerRead()

    fun showGesture(show: Boolean)

}