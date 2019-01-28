package com.jiliguala.niuwa.module.guadou.adapter

import android.content.Context
import android.support.v4.content.ContextCompat
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.logic.network.json.GuaDouRecord

class RecordGuaDouAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

    private var mDataSet: ArrayList<GuaDouRecord>? = null
    private lateinit var mContext: Context

    fun updateRecordData(options: Array<GuaDouRecord>?, isLoadMore: Boolean) {
        if (mDataSet == null) mDataSet = arrayListOf()
        if (!isLoadMore) mDataSet?.clear()
        options?.let {
            mDataSet?.addAll(it)
        }
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
        mContext = parent.context
        val v = LayoutInflater.from(mContext).inflate(R.layout.item_recharge_record, parent, false)
        return RecordViewHolder(v)
    }

    override fun getItemCount(): Int {
        return mDataSet?.size ?: 0
    }

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder?, position: Int) {
        if (holder != null) {
            mDataSet?.get(position)?.let {
                val recordVH = holder as RecordViewHolder
                recordVH.orderNumber.text = String.format(mContext.getString(R.string.order_number), it.orderId)
                recordVH.amountGuaDou.text = String.format(mContext.getString(R.string.record_amount),
                        it.guaDou?.getDisplayAmount() ?: 0)
                val displayAmountText: String
                if (it.hasFloatingPoint()) {
                    displayAmountText = String.format(mContext.getString(R.string.record_price),
                            it.getDisplayAmount())
                } else {
                    displayAmountText = String.format(mContext.getString(R.string.record_short_price),
                            it.getDisplayAmount().toLong())
                }
                recordVH.priceGuaDou.text = displayAmountText
                when (it.status) {
                    "refunded" -> {
                        recordVH.status.text = mContext.getString(R.string.refunded)
                    }
                    "refunding" -> {
                        recordVH.status.text = mContext.getString(R.string.refunding)
                    }
                    "paid" -> {
                        recordVH.status.text = mContext.getString(R.string.paid)
                    }
                    "paying" -> {
                        recordVH.status.text = mContext.getString(R.string.paying)
                    }
                }
                when (it.channel) {
                    "wx" -> {
                        recordVH.imgChannel.setImageDrawable(ContextCompat.getDrawable(mContext, R.drawable.payment_icon_weixin))
                        recordVH.channel.text = mContext.getString(R.string.pay_by_wechat)
                    }
                    "alipay" -> {
                        recordVH.imgChannel.setImageDrawable(ContextCompat.getDrawable(mContext, R.drawable.payment_icon_zhifubao))
                        recordVH.channel.text = mContext.getString(R.string.pay_by_alipay)
                    }
                    "iap" -> {
                        recordVH.imgChannel.setImageDrawable(ContextCompat.getDrawable(mContext, R.drawable.payment_icon_appstore))
                        recordVH.channel.text = mContext.getString(R.string.pay_by_appstore)
                    }
                }
                recordVH.createAt.text = it.getDisplayTime()
            }
        }
    }

    class RecordViewHolder(v: View) : RecyclerView.ViewHolder(v) {
        val orderNumber: TextView
        val status: TextView
        val imgChannel: ImageView
        val channel: TextView
        val amountGuaDou: TextView
        val priceGuaDou: TextView
        val createAt: TextView

        init {
            orderNumber = v.findViewById(R.id.order_number) as TextView
            status = v.findViewById(R.id.order_status) as TextView
            imgChannel = v.findViewById(R.id.img_channel) as ImageView
            channel = v.findViewById(R.id.pay_channel) as TextView
            amountGuaDou = v.findViewById(R.id.amount_gua_dou) as TextView
            priceGuaDou = v.findViewById(R.id.price_gua_dou) as TextView
            createAt = v.findViewById(R.id.create_time) as TextView
        }
    }
}