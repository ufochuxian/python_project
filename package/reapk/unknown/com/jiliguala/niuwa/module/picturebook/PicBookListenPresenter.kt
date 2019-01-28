package com.jiliguala.niuwa.module.picturebook

import android.content.ContentResolver
import android.content.Intent
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.GlobalCtxHolder
import com.jiliguala.niuwa.common.util.PrefsUtils
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeLessonMgr
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.bus.RxBus
import com.jiliguala.niuwa.logic.bus.event.BaseEvent
import com.jiliguala.niuwa.logic.bus.event.McPcEvent
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.json.LessonProgressTemplate
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import com.jiliguala.niuwa.logic.network.json.ProgressTemplete
import com.jiliguala.niuwa.module.NewRoadMap.SendLessonProgressManager
import com.jiliguala.niuwa.module.mcphonics.detail.Model.McPcSubTaskTicket
import com.jiliguala.niuwa.module.mediaplayer.SimpleMediaPlayer
import com.jiliguala.niuwa.services.SystemMsgService
import rx.Observable
import rx.Subscription
import rx.android.schedulers.AndroidSchedulers
import rx.subscriptions.CompositeSubscription
import java.io.File
import java.util.concurrent.TimeUnit

class PicBookListenPresenter(private var lid: String?,
                             private var mData: PicBookTemplate.Data?,
                             private val view: PicBookContract.View,
                             private val path: String?,
                             val mSubscriptions: CompositeSubscription
) : PicBookContract.Presenter, SendLessonProgressManager.CallBack {

    private var mCurPage: PicBookTemplate.Data.Page? = null
    private var mCurSentence: PicBookTemplate.Data.Page.Sentence? = null
    private var mWordIndex = 0
    private var mSentenceIndex = 0
    private var mPageIndex = -1


    private var mSimpleMp: SimpleMediaPlayer
    private val mProgressManager = SendLessonProgressManager()
    private var mAutoFlip = false

    private var status = Status.Cover
    private var mTicket: McPcSubTaskTicket? = null
    private var delayFlip: Subscription? = null
    private var delayCover: Subscription? = null
    private var mNoticeShowing = false
    private var isAutoFlipping = false


    enum class Status {
        Cover,
        PlayAudio,
        End
    }


    init {
        view.presenter = this

        mSimpleMp = SimpleMediaPlayer()
        mSimpleMp.setMediaPlayerListener(null, {
            onAudioComplete()
        }, {
            //            onAudioComplete()
        })
    }

    override fun setTicket(ticket: McPcSubTaskTicket?) {
        mTicket = ticket
    }

    override fun start() {
        covertData()

        mAutoFlip = !isVertical()

        showPages(mData?.cover)

        val cover = mData?.cover
        if (cover != null) {
            playCover()
        } else {
            setPosData(0)
            showFirstNotice()
            playSentenceList()
        }
    }

    private fun playCover() {
        status = Status.Cover
        mSimpleMp.start(mData?.cover?.audio)
        view.setFlipRightEnable(false)
    }


    private fun showFirstNotice() {
        //mc 绘本一开始就显示翻页引导
        if (isVertical()) {
            val showed = PrefsUtils.getBoolean(PrefsUtils.KEYS.PREFS_KEY_MC_HAND_FLIP, false)
            if (!showed) {
                view.showFlipNotice(true)
                mNoticeShowing = true
            }
        }
    }

    private fun covertData() {
        mData?.pages?.forEach {

            if (it.image != null) {
                it.image = getImageUrl(it.image)
            }
            it.sentence?.guides?.forEach {
                if (it.audio != null) {
                    it.audio = getAudioUrl(it.audio)
                }
            }
            it.sentences?.forEach {
                it.guides?.forEach {
                    if (it.audio != null) {
                        it.audio = getAudioUrl(it.audio)
                    }
                }
            }

            if (it.sentences == null) {
                it.sentences = ArrayList()
                it.sentences.add(it.sentence)
            }
            it.pType = "page"
        }

        val cover = mData?.cover?.cover
        if (cover != null) {
            mData?.cover?.cover = getImageUrl(cover)
        }
        val audio = mData?.cover?.audio
        if (audio != null) {
            mData?.cover?.audio = getAudioUrl(audio)
        }

        val pageCover = PicBookTemplate.Data.Page()
        pageCover.pType = "cover"
        mData?.pages?.add(0, pageCover)

        val pageEnd = PicBookTemplate.Data.Page()
        pageEnd.pType = "end"
        mData?.pages?.add(pageEnd)
    }


    private fun getAudioUrl(name: String): String {
        return path + File.separator + name + ".mp3"
    }

    private fun getImageUrl(name: String): String {
        return path + File.separator + name + ".png"
    }

    private fun setPosData(position: Int) {
        mPageIndex = position
        mCurPage = mData?.pages?.getOrNull(position)
    }


//    fun showCover() {
//
//        val cover = mData?.cover
//        if (cover != null) {
//            status = Status.Cover
//            view.showCover(cover)
//            if (!TextUtils.isEmpty(cover.audio)) {
//                mSimpleMp.start(cover.audio)
//            }
//        }
//    }

    private fun showPages(cover: PicBookTemplate.Data.Cover?) {
        val pages = mData?.pages
        if (pages != null) {
            view.showPages(pages, isVertical(), mAutoFlip, mData?.type, cover)
        }
    }

    private fun onAudioComplete() {
        if (status == Status.Cover) {
            //延迟一秒
            delayCover = Observable
                    .timer(1, TimeUnit.SECONDS)
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribe {
                        val size = mData?.pages?.size ?: 0
                        if (size > 1) {
                            autoFlipTo(1)
                        }
                        view.setFlipRightEnable(true)
                    }
            mSubscriptions.add(delayCover)
        } else if (status == Status.PlayAudio) {
            //播放单词
            mWordIndex++
            val size = mCurSentence?.guides?.size ?: 0
            if (mWordIndex > size - 1) {
                playSentenceComplete()
            } else {
                playWord(mWordIndex)
            }
        } else if (status == Status.End) {
            onLessonComplete()
        }
    }

    /**
     * 播完一个句子
     */
    private fun playSentenceComplete() {
        view.setDefaultColor()
        val size = mCurPage?.sentences?.size ?: 0
        if (mSentenceIndex >= size - 1) {
            view.showAudioPlay(false)
            val nextPage = mPageIndex + 1
            if (nextPage < getPageSize()) {
                flipToNext()
            }
        } else {
            mSentenceIndex++
            mCurSentence = mCurPage?.sentences?.getOrNull(mSentenceIndex)
            playSentence()
        }
    }

    private fun autoFlipTo(pos: Int) {
        isAutoFlipping = true
        view.flipTo(pos, true)
    }

    private fun flipToNext() {
        if (mAutoFlip) {
            delayFlip = Observable.timer(500, TimeUnit.MILLISECONDS)
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribe({
                        autoFlipTo(mPageIndex + 1)
                    }) {

                    }
        }
    }

    override fun onAudioPlayClick() {
        playSentenceList()
    }


    override fun preFlipToPage(pos: Int) {
        stopPlay()
    }

    override fun onFlippedToPage(pos: Int) {

//JLGLLog.d("ListenPresenter", "onFlippedToPage :$pos")

        if (pos == mPageIndex) {
            return
        }

        if (status == Status.Cover) {
            showFirstNotice()
        } else {
            reportPageTurn(pos > mPageIndex)
            if (mNoticeShowing) {
                mNoticeShowing = false
                PrefsUtils.putBoolean(if (isVertical()) PrefsUtils.KEYS.PREFS_KEY_MC_HAND_FLIP else PrefsUtils.KEYS.PREFS_KEY_PH_HAND_FLIP, true)
                view.showFlipNotice(false)
            }
        }

        setPosData(pos)

        if (pos == 1 && mData?.cover != null) {
            view.setFlipLeftEnable(false)
            playSentenceList()
        } else if (pos == getPageSize() - 1) {
            view.setFlipLeftEnable(false)
            playEnd()
        } else {
            view.setFlipLeftEnable(true)
            playSentenceList()
        }
        isAutoFlipping = false
    }

    private fun playEnd() {
        status = Status.End
        val url = ContentResolver.SCHEME_ANDROID_RESOURCE + "://" + GlobalCtxHolder.getContext().packageName + "/raw/" + "the_end"
        mSimpleMp.start(url)
    }

    private fun getPageSize(): Int {
        return mData?.pages?.size ?: 0
    }


    private fun reportPageTurn(next: Boolean) {
        if (!isAutoFlipping) {
            val map: HashMap<String, Any?> = HashMap()
            map[AmplitudeConstants.TYPE_NAME.TYPE] = if (next) "Next" else "Previous"
            AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_PAGE_TURN, map)
        }
    }

    override fun onTurnModeClick(b: Boolean) {
        mAutoFlip = !mAutoFlip
        view.setTurnMode(mAutoFlip)
        if (mAutoFlip) {
            view.showFlipNotice(false)
            mNoticeShowing = false
        } else {
            val showed = PrefsUtils.getBoolean(if (isVertical()) PrefsUtils.KEYS.PREFS_KEY_MC_HAND_FLIP else PrefsUtils.KEYS.PREFS_KEY_PH_HAND_FLIP, false)
            if (!showed) {
                view.showFlipNotice(true)
                mNoticeShowing = true
            }
        }
        SystemMsgService.sendMessage(if (mAutoFlip) "已切换为自动模式" else "已切换为手动模式")
        reportMode(mAutoFlip)
    }


    private fun reportMode(auto: Boolean) {
        val map: HashMap<String, Any?> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.TARGET] = if (auto) "Auto" else "Manual"
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_MODE_TOGGLE, map)
    }

    override fun onPause() {
        delayFlip?.unsubscribe()
        delayCover?.unsubscribe()
        stopPlay()
    }

    override fun onResume() {

    }

    private fun playSentenceList() {
        status = Status.PlayAudio
        mSentenceIndex = 0
        mCurSentence = mCurPage?.sentences?.getOrNull(mSentenceIndex)
        playSentence()
        view.showAudioPlay(true)
    }

    private fun playSentence() {
        view.showSentencePage(mSentenceIndex)
        mWordIndex = 0
        playWord(mWordIndex)
    }

    private fun onLessonComplete() {

        val data = ProgressTemplete()
        data.bid = AccountCenter.newInstance().curBabyId
        data.lid = lid
        data.subtaskid = mData?._id

//        val data = SuperLessonProgress()
//        data.bid = AccountCenter.newInstance().curBabyId
//        data.lessonid = lid
//        data.sublessonid = mData?._id

        mProgressManager.setCallBack(this)
        mProgressManager.setLessonType(mTicket?.type)
        mProgressManager.sendProgress(data)

    }

    override fun onSendProgressSuccess(template: LessonProgressTemplate?) {
        setTicket()
        val guavatar = template?.data?.guavatar
        if (guavatar != null) {
            view.showReward(guavatar)
        } else {
            onFinishCourse()
        }
    }

    override fun onFinishCourse() {
        RxBus.getDefault().post(McPcEvent(BaseEvent.EventType.MC_PC_SUB_COURSE_FINISH, mTicket))
        view.doFinish()
    }


    private fun setTicket() {
        mTicket?.subSectionCount = "NA"
        mTicket?.subSection = (mPageIndex + 1).toString()
    }


    override fun onSendProgressFail() {
        setTicket()
        RxBus.getDefault().post(McPcEvent(BaseEvent.EventType.MC_PC_SUB_COURSE_SEND_PROGRESS_FAIL, mTicket))
        view.doFinish()
    }


    private fun playWord(index: Int) {
        val guide = mCurSentence?.guides?.getOrNull(index)
        if (guide != null) {
            mSimpleMp.start(guide.audio)

            if (!isVertical()) {
                //是否字体颜色需要跟着声音走
                val text = mCurSentence?.text
                if (text != null) {
                    view.highLight(text, guide.start, guide.start + guide.length)
                }
            }
        }
    }

    private fun isVertical(): Boolean {
        return "vertical" == mData?.style
    }


    override fun onRecordClick(isRecording: Boolean) {

    }

    override fun onMineClick(isPlaying: Boolean) {

    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
//JLGLLog.d("PicBookListenPresenter", "onWindowFocusChanged: $hasFocus")
        if (!hasFocus) {
            onPause()
        } else {
            when (status) {
                Status.Cover -> playCover()
                Status.PlayAudio -> playSentenceList()
                Status.End -> playEnd()
            }
        }
    }

    private fun stopPlay() {
        mSimpleMp.stop()
        view.showAudioPlay(false)
        view.setDefaultColor()
    }

    override fun onBackPressed() {
        view.showBackDialog()
//        if (status == Status.End) {
//            onSendProgressSuccess(null)
//            view.doFinish()
//            return
//        }
    }

    private fun reportExit() {
        if (mTicket == null) return
//        val map = java.util.HashMap<String, Any?>()
//        map[AmplitudeConstants.TYPE_NAME.ID] = AmplitudeUtils.convertSubId(lid)
//        map[AmplitudeConstants.TYPE_NAME.TYPE] = mTicket?.sub?.typ
//        map[AmplitudeConstants.TYPE_NAME.SECTION] = mPageIndex + 1
//        map[AmplitudeConstants.TYPE_NAME.SECTION_COUNT] = "NA"
//        map[AmplitudeConstants.TYPE_NAME.TIME] = "NA"
//        map[AmplitudeConstants.TYPE_NAME.UNIT] = mTicket?.lesson?.unit
//        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_SUB_LESSON_EXIT, map)

        val mgr = AmplitudeLessonMgr()
        mgr.reportSubLessonExit(mTicket,
                null,
                null,
                (mPageIndex + 1).toString(),
                null)
    }

    override fun confirmBack() {
        reportExit()
        view.doFinish()
    }

    override fun onDestroy() {
        mSimpleMp.onDestroy()
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {

    }

    override fun onPointPressed() {

    }

    override fun onPointUp() {

    }
}