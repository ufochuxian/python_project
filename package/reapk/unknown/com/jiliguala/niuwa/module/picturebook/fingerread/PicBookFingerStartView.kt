package com.jiliguala.niuwa.module.picturebook.fingerread

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.RelativeLayout
import com.github.sahasbhop.apngview.ApngDrawable
import com.github.sahasbhop.apngview.ApngImageLoader
import com.jiliguala.niuwa.R
import kotlinx.android.synthetic.main.picbook_finger_start.view.*

class PicBookFingerStartView : RelativeLayout {


    constructor(context: Context) : super(context) {
        initView(context)
    }

    constructor(context: Context, attrs: AttributeSet?) : super(context, attrs) {
        initView(context)

    }

    constructor(context: Context, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr) {
        initView(context)
    }


    fun initView(context: Context) {
        isClickable = true
        LayoutInflater.from(context).inflate(R.layout.picbook_finger_start, this)
    }


    fun showSpeaker() {
        val apngDrawable = ApngDrawable.getFromView(speaker)
        if (apngDrawable != null) {
            apngDrawable.start()
        } else {
            val mApngConfig = ApngImageLoader.ApngConfig(100, true, true)
            ApngImageLoader.getInstance().displayApng("assets://apng/img_reading_teacher1.png", speaker, mApngConfig)
        }
    }

    fun hideSpeaker() {
        val apngDrawable = ApngDrawable.getFromView(speaker) ?: return
        if (apngDrawable.isRunning) {
            apngDrawable.stop()
        }
    }
}