package com.jiliguala.niuwa.module.course.contents.adapter

import android.content.Context
import android.support.v4.content.ContextCompat
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import com.bumptech.glide.Glide
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.util.xutils.ClickManager
import com.jiliguala.niuwa.common.util.xutils.ListUtil
import com.jiliguala.niuwa.logic.network.json.BabyIntiationTemplete
import com.jiliguala.niuwa.logic.prefixparse.PrefixParser
import com.jiliguala.niuwa.module.NewRoadMap.LevelItem
import com.jiliguala.niuwa.module.course.contents.CourseCategory
import com.jiliguala.niuwa.module.course.contents.CourseContents
import com.jiliguala.niuwa.module.course.contents.OnItemClickListener

class CourseContentsAdapter(context: Context, listener: OnItemClickListener) : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

    private var mDataSet: List<CourseCategory>? = null
    private var mBanner: BabyIntiationTemplete.Banner? = null
    private var mContext: Context = context
    private var mListener: OnItemClickListener = listener
    private var mViewPool: RecyclerView.RecycledViewPool = RecyclerView.RecycledViewPool()
    private var mClickManager: ClickManager = ClickManager()

    fun setCourse(data: CourseContents?) {
        mDataSet = data?.categories
        mBanner = data?.banner
        notifyDataSetChanged()
    }

    private fun isBanner(position: Int): Boolean {
        return mBanner != null && position == itemCount - 1
    }

    override fun getItemViewType(position: Int): Int {
        return if (isBanner(position)) TYPE_BANNER else TYPE_COURSE
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
        return when (viewType) {
            TYPE_BANNER -> {
                BannerHolder(LayoutInflater.from(mContext).inflate(R.layout.item_course_banner, parent, false))
            }
            else -> {
                val courseHolder = CourseHolder(mContext, LayoutInflater.from(mContext).inflate(R.layout.item_course_level, parent, false), mListener)
                courseHolder.levelList.recycledViewPool = mViewPool
                courseHolder
            }
        }
    }

    override fun getItemCount(): Int {
        var count = mDataSet?.size ?: 0
        if (mBanner != null) count++
        return count
    }

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder?, position: Int) {
        if (holder != null) {
            if (isBanner(position)) {
                val bannerHolder = holder as BannerHolder
                Glide.with(mContext).load(mBanner?.img).centerCrop().dontAnimate().into(bannerHolder.imgBanner)
                bannerHolder.imgBanner.setOnClickListener {
                    if (!mClickManager.isRepatedClick) {
                        PrefixParser.handleSchemaJump(mContext, mBanner?.target)
                    }
                }
            } else {
                mDataSet?.get(position)?.let {
                    val courseHolder = holder as CourseHolder
                    when (it.type) {
                        LevelItem.GuaMei -> {
                            courseHolder.titleLabel.setImageDrawable(ContextCompat.getDrawable(mContext, R.drawable.img_gua))
                            courseHolder.title.bringToFront()
                            courseHolder.title.text = mContext.getString(R.string.gua_course)
                        }
                        LevelItem.MC -> {
                            courseHolder.titleLabel.setImageDrawable(ContextCompat.getDrawable(mContext, R.drawable.img_mc_label))
                            courseHolder.title.text = mContext.getString(R.string.mc_course)
                        }
                        LevelItem.PH -> {
                            courseHolder.titleLabel.setImageDrawable(ContextCompat.getDrawable(mContext, R.drawable.img_ph_label))
                            courseHolder.title.text = mContext.getString(R.string.phonics)
                        }
                    }
                    courseHolder.desc.text = it.desc
                    courseHolder.levelsAdapter.setLevels(it.levels, it.type, position)
                    if (!ListUtil.isListEmpty(it.levels)) {
                        for ((index, level) in it.levels!!.withIndex()) {
                            if (level.isCurrent) {
                                courseHolder.levelList.scrollToPosition(index)
                                break
                            }
                        }
                    }
                }
            }
        }
    }

    class CourseHolder(context: Context, v: View, listener: OnItemClickListener) : RecyclerView.ViewHolder(v) {
        var title: TextView = v.findViewById(R.id.title) as TextView
        var titleLabel: ImageView = v.findViewById(R.id.title_label) as ImageView
        var desc: TextView = v.findViewById(R.id.desc) as TextView
        var levelList: RecyclerView = v.findViewById(R.id.level_list) as RecyclerView
        var levelsAdapter: CourseLevelsAdapter

        init {
            levelList.layoutManager = LinearLayoutManager(v.context,
                    LinearLayoutManager.HORIZONTAL, false)
            levelList.setHasFixedSize(true)
            levelsAdapter = CourseLevelsAdapter(context, listener)
            levelList.adapter = levelsAdapter
        }
    }

    class BannerHolder(v: View) : RecyclerView.ViewHolder(v) {
        var imgBanner: ImageView = v.findViewById(R.id.banner_image) as ImageView
    }

    companion object {
        private const val TYPE_COURSE = 1
        private const val TYPE_BANNER = 2
    }
}