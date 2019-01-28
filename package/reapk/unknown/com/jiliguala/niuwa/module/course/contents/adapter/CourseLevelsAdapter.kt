package com.jiliguala.niuwa.module.course.contents.adapter

import android.content.Context
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import com.bumptech.glide.Glide
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.util.xutils.ClickManager
import com.jiliguala.niuwa.module.NewRoadMap.LevelItem
import com.jiliguala.niuwa.module.course.contents.CourseLevel
import com.jiliguala.niuwa.module.course.contents.OnItemClickListener

class CourseLevelsAdapter(context: Context, listener: OnItemClickListener) : RecyclerView.Adapter<CourseLevelsAdapter.LevelHolder>() {

    private var mDataSet: List<CourseLevel>? = null
    private var mContext: Context = context
    private var mType: String? = null
    private var mCategoryPosition: Int = 0
    private var mListener: OnItemClickListener = listener
    private var mClickManager: ClickManager = ClickManager()

    fun setLevels(data: List<CourseLevel>?, type: String?, position: Int) {
        mDataSet = data
        mType = type
        mCategoryPosition = position
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): CourseLevelsAdapter.LevelHolder {
        return LevelHolder(LayoutInflater.from(mContext).inflate(R.layout.item_course_detail, parent, false))
    }

    override fun getItemCount(): Int {
        return mDataSet?.size ?: 0
    }

    override fun onBindViewHolder(holder: CourseLevelsAdapter.LevelHolder?, position: Int) {
        if (holder != null) {
            mDataSet?.get(position)?.let { level ->
                holder.container.setOnClickListener {
                    if (!mClickManager.isRepatedClick) {
                        mListener.onItemClick(mCategoryPosition, position)
                    }
                }
                holder.current.visibility = if (level.isCurrent) View.VISIBLE else View.GONE
                if (level.bgColor == null) {
                    when (mType) {
                        LevelItem.GuaMei -> level.bgColor = "#6FE4E6"
                        LevelItem.MC -> level.bgColor = "#A9DE5A"
                        LevelItem.PH -> level.bgColor = "#E38AD6"
                    }
                }
                val drawable = holder.container.background as GradientDrawable
                drawable.setColor(Color.parseColor(level.bgColor))
                holder.level.text = level.level
                holder.title.text = level.title
                holder.subTitle.text = level.subTitle
                Glide.with(mContext).load(level.imgLevel).into(holder.image)
                holder.detail.text = level.has
            }
        }
    }

    class LevelHolder(v: View) : RecyclerView.ViewHolder(v) {
        var container: View = v.findViewById(R.id.container_level) as View
        var level: TextView = v.findViewById(R.id.level) as TextView
        var title: TextView = v.findViewById(R.id.title) as TextView
        var subTitle: TextView = v.findViewById(R.id.sub_title) as TextView
        var image: ImageView = v.findViewById(R.id.img_level) as ImageView
        var detail: TextView = v.findViewById(R.id.detail) as TextView
        var current: TextView = v.findViewById(R.id.cur_level) as TextView
    }
}