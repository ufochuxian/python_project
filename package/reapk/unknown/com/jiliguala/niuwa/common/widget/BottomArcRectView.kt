package com.jiliguala.niuwa.common.widget

import android.content.Context
import android.graphics.*
import android.util.AttributeSet
import android.view.View
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.R

class BottomArcRectView : View {

    private lateinit var mPaint: Paint
    private var mRadius: Int = 0
    private var mStartColor: Int = 0
    // private var mEndColor: Int = 0
    private var mRect = RectF()
    private lateinit var mCircleCenter: Point
    // private lateinit var mLinearGradient: LinearGradient

    constructor(context: Context) : super(context) {
        init(null, 0)
    }

    constructor(context: Context, attrs: AttributeSet) : super(context, attrs) {
        init(attrs, 0)
    }

    constructor(context: Context, attrs: AttributeSet, defStyle: Int) : super(context, attrs, defStyle) {
        init(attrs, defStyle)
    }

    private fun init(attrs: AttributeSet?, defStyle: Int) {
        // Load attributes
        val a = context.obtainStyledAttributes(
                attrs, R.styleable.BottomArcRectView, defStyle, 0)

        mStartColor = a.getColor(R.styleable.BottomArcRectView_ba_start_color, Color.parseColor("#37D995"))
        // mEndColor = a.getColor(R.styleable.BottomArcRectView_ba_end_color, Color.parseColor("#2FCA89"))

        a.recycle()

        // Set up a default TextPaint object
        mPaint = Paint().apply {
            flags = Paint.ANTI_ALIAS_FLAG
            isAntiAlias = true
            color = mStartColor
            style = Paint.Style.FILL
            xfermode = PorterDuffXfermode(PorterDuff.Mode.SRC_IN)
        }

        /*mLinearGradient = LinearGradient((width / 2).toFloat(), 0F, width.toFloat(), height.toFloat(),
                mStartColor, mEndColor, Shader.TileMode.CLAMP)
        mPaint.shader = mLinearGradient*/

        mRect = RectF()
        mCircleCenter = Point()
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
//JLGLLog.d(TAG, "onSizeChanged")
        super.onSizeChanged(w, h, oldw, oldh)
        mRadius = width * 2
        mRect.apply {
            left = 0F
            top = 0F
            right = width.toFloat()
            bottom = height.toFloat()
        }
        mCircleCenter.apply {
            x = width / 2
            y = height - width * 2
        }
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        canvas.drawCircle(mCircleCenter.x.toFloat(), mCircleCenter.y.toFloat(), mRadius.toFloat(), mPaint)
    }

    companion object {
        private const val TAG = "BottomArcRectView"
    }
}
