package com.jiliguala.niuwa.module.picturebook.listen

import android.content.Context
import android.graphics.Color
import android.support.v4.view.PagerAdapter
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate

class PicBookListenViewPagerAdapter(val mCtx: Context) : PagerAdapter() {

    val mData: ArrayList<PicBookTemplate.Data.Page.Sentence> = ArrayList()

    fun updateData(data: List<PicBookTemplate.Data.Page.Sentence>) {
        mData.clear()
        mData.addAll(data)
        notifyDataSetChanged()
    }

    override fun isViewFromObject(view: View?, obj: Any?): Boolean {
        return view == obj
    }

    override fun getCount(): Int {
        return mData.size
    }


    override fun instantiateItem(container: ViewGroup?, position: Int): Any {
        val data = mData[position]
        val tv = TextView(mCtx)
        tv.textSize = 18f
        tv.setTextColor(Color.parseColor("#404040"))
        tv.gravity = Gravity.CENTER
        tv.text = data.text
        tv.maxLines = 2
        tv.layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
        container?.addView(tv)
        return tv
    }

    override fun destroyItem(container: ViewGroup?, position: Int, obj: Any?) {
        container?.removeView(obj as View?)
//        super.destroyItem(container, position, obj)
    }

    override fun getItemPosition(`object`: Any?): Int {
        return POSITION_NONE
    }
}