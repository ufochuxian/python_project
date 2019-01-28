package com.jiliguala.niuwa.module.picturebook

import android.content.ContentResolver
import android.content.Context
import android.content.Intent
import com.github.sahasbhop.apngview.ApngDrawable
import com.github.sahasbhop.apngview.assist.ApngListener
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.GlobalCtxHolder
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
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
import rx.Observable
import rx.Subscription
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers
import rx.subscriptions.CompositeSubscription
import java.io.File
import java.util.concurrent.TimeUnit

class PicBookReadPresenter(private var lid: String?,
                           private var mData: PicBookTemplate.Data?,
                           private val view: PicBookContract.View,
                           private val path: String?,
                           val mSubscriptions: CompositeSubscription,
                           mContext: Context
) : PicBookContract.Presenter, ChiShenRecorderWrapper.CallBack, SendLessonProgressManager.CallBack {

    companion object {
        val TAG: String = this::class.java.simpleName
    }


    private var mCurPage: PicBookTemplate.Data.Page? = null
    private var mCurSentence: PicBookTemplate.Data.Page.Sentence? = null
    private var mWordIndex = 0
    private var mPageIndex = -1

    private var mSimpleMp: SimpleMediaPlayer
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

    private var status = Status.Start

    private var hasFocus = true

    private var mTicket: McPcSubTaskTicket? = null

    private var mActiveSubscriptions: CompositeSubscription = CompositeSubscription()
    private var mClickManager = ClickManager()

    private var isAutoFlipping: Boolean = false


    enum class Status {
        Start,
        PlayAudio,
        Recording,
        Score,
        Complete,
        MinePlaying,
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

    override fun setTicket(ticket: McPcSubTaskTicket?) {
        mTicket = ticket
    }


    private fun playSound(soundId: Int) {
        mSoundPool.playAudioEffectHigh(soundId)
    }

    private fun playSoundLow(soundId: Int) {
        mSoundPool.playAudioEffect(soundId)
    }

    override fun start() {

        covertResourceUrl()

        view.showBg()

        mSubscriptions.add(Observable.just(true)
                .observeOn(Schedulers.io())
                .map {
                    return@map DaoDbManager.getInstance().queryPicBookRead(mData?._id)
                }
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    val mIndex = mergeData(it)
                    showPages(mIndex)
                    showStart()
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
            mIndex = 0
        }
        return mIndex
    }

    private fun covertResourceUrl() {
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
        }
    }


    private fun getAudioUrl(name: String): String {
        return path + File.separator + name + ".mp3"
    }

    private fun getImageUrl(name: String): String {
        return path + File.separator + name + ".png"
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


    private fun showStart() {

        status = Status.Start

        view.showReadStart()
        //小朋友，大声跟读绘本吧
        mSimpleMp.start(getRawUrl("picbook_read_start"))

    }

    private fun getRawUrl(name: String): String {
        return ContentResolver.SCHEME_ANDROID_RESOURCE + "://" + GlobalCtxHolder.getContext().packageName + "/raw/" + name
    }


    private fun onAudioComplete() {
        if (status == Status.Start) {
            view.hideStartSpeaker()
            //播放倒计时
            val count = 3
            val countDownSubscribe: Subscription = Observable.interval(0, 1, TimeUnit.SECONDS)
                    .take(count + 1)
                    .map {
                        count - it
                    }
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribe({
                        if (it > 0) {
                            view.showCountDown(it.toInt())
                            mSoundPool.playAudioEffectHigh(mCountingSoundId)
                        }
                    }, {

                    }, {
                        view.hideReadStart()
                        setStatus(Status.PlayAudio)
                    })
            mActiveSubscriptions.add(countDownSubscribe)

        } else if (status == Status.PlayAudio) {
            //播放单词
            mWordIndex++
            val size = mCurSentence?.guides?.size ?: -1
            if (mWordIndex > size - 1) {
                setStatus(Status.Recording)
            } else {
                playWord(mWordIndex)
            }
        } else if (status == Status.MinePlaying) {
            setStatus(Status.End)
        } else if (status == Status.End) {
            onSendProgressSuccess(null)
        }
    }


    override fun preFlipToPage(pos: Int) {
        if (status != Status.Start) {
            setStatus(Status.Complete)
        }
    }


    override fun onFlippedToPage(pos: Int) {
        if (pos == mPageIndex) {
            return
        }
        reportPageTurn(pos > mPageIndex)
        startPage(pos)
        isAutoFlipping = false
    }

    private fun startPage(pos: Int) {
        setPosData(pos)
        if (status != Status.Start) {
            startPage()
        }
    }

    private fun reportPageTurn(next: Boolean) {
        if (!isAutoFlipping) {
            val map: HashMap<String, Any?> = HashMap()
            map[AmplitudeConstants.TYPE_NAME.TYPE] = if (next) "Next" else "Previous"
            AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_PAGE_TURN, map)
        }
    }

    private fun startPage() {
        if (!hasRecord()) {
            setStatus(Status.PlayAudio)
        } else {
            setStatus(Status.Complete)
        }
    }

    private fun setStatus(status: Status) {

        mActiveSubscriptions.clear()

        this.status = status
        when (status) {
            Status.PlayAudio -> playSentence()
            Status.Recording -> startRecord()
            Status.Score -> {
                stopRecord()
            }
            Status.Complete -> {
                mSimpleMp.stop()
            }
            Status.MinePlaying -> playMineRecord()
            else -> {

            }
        }
        showByStatus()
    }

    private fun showByStatus() {
        when (status) {
            Status.PlayAudio -> {
                view.setFlipRightEnable(canFlipRight())
                view.setFlipLeftEnable(canFlipLeft())

                view.setAudioPlayEnable(true)
                view.showAudioPlay(true)

                view.showRecording(false)
                view.setRecordEnable(true)

                view.showMinePlaying(false)
                view.setMinePlayEnable(false)

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

                view.setDefaultColor()

            }
            Status.Score -> {
                view.setFlipRightEnable(false)
                view.setFlipLeftEnable(false)

                view.showAudioPlay(false)
                view.setAudioPlayEnable(false)

                view.showRecording(false)
                view.setRecordEnable(false)

                view.showMinePlaying(false)
                view.setMinePlayEnable(false)
            }
            Status.MinePlaying -> {
                view.setFlipRightEnable(canFlipRight())
                view.setFlipLeftEnable(canFlipLeft())

                view.showAudioPlay(false)
                view.setAudioPlayEnable(true)

                view.showRecording(false)
                view.setRecordEnable(true)

                view.setMinePlayEnable(true)
                view.showMinePlaying(true)
            }

            Status.Complete -> {

                view.setDefaultColor()

                view.setFlipRightEnable(canFlipRight())
                view.setFlipLeftEnable(canFlipLeft())

                view.showAudioPlay(false)
                view.setAudioPlayEnable(true)

                view.showRecording(false)
                view.setRecordEnable(true)

                view.showMinePlaying(false)

                val lRecord = mData?.pages?.getOrNull(mPageIndex)?.sentence?.lRecord
                if (lRecord != null) {
                    view.showPageStar(ScoreUtils.getStarCount(lRecord.score))
                    view.setMinePlayEnable(true)
                } else {
                    view.hidePageStar()
                    view.setMinePlayEnable(true)
                }
            }
            else -> {
                view.setFlipRightEnable(canFlipRight())
                view.setFlipLeftEnable(canFlipLeft())

                view.showAudioPlay(false)
                view.setAudioPlayEnable(true)

                view.showRecording(false)
                view.setRecordEnable(true)

                view.showMinePlaying(false)
                view.setMinePlayEnable(true)
            }
        }
    }


    private fun setPosData(position: Int) {
        mPageIndex = position
        mCurPage = mData?.pages?.getOrNull(position)
        mCurSentence = mCurPage?.sentence
    }

    private fun playSentence() {
        status = Status.PlayAudio
        mWordIndex = 0
        playWord(mWordIndex)
    }

    private fun hasRecord(): Boolean {
        return mCurSentence?.lRecord != null
    }

    private fun canFlipRight(): Boolean {
        val record = mCurSentence?.lRecord
        return record != null
    }

    private fun canFlipLeft(): Boolean {
        val record = mData?.pages?.getOrNull(mPageIndex - 1)?.sentence?.lRecord
        return record != null
    }


    private fun getRecordPathName(): String? {
        return mCurSentence?.sentenseid + "_" + System.currentTimeMillis()
    }

    private fun playWord(index: Int) {
        if (mCurSentence?.guides == null) {
            return
        }
        val guide = mCurSentence?.guides?.getOrNull(index)
        guide?.let {

            mSimpleMp.start(it.audio)

            //是否字体颜色需要跟着声音走
            val text = mCurSentence?.text
            if (text != null) {
                view.highLight(text, it.start, it.start + it.length)
            }
        }
    }

    override fun onAudioPlayClick() {
        setStatus(Status.PlayAudio)
        reportReaderPlay(false)
    }

    override fun onRecordClick(isRecording: Boolean) {

        if (mClickManager.isRepated(1000)) {
            return
        }

        if (!isRecording) {
            setStatus(Status.Recording)
        } else {
            setStatus(Status.Score)
        }

        reportRecordClick(!isRecording)
    }

    private fun reportRecordClick(record: Boolean) {
        val map: HashMap<String, Any?> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.TYPE] = if (record) "Start" else "End"
        map[AmplitudeConstants.TYPE_NAME.ID] = AmplitudeUtils.convertSubId(mData?._id)
        map[AmplitudeConstants.TYPE_NAME.UNIT] = mTicket?.lesson?.unit
        map[AmplitudeConstants.TYPE_NAME.SECTION_ID] = mPageIndex + 1
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_RECORDING_CLICK, map)
    }


    fun stopRecord() {
        mRecorder.stopRecordByChiShen()
    }

    fun startRecord() {
        mSimpleMp.stop()
        playSoundLow(mRecordClickSoundId)
        mRecorder.startRecordByChiShen(mCurPage?.sentence?.text, getRecordPathName())
        var mRecordTime: Long = 4
        val size = mCurPage?.sentence?.text?.split(" ")?.size
        mRecordTime += size ?: 0
        val recordSubscribe: Subscription = Observable.timer(mRecordTime, TimeUnit.SECONDS)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    setStatus(Status.Score)
                })
        mActiveSubscriptions.add(recordSubscribe)
    }

    override fun onMineClick(isPlaying: Boolean) {
        if (mClickManager.isRepatedClick) {
            return
        }
        if (!isPlaying) {
            setStatus(Status.MinePlaying)
            reportReaderPlay(true)
        } else {
            setStatus(Status.Complete)
        }
    }


    private fun reportReaderPlay(isLocal: Boolean) {
        val map: HashMap<String, Any?> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.TYPE] = if (isLocal) "Local" else "Authentic"
        map[AmplitudeConstants.TYPE_NAME.ID] = AmplitudeUtils.convertSubId(mData?._id)
        map[AmplitudeConstants.TYPE_NAME.UNIT] = mTicket?.lesson?.unit
        map[AmplitudeConstants.TYPE_NAME.SECTION_ID] = mPageIndex + 1
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_READER_PLAY_CLICK, map)
    }

    private fun playMineRecord() {
        mSimpleMp.start(mCurSentence?.lRecord?.audio)
    }

    override fun onPause() {
        mSimpleMp.stop()
        mActiveSubscriptions.clear()
        stopRecord()
    }

    override fun onResume() {

    }

    override fun onDestroy() {
        mSoundPool.release()
        mActiveSubscriptions.unsubscribe()
        mRecorder.releaseRes()
        mRecorder.removeCallBack()
        mSimpleMp.onDestroy()
    }


    override fun onTurnModeClick(b: Boolean) {

    }


    override fun onStarted() {

    }

    override fun onStopped() {

    }

    override fun onError() {

    }

    private fun onRecordResult(realScore: Int, processScore: Int, details: MutableList<RecordTemplete.Details>) {

        val record = mCurSentence?.lRecord
        if (record != null && processScore < record.score) {
            mSubscriptions.add(Observable.just(processScore)
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribe({
                        showScore(processScore)
                    }))
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
                .flatMap {
                    if (realScore < 54 && mCurSentence?.lRecord == null) {
                        playSound(mTryAgainSoundId)
                        return@flatMap Observable.just(it).delay(2500, TimeUnit.MILLISECONDS)
                    }
                    return@flatMap Observable.just(it)
                }
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({

//JLGLLog.i("PicBookReadPresenter", "onReceiveValue, value: %s", realScore.toString())

                    //有过录音分数,直接下一步
                    if (mCurSentence?.lRecord != null) {
                        showScore(it.score)
                    } else {
                        //try again
                        if (realScore < 54) {
                            if (hasFocus) {
                                setStatus(Status.PlayAudio)
                            }
                        } else {
                            showScore(it.score)
                        }
                    }
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


    private fun showScore(score: Int) {

        val star = ScoreUtils.getStarCount(score)
        view.showStar(star, object : ApngListener() {

            override fun onAnimationEnd(apngDrawable: ApngDrawable?) {
                super.onAnimationEnd(apngDrawable)
                setStatus(Status.Complete)
                view.hideStar()
                delayPageEnd()
            }
        })
        when (star) {
            1 -> playSound(mOneStarId)
            2 -> playSound(mTwoStarsId)
            3 -> playSound(mThreeStarsId)
            else -> playSound(mOneStarId)
        }
    }

    private fun delayPageEnd() {
        val nextPage = mPageIndex + 1
        if (nextPage < getPageSize()) {
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

    private fun getPageSize(): Int {
        return mData?.pages?.size ?: 0
    }


//    private fun setFlipLeftRightEnable() {
//        if (status == Status.PlayAudio) {
//            view.setFlipRightEnable(canFlipRight())
//            view.setFlipLeftEnable(canFlipLeft())
//        } else {
//            view.setFlipLeftEnable(false)
//            view.setFlipRightEnable(false)
//        }
//    }


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

    override fun onFinishCourse() {
        val next = getNextSubBean()
        val share = next?.isCompleted ?: true
        view.showReadEnd(null, share)
        view.doFinish()
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

        val detailIds: MutableList<String> = mutableListOf()
        mData?.pages?.forEachIndexed { index, page ->
            val id = page.sentence?.sentenseid
            if (id != null) {
                detailIds.add(id + index)
            }
        }
        DaoDbManager.getInstance().deletePicBookRecordDetail(ids)
    }


    private fun getNextSubBean(): Lessons.SubsBean? {
        var position = mTicket?.position
        if (position != null) {
            return mTicket?.lesson?.subs?.getOrNull(++position)
        }
        return null
    }

    override fun onSendProgressFail() {
        setTicket()
        RxBus.getDefault().post(McPcEvent(BaseEvent.EventType.MC_PC_SUB_COURSE_SEND_PROGRESS_FAIL, mTicket))
        view.doFinish()
    }

    private fun onRecordError(error: String) {

//JLGLLog.i("PicBookReadPresenter", "errorResult:, %s", error)

        mSubscriptions.add(Observable.just(true)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    setStatus(Status.Complete)
                }))
    }

    override fun onRun(result: String?) {
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
//JLGLLog.e(TAG, e.toString())
        }

    }

    override fun onData(data: ByteArray?, size: Int) {

    }

    override fun onInitFailed() {

    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        this.hasFocus = hasFocus
        if (!hasFocus) {
            onPause()
        } else {
            if (status == Status.Start) {
                showStart()
            } else if (status == Status.Recording || status == Status.PlayAudio) {
                startPage()
            } else {
                setStatus(Status.Complete)
            }
        }
    }

    override fun onBackPressed() {
        if (status == Status.End) {
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

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {

    }

    override fun onPointPressed() {

    }

    override fun onPointUp() {

    }

}