package com.jiliguala.niuwa.module.picturebook

import android.content.Intent
import com.github.sahasbhop.apngview.assist.ApngListener
import com.jiliguala.niuwa.logic.network.json.Guavatar
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import com.jiliguala.niuwa.logic.network.json.SuperLessonProgressResult
import com.jiliguala.niuwa.module.mcphonics.detail.Model.McPcSubTaskTicket
import com.jiliguala.niuwa.module.picturebook.fingerread.SpanIndex

interface PicBookContract {


    interface View {

        var presenter: Presenter?

        fun showBg()

        fun showCover(cover: PicBookTemplate.Data.Cover)

        fun hideCover()

        fun showPages(pages: List<PicBookTemplate.Data.Page>,
                      vertical: Boolean,
                      auto: Boolean,
                      type: String?,
                      cover: PicBookTemplate.Data.Cover?)

        fun showFlipNotice(b: Boolean)

        fun highLight(text: String?, start: Int, i: Int)

        fun setTurnMode(auto: Boolean)

        fun flipTo(i: Int, smooth: Boolean)


        //read
        fun showCountDown(progress: Int)

        fun showReadStart()

        fun hideReadStart()

        fun setFlipRightEnable(b: Boolean)

        fun setFlipLeftEnable(b: Boolean)

        fun setRecordEnable(b: Boolean)

        fun setMinePlayEnable(b: Boolean)

        fun showRecording(b: Boolean)

        fun showStar(star: Int, l: ApngListener)

        fun setAudioPlayEnable(b: Boolean)

        fun showMinePlaying(b: Boolean)

        fun hideStar()

        fun showListenEnd(cover: String?)

        fun showReadEnd(result: SuperLessonProgressResult.Data?, hasShare: Boolean)

        fun showBackDialog()

        fun doFinish()

        fun showPageStar(star: Int)

        fun hidePageStar()

        fun hideStartSpeaker()

        fun showAudioPlay(b: Boolean)

        fun setDefaultColor()

        fun showReward(guavatar: Guavatar)

        fun showSentencePage(index: Int)

        fun showFingerStart()

        fun showVideo(url: String, code: Int)

        fun hideFingerStart()

        fun startRecordProgress(mRecordTime: Long)

        fun stopRecordProgress()

        fun highLight(text: String?,spanIndexList: List<SpanIndex>)

        fun showCorrectionGuide(b: Boolean)

        fun showCorrectionView(b: Boolean, l: (android.view.View) -> Unit)

        fun highLightCorrection(text: String, start: Int, i: Int)

        fun showCorrectionRecord(b: Boolean)

        fun stopFingerRead()

        fun showCorrectionStar(star: Int, apngListener: ApngListener)

        fun showGesture(show: Boolean)

    }


    interface Presenter {
        fun start()

        fun onFlippedToPage(pos: Int)

        fun onTurnModeClick(b: Boolean)

        fun onAudioPlayClick()

        fun onPause()

        fun onResume()

        fun onDestroy()

        fun onRecordClick(isRecording: Boolean)

        fun onMineClick(isPlaying: Boolean)

        fun onWindowFocusChanged(hasFocus: Boolean)

        fun onBackPressed()

        fun confirmBack()

        fun setTicket(ticket: McPcSubTaskTicket?)

        fun preFlipToPage(pos: Int)

        fun onFinishCourse()

        fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?)

        fun onPointPressed()

        fun onPointUp()

    }
}