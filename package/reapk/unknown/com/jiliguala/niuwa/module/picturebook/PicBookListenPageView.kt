package com.jiliguala.niuwa.module.picturebook

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.AnimationDrawable
import android.support.v4.view.ViewPager
import android.text.Spannable
import android.text.SpannableString
import android.text.SpannableStringBuilder
import android.text.method.ScrollingMovementMethod
import android.text.style.ForegroundColorSpan
import android.view.LayoutInflater
import android.view.View
import android.view.animation.Animation
import android.widget.*
import com.bumptech.glide.Glide
import com.bumptech.glide.load.engine.DiskCacheStrategy
import com.bumptech.glide.load.resource.bitmap.CenterCrop
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.util.GlideRoundTransform
import com.jiliguala.niuwa.common.util.UnitConvertUtils
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import com.jiliguala.niuwa.module.picturebook.fingerread.SpanIndex
import com.jiliguala.niuwa.module.picturebook.listen.PicBookListenViewPagerAdapter
import com.nineoldandroids.animation.AnimatorSet
import com.nineoldandroids.animation.ObjectAnimator

class PicBookListenPageView(context: Context, val ver: Boolean) : FrameLayout(context), PicBookPageView {

    private lateinit var image: ImageView
    private lateinit var sentence: TextView
    private lateinit var handSlide: ImageView
    private lateinit var turningMode: ImageView
    private lateinit var audioPlay: ImageView
    private lateinit var pageIndex: TextView
    private lateinit var backBtn: ImageView
    private lateinit var viewPager: ViewPager
    private lateinit var progressContainer: RadioGroup
    private var mAnimator: AnimatorSet? = null
    private val adapter = PicBookListenViewPagerAdapter(context)

    init {
        initView(context, ver)
    }


    fun initView(context: Context, ver: Boolean) {
        LayoutInflater.from(context).inflate(if (ver) R.layout.picbook_ver_listen_page else R.layout.picbook_hor_listen_page, this)
        image = findViewById(R.id.image) as ImageView
        val sentenceView = findViewById(R.id.sentence)
        if (sentenceView != null) {
            sentence = sentenceView as TextView
        }
        handSlide = findViewById(R.id.hand_slide) as ImageView
        turningMode = findViewById(R.id.turning_mode) as ImageView
        audioPlay = findViewById(R.id.audio_play) as ImageView
        pageIndex = findViewById(R.id.page_index) as TextView
        backBtn = findViewById(R.id.back) as ImageView
        if (ver) {
            initSentencePage()
        } else {
            sentence = sentenceView as TextView
            sentence.movementMethod = ScrollingMovementMethod.getInstance()
        }
    }

    private fun initSentencePage() {
        sentence.visibility = View.GONE
        viewPager = findViewById(R.id.sentence_vp) as ViewPager
        viewPager.adapter = adapter
        progressContainer = findViewById(R.id.sentence_progress) as RadioGroup
        viewPager.addOnPageChangeListener(object : ViewPager.OnPageChangeListener {
            override fun onPageScrollStateChanged(state: Int) {
            }

            override fun onPageScrolled(position: Int, positionOffset: Float, positionOffsetPixels: Int) {
            }

            override fun onPageSelected(position: Int) {
                progressContainer.check(position)
            }

        })
    }


    override fun showData(page: PicBookTemplate.Data.Page) {

        val roundTransform = if (ver)
            GlideRoundTransform(context, UnitConvertUtils.dip2px(6f), 0, GlideRoundTransform.CornerType.TOP)
        else
            GlideRoundTransform(context, UnitConvertUtils.dip2px(6f), 0, GlideRoundTransform.CornerType.LEFT)

        Glide.with(context)
                .load(page.image)
                .asBitmap()
                .diskCacheStrategy(DiskCacheStrategy.NONE)
                .transform(CenterCrop(context), roundTransform)
                .dontAnimate()
                .into(image)

        if (ver) {
            if (page.sentences.size > 1) {
                viewPager.setPadding(0, 0, 0, UnitConvertUtils.dip2px(19f))
                progressContainer.visibility = View.VISIBLE
                progressContainer.removeAllViews()
                progressContainer.clearCheck()
                val layoutParams = RadioGroup.LayoutParams(UnitConvertUtils.dip2px(5f), UnitConvertUtils.dip2px(5f))
                page.sentences.forEachIndexed { index, sentence ->
                    val radioButton = RadioButton(context)
                    radioButton.setButtonDrawable(0)
                    radioButton.id = index
                    radioButton.setBackgroundResource(R.drawable.sentence_page_progress)
                    progressContainer.addView(radioButton, layoutParams)
                }
                progressContainer.check(0)
            } else {
                progressContainer.visibility = View.INVISIBLE
                viewPager.setPadding(0, 0, 0, UnitConvertUtils.dip2px(11f))
            }
            adapter.updateData(page.sentences)
        } else {
            sentence.text = page.sentences?.getOrNull(0)?.text
        }
    }

    override fun highLight(text: String?, start: Int, end: Int) {
        if (!ver) {
            if (text == null) return
            val builder = SpannableStringBuilder(text)
            val length = text.length
            setSpan(builder, ForegroundColorSpan(Color.parseColor("#404040")), 0, start - 1, length)
            setSpan(builder, ForegroundColorSpan(Color.parseColor("#FC9126")), start, end, length)
            setSpan(builder, ForegroundColorSpan(Color.parseColor("#404040")), end + 1, length, length)
            sentence.text = builder
        }
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

    override fun setPageNumber(text: String) {
        pageIndex.text = text
    }

    override fun showFlipNotice(b: Boolean) {
        handSlide.visibility = (if (b) View.VISIBLE else View.INVISIBLE)
        mAnimator?.cancel()
        if (b) {
            mAnimator = objectTransAlphaAnimation(handSlide)
        }
    }


    private fun objectTransAlphaAnimation(view: View): AnimatorSet {

        val animatorSet = AnimatorSet()//组合动画
        val xAnimation = ObjectAnimator.ofFloat(view, "translationX", 0f, (-1f) * handSlide.width)
        val yAnimation = ObjectAnimator.ofFloat(view, "alpha", 1f, 0.5f)

        xAnimation.duration = 1200
        yAnimation.duration = 1200

        xAnimation.repeatCount = Animation.INFINITE
        yAnimation.repeatCount = Animation.INFINITE

        animatorSet.play(xAnimation).with(yAnimation)

        animatorSet.start()

        return animatorSet

    }

    override fun setTurnMode(auto: Boolean) {
        if (ver) {
            turningMode.setImageResource(if (auto) R.drawable.icon_page_turning_mc else R.drawable.icon_page_turning_hand_mc)
        } else {
            turningMode.setImageResource(if (auto) R.drawable.icon_page_turning else R.drawable.icon_page_turning_hand)
        }
    }

    fun setAudioPlayClick(l: (View) -> Unit) {
        audioPlay.setOnClickListener(l)
    }


    fun getTurnMode(): ImageView {
        return turningMode
    }

    fun getBackBtn(): ImageView {
        return backBtn
    }

    override fun setRecordEnable(b: Boolean) {
    }

    override fun setMinePlayEnable(b: Boolean) {
    }

    override fun showRecording(b: Boolean) {
    }

    override fun setAudioPlayEnable(b: Boolean) {
    }

    override fun showMinePlaying(b: Boolean) {

    }

    override fun showAudioPlaying(b: Boolean) {
        var drawable = audioPlay.drawable
        if (drawable is AnimationDrawable) {
            drawable.stop()
        }

        if (b) {
            drawable = if (ver) {
                resources.getDrawable(R.drawable.picbook_audio_playing_ver) as AnimationDrawable
            } else {
                resources.getDrawable(R.drawable.picbook_audio_playing) as AnimationDrawable
            }
            audioPlay.setImageDrawable(drawable)
            drawable.start()
        } else {
            if (ver) {
                audioPlay.setImageResource(R.drawable.btn_sound_mc)
            } else {
                audioPlay.setImageResource(R.drawable.btn_sound_normal)
            }
        }
    }

    override fun showStar(star: Int) {

    }

    override fun hideStar() {

    }

    override fun setSentencePage(page: Int) {
        if (ver) {
            viewPager.setCurrentItem(page, true)
        }
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
