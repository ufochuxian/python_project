package com.jiliguala.niuwa.module.picturebook

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.AnimationDrawable
import android.text.Spannable
import android.text.SpannableString
import android.text.SpannableStringBuilder
import android.text.style.ForegroundColorSpan
import android.view.LayoutInflater
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import com.bumptech.glide.Glide
import com.bumptech.glide.load.engine.DiskCacheStrategy
import com.bumptech.glide.load.resource.bitmap.CenterCrop
import com.github.sahasbhop.apngview.ApngDrawable
import com.github.sahasbhop.apngview.ApngImageLoader
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.util.GlideRoundTransform
import com.jiliguala.niuwa.common.util.UnitConvertUtils
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import com.jiliguala.niuwa.module.picturebook.fingerread.SpanIndex

class PicBookReadPageView(context: Context) : FrameLayout(context), PicBookPageView {

    private lateinit var image: ImageView
    private lateinit var sentence: TextView
    private lateinit var audioPlay: ImageView
    private lateinit var pageIndex: TextView
    private lateinit var backBtn: ImageView
    private lateinit var record: ImageView
    private lateinit var minePlay: ImageView

    private lateinit var star1: ImageView
    private lateinit var star2: ImageView
    private lateinit var star3: ImageView

    private lateinit var starContainer: View

    private lateinit var recording: ImageView


    private var isRecording = false
    private var isMinePlaying = false


    init {
        initView(context)
    }


    fun initView(context: Context) {
        LayoutInflater.from(context).inflate(R.layout.picbook_read_page, this)
        image = findViewById(R.id.image) as ImageView
        sentence = findViewById(R.id.sentence) as TextView
        audioPlay = findViewById(R.id.audio_play) as ImageView
        record = findViewById(R.id.record) as ImageView
        minePlay = findViewById(R.id.mine_play) as ImageView

        pageIndex = findViewById(R.id.page_index) as TextView
        backBtn = findViewById(R.id.back) as ImageView

        recording = findViewById(R.id.recording) as ImageView

        star1 = findViewById(R.id.score_star_1) as ImageView
        star2 = findViewById(R.id.score_star_2) as ImageView
        star3 = findViewById(R.id.score_star_3) as ImageView

        starContainer = findViewById(R.id.score_star)
    }


    override fun showData(page: PicBookTemplate.Data.Page) {
        Glide.with(context)
                .load(page.image)
                .asBitmap()
                .diskCacheStrategy(DiskCacheStrategy.NONE)
                .transform(CenterCrop(context), GlideRoundTransform(context, UnitConvertUtils.dip2px(6f), 0, GlideRoundTransform.CornerType.LEFT))
                .dontAnimate()
                .into(image)

        sentence.text = page.sentence?.text
    }

    override fun setPageNumber(text: String) {
        pageIndex.text = text
    }

    override fun highLight(text: String?, start: Int, end: Int) {
        if (text == null) return
        val builder = SpannableStringBuilder(text)
        val length = text.length
        setSpan(builder, ForegroundColorSpan(Color.parseColor("#404040")), 0, start - 1, length)
        setSpan(builder, ForegroundColorSpan(Color.parseColor("#FC9126")), start, end, length)
        setSpan(builder, ForegroundColorSpan(Color.parseColor("#404040")), end + 1, length, length)
        sentence.text = builder
    }

    override fun setDefaultColor() {
        val text = sentence.text
        val spanString = SpannableString(text)
        val span = ForegroundColorSpan(Color.parseColor("#404040"))
        spanString.setSpan(span, 0, text.length, Spannable.SPAN_INCLUSIVE_EXCLUSIVE)
        sentence.text = spanString
    }

    fun setSpan(builder: SpannableStringBuilder, span: ForegroundColorSpan, start: Int, end: Int, length: Int) {
        if (start >= 0 && end <= length && start < end) {
            builder.setSpan(span, start, end, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
        }
    }

    fun setAudioPlayClick(l: (View) -> Unit) {
        audioPlay.setOnClickListener(l)
    }

    fun setRecordClick(l: (Boolean) -> Unit) {
        record.setOnClickListener {
            l.invoke(isRecording)
        }
    }

    fun setMinePlayClick(l: (Boolean) -> Unit) {
        minePlay.setOnClickListener {
            l.invoke(isMinePlaying)
        }
    }

    fun setBtnClick(l: (View) -> Unit) {
        backBtn.setOnClickListener(l)
    }

    override fun showFlipNotice(b: Boolean) {

    }

    override fun setTurnMode(auto: Boolean) {

    }


    override fun setRecordEnable(b: Boolean) {
        record.isEnabled = b
        record.setImageResource(R.drawable.btn_record_normal)
    }

    override fun setMinePlayEnable(b: Boolean) {
        minePlay.isEnabled = b
        minePlay.setImageResource(if (b) R.drawable.btn_play_normal else R.drawable.btn_play_disable)
    }

    override fun setAudioPlayEnable(b: Boolean) {
        audioPlay.isEnabled = b
        audioPlay.setImageResource(if (b) R.drawable.btn_sound_normal else R.drawable.btn_sound_disable)
    }

    override fun showRecording(b: Boolean) {
        isRecording = b

        if (b) {
            record.setImageResource(R.drawable.btn_record_pressed)
            recording.visibility = View.VISIBLE
            val url = "assets://apng/picbook_record.png"
            val mApngConfig = ApngImageLoader.ApngConfig(1000, true, false)
            ApngImageLoader.getInstance().displayApng(url, recording, mApngConfig)
        } else {
            record.setImageResource(R.drawable.btn_record_normal)
            recording.visibility = View.GONE
            val apngDrawable = ApngDrawable.getFromView(recording) ?: return
            if (apngDrawable.isRunning) {
                apngDrawable.stop()
            }
        }
    }

    override fun showMinePlaying(b: Boolean) {

        isMinePlaying = b

        var drawable = minePlay.drawable
        if (drawable is AnimationDrawable) {
            drawable.stop()
        }

        if (b) {
            drawable = resources.getDrawable(R.drawable.picbook_playing) as AnimationDrawable
            minePlay.setImageDrawable(drawable)
            drawable.start()
        } else {
            minePlay.setImageResource(R.drawable.btn_play_normal)
        }
    }

    override fun showAudioPlaying(b: Boolean) {

        var drawable = audioPlay.drawable
        if (drawable is AnimationDrawable) {
            drawable.stop()
        }

        if (b) {
            drawable = resources.getDrawable(R.drawable.picbook_audio_playing) as AnimationDrawable
            audioPlay.setImageDrawable(drawable)
            drawable.start()
        } else {
            audioPlay.setImageResource(R.drawable.btn_sound_normal)
        }

    }


    override fun hideStar() {
        starContainer.visibility = View.INVISIBLE
    }


    override fun showStar(star: Int) {

        starContainer.visibility = View.VISIBLE

        when (star) {
            3 -> {
                star1.setImageResource(R.drawable.img_score_star_get)
                star2.setImageResource(R.drawable.img_score_star_get)
                star3.setImageResource(R.drawable.img_score_star_get)
//                score_text.setImageResource(R.drawable.img_score_excellent)
            }
            2 -> {
                star1.setImageResource(R.drawable.img_score_star_get)
                star2.setImageResource(R.drawable.img_score_star_get)
                star3.setImageResource(R.drawable.img_score_star_not_get)
//                score_text.setImageResource(R.drawable.img_score_very_good)
            }

            1 -> {
                star1.setImageResource(R.drawable.img_score_star_get)
                star2.setImageResource(R.drawable.img_score_star_not_get)
                star3.setImageResource(R.drawable.img_score_star_not_get)
//                score_text.setImageResource(R.drawable.img_score_good)
            }

            else -> {
                star1.setImageResource(R.drawable.img_score_star_get)
                star2.setImageResource(R.drawable.img_score_star_not_get)
                star3.setImageResource(R.drawable.img_score_star_not_get)
//                score_text.setImageResource(R.drawable.img_score_good)
            }
        }
    }

    override fun setSentencePage(page: Int) {

    }

    override fun showRecordProgress(show: Boolean, mRecordTime: Long) {

    }


    override fun highLight(text: String?, spanIndexList: List<SpanIndex>) {

    }

    override fun stopFingerRead() {

    }

    override fun showGesture(show: Boolean) {

    }


}


