package com.jiliguala.niuwa.module.picturebook

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.widget.RelativeLayout
import com.bumptech.glide.Glide
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import kotlinx.android.synthetic.main.picbook_cover.view.*

class PicBookCoverView : RelativeLayout {


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
        LayoutInflater.from(context).inflate(R.layout.picbook_cover, this)
    }

    fun showData(data: PicBookTemplate.Data.Cover?) {
        if (data != null) {
            title.text = data.title
            desc.text = data.desc
            Glide.with(context).load(data.cover).dontAnimate().centerCrop().into(cover)
        }
    }

    fun setBackClick(l: (View) -> Unit) {
        back.setOnClickListener(l)
    }
}


