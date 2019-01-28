package com.jiliguala.niuwa.module.picturebook

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.FrameLayout
import com.github.sahasbhop.apngview.ApngDrawable
import com.github.sahasbhop.apngview.ApngImageLoader
import com.github.sahasbhop.apngview.assist.ApngListener
import com.jiliguala.niuwa.R
import kotlinx.android.synthetic.main.picbook_score.view.*

class PicBookScoreView : FrameLayout {


    constructor(context: Context?) : super(context) {
        initView(context)
    }

    constructor(context: Context?, attrs: AttributeSet?) : super(context, attrs) {
        initView(context)
    }

    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr) {
        initView(context)
    }


    fun initView(context: Context?) {
        LayoutInflater.from(context).inflate(R.layout.picbook_score, this)
    }


    fun stop() {
        val apngDrawable = ApngDrawable.getFromView(score) ?: return
        if (apngDrawable.isRunning) {
            apngDrawable.stop()
        }
    }


    fun showStar(star: Int, listener: ApngListener) {


        val url = when (star) {
            3 -> "assets://apng/star_3.png"
            2 -> "assets://apng/star_2.png"
            1 -> "assets://apng/star_1.png"
            else ->
                "assets://apng/star_1.png"
        }

        val mApngConfig = ApngImageLoader.ApngConfig(1, true, true)
        ApngImageLoader.getInstance().displayApng(url, score, mApngConfig, listener)
    }
}