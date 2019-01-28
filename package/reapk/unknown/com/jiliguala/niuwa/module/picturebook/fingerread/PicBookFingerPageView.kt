package com.jiliguala.niuwa.module.picturebook.fingerread

import android.content.Context
import android.graphics.drawable.AnimationDrawable
import android.text.Spannable
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
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.util.GlideRoundTransform
import com.jiliguala.niuwa.common.util.UnitConvertUtils
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import com.jiliguala.niuwa.module.picturebook.PicBookPageView
import com.liulishuo.magicprogresswidget.MagicProgressCircle

class PicBookFingerPageView(context: Context) : FrameLayout(context), PicBookPageView {

    private val image: ImageView
    private val pageIndex: TextView
    private val backBtn: ImageView
    private val starContainer: View
    private val star1: ImageView
    private val star2: ImageView
    private val star3: ImageView
    private val fingerView: FingerReadView
    //    private val recordContainer: RelativeLayout
    private val minePlay: ImageView
    private val record: ImageView
    private val recordProgress: MagicProgressCircle
    private val audioPlay: ImageView

    private var isRecording = false
    private var isMinePlaying = false


    init {
        LayoutInflater.from(context).inflate(R.layout.picbook_finger_read_page, this)
        image = findViewById(R.id.image) as ImageView

        pageIndex = findViewById(R.id.page_index) as TextView
        backBtn = findViewById(R.id.back) as ImageView

        star1 = findViewById(R.id.score_star_1) as ImageView
        star2 = findViewById(R.id.score_star_2) as ImageView
        star3 = findViewById(R.id.score_star_3) as ImageView
        starContainer = findViewById(R.id.score_star)
        fingerView = findViewById(R.id.fingerView) as FingerReadView
//        recordContainer = findViewById(R.id.record_container) as RelativeLayout
        minePlay = findViewById(R.id.mine_play) as ImageView
        record = findViewById(R.id.record) as ImageView
        recordProgress = findViewById(R.id.record_progress) as MagicProgressCircle
        audioPlay = findViewById(R.id.audio_play) as ImageView


    }


    override fun showData(page: PicBookTemplate.Data.Page) {
        Glide.with(context)
                .load(page.image)
                .asBitmap()
                .diskCacheStrategy(DiskCacheStrategy.NONE)
                .transform(CenterCrop(context), GlideRoundTransform(context, UnitConvertUtils.dip2px(6f), 0, GlideRoundTransform.CornerType.LEFT))
                .dontAnimate()
                .into(image)

        fingerView.setText(page.sentence)
    }

    fun setOnPointPressedListener(l: () -> Unit) {
        fingerView.setOnPointPressedListener(l)
    }

    fun setOnPointUpListener(l: () -> Unit) {
        fingerView.setOnPointUpListener(l)
    }

    override fun highLight(text: String?, start: Int, end: Int) {
    }

    override fun highLight(text: String?, spanIndexList: List<SpanIndex>) {
        fingerView.setHighlight(text, spanIndexList)
    }

    fun setSpan(builder: SpannableStringBuilder, span: ForegroundColorSpan, start: Int, end: Int, length: Int) {
        if (start >= 0 && end <= length && start < end) {
            builder.setSpan(span, start, end, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
        }
    }

    override fun setPageNumber(text: String) {
        pageIndex.text = text
    }

    override fun showFlipNotice(b: Boolean) {
    }

    override fun setTurnMode(auto: Boolean) {
    }

    override fun setRecordEnable(b: Boolean) {

    }

    override fun setMinePlayEnable(b: Boolean) {
        if (b) {
            minePlay.visibility = View.VISIBLE
        } else {
            minePlay.visibility = View.INVISIBLE
        }
    }

    override fun showRecording(b: Boolean) {
        if (b) {
            record.visibility = (View.VISIBLE)
            recordProgress.visibility = View.VISIBLE
            starContainer.visibility = View.INVISIBLE
        } else {
            record.visibility = View.INVISIBLE
            recordProgress.visibility = View.INVISIBLE
        }
    }

    override fun setAudioPlayEnable(b: Boolean) {
        audioPlay.visibility = (if (b) View.VISIBLE else View.INVISIBLE)
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

    override fun showStar(star: Int) {
        starContainer.visibility = View.VISIBLE

        minePlay.visibility = View.VISIBLE
        record.visibility = View.INVISIBLE
        recordProgress.visibility = View.INVISIBLE

        when (star) {
            3 -> {
                star1.setImageResource(R.drawable.img_score_star_get)
                star2.setImageResource(R.drawable.img_score_star_get)
                star3.setImageResource(R.drawable.img_score_star_get)
            }
            2 -> {
                star1.setImageResource(R.drawable.img_score_star_get)
                star2.setImageResource(R.drawable.img_score_star_get)
                star3.setImageResource(R.drawable.img_score_star_not_get)
            }

            1 -> {
                star1.setImageResource(R.drawable.img_score_star_get)
                star2.setImageResource(R.drawable.img_score_star_not_get)
                star3.setImageResource(R.drawable.img_score_star_not_get)
            }

            else -> {
                star1.setImageResource(R.drawable.img_score_star_get)
                star2.setImageResource(R.drawable.img_score_star_not_get)
                star3.setImageResource(R.drawable.img_score_star_not_get)
            }
        }
    }

    override fun hideStar() {
        starContainer.visibility = View.INVISIBLE
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

    fun setAudioPlayClick(l: (View) -> Unit) {
        audioPlay.setOnClickListener(l)
    }

    override fun setDefaultColor() {
        fingerView.setDefault()
    }

    override fun setSentencePage(page: Int) {
    }

    override fun showRecordProgress(show: Boolean, mRecordTime: Long) {
        if (show) {
            recordProgress.percent = 0f
            recordProgress.setSmoothPercent(1f, mRecordTime)
        } else {
            recordProgress.percent = (1f)
        }
    }


    fun setRecordClick(l: (Boolean) -> Unit) {
        record.setOnClickListener {
            fingerView.setFingerReadComplete()
            l.invoke(false)
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

    override fun stopFingerRead() {
        fingerView.setFingerReadComplete()
    }

    override fun showGesture(show: Boolean) {
        fingerView.showGesture(show)
    }


}