package com.jiliguala.niuwa.module.pingplusplus

import android.content.Context
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.logic.network.json.CouponListTemplate
import kotlinx.android.synthetic.main.pay_voucher_item.view.*

class PayVoucherAdapter(val mContext: Context, val onclick: (pos: Int) -> Unit) : RecyclerView.Adapter<ViewHolder>() {

    private var mDataSet = ArrayList<CouponListTemplate.Data>()
    var mSelData: CouponListTemplate.Data? = null

    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): ViewHolder {
        val retView: View = LayoutInflater.from(mContext).inflate(R.layout.pay_voucher_item, null)
        return ViewHolder(retView)
    }

    override fun getItemCount(): Int {
        return mDataSet.size
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val data = mDataSet[position]
        holder.priceContainer.setBackgroundResource(if (data.isAvailable) R.drawable.img_coupon_red else R.drawable.img_coupon_grey)
        holder.price.text = (data.amount / 100).toString()
        holder.title.text = data.ttl
        holder.date.text = data.timespan
        holder.desc.text = data.desc
        if (data.isAvailable) {
            if (data.isCloseToExpired) {
                holder.status.setImageResource(R.drawable.img_coupon_soonexpire)
            } else {
                holder.status.setImageResource(0)
            }
        } else if (data.isConsumed) {
            holder.status.setImageResource(R.drawable.img_coupon_used)
        } else if (data.isExpired) {
            holder.status.setImageResource(R.drawable.img_coupon_expired)
        } else {
            holder.status.setImageResource(0)
        }

        showSelect(holder, data._id == mSelData?._id)

        holder.itemView.setOnClickListener {
            setSelect(data)
            onclick(position)
        }
    }

    fun setSelect(data: CouponListTemplate.Data?) {
        setSelect(data, true)
    }

    fun setSelect(data: CouponListTemplate.Data?, notify: Boolean) {
        mSelData = data
        if (notify)
            notifyDataSetChanged()
    }

    private fun showSelect(holder: ViewHolder, select: Boolean) {
        if (select) {
            holder.contentContainer.setBackgroundResource(R.drawable.round_red_half_6)
            holder.select.visibility = View.VISIBLE
        } else {
            holder.contentContainer.setBackgroundResource(R.drawable.round_white_right_half_6)
            holder.select.visibility = View.INVISIBLE
        }
    }


    fun updateDataSet(data: ArrayList<CouponListTemplate.Data>, refresh: Boolean) {
        if (refresh) {
            mDataSet = ArrayList(data)
        } else {
            mDataSet.addAll(data)
        }
        notifyDataSetChanged()
    }
}

class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
    val priceContainer: View = itemView.price_container
    val title: TextView = itemView.title
    val desc: TextView = itemView.desc
    val date: TextView = itemView.date
    val status: ImageView = itemView.status
    val contentContainer: View = itemView.content_container
    val select: View = itemView.select
    val price: TextView = itemView.price
}
