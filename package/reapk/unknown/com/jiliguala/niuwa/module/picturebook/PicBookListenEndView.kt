package com.jiliguala.niuwa.module.picturebook

import android.content.Context
import android.text.TextUtils
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.widget.FrameLayout
import com.bumptech.glide.Glide
import com.jiliguala.niuwa.R
import kotlinx.android.synthetic.main.picbook_listen_end.view.*

class PicBookListenEndView : FrameLayout {

    constructor(context: Context?) : super(context) {
        init(context)
    }

    constructor(context: Context?, attrs: AttributeSet?) : super(context, attrs) {
        init(context)
    }

    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr) {
        init(context)
    }


    fun init(context: Context?) {
        LayoutInflater.from(context).inflate(R.layout.picbook_listen_end, this)
    }

    fun setOnBackClick(l: (View) -> (Unit)) {
        back.setOnClickListener(l)
    }

    fun showData(url: String?) {
        if (TextUtils.isEmpty(url)) {
            return
        }
        Glide.with(context).load(url).dontAnimate().centerCrop().into(cover)
    }
}