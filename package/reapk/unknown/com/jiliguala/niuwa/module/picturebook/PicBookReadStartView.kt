package com.jiliguala.niuwa.module.picturebook

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.widget.RelativeLayout
import com.github.sahasbhop.apngview.ApngDrawable
import com.github.sahasbhop.apngview.ApngImageLoader
import com.jiliguala.niuwa.R
import kotlinx.android.synthetic.main.picbook_read_start.view.*

class PicBookReadStartView : RelativeLayout {


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
        LayoutInflater.from(context).inflate(R.layout.picbook_read_start, this)
    }

    fun showSpeaker() {
        count_down.visibility = View.INVISIBLE
        speaker.visibility = View.VISIBLE
        startSpeaker()
    }

    fun hideSpeaker() {
        speaker.visibility = View.GONE
        stopSpeaker()
    }

    private fun stopSpeaker() {
        val apngDrawable = ApngDrawable.getFromView(speaker) ?: return
        if (apngDrawable.isRunning) {
            apngDrawable.stop()
        }
    }

    private fun startSpeaker() {
        val apngDrawable = ApngDrawable.getFromView(speaker)
        if (apngDrawable != null) {
            apngDrawable.start()
        } else {
            val mApngConfig = ApngImageLoader.ApngConfig(100, true, true)
            ApngImageLoader.getInstance().displayApng("assets://apng/img_reading_teacher1.png", speaker, mApngConfig)
        }
    }

    fun showCountDown(count: Int) {
        count_down.visibility = View.VISIBLE
        when (count) {
            3 -> count_down.setImageResource(R.drawable.img_countdown_3)
            2 -> count_down.setImageResource(R.drawable.img_countdown_2)
            1 -> count_down.setImageResource(R.drawable.img_countdown_1)
        }
    }

}