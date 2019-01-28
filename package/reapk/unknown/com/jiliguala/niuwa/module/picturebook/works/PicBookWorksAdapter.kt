package com.jiliguala.niuwa.module.picturebook.works

import android.content.Context
import android.graphics.drawable.AnimationDrawable
import android.support.v7.widget.RecyclerView
import android.support.v7.widget.RecyclerView.Adapter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import com.bumptech.glide.Glide
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.logic.network.json.MineStoryBookTemplate
import com.jiliguala.niuwa.module.picturebook.ScoreUtils
import kotlinx.android.synthetic.main.item_picbook_works.view.*

class PicBookWorksAdapter(val context: Context,
                          val playClick: (ViewHolder, Int) -> Unit,
                          val shareClick: (ViewHolder, Int) -> Unit)
    : Adapter<PicBookWorksAdapter.ViewHolder>() {


    val mData: MutableList<MineStoryBookTemplate.Data> = mutableListOf()
    val inflater: LayoutInflater = LayoutInflater.from(context)


    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): ViewHolder {
        val inflate = inflater.inflate(R.layout.item_picbook_works, parent, false)
        return ViewHolder(inflate)
    }

    override fun getItemCount(): Int {
        return mData.size
    }


    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        with(mData[position]) {
            holder.itemView.title.text = title
            val count = ScoreUtils.getLessonStarCount(score)
            holder.itemView.star1.setImageResource(if (count >= 1) R.drawable.img_score_star_get else R.drawable.img_score_star_not_get)
            holder.itemView.star2.setImageResource(if (count >= 2) R.drawable.img_score_star_get else R.drawable.img_score_star_not_get)
            holder.itemView.star3.setImageResource(if (count >= 3) R.drawable.img_score_star_get else R.drawable.img_score_star_not_get)
            Glide.with(context).load("$cover.png").dontAnimate().into(holder.itemView.cover)
            showPlayAnim(holder.itemView.play, playing)
        }

        holder.pos = position

        holder.itemView.play.setOnClickListener {
            playClick(holder, position)
        }

        holder.itemView.share_container.setOnClickListener {
            shareClick(holder, position)
        }
    }

    private fun showPlayAnim(iv: ImageView, play: Boolean) {
        var drawable = iv.drawable
        if (drawable is AnimationDrawable) {
            drawable.stop()
        }
        if (play) {
            drawable = context.resources.getDrawable(R.drawable.mine_book_playing) as AnimationDrawable
            iv.setImageDrawable(drawable)
            drawable.start()
        } else {
            iv.setImageResource(R.drawable.btn_play_the_end_share)
        }
    }

    fun setData(data: MutableList<MineStoryBookTemplate.Data>) {
        mData.clear()
        mData.addAll(data)
    }


    class ViewHolder(item: View) : RecyclerView.ViewHolder(item) {

        var pos: Int = 0
    }

}