package com.jiliguala.niuwa.module.picturebook.fingerread

import android.content.Context
import android.graphics.Color
import android.text.Spannable
import android.text.SpannableStringBuilder
import android.text.style.ForegroundColorSpan
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.widget.RelativeLayout
import com.github.sahasbhop.apngview.ApngDrawable
import com.github.sahasbhop.apngview.ApngImageLoader
import com.github.sahasbhop.apngview.assist.ApngListener
import com.jiliguala.niuwa.R
import kotlinx.android.synthetic.main.layout_pic_book_correction.view.*

class PicBookCorrectionView : RelativeLayout {


    constructor(context: Context?) : super(context) {
        initView(context)
    }

    constructor(context: Context?, attrs: AttributeSet?) : super(context, attrs) {
        initView(context)
    }

    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr) {
        initView(context)
    }

    private fun initView(context: Context?) {
        isClickable = true
        LayoutInflater.from(context).inflate(R.layout.layout_pic_book_correction, this)
    }

    fun setRecordClick(l: (View) -> Unit) {
        record.setOnClickListener(l)
    }

    fun showTeacherStart(b: Boolean) {
        if (b) {
            teacher_start.visibility = View.VISIBLE
            val apngDrawable = ApngDrawable.getFromView(teacher_start)
            if (apngDrawable != null) {
                apngDrawable.start()
            } else {
                val mApngConfig = ApngImageLoader.ApngConfig(100, true, true)
                ApngImageLoader.getInstance().displayApng("assets://apng/img_correction_guide.png", teacher_start, mApngConfig)
            }
        } else {
            teacher_start.visibility = View.INVISIBLE
            val apngDrawable = ApngDrawable.getFromView(teacher_start) ?: return
            if (apngDrawable.isRunning) {
                apngDrawable.stop()
            }
        }

    }

    fun showCorrection() {
        bottom_bg.visibility = View.VISIBLE
        teacher_result.visibility = View.VISIBLE
        ApngImageLoader.getInstance().displayImage("assets://apng/img_correction_result.png", teacher_result)
    }

    fun highLight(text: String, start: Int, end: Int) {
        val builder = SpannableStringBuilder(text)
        val length = text.length
        setSpan(builder, ForegroundColorSpan(Color.parseColor("#404040")), 0, start - 1, length)
        setSpan(builder, ForegroundColorSpan(Color.parseColor("#FF3358")), start, end, length)
        setSpan(builder, ForegroundColorSpan(Color.parseColor("#404040")), end + 1, length, length)
        word.text = builder
    }

    fun setSpan(builder: SpannableStringBuilder, span: ForegroundColorSpan, start: Int, end: Int, length: Int) {
        if (start >= 0 && end <= length && start < end) {
            builder.setSpan(span, start, end, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE)
        }
    }

    fun showRecord(show: Boolean) {
        if (show) {
            word.textSize = 29f
            val text = word.text?.toString()
            if (text != null) {
                highLight(text, 0, 0)
            }
            record.visibility = View.VISIBLE
            record.setImageResource(R.drawable.btn_record_pressed)
            recording.visibility = View.VISIBLE
            val url = "assets://apng/picbook_record.png"
            val mApngConfig = ApngImageLoader.ApngConfig(1000, true, false)
            ApngImageLoader.getInstance().displayApng(url, recording, mApngConfig)
        } else {
            word.textSize = 38f
            recording.visibility = View.GONE
            record.visibility = View.GONE
            val apngDrawable = ApngDrawable.getFromView(recording) ?: return
            if (apngDrawable.isRunning) {
                apngDrawable.stop()
            }
        }
    }

    fun showStar(star: Int, apngListener: ApngListener) {
        val apngDrawable = ApngDrawable.getFromView(teacher_result)
        if (apngDrawable != null) {
            apngDrawable.numPlays = 1
            apngDrawable.isShowLastFrameOnStop = false
            apngDrawable.apngListener = apngListener
            apngDrawable.start()
        } else {
            val mApngConfig = ApngImageLoader.ApngConfig(1, true, false)
            ApngImageLoader.getInstance().displayApng("assets://apng/img_correction_result.png", teacher_result, mApngConfig, apngListener)
        }
    }


}