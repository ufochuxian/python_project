package com.jiliguala.niuwa.module.unit.fragment

import android.content.Context
import android.graphics.drawable.ColorDrawable
import android.support.v4.content.ContextCompat
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import com.bumptech.glide.Glide
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.CommonSets.TYPE_SETS.*
import com.jiliguala.niuwa.common.CommonSets.UNLOCK_WAY_TYPE.BUY
import com.jiliguala.niuwa.common.util.AnimationUtils
import com.jiliguala.niuwa.logic.network.json.SingleLessonData
import com.nineoldandroids.animation.AnimatorSet

class QualityCourseDetailAdapter(context: Context, listener: OnItemClickListener) : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

    private var dataSet: ArrayList<SingleLessonData.Lesson>? = null
    private var mContext = context
    private var mListener: OnItemClickListener = listener
    private var unlock: String? = null
    private var mAnimationSet: AnimatorSet? = null

    fun setDataSet(data: ArrayList<SingleLessonData.Lesson>?, unlock: String?) {
        dataSet = ArrayList()
        if (data != null) {
            dataSet = data
        }
        this.unlock = unlock
        notifyDataSetChanged()
    }

    class BannerViewHolder(v: View) : RecyclerView.ViewHolder(v) {
        val image: ImageView
        val btn: ImageView
        val title: TextView
        val subTitle: TextView

        init {
            // Define click listener for the ViewHolder's View.
            v.setOnClickListener { JLGLLog.d(TAG, "Element $adapterPosition clicked.") }
            image = v.findViewById(R.id.item_bg) as ImageView
            btn = v.findViewById(R.id.btn_play) as ImageView
            title = v.findViewById(R.id.course_title) as TextView
            subTitle = v.findViewById(R.id.course_remark) as TextView
        }
    }

    class ItemViewHolder(v: View) : RecyclerView.ViewHolder(v) {
        val bgImage: ImageView
        val image: ImageView
        val animator: ImageView
        val mask: ImageView
        val lock: ImageView
        val title: TextView

        init {
            // Define click listener for the ViewHolder's View.
            v.setOnClickListener { JLGLLog.d(TAG, "Element $adapterPosition clicked.") }
            bgImage = v.findViewById(R.id.outer_back_ground) as ImageView
            image = v.findViewById(R.id.item_bg) as ImageView
            animator = v.findViewById(R.id.anim_bg) as ImageView
            mask = v.findViewById(R.id.mask_bg) as ImageView
            lock = v.findViewById(R.id.lock) as ImageView
            title = v.findViewById(R.id.sub_title) as TextView
        }
    }

    override fun getItemViewType(position: Int): Int {
        return if (position == 0) 0 else 1
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
        return if (viewType == 0) {
            val v = LayoutInflater.from(mContext)
                    .inflate(R.layout.item_quality_course_banner, parent, false)
            BannerViewHolder(v)
        } else {
            val v = LayoutInflater.from(mContext)
                    .inflate(R.layout.item_quality_course_detail, parent, false)
            ItemViewHolder(v)
        }
    }

    override fun getItemCount(): Int {
        return dataSet?.size ?: 0
    }

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder?, position: Int) {
        if (holder != null) {
            val url = dataSet?.get(position)?.pic
//JLGLLog.d(TAG, "Element $position set with $url")
            if (getItemViewType(position) == 0) {
                val bannerHolder = holder as BannerViewHolder
                Glide.with(mContext).load(url).dontAnimate().into(bannerHolder.image)
                bannerHolder.btn.setImageResource(
                        if (BUY.equals(unlock)) R.drawable.icon_non_purchased
                        else R.drawable.icon_play_green)
                bannerHolder.title.text = dataSet?.get(position)?.ttl ?: ""
                bannerHolder.subTitle.text = dataSet?.get(position)?.cttl ?: ""
            } else {
                val itemHolder = holder as ItemViewHolder
                dataSet?.get(position)?.let { it ->
                    var display = ""
                    var bgColor = 0
                    var iconSrc = 0
                    when (it.typ) {
                        TYPE_WATCH -> {
                            display = "看一看"
                            bgColor = R.color.watchLessonColor
                            iconSrc = R.drawable.tool_icon_watch
                        }
                        TYPE_DRAG, TYPE_TAP -> {
                            display = "玩一玩"
                            bgColor = R.color.super_lesson_tapGameColor
                            iconSrc = R.drawable.icon_sublesson_play
                        }
                        TYPE_TALK -> {
                            display = "说一说"
                            bgColor = R.color.speakGameColor
                            iconSrc = R.drawable.icon_sublesson_speak
                        }
                        CommonSets.TYPE_SETS.TYPE_PRACTICE_TALK -> {
                            display = "说一说"
                            bgColor = R.color.super_lesson_practiceTalkColor
                        }
                        TYPE_ALPHABET -> {
                            display = "写一写"
                            bgColor = R.color.super_lesson_writeGameColor
                            iconSrc = R.drawable.icon_sublesson_write
                        }
                        TYPE_HIT -> {
                            display = "打一打"
                            bgColor = R.color.hitGameColor
                            iconSrc = R.drawable.tool_icon_hit
                        }
                        TYPE_SONG_WATCH -> {
                            display = "唱一唱"
                            bgColor = R.color.super_lesson_songGameColor
                            iconSrc = R.drawable.icon_sublesson_sing
                        }
                        TYPE_FUNWATCH -> {
                            display = "乐一乐"
                            bgColor = R.color.douLessonColor
                            iconSrc = R.drawable.tool_icon_dou
                        }
                        TYPE_INTERACT, TYPE_NEW_INTERACT_LESSON -> {
                            display = "互动课"
                            bgColor = R.color.white
                        }
                        TYPE_NEW_STORY_LISTEN_LESSON -> {
                            display = "听绘本"
                            bgColor = R.color.newInteractLessonColor
                        }
                        TYPE_NEW_STORY_READ_LESSON -> {
                            display = "跟读"
                            bgColor = R.color.speakGameColor
                            iconSrc = R.drawable.icon_sublesson_speak
                        }
                        TYPE_NEW_STORY_POINT_LESSON -> {
                            display = "指读"
                            bgColor = R.color.PointColor
                        }
                        CommonSets.TYPE_SETS.TYPE_PRACTICE_CHOOSE -> {
                            display = "选一选"
                            bgColor = R.color.super_lesson_practiceChooseColor
                        }
                        CommonSets.TYPE_SETS.TYPE_ASSESSMENT -> {
                            display = "测一测"
                            bgColor = R.color.super_lesson_assessment
                        }
                        else -> {
                            display = "其它"
                            bgColor = R.color.white
                        }
                    }
                    itemHolder.title.text = display
                    itemHolder.bgImage.setImageDrawable(ColorDrawable(ContextCompat.getColor(mContext, bgColor)))
                    if (iconSrc == 0) {
                        Glide.with(mContext).load(url).dontAnimate().into(itemHolder.image)
                    } else {
                        itemHolder.image.setImageResource(iconSrc)
                    }
                    if (it.isCurrent()) scaleView(itemHolder.animator)
                    itemHolder.mask.visibility = if (it.isLock()) View.VISIBLE else View.GONE
                    itemHolder.lock.visibility = if (it.isLock()) View.VISIBLE else View.GONE
                }
            }

            holder.itemView.setOnClickListener {
                mListener.onItemClick(position)
            }
        }
    }

    private fun scaleView(view: View) {
        mAnimationSet?.cancel()
        mAnimationSet = AnimationUtils.objectScaleAnimation(view)
    }

    fun startAnim() {
        mAnimationSet?.start()
    }

    fun cancelAnim() {
        mAnimationSet?.cancel()
    }

    companion object {
        private const val TAG = "QualityCoursePresenter"
    }
}