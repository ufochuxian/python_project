package com.jiliguala.niuwa.module.NewRoadMap.adapter

import android.support.v4.content.ContextCompat
import android.support.v4.view.PagerAdapter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.util.xutils.ClickManager
import com.jiliguala.niuwa.module.NewRoadMap.LevelItem
import com.jiliguala.niuwa.module.mcphonics.report.ChooseLvFragment

class LevelPagerAdapter(levelClickListener: ChooseLvFragment.OnLevelClickListener) : PagerAdapter() {

    private var mImages: Array<Int>? = null
    private var mViews: ArrayList<View> = ArrayList()
    private var mType: String? = null
    private var mRecommendIndex: Int = 0
    private var mListener: ChooseLvFragment.OnLevelClickListener = levelClickListener
    private var mClickManager: ClickManager = ClickManager()

    fun setDataSet(images: Array<Int>, type: String?, recommendIndex: Int = 0) {
        mImages = images
        mType = type
        mRecommendIndex = recommendIndex
        mViews.clear()
    }

    override fun isViewFromObject(view: View, obj: Any): Boolean {
        return view == obj
    }

    override fun instantiateItem(container: ViewGroup, position: Int): Any {
        val itemView = LayoutInflater.from(container.context).inflate(R.layout.item_road_level, container, false)
        val bgLevel = itemView.findViewById(R.id.bg_level) as ImageView
        bgLevel.setImageDrawable(ContextCompat.getDrawable(container.context, mImages!![position]))
        if (LevelItem.LevelSwitch == mType) {
            if (mRecommendIndex == position) {
                val imgSuggest = itemView.findViewById(R.id.suggest_level) as ImageView
                imgSuggest.visibility = View.VISIBLE
            }
            itemView.rootView.setOnClickListener {
                if (!mClickManager.isRepatedClick) {
                    mListener.onItemClick(position)
                }
            }
        } else {
            val btnClose = itemView.findViewById(R.id.btn_close) as ImageView
            btnClose.visibility = View.VISIBLE
            btnClose.setOnClickListener {
                mListener.onCloseClick()
            }
        }

        // add the item view into pager container
        container.addView(itemView)
        mViews.add(itemView)
        return itemView
    }

    fun getViewAt(position: Int): View? {
        return if (position >= 0 && position < mViews.size) mViews[position] else null
    }

    override fun getCount(): Int {
        return mImages?.size ?: 0
    }

    override fun destroyItem(container: ViewGroup, position: Int, obj: Any) {
        container.removeView(obj as View?)
    }

    companion object {
        private const val TAG = "LevelPagerAdapter"
    }
}