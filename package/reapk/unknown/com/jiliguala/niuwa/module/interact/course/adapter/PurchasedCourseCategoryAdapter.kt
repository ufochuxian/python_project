package com.jiliguala.niuwa.module.interact.course.adapter

import android.content.Context
import android.support.v7.widget.RecyclerView
import android.support.v7.widget.RecyclerView.Adapter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.bumptech.glide.Glide
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.util.UrlUtils
import com.jiliguala.niuwa.logic.network.json.LessonPaidTemplate
import com.jiliguala.niuwa.logic.prefixparse.PrefixParser
import kotlinx.android.synthetic.main.item_purchased_course_category.view.*

class PurchasedCourseCategoryAdapter(val mContext: Context) : Adapter<CategoryVh>() {

    val mInflater: LayoutInflater = LayoutInflater.from(mContext)

    val mData: MutableList<LessonPaidTemplate.Data> = mutableListOf()

    override fun getItemCount(): Int {
        return mData.size
    }

    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): CategoryVh {
        val view = mInflater.inflate(R.layout.item_purchased_course_category, null)
        return CategoryVh(view)
    }

    override fun onBindViewHolder(holder: CategoryVh, position: Int) {
        val data = mData[position]
        with(holder.itemView) {
            Glide.with(mContext).load(data.img).dontAnimate().into(icon)
            name.text = data.title
            count.text = data.content
        }

        holder.itemView.setOnClickListener {
            data.url?.let { url ->
                val newUrl = UrlUtils.appendUri(url, "title", data.title)
                PrefixParser.handleSchemaJump(mContext, newUrl)
            }
        }
    }

    fun updateData(data: List<LessonPaidTemplate.Data>) {
        mData.clear()
        mData.addAll(data)
    }

}

class CategoryVh(itemView: View) : RecyclerView.ViewHolder(itemView)


