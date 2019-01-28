package com.jiliguala.niuwa.module.picturebook.fingerread

import android.content.ContentResolver
import android.content.Context
import android.content.Intent
import com.github.sahasbhop.apngview.ApngDrawable
import com.github.sahasbhop.apngview.assist.ApngListener
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.GlobalCtxHolder
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.util.PrefsUtils
import com.jiliguala.niuwa.common.util.xutils.ClickManager
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeLessonMgr
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.amplitude.AmplitudeUtils
import com.jiliguala.niuwa.logic.bus.RxBus
import com.jiliguala.niuwa.logic.bus.event.BaseEvent
import com.jiliguala.niuwa.logic.bus.event.McPcEvent
import com.jiliguala.niuwa.logic.db.DaoDbManager
import com.jiliguala.niuwa.logic.db.daometa.PicBookRecord
import com.jiliguala.niuwa.logic.db.daometa.PicBookRecordDetail
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.JsonParseEngine
import com.jiliguala.niuwa.logic.network.QiNiuUploadManager
import com.jiliguala.niuwa.logic.network.json.*
import com.jiliguala.niuwa.logic.soundpool.SoundPoolWrapper
import com.jiliguala.niuwa.module.NewRoadMap.SendLessonProgressManager
import com.jiliguala.niuwa.module.interact.course.viewwidget.speak.ChiShenRecorderWrapper
import com.jiliguala.niuwa.module.mcphonics.detail.Model.McPcSubTaskTicket
import com.jiliguala.niuwa.module.mediaplayer.SimpleMediaPlayer
import com.jiliguala.niuwa.module.picturebook.PicBookContract
import com.jiliguala.niuwa.module.picturebook.PicBookReadPresenter
import com.jiliguala.niuwa.module.picturebook.ScoreUtils
import rx.Observable
import rx.Subscription
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers
import rx.subscriptions.CompositeSubscription
import java.io.File
import java.util.concurrent.TimeUnit

class PicBookFingerPresenter(private var lid: String?,
                             private var mData: PicBookTemplate.Data?,
                             private val view: PicBookContract.View,
                             private val path: String?,
                             val mSubscriptions: CompositeSubscription,
                             mContext: Context
) : PicBookContract.Presenter, ChiShenRecorderWrapper.CallBack, SendLessonProgressManager.CallBack {


    companion object {
        val TAG: String = this::class.java.simpleName
        const val REQUEST_CODE_TEACHERING = 0xa1
    }


    private var mCurPage: PicBookTemplate.Data.Page? = null
    private var mCurSentence: PicBookTemplate.Data.Page.Sentence? = null
    private var mPageIndex = -1
    private var mCurWord: PicBookTemplate.Data.Page.Sentence.Word? = null

    private var mSimpleMp: SimpleMediaPlayer = SimpleMediaPlayer()

    private var mRecorder: ChiShenRecorderWrapper
    private val mProgressManager = SendLessonProgressManager()

    private val mSoundPool: SoundPoolWrapper
    private val mCountingSoundId: Int
    private val mTryAgainSoundId: Int
    private val mGreatSoundId: Int
    private val mGoodJobSoundId: Int
    private val mPerfectSoundId: Int
    private val mRecordClickSoundId: Int
    private val mOneStarId: Int
    private val mTwoStarsId: Int
    private val mThreeStarsId: Int
    private var mWordsIndex = 0
    private var mWordGuideIndex = 0
    private var mSentenceIndex = 0

    private var status = Status.Guide

    private var hasFocus = true

    private var mTicket: McPcSubTaskTicket? = null

    private var mActiveSubscriptions: CompositeSubscription = CompositeSubscription()
    private var mClickManager = ClickManager()

    private var isAutoFlipping: Boolean = false

    enum class Status {
        Guide,
        GuideVideo,
        PlayAudio,
        Recording,
        Score,
        ScoreComplete,
        Correction,
        CorrectionPlay,
        CorrectionRecord,
        CorrectionScore,
        MinePlaying,
        Idle,
        End
    }

    init {
        view.presenter = this
        mSimpleMp.setMediaPlayerListener(null, {
            onAudioComplete()
        }, {
            //            onAudioComplete()
        })
        mRecorder = ChiShenRecorderWrapper(GlobalCtxHolder.getContext())
        mRecorder.setCallBack(this)


        mSoundPool = SoundPoolWrapper(mContext)
        mCountingSoundId = mSoundPool.loadSound(R.raw.sound_counting)
        mTryAgainSoundId = mSoundPool.loadSound(R.raw.picbook_tryagain)

        mGreatSoundId = mSoundPool.loadSound(R.raw.picbook_great)
        mGoodJobSoundId = mSoundPool.loadSound(R.raw.picbook_goodjob)
        mPerfectSoundId = mSoundPool.loadSound(R.raw.picbook_perfect)
        mRecordClickSoundId = mSoundPool.loadSound(R.raw.roadmap_onclick)

        mOneStarId = mSoundPool.loadSound(R.raw.onestar)
        mTwoStarsId = mSoundPool.loadSound(R.raw.twostars)
        mThreeStarsId = mSoundPool.loadSound(R.raw.threestars)
    }

    private val correctionPlayListener = SimpleMediaPlayer.OnCompleteListener {
        val guideSize = mCurWord?.guides?.size ?: 0
        if (mWordGuideIndex < guideSize - 1) {
            playWord(++mWordGuideIndex)
        } else {
            setStatus(Status.CorrectionRecord)
        }
    }

    private val sentencePlayListener = SimpleMediaPlayer.OnCompleteListener {
        //播放单词
        mSentenceIndex++
        val size = mCurSentence?.guides?.size ?: -1
        if (mSentenceIndex > size - 1) {
            setStatus(Status.Idle)
        } else {
            playSentenceGuide(mSentenceIndex)
        }
    }

    private val mineRecordPlayListener = SimpleMediaPlayer.OnCompleteListener {
        setStatus(Status.Idle)
    }

    private fun playWords(index: Int) {
        mCurWord = mCurSentence?.failedWords?.getOrNull(index)
        mWordGuideIndex = 0
        playWord(mWordGuideIndex)
    }

    private fun playWord(index: Int) {
        val guide = mCurWord?.guides?.getOrNull(index)
        if (guide != null) {
            mSimpleMp.start(guide.audio)
            mSimpleMp.completeListener = correctionPlayListener
            val text = mCurWord?.text
            if (text != null) {
                view.highLightCorrection(text, guide.start, guide.start + guide.length)
            }
        }
    }


    override fun start() {
        mSubscriptions.add(Observable.just(true)
                .observeOn(Schedulers.io())
                .map {
                    processData()
                }
                .observeOn(Schedulers.io())
                .map {
                    val map = DaoDbManager.getInstance().queryPicBookRead(mData?._id)
                    return@map mergeData(map)
                }
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    showPages(it)
                    showGuide()
                }, {

                }))
    }

    private fun mergeData(it: MutableMap<String, PicBookRecord>?): Int {
        var mIndex = 0
        run breaking@{
            if (it != null && it.isNotEmpty()) {
                mData?.pages?.forEachIndexed { index, element ->
                    if (element.sentence != null && element.sentence.lRecord == null) {
                        val localRecord = it[element.sentence.sentenseid]
                        if (localRecord != null) {
                            element.sentence.lRecord = localRecord
                            mIndex = index + 1
                        } else {
                            return@breaking
                        }
                    } else {

                    }
                }
            }
        }

        val size = mData?.pages?.size
        if (size != null && size > 0 && mIndex > size - 1) {
            mIndex = size - 1
        }
        return mIndex
    }


    private fun processData() {
        val cover = mData?.cover?.cover
        if (cover != null) {
            mData?.cover?.cover = getImageUrl(cover)
        }
        val audio = mData?.cover?.audio
        if (audio != null) {
            mData?.cover?.audio = getAudioUrl(audio)
        }
        mData?.pages?.forEach {
            if (it.image != null) {
                it.image = getImageUrl(it.image)
            }
            it.sentence?.guides?.forEach {
                if (it.audio != null) {
                    it.audio = getAudioUrl(it.audio)
                }
            }
            it.sentence?.words?.forEach {
                if (it.audio != null) {
                    it.audio = getAudioUrlSuffix(it.audio)
                }
                it.guides?.forEach {
                    if (it.audio != null) {
                        it.audio = getAudioUrlSuffix(it.audio)
                    }
                }
                val guide = PicBookTemplate.Data.Page.Sentence.Guide()
                guide.audio = it.audio
                guide.start = 0
                guide.length = it.text?.length ?: 0
                it.guides?.add(guide)
            }
        }
    }

    private fun getAudioUrl(name: String): String {
        return path + File.separator + name + ".mp3"
    }

    private fun getAudioUrlSuffix(name: String): String {
        if (name.endsWith(".mp3")) {
            return path + File.separator + name
        }
        return getAudioUrl(name)
    }

    private fun getImageUrl(name: String): String {
        return path + File.separator + name + ".png"
    }

    private fun getRawUrl(name: String): String {
        return ContentResolver.SCHEME_ANDROID_RESOURCE + "://" + GlobalCtxHolder.getContext().packageName + "/raw/" + name
    }

    private fun onAudioComplete() {
//        when (status) {
//            Status.AudioGuideFirst -> {
//                setStatus(Status.VideoGuide)
//            }
//            Status.VideoGuide -> {
//                view.hideFingerStart()
//                setStatus(Status.PlayAudio)
//            }
//            Status.Correction -> {
//                view.hideCorrectionTeacher()
//                view.showCorrectionView()
//            }
//            Status.PlayAudio -> {

//            }
//            Status.MinePlaying -> {

//            }
//            Status.End -> {

//            }
//            else -> {

//            }
//        }
    }


    private fun showPages(index: Int) {
        val pages = mData?.pages
        if (pages != null) {
            view.showPages(pages, false, false, mData?.type, null)
        }
        if (index > 0) {
            autoFlipTo(index, false)
        } else {
            startPage(0)
        }
    }

    private fun autoFlipTo(pos: Int, smooth: Boolean) {
        isAutoFlipping = true
        view.flipTo(pos, smooth)
    }

    private fun showGuide() {
        status = Status.Guide
        view.showFingerStart()
        var show = PrefsUtils.getBoolean(PrefsUtils.KEYS.PREFS_KEY_SHOW_FINGER_READ_VIDEO, false)
        if (show) {
            mSimpleMp.startRawFile(R.raw.picbook_finger_guide)
            mSimpleMp.completeListener = SimpleMediaPlayer.OnCompleteListener {
                setStatus(Status.Idle)
            }
        } else {
            //小朋友，在开始指读之前，先看一遍老师的指读示范吧
            mSimpleMp.startRawFile(R.raw.picbook_finger_guide_first)
            mSimpleMp.completeListener = SimpleMediaPlayer.OnCompleteListener {
                playGuideVideo()
                status = Status.GuideVideo
            }
        }
    }

    private fun setPosData(position: Int) {
        mPageIndex = position
        mCurPage = mData?.pages?.getOrNull(position)
        mCurSentence = mCurPage?.sentence
    }


    private fun canFlipRight(): Boolean {
        val record = mCurSentence?.lRecord
        return record != null
    }

    private fun canFlipLeft(): Boolean {
        val record = mData?.pages?.getOrNull(mPageIndex - 1)?.sentence?.lRecord
        return record != null
    }


    private fun setStatus(status: Status) {
        mActiveSubscriptions.clear()
        this.status = status
        when (status) {

            Status.Guide -> {
                showGuide()
            }

            Status.GuideVideo -> {
                mSimpleMp.startRawFile(R.raw.picbook_finger_guide_next)
                mSimpleMp.completeListener = SimpleMediaPlayer.OnCompleteListener {
                    PrefsUtils.putBoolean(PrefsUtils.KEYS.PREFS_KEY_SHOW_FINGER_READ_VIDEO, true)
                    setStatus(Status.Idle)
                }
            }

            Status.Idle -> {
                view.hideFingerStart()
                view.showCorrectionView(false, {})
                val lRecord = mData?.pages?.getOrNull(mPageIndex)?.sentence?.lRecord
                val hasRecord = lRecord != null
                if (lRecord != null) {
                    view.showPageStar(ScoreUtils.getStarCount(lRecord.score))
                } else {
                    view.hidePageStar()
                }
                view.setFlipLeftEnable(canFlipLeft())
                view.setFlipRightEnable(canFlipRight())
                view.showRecording(false)
                view.setRecordEnable(false)
                view.setMinePlayEnable(hasRecord)
                view.showMinePlaying(false)
                view.setAudioPlayEnable(hasRecord)
                view.showAudioPlay(false)
                view.setDefaultColor()
            }
            Status.PlayAudio -> {
                view.setFlipRightEnable(canFlipRight())
                view.setFlipLeftEnable(canFlipLeft())
                view.setAudioPlayEnable(true)
                view.showAudioPlay(true)
                view.showRecording(false)
                view.setRecordEnable(false)
                view.showMinePlaying(false)
                view.setMinePlayEnable(true)

                playSentence()
            }
            Status.Recording -> {
                view.setFlipRightEnable(false)
                view.setFlipLeftEnable(false)

                view.showAudioPlay(false)
                view.setAudioPlayEnable(false)

                view.setRecordEnable(true)
                view.showRecording(true)

                view.showMinePlaying(false)
                view.setMinePlayEnable(false)

                startRecord()
            }

            Status.MinePlaying -> {

                view.setFlipRightEnable(canFlipRight())
                view.setFlipLeftEnable(canFlipLeft())
                view.showAudioPlay(false)
                view.setAudioPlayEnable(true)
                view.showRecording(false)
                view.setRecordEnable(false)
                view.setMinePlayEnable(true)
                view.showMinePlaying(true)

                playMineRecord()
            }

            Status.Score -> {
                view.stopRecordProgress()
                view.stopFingerRead()
                stopRecord()
            }

            Status.ScoreComplete -> {
                view.hideStar()
                val lRecord = mData?.pages?.getOrNull(mPageIndex)?.sentence?.lRecord
                if (lRecord != null) {
                    view.showPageStar(ScoreUtils.getStarCount(lRecord.score))
                } else {
                    view.hidePageStar()
                }
                view.showRecording(false)
                view.setRecordEnable(false)
                view.setMinePlayEnable(lRecord != null)
                view.showMinePlaying(false)
            }

            Status.Correction -> {
                val spanIndexList = ArrayList<SpanIndex>()
                val text = mCurSentence?.text
                mCurSentence?.failedWords?.forEach {
                    val start = text?.indexOf(it.text)
                    if (start != null) {
                        spanIndexList.add(SpanIndex(start, start + it.text.length))
                    }
                }
                if (text != null) {
                    view.highLight(text, spanIndexList)
                }

                view.showCorrectionView(true, {
                    setStatus(Status.CorrectionScore)
                })
                mSimpleMp.startRawFile(R.raw.picbook_finger_correction)
                mSimpleMp.completeListener = SimpleMediaPlayer.OnCompleteListener {
                    setStatus(Status.CorrectionPlay)
                }
            }

            Status.CorrectionPlay -> {
                view.showCorrectionGuide(false)
                view.showCorrectionRecord(false)
                mWordsIndex = 0
                mWordGuideIndex = 0
                playWords(mWordsIndex)
            }

            Status.CorrectionRecord -> {
                view.showCorrectionRecord(true)
                startCorrectionRecord()
            }
            Status.CorrectionScore -> {
                view.showCorrectionRecord(false)
                stopRecord()
            }
            else -> {

            }
        }
    }

    private fun playMineRecord() {
        mSimpleMp.start(mCurSentence?.lRecord?.audio)
        mSimpleMp.completeListener = mineRecordPlayListener
    }

    private fun playSentence() {
        status = Status.PlayAudio
        mSentenceIndex = 0
        playSentenceGuide(mSentenceIndex)
    }

    private fun playSentenceGuide(index: Int) {
        if (mCurSentence?.guides == null) {
            return
        }
        val guide = mCurSentence?.guides?.getOrNull(index)
        if (guide != null) {
            mSimpleMp.start(guide.audio)
            mSimpleMp.completeListener = sentencePlayListener
        }
    }


    private fun startRecord() {
        mSimpleMp.stop()
        playSoundLow(mRecordClickSoundId)
        mRecorder.startRecordByChiShen(mCurPage?.sentence?.text, getRecordPathName())
        val mRecordTime: Long = 20
//        val size = mCurPage?.sentence?.text?.split(" ")?.size
//        mRecordTime += size ?: 0
        val recordSubscribe: Subscription = Observable.timer(mRecordTime, TimeUnit.SECONDS)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    setStatus(Status.Score)
                })
        mActiveSubscriptions.add(recordSubscribe)

        view.startRecordProgress(mRecordTime * 1000)
    }

    private fun startCorrectionRecord() {
        mSimpleMp.stop()
        playSoundLow(mRecordClickSoundId)
        mRecorder.startRecordByChiShen(mCurWord?.text, getRecordPathName())
        val mRecordTime: Long = 10
//        val size = mCurWord?.text?.split(" ")?.size
//        mRecordTime += size ?: 0
        val recordSubscribe: Subscription = Observable.timer(mRecordTime, TimeUnit.SECONDS)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    setStatus(Status.CorrectionScore)
                })
        mActiveSubscriptions.add(recordSubscribe)
    }


    fun stopRecord() {
        mRecorder.stopRecordByChiShen()
    }


    private fun getRecordPathName(): String? {
        return mCurSentence?.sentenseid + "_" + System.currentTimeMillis()
    }


    private fun playSoundLow(soundId: Int) {
        mSoundPool.playAudioEffect(soundId)
    }

    private fun playGuideVideo() {
        view.showVideo(getRawUrl("finger_video"), REQUEST_CODE_TEACHERING)
    }


    override fun onFlippedToPage(pos: Int) {
        if (pos == mPageIndex) {
            return
        }
        reportPageTurn(pos > mPageIndex)
        startPage(pos)
        isAutoFlipping = false
    }

    private fun reportPageTurn(next: Boolean) {
        if (!isAutoFlipping) {
            val map: HashMap<String, Any?> = HashMap()
            map[AmplitudeConstants.TYPE_NAME.TYPE] = if (next) "Next" else "Previous"
            AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_PAGE_TURN, map)
        }
    }

    private fun startPage(pos: Int) {
        setPosData(pos)
        if (status != Status.Guide) {
            setStatus(Status.Idle)
        }
        view.showGesture(true)
    }

    override fun onTurnModeClick(b: Boolean) {

    }

    override fun onAudioPlayClick() {
        setStatus(Status.PlayAudio)
        reportReaderPlay(false)
    }

    private fun reportReaderPlay(isLocal: Boolean) {
        val map: HashMap<String, Any?> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.TYPE] = if (isLocal) "Local" else "Authentic"
        map[AmplitudeConstants.TYPE_NAME.ID] = AmplitudeUtils.convertSubId(mData?._id)
        map[AmplitudeConstants.TYPE_NAME.UNIT] = mTicket?.lesson?.unit
        map[AmplitudeConstants.TYPE_NAME.SECTION_ID] = mPageIndex + 1
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_READER_PLAY_CLICK, map)
    }

    override fun onPause() {
        mSimpleMp.stop()
        mActiveSubscriptions.clear()
        stopRecord()
    }

    override fun onResume() {

    }

    override fun onDestroy() {

    }

    override fun onRecordClick(isRecording: Boolean) {
        if (mClickManager.isRepatedClick) {
            return
        }
        setStatus(Status.Score)
        reportRecordClick(false)
    }

    private fun reportRecordClick(record: Boolean) {
//        val map: HashMap<String, Any?> = HashMap()
//        map[AmplitudeConstants.TYPE_NAME.TYPE] = if (record) "Start" else "End"
//        map[AmplitudeConstants.TYPE_NAME.ID] = AmplitudeUtils.convertSubId(mData?._id)
//        map[AmplitudeConstants.TYPE_NAME.UNIT] = mTicket?.lesson?.unit
//        map[AmplitudeConstants.TYPE_NAME.SECTION_ID] = mPageIndex + 1
//        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_RECORDING_CLICK, map)
    }

    override fun onMineClick(isPlaying: Boolean) {
        if (mClickManager.isRepatedClick) {
            return
        }
        if (!isPlaying) {
            setStatus(Status.MinePlaying)
            reportReaderPlay(true)
        } else {
            setStatus(Status.Idle)
        }
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        this.hasFocus = hasFocus
        if (!hasFocus) {
            onPause()
        } else {
            if (status == Status.Guide) {
                setStatus(Status.Guide)
            } else if (status == Status.GuideVideo) {
                setStatus(Status.GuideVideo)
            } else if (status == Status.Correction || status == Status.CorrectionPlay || status == Status.CorrectionRecord) {
                setStatus(Status.CorrectionPlay)
            } else {
                setStatus(Status.Idle)
            }
        }
    }

    override fun onBackPressed() {
        if (status == PicBookReadPresenter.Status.End) {
            onSendProgressSuccess(null)
            view.doFinish()
            return
        }
        view.showBackDialog()
    }

    override fun confirmBack() {
        reportExit()
        view.doFinish()
    }

    private fun reportExit() {
        val mgr = AmplitudeLessonMgr()
        mgr.reportSubLessonExit(mTicket,
                null,
                null,
                (mPageIndex + 1).toString(),
                null)
    }

    override fun setTicket(ticket: McPcSubTaskTicket?) {
        mTicket = ticket
    }

    override fun preFlipToPage(pos: Int) {
        if (status != Status.Guide) {
            mSimpleMp.stop()
        }
        view.showGesture(false)
    }

    override fun onFinishCourse() {
        val next = getNextSubBean()
        val share = next?.isCompleted ?: true
        view.showReadEnd(null, share)
        view.doFinish()
    }

    private fun getNextSubBean(): Lessons.SubsBean? {
        var position = mTicket?.position
        if (position != null) {
            return mTicket?.lesson?.subs?.getOrNull(++position)
        }
        return null
    }


    override fun onStarted() {
    }

    override fun onStopped() {
    }

    override fun onError() {

    }

    private fun showScore(score: Int, details: MutableList<RecordTemplete.Details>) {

        val star = ScoreUtils.getStarCount(score)
        view.showStar(star, object : ApngListener() {

            override fun onAnimationEnd(apngDrawable: ApngDrawable?) {
                super.onAnimationEnd(apngDrawable)
                setStatus(Status.ScoreComplete)
                if (!hasFocus) {
                    return
                }
                val keyWordsFailed = keyWordsFailed(details)
                if (keyWordsFailed.isNotEmpty()) {
                    mCurSentence?.failedWords = keyWordsFailed
                    setStatus(Status.Correction)
                } else {
                    delayPageEnd()
                }
            }
        })
        when (star) {
            1 -> playSound(mOneStarId)
            2 -> playSound(mTwoStarsId)
            3 -> playSound(mThreeStarsId)
            else -> playSound(mOneStarId)
        }
    }

    //重点单词小于54分
    private fun keyWordsFailed(details: MutableList<RecordTemplete.Details>): List<PicBookTemplate.Data.Page.Sentence.Word> {
        val keyWords = ArrayList<PicBookTemplate.Data.Page.Sentence.Word>()
        mCurSentence?.words?.forEach { word ->
            details.forEach {
                if (it.charX.toLowerCase() == word.text?.toLowerCase() && it.score <= 54) {
                    keyWords.add(word)
                }
            }
        }
        return keyWords
    }

    private fun playSound(soundId: Int) {
        mSoundPool.playAudioEffectHigh(soundId)
    }


    private fun onRecordResult(realScore: Int, processScore: Int, details: MutableList<RecordTemplete.Details>) {
        mSubscriptions.add(Observable.just(true)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe {
                    if (status == Status.CorrectionScore) {
                        onWordRecordResult(realScore, processScore)
                    } else if (status == Status.Score) {
                        onSentenceRecordResult(realScore, processScore, details)
                    }
                })
    }

    private fun onWordRecordResult(realScore: Int, processScore: Int) {
        val star = ScoreUtils.getStarCount(processScore)
        view.showCorrectionStar(star, object : ApngListener() {

            override fun onAnimationEnd(apngDrawable: ApngDrawable?) {
                super.onAnimationEnd(apngDrawable)
                if (!hasFocus) {
                    return
                }
                val wordsSize = mCurSentence?.failedWords?.size ?: 0
                if (mWordsIndex < wordsSize - 1) {
                    playWords(++mWordsIndex)
                } else {
                    view.showCorrectionView(false, {})
                    delayPageEnd()
                }
            }
        })

        when (star) {
            1 -> playSound(mGreatSoundId)
            2 -> playSound(mGoodJobSoundId)
            3 -> playSound(mPerfectSoundId)
            else -> playSound(mGreatSoundId)
        }
    }

    private fun delayPageEnd() {
        val nextPage = mPageIndex + 1
        val pageSize = mData?.pages?.size ?: 0
        if (nextPage < pageSize) {
            flipToNext()
        } else {
            onLessonComplete()
        }
    }

    private fun flipToNext() {
        val delayPageEnd: Subscription = Observable.just(mPageIndex).delay(500, TimeUnit.MILLISECONDS)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    autoFlipTo(it + 1, true)
                }) {

                }
        mActiveSubscriptions.add(delayPageEnd)
    }


    private fun onLessonComplete() {
        status = Status.End
        val data = ProgressTemplete()
        data.bid = AccountCenter.newInstance().curBabyId
        data.lid = lid
        data.subtaskid = mData?._id
        val list: MutableList<DetailBeanTemplete> = mutableListOf()
        data.detail = list
        mData?.pages?.forEach {
            val lRecord = it.sentence?.lRecord
            if (lRecord != null) {
                val record = DetailBeanTemplete()
                record.realscore = lRecord.reaL_SCORE?.toInt() ?: 0
                record.url = lRecord.remotE_AUDIO
                record.sectionid = it.pageid
                record.score = lRecord.score?.toInt() ?: 0
                val details = ArrayList<RecordTemplete.Details>()
                lRecord.details?.forEach {
                    val detail = RecordTemplete.Details()
                    detail.charX = it.char
                    detail.score = it.score
                    details.add(detail)
                }
                record.detail = details
                list.add(record)
            }
        }

        mProgressManager.setCallBack(this)
        mProgressManager.setLessonType(mTicket?.type)
        mProgressManager.sendProgress(data)
    }


    private fun onSentenceRecordResult(realScore: Int, processScore: Int, details: MutableList<RecordTemplete.Details>) {
        val record = mCurSentence?.lRecord
        if (record != null && processScore < record.score) {
            showScore(processScore, details)
            return
        }

        uploadQiniu()

        mSubscriptions.add(Observable.just(processScore)
                .observeOn(Schedulers.io())
                .map {
                    val lRecord = PicBookRecord()
                    lRecord.uniT_ID = mCurSentence?.sentenseid
                    lRecord.lessoN_ID = lid
                    lRecord.sublessoN_ID = mData?._id
                    lRecord.score = it
                    lRecord.reaL_SCORE = realScore
                    lRecord.audio = mRecorder.wavePath
                    DaoDbManager.getInstance().updatePicBookRead(lRecord)

                    val lDetails = ArrayList<PicBookRecordDetail>()
                    details.forEachIndexed { index, data ->
                        val detail = PicBookRecordDetail()
                        detail.id = mCurSentence?.sentenseid + index
                        detail.uniT_ID = mCurSentence?.sentenseid
                        detail.char = data.charX
                        detail.score = data.score
                        lDetails.add(detail)
                    }
                    DaoDbManager.getInstance().updatePicBookRecordDetail(lDetails)
                    lRecord.setTempDetails(lDetails)

                    return@map lRecord
                }
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({

//JLGLLog.i("PicBookReadPresenter", "onReceiveValue, value: %s", realScore.toString())
                    showScore(it.score, details)
                    mCurSentence?.lRecord = it
                }))
    }


    private fun uploadQiniu() {
        val path = mRecorder.wavePath
        QiNiuUploadManager().requestForUploadToken(CommonSets.TYPE_AUDIO_RECORD, path, mPageIndex.toString(), object : QiNiuUploadManager.QiniuUploadListener {
            override fun onSucceed(url: String?) {}

            override fun onFailed() {}

            override fun onProgress(progress: Int) {}

            override fun onSucceed(url: String?, sectionID: String?) {
                val index = sectionID?.toInt()
                if (index != null) {
                    val lRecord = mData?.pages?.getOrNull(index)?.sentence?.lRecord
                    if (lRecord != null) {
                        lRecord.remotE_AUDIO = url
                        updateLocal(lRecord)
                    }
                }
            }
        })
    }

    private fun updateLocal(pic: PicBookRecord) {
        mSubscriptions.add(Observable.just(pic)
                .observeOn(Schedulers.io())
                .map {
                    DaoDbManager.getInstance().updatePicBookRead(it)
                }.subscribe({}, {})
        )
    }


    private fun onRecordError(error: String) {
//JLGLLog.i("PicBookReadPresenter", "errorResult:, %s", error)

        reportErrorMessage(error)

        mSubscriptions.add(Observable.just(true)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    setStatus(Status.Idle)
                }))
    }

    private fun reportErrorMessage(error: String) {
        val map = java.util.HashMap<String, Any>()
        map[AmplitudeConstants.TYPE_NAME.MESSAGE] = error
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_FAIL_TO_RECORD, map)
    }


    override fun onRun(result: String?) {

//JLGLLog.d(TAG, "finger record: $result")

        if (!hasFocus) {
            return
        }

        try {
            val recordTemplete = JsonParseEngine.parseJson(result, RecordTemplete::class.java)

            if (recordTemplete.isVolumeCallBack) return

            if (!recordTemplete.isErrorResult) {
                val realScore = recordTemplete.result.overall

                val processScore = recordTemplete.processScore(realScore)

                //记录下，处理后的分数，和真实分数的偏移量
                val mScoreOffset = processScore - realScore

                if (recordTemplete.result.wavetime != 0) {
                    recordTemplete.result?.details?.forEach {
                        it.score = Math.min(it.score + mScoreOffset, 100)
                    }
                    onRecordResult(realScore, processScore, recordTemplete.result.details)
                } else {
                    onRecordError(recordTemplete.error)
                }

            } else {
                onRecordError(recordTemplete.error)
            }
        } catch (e: Exception) {
//JLGLLog.e(PicBookReadPresenter.TAG, e.toString())
        }

    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        if (requestCode == REQUEST_CODE_TEACHERING) {

        }
    }

    override fun onPointPressed() {
        setStatus(Status.Recording)
        reportRecordClick(true)
    }

    override fun onPointUp() {
        setStatus(Status.Score)
    }

    override fun onData(data: ByteArray?, size: Int) {
    }

    override fun onInitFailed() {
    }

    override fun onSendProgressSuccess(template: LessonProgressTemplate?) {
        setTicket()
        mSubscriptions.add(Observable.just(template)
                .observeOn(Schedulers.io())
                .map {
                    deleteLocal()
                    return@map it
                }
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    val guavatar = it?.data?.guavatar
                    if (guavatar != null) {
                        view.showReward(guavatar)
                    } else {
                        onFinishCourse()
                    }
                }))
    }

    private fun setTicket() {
        mTicket?.subSectionCount = "NA"
        mTicket?.subSection = (mPageIndex + 1).toString()
    }


    private fun deleteLocal() {
        val ids: MutableList<String> = mutableListOf()
        mData?.pages?.forEach {
            val id = it.sentence?.sentenseid
            if (id != null) {
                ids.add(id)
            }
        }
        DaoDbManager.getInstance().deletePicBookRecord(ids)
    }

    override fun onSendProgressFail() {
        setTicket()
        RxBus.getDefault().post(McPcEvent(BaseEvent.EventType.MC_PC_SUB_COURSE_SEND_PROGRESS_FAIL, mTicket))
        view.doFinish()
    }


}