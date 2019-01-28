package com.jiliguala.niuwa.module.picturebook

import android.content.ContentResolver
import android.graphics.Color
import android.graphics.drawable.AnimationDrawable
import android.os.Bundle
import android.text.Spannable
import android.text.SpannableStringBuilder
import android.text.TextUtils
import android.text.style.ForegroundColorSpan
import android.view.View
import android.widget.ImageView
import com.bumptech.glide.Glide
import com.bumptech.glide.request.target.Target
import com.github.sahasbhop.apngview.ApngDrawable
import com.github.sahasbhop.apngview.ApngImageLoader
import com.github.sahasbhop.apngview.assist.ApngListener
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.base.BaseActivity
import com.jiliguala.niuwa.common.util.DeviceUtils
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.amplitude.AmplitudeUtils
import com.jiliguala.niuwa.logic.bus.RxBus
import com.jiliguala.niuwa.logic.bus.event.BaseEvent
import com.jiliguala.niuwa.logic.bus.event.McPcEvent
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.JsonParseEngine
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.helper.RequestHelper
import com.jiliguala.niuwa.logic.network.json.GuavatarShareRewardTemplate
import com.jiliguala.niuwa.logic.network.json.SuperLessonProgressResult
import com.jiliguala.niuwa.logic.network.json.SuperPostReport
import com.jiliguala.niuwa.logic.share.ShareCenter
import com.jiliguala.niuwa.logic.share.ShareMgr
import com.jiliguala.niuwa.logic.share.ShareType
import com.jiliguala.niuwa.logic.share.ShareUrlStrings
import com.jiliguala.niuwa.logic.share.model.ShareModel
import com.jiliguala.niuwa.logic.soundpool.SoundPoolWrapper
import com.jiliguala.niuwa.module.course.main.lisetners.ShareSuccessListener
import com.jiliguala.niuwa.module.game.GuavatarRewardDialog
import com.jiliguala.niuwa.module.mcphonics.detail.Model.McPcSubTaskTicket
import com.jiliguala.niuwa.module.mediaplayer.SimpleMediaPlayer
import kotlinx.android.synthetic.main.american_lesson_complete.*
import rx.Subscriber
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers
import java.io.File
import java.util.concurrent.ExecutionException

/**
 * 呱美课课程报告
 */
class SuperCourseCompleteShareActivity : BaseActivity(), SimpleMediaPlayer.OnCompleteListener, SimpleMediaPlayer.OnErrorListener {
    private val mMediaPlayer = SimpleMediaPlayer()
    lateinit var mSoundPool: SoundPoolWrapper


    var lid: String? = null
    private var subId: String? = null

    private var result: SuperLessonProgressResult.Data? = null
    var isPlaying = false
    private var mAudioIndex = 0

    private var mOneStarId: Int = -1
    private var mTwoStarsId: Int = -1
    private var mThreeStarsId: Int = -1

    private var mTicket: McPcSubTaskTicket? = null


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        DeviceUtils.toggleOnFullScreen(this)

        lid = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_COURSE_ID)
        subId = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_SUBTASK_ID)
        val extra = intent.getSerializableExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET)
        if (extra != null) {
            mTicket = extra as McPcSubTaskTicket
        }

        setContentView(R.layout.american_lesson_complete)

        initUi()
        initSound()

        mMediaPlayer.setMediaPlayerListener(null, this, this)

        requestServer()

        share_container.setOnClickListener {
            doShare()
        }

        play.setOnClickListener {
            play()
        }

        back.setOnClickListener {
            onBackPressed()
        }
    }

    private fun reportLessonCompleteShare() {
        val map: HashMap<String, Any?> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.ID] = lid
        mTicket?.let {
            map[AmplitudeConstants.TYPE_NAME.TYPE] = it.dayCount
            map[AmplitudeConstants.TYPE_NAME.STATE] = it.state
            map[AmplitudeConstants.TYPE_NAME.UNIT] = it.lesson?.unit
        }
        map[AmplitudeConstants.TYPE_NAME.REWARD] = AmplitudeUtils.convertBool(result?.eligibleforfood
                ?: false)
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_LESSON_COMPLETE_SHARE_VIEW, map)
    }

    private fun initSound() {
        mSoundPool = SoundPoolWrapper(this)
        mOneStarId = mSoundPool.loadSound(R.raw.onestar)
        mTwoStarsId = mSoundPool.loadSound(R.raw.twostars)
        mThreeStarsId = mSoundPool.loadSound(R.raw.threestars)
    }


    override fun onError(what: Int) {
        stopPlay()
    }

    override fun onComplete() {
        if (isPlaying) {
            ++mAudioIndex
            val audio = result?.audio?.getOrNull(mAudioIndex)
            if (audio.isNullOrEmpty()) {
                stopPlay()
            } else {
                mMediaPlayer.start(audio)
            }
        }
    }

    fun play() {
        if (!isPlaying) {
            statPlay()
        } else {
            stopPlay()
        }
    }

    override fun onPause() {
        super.onPause()
        stopPlay()
    }

    private fun statPlay() {
        mAudioIndex = 0
        val audio = result?.audio?.getOrNull(mAudioIndex)
        if (audio != null) {
            mMediaPlayer.start(audio)
            isPlaying = true
            playAnimation(play, true)
        }
    }

    private fun stopPlay() {
        mMediaPlayer.stop()
        isPlaying = false
        playAnimation(play, false)
    }


    private fun playAnimation(iv: ImageView, play: Boolean) {

        var drawable = iv.drawable
        if (drawable is AnimationDrawable) {
            drawable.stop()
        }
        if (play) {
            drawable = resources.getDrawable(R.drawable.mine_book_playing) as AnimationDrawable
            iv.setImageDrawable(drawable)
            drawable.start()
        } else {
            iv.setImageResource(R.drawable.btn_play_the_end_share)
        }
    }

    private fun initUi() {
        desc.visibility = View.VISIBLE
        share_container.visibility = View.VISIBLE
        guagua.visibility = View.GONE
        cover.visibility = View.INVISIBLE
        play.visibility = View.GONE
        lesoson_icon_container.visibility = View.VISIBLE
    }

    fun doShare() {
        val title = result?.wechatmsg
        val coverUrl = result?.cover + ".png"
        val source = "LessonComplete"
        val reportId = lid
        val unit = mTicket?.lesson?.unit
        val shareUrl = String.format(ShareUrlStrings.SHARE_URL_PRE + ShareUrlStrings.LESSON_SHARE_SUPER,
                lid,
                AccountCenter.newInstance().curBabyId,
                result?.type,
                subId,
                source.toLowerCase(), unit)

        val reward = result?.eligibleforfood ?: false
        //仅完课后才有abtest
        val model = ShareModel()
        model.setTitle(title)
                .setAbst(null)
                .setThmb(null)
                .setPid(reportId)
                .setType(ShareType.H5_IMAGE_SHARE)
                .setPlatform(R.id.share_to_pengyouquan)
                .setAge(null)
                .setCat(null)
                .setDirectShareThmb(coverUrl)
                .setDirectShareUrl(shareUrl)
                .setShareSource(source)
                .setUnitId(unit)
                .setReward(AmplitudeUtils.convertBool(reward))
                .imagePath = result?.poster
        downloadShare(model)

        val map: HashMap<String, Any?> = HashMap()
        map[AmplitudeConstants.TYPE_NAME.ID] = reportId
        map[AmplitudeConstants.TYPE_NAME.SOURCE] = source
        map[AmplitudeConstants.TYPE_NAME.TYPE] = "Circle"
        map[AmplitudeConstants.TYPE_NAME.UNIT] = mTicket?.lesson?.unit
        map[AmplitudeConstants.TYPE_NAME.REWARD] = AmplitudeUtils.convertBool(result?.eligibleforfood
                ?: false)
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_SHARE_CLICK, map)
    }

    private fun setShareListener() {
        ShareCenter.setListener(object : ShareSuccessListener {
            override fun shareComplete() {
                if (result?.eligibleforfood == true) {
                    postGuavartarGift()
                } else {
                    shareSuccessBack()
                }
            }

            override fun shareError() {}

            override fun shareCancel() {}

        })
    }

    private fun downloadShare(model: ShareModel) {
        subscriptions.add(rx.Observable.just<String>(model.imagePath)
                .subscribeOn(Schedulers.io())
                .observeOn(Schedulers.io())
                .map {
                    var file: File? = null
                    val target = Glide.with(this)
                            .load(it)
                            .downloadOnly(Target.SIZE_ORIGINAL, Target.SIZE_ORIGINAL)
                    try {
                        file = target.get()
                    } catch (e: InterruptedException) {
                        e.printStackTrace()
                    } catch (e: ExecutionException) {
                        e.printStackTrace()
                    }

                    file
                }
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    if (it != null) {
                        model.imagePath = it.absolutePath
                        ShareMgr.getInstance().shareTo(R.id.share_to_pengyouquan, model)
                        setShareListener()
                    }
                })
        )
    }

    fun shareSuccessBack() {
        onBackPressed()
    }

    fun postGuavartarGift() {
        val report = SuperPostReport()
        report.bid = AccountCenter.newInstance().curBabyId
        report.sublessonid = subId
        val json = JsonParseEngine.generateJsonFromObj(report)
        val requestBody = RequestHelper.generateRequestBody(json)

        subscriptions.add(RestApiManager.getInstance().restAPI
                .postSuperLessonReport(requestBody)
                .subscribeOn(Schedulers.io())
                .unsubscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(object : Subscriber<GuavatarShareRewardTemplate>() {
                    override fun onCompleted() {

                    }

                    override fun onError(e: Throwable) {
                        shareSuccessBack()
                    }

                    override fun onNext(template: GuavatarShareRewardTemplate?) {
                        if (template?.data?.guavatar != null) {
                            val dialog = GuavatarRewardDialog(this@SuperCourseCompleteShareActivity)
                            dialog.setGuavatar(template.data.guavatar, mTicket, true)
                            dialog.setDismissListener {
                                shareSuccessBack()
                            }
                            dialog.show()
                        } else {
                            shareSuccessBack()
                        }
                    }
                })
        )
    }


    private fun requestServer() {
        subscriptions.add(RestApiManager.getInstance().restAPI
                .requestSuperLessonProgress(AccountCenter.newInstance().curBabyId, lid, subId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    show(it.data)
                }) {

                }
        )
    }

    override fun onBackPressed() {
        super.onBackPressed()
        RxBus.getDefault().post(McPcEvent(BaseEvent.EventType.ON_PRESS_BACK_SHARE_PAGE))
    }


    fun show(result: SuperLessonProgressResult.Data) {

        this.result = result


        if (cover.visibility == View.VISIBLE) {
            val coverUrl = result.cover + ".png"
            Glide.with(this).load(coverUrl).dontAnimate().fitCenter().into(cover)
        }

        val star = ScoreUtils.getLessonStarCount(result.score)

        if (guagua.visibility == View.VISIBLE) {
            if (!TextUtils.isEmpty(result.thmb)) {
                Glide.with(this).load(result.thmb).dontAnimate().centerCrop().into(guagua)
            }
        }

        if (lesoson_icon_container.visibility == View.VISIBLE) {
            var thmb = result.cover
            val suffix = if (star == 3) "_comp.png" else ".png"
            thmb += suffix
            Glide.with(this).load(thmb).dontAnimate().centerCrop().into(lesson_icon)
            if (star == 3) {
                lesson_icon.background = resources.getDrawable(R.drawable.bg_perfect)
            } else {
                lesson_icon.background = resources.getDrawable(R.drawable.bg_normal)
            }
        }

        if (!TextUtils.isEmpty(result.desc)) {
//            if (result.eligibleforfood) {
//                val splitDesc = result.desc.split("\n")
//                val s = splitDesc[0]
//                desc.text = s
//            } else {
//                desc.text = result.desc
//            }
            val style = SpannableStringBuilder(result.desc)
            result.desc.forEachIndexed { index, c ->
                if (c in '0'..'9') {
                    style.setSpan( ForegroundColorSpan (Color.RED), index, index + 1, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
                }
            }
            desc.text = style
        }

        title_tv.text = ScoreUtils.getLessonScoreText(result.score)

        val url = when (star) {
            3 -> "assets://apng/finish_star_3.png"
            2 -> "assets://apng/finish_star_2.png"
            1 -> "assets://apng/finish_star_1.png"
            else ->
                "assets://apng/finish_star_1.png"
        }

        val mApngConfig = ApngImageLoader.ApngConfig(1, true, true)
        ApngImageLoader.getInstance().displayApng(url, apng_star, mApngConfig, object : ApngListener() {

            override fun onAnimationEnd(apngDrawable: ApngDrawable?) {
                super.onAnimationEnd(apngDrawable)
                val copyBitmap = apngDrawable?.copyLastFrame()
                if (copyBitmap != null) {
                    apng_star.setImageBitmap(copyBitmap)
                }
                if (result.eligibleforfood) {
                    mMediaPlayer.start(ContentResolver.SCHEME_ANDROID_RESOURCE + "://" + packageName + "/raw/" + "report1")
                }
            }
        })


        when (star) {
            1 -> playSound(mOneStarId)
            2 -> playSound(mTwoStarsId)
            3 -> playSound(mThreeStarsId)
            else -> playSound(mOneStarId)
        }


        if (result.eligibleforfood) {
            share_tips.visibility = View.VISIBLE
        }


        reportLessonCompleteShare()

    }


    private fun playSound(soundId: Int) {
        mSoundPool.playAudioEffect(soundId)
    }

    private fun stopApng() {
        val apngDrawable = ApngDrawable.getFromView(apng_star) ?: return
        if (apngDrawable.isRunning) {
            apngDrawable.stop()
        }
    }

    override fun onDestroy() {
        super.onDestroy()
//JLGLLog.d("SuperStoryCompleteShareActivity", "ondestroy")
        mSoundPool.release()
        stopApng()
        mMediaPlayer.onDestroy()
    }
}