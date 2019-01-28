package com.jiliguala.niuwa.module.picturebook.fingerread

import android.animation.Animator
import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.content.Context
import android.graphics.Color
import android.graphics.Rect
import android.os.Handler
import android.text.Spannable
import android.text.SpannableString
import android.text.SpannableStringBuilder
import android.text.style.CharacterStyle
import android.text.style.ForegroundColorSpan
import android.text.style.LeadingMarginSpan
import android.util.AttributeSet
import android.view.Gravity
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.View
import android.view.animation.AccelerateDecelerateInterpolator
import android.view.animation.Animation
import android.view.animation.LinearInterpolator
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.TextView
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.util.UnitConvertUtils
import com.jiliguala.niuwa.common.widget.boldfont.BoldTextView
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate


class FingerReadView : FrameLayout {

    private lateinit var mTextView: TextView
    private lateinit var mFingerLayout: FrameLayout
    lateinit var mAnimPoint: View
    private lateinit var mAnimText: TextView
    private lateinit var mGestureIv: ImageView

    //字体大小
    val textSize: Float = 30f
    //字体间距
    private val lineSpacing: Float = UnitConvertUtils.dip2px(40f).toFloat()
    //动画执行时间
    val duration: Long = 300
    //选中文字颜色
    private val textColorSel = resources.getColor(R.color.green_color)
    //默认文字颜色
    private val textColorNormal = resources.getColor(R.color.color_404040)

    private val textColorCorrect = resources.getColor(R.color.color_FF3358)

    private val radius = UnitConvertUtils.dip2px(8f).toFloat()

    private val pointMargin = UnitConvertUtils.dip2px(10f)

    //textView margin
    private val textMargin = 15f
    // 字体放大移动的距离
    private val animTransY = -30f


    val bound = Rect()
    private var mText: String = ""
    private var mBeginIndex: Int = 0
    private var mEndIndex: Int = 0
    private var mGuideIndex = 0
    private var pointPressedListener: (() -> Unit)? = null
    private var pointUpListener: (() -> Unit)? = null
    private var mGuides: List<PicBookTemplate.Data.Page.Sentence.Guide>? = null
    private var mHandler: Handler = Handler()
    private var mGestureAnimSet: AnimatorSet? = null
    private val mPointAnimSet = AnimatorSet()
    private val mAnimSet = AnimatorSet()


    constructor(context: Context?) : super(context) {
        init(context)
    }

    constructor(context: Context?, attrs: AttributeSet?) : super(context, attrs) {
        init(context)
    }

    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr) {
        init(context)
    }


    private fun init(context: Context?) {

        clipChildren = false

        mTextView = BoldTextView(context)
        mTextView.setLineSpacing(lineSpacing, 1f)
        mTextView.setTextAppearance(context, R.style.BanFiraCode)
        mTextView.textSize = textSize
        val lp = FrameLayout.LayoutParams(FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT)
        lp.gravity = Gravity.CENTER
        lp.leftMargin = UnitConvertUtils.dip2px(textMargin)
        lp.rightMargin = UnitConvertUtils.dip2px(textMargin)
        addView(mTextView, lp)


        mAnimText = BoldTextView(context)
        mAnimText.textSize = textSize
        mAnimText.setTextAppearance(context, R.style.BanFiraCode)
        addView(mAnimText, FrameLayout.LayoutParams(FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT))


        mFingerLayout = LayoutInflater.from(context).inflate(R.layout.layout_finger_point, null) as FrameLayout
        mFingerLayout.setOnTouchListener({ v, event ->
            return@setOnTouchListener processOnTouch(v, event)
        })
        mAnimPoint = mFingerLayout.findViewById(R.id.diffused_point)
        addView(mFingerLayout, FrameLayout.LayoutParams(FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT))


        mGestureIv = ImageView(context)
        mGestureIv.setImageResource(R.drawable.img_finger_gesture)
        addView(mGestureIv, FrameLayout.LayoutParams(UnitConvertUtils.dip2px(61f), UnitConvertUtils.dip2px(73f)))

        initAnimatorSet()
    }

    private fun initAnimatorSet() {

    }

    override fun onLayout(changed: Boolean, left: Int, top: Int, right: Int, bottom: Int) {
        super.onLayout(changed, left, top, right, bottom)
        val layout = mTextView.layout
        if (layout != null) {
            val line = layout.getLineForOffset(mBeginIndex)
//            layout.getLineBounds(line, bound)
            val lineBottom = layout.getLineBottom(line)

            mTextView.lineSpacingExtra

            val animLeft = layout.getPrimaryHorizontal(mBeginIndex).toInt() +
                    mTextView.left
            val pointLeft = animLeft + mAnimText.measuredWidth / 2 -
                    mFingerLayout.measuredWidth / 2
            val pointTop = lineBottom + mTextView.top - (if (line < (mTextView.lineCount - 1)) lineSpacing.toInt() else 0) - pointMargin
            mFingerLayout.layout(pointLeft, pointTop, pointLeft + mFingerLayout.measuredWidth, pointTop + mFingerLayout.measuredHeight)


            val animTop = mTextView.lineHeight * line + mTextView.top
            mAnimText.layout(animLeft, animTop, animLeft + mAnimText.measuredWidth, animTop + mAnimText.measuredHeight)


            val gestureTop = pointTop + UnitConvertUtils.dip2px(5f)
            val gestureLeft = pointLeft + pointMargin
            mGestureIv.layout(gestureLeft, gestureTop, gestureLeft + mGestureIv.measuredWidth, gestureTop + mGestureIv.measuredHeight)
        }
    }


    private fun startPointAnim() {
        val scaleX = ObjectAnimator.ofFloat(mAnimPoint, CommonSets.ANIMATOR_PROPERTIES.SCALE_X, 1.0f, 3f, 1f)
                .setDuration(duration * 2)
        scaleX.repeatCount = Animation.INFINITE
        val scaleY = ObjectAnimator.ofFloat(mAnimPoint, CommonSets.ANIMATOR_PROPERTIES.SCALE_Y, 1.0f, 3f, 1f)
                .setDuration(duration * 2)
        scaleY.repeatCount = Animation.INFINITE
        mPointAnimSet.interpolator = LinearInterpolator()
        mPointAnimSet.playTogether(scaleX, scaleY)
        mPointAnimSet.start()
    }

    private fun expandText() {
        val animSet = AnimatorSet()
        val scaleX = ObjectAnimator.ofFloat(mAnimText, CommonSets.ANIMATOR_PROPERTIES.SCALE_X, 1.0f, 1.2f)
                .setDuration(duration)
        val scaleY = ObjectAnimator.ofFloat(mAnimText, CommonSets.ANIMATOR_PROPERTIES.SCALE_Y, 1.0f, 1.2f)
                .setDuration(duration)
        val translationY = ObjectAnimator.ofFloat(mAnimText, "translationY", UnitConvertUtils.dip2px(animTransY).toFloat()).setDuration(duration)
        animSet.interpolator = AccelerateDecelerateInterpolator()
        animSet.playTogether(scaleX, scaleY, translationY)
        animSet.start()
    }

    private fun restoreText() {
        val scaleX = ObjectAnimator.ofFloat(mAnimText, CommonSets.ANIMATOR_PROPERTIES.SCALE_X, 1.2f, 1.0f)
                .setDuration(duration)
        val scaleY = ObjectAnimator.ofFloat(mAnimText, CommonSets.ANIMATOR_PROPERTIES.SCALE_Y, 1.2f, 1.0f)
                .setDuration(duration)
        val translationY = ObjectAnimator.ofFloat(mAnimText, "translationY", 0f).setDuration(duration)
        mAnimSet.interpolator = AccelerateDecelerateInterpolator()
        mAnimSet.playTogether(scaleX, scaleY, translationY)
        mAnimSet.addListener(object : Animator.AnimatorListener {
            override fun onAnimationRepeat(animation: Animator?) {
            }

            override fun onAnimationEnd(animation: Animator?) {
                mAnimSet.removeAllListeners()
                goNext()
            }

            override fun onAnimationCancel(animation: Animator?) {
            }

            override fun onAnimationStart(animation: Animator?) {
            }

        })
        mAnimSet.start()
    }

    private fun goNext() {
        mHandler.removeCallbacksAndMessages(null)
        showGesture(false)
        val size = mGuides?.size ?: 0
        if (mGuideIndex < size - 1) {
            mGuideIndex++
            setPointPosition()
            checkClick()
        } else {
            setFingerReadComplete()
            pointUpListener?.invoke()
        }
    }

    fun showGesture(show: Boolean) {
        if (show) {
            mGestureIv.visibility = View.VISIBLE
            playGestureAnim()
        } else {
            mGestureIv.visibility = View.INVISIBLE
            stopGestureAnim()
        }
    }

    private fun stopGestureAnim() {
        mGestureAnimSet?.removeAllListeners()
        mGestureAnimSet?.end()
        mGestureAnimSet = null
    }

    private fun playGestureAnim() {
        mGestureAnimSet = AnimatorSet()
        val distanceY = UnitConvertUtils.dip2px(10f).toFloat()
        val distanceX = -UnitConvertUtils.dip2px(5f).toFloat()
        val transX = ObjectAnimator.ofFloat(mGestureIv, CommonSets.ANIMATOR_PROPERTIES.TRANSLATION_X, 0f, distanceX)
                .setDuration(600)
        val transY = ObjectAnimator.ofFloat(mGestureIv, CommonSets.ANIMATOR_PROPERTIES.TRANSLATION_Y, 0f, distanceY)
                .setDuration(600)
        val scaleX = ObjectAnimator.ofFloat(mAnimPoint, CommonSets.ANIMATOR_PROPERTIES.SCALE_X, 1.0f, 3f, 1f, 3f, 1f)
                .setDuration(duration * 4)
        val scaleY = ObjectAnimator.ofFloat(mAnimPoint, CommonSets.ANIMATOR_PROPERTIES.SCALE_Y, 1.0f, 3f, 1f, 3f, 1f)
                .setDuration(duration * 4)
        mGestureAnimSet?.play(transX)?.with(transY)?.before(scaleX)?.before(scaleY)
        mGestureAnimSet?.addListener(object : Animator.AnimatorListener {
            override fun onAnimationRepeat(animation: Animator?) {}

            override fun onAnimationEnd(animation: Animator?) {
                mGestureAnimSet?.removeAllListeners()
                playGestureAnim()
            }

            override fun onAnimationCancel(animation: Animator?) {}

            override fun onAnimationStart(animation: Animator?) {}

        })
        mGestureAnimSet?.interpolator = LinearInterpolator()
        mGestureAnimSet?.start()
    }


    private fun checkClick() {
        mHandler.postDelayed({
            showGesture(true)
            mHandler.postDelayed({
                goNext()
            }, 2500)
        }, 2500)
    }

    private fun processOnTouch(v: View?, event: MotionEvent?): Boolean {

        if (mAnimSet.isRunning) {
            return true
        }

        when (event?.action) {
            MotionEvent.ACTION_DOWN -> {
                showGesture(false)
                mAnimText.setTextColor(textColorSel)
                mHandler.removeCallbacksAndMessages(null)
                startPointAnim()
                expandText()
                if (mGuideIndex == 0) {
                    pointPressedListener?.invoke()
                }
            }
            MotionEvent.ACTION_UP -> {
                if (mFingerLayout.visibility != View.VISIBLE) {
                    return true
                }
                mPointAnimSet.end()
                restoreText()
            }
            MotionEvent.ACTION_MOVE -> {

            }
            else -> {

            }
        }
        return true
    }

    fun setText(sentence: PicBookTemplate.Data.Page.Sentence) {
        stopGestureAnim()
        mText = sentence.text
        mGuides = sentence.guides
        mGuideIndex = 0
        setPointPosition()
        mFingerLayout.visibility = View.VISIBLE
    }


    private fun setPointPosition() {
        val guide = mGuides?.getOrNull(mGuideIndex)
        mBeginIndex = guide?.start ?: 0
        mEndIndex = mBeginIndex + (guide?.length ?: 0)
        val builder = SpannableStringBuilder(mText)
        val length = mText.length
        setSpan(builder, ForegroundColorSpan(textColorSel), 0, mBeginIndex - 1, length)
        setSpan(builder, ForegroundColorSpan(Color.parseColor("#00000000")), mBeginIndex, mEndIndex, length)
        setSpan(builder, ForegroundColorSpan(textColorNormal), mEndIndex + 1, length, length)
        mTextView.text = builder
        mAnimText.setTextColor(textColorNormal)
        mAnimText.text = mText.subSequence(mBeginIndex, mEndIndex)
    }

    fun setFingerReadComplete() {
        mHandler.removeCallbacksAndMessages(null)
        showGesture(false)
        mPointAnimSet.end()
        val builder = SpannableStringBuilder(mText)
        val length = mText.length
        setSpan(builder, ForegroundColorSpan(textColorSel), 0, length, length)
        mTextView.text = builder
        mAnimText.text = null
        mAnimText.translationY = 0f
        mFingerLayout.visibility = View.INVISIBLE
    }

    fun setDefault() {
        mHandler.removeCallbacksAndMessages(null)
        stopGestureAnim()
        mGuideIndex = 0
        setPointPosition()
        mFingerLayout.visibility = View.VISIBLE
        showGesture(true)
    }

    fun setSpan(builder: SpannableStringBuilder, span: CharacterStyle, start: Int, end: Int, length: Int) {
        if (start >= 0 && end <= length && start < end) {
            builder.setSpan(span, start, end, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
        }
    }

    fun setOnPointPressedListener(l: () -> Unit) {
        pointPressedListener = l
    }

    fun setOnPointUpListener(l: () -> Unit) {
        pointUpListener = l
    }

    override fun onWindowFocusChanged(hasWindowFocus: Boolean) {
        super.onWindowFocusChanged(hasWindowFocus)
        if (!hasWindowFocus) {
            mHandler.removeCallbacksAndMessages(null)
            mGestureAnimSet?.removeAllListeners()
            mGestureAnimSet?.cancel()
        }
    }

    fun setHighlight(text: String?, spanIndexList: List<SpanIndex>) {
        if (text != null) {
            val builder = SpannableStringBuilder(mText)
            val length = text.length
            setSpan(builder, ForegroundColorSpan(textColorSel), 0, length, length)
            spanIndexList.forEach {
                setSpan(builder, RadiusBackgroundSpan(textColorCorrect
                        , radius
                        , Color.parseColor("#ffffff")), it.start, it.end, length)
            }
            builder.setSpan(LeadingMarginSpan.Standard(radius.toInt()), 0, length, SpannableString.SPAN_INCLUSIVE_INCLUSIVE)
            mTextView.text = builder
        }
    }
}