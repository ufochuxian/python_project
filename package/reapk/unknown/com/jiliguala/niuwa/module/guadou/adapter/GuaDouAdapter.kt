package com.jiliguala.niuwa.module.guadou.adapter

import android.content.Context
import android.support.v4.content.ContextCompat
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.logic.network.json.GuaDou
import com.jiliguala.niuwa.module.unit.fragment.OnItemClickListener

class GuaDouAdapter(listener: OnItemClickListener) : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

    private var mDataSet: Array<GuaDou>? = null
    private lateinit var mContext: Context
    private var mListener: OnItemClickListener? = null
    private var mChosenProdId: String? = null

    init {
        this.mListener = listener
    }

    fun setGuaDouData(options: Array<GuaDou>?, defaultOption: String?) {
        mDataSet = options
        mChosenProdId = defaultOption
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
        mContext = parent.context
        val v = LayoutInflater.from(mContext).inflate(R.layout.item_gua_dou, parent, false)
        return GuaDouViewHolder(v)
    }

    override fun getItemCount(): Int {
        return mDataSet?.size ?: 0
    }

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder?, position: Int) {
        if (holder != null) {
            mDataSet?.get(position)?.let {
                val guaDouVH = holder as GuaDouViewHolder
                if (mChosenProdId == it.itemId) {
                    guaDouVH.container.background = ContextCompat.getDrawable(mContext, R.drawable.round_green_solid_9)
                    guaDouVH.amount.setTextColor(ContextCompat.getColor(mContext, R.color.white))
                    guaDouVH.unit.setTextColor(ContextCompat.getColor(mContext, R.color.white))
                    guaDouVH.price.setTextColor(ContextCompat.getColor(mContext, R.color.white))
                } else {
                    guaDouVH.container.background = ContextCompat.getDrawable(mContext, R.drawable.round_green_stroke_9)
                    guaDouVH.amount.setTextColor(ContextCompat.getColor(mContext, R.color.green_color))
                    guaDouVH.unit.setTextColor(ContextCompat.getColor(mContext, R.color.green_color))
                    guaDouVH.price.setTextColor(ContextCompat.getColor(mContext, R.color.black_40))
                }
                guaDouVH.container.setOnClickListener { view ->
                    if (mChosenProdId != it.itemId) {
                        mListener?.onItemClick(position)
                        mChosenProdId = it.itemId
                        notifyDataSetChanged()
                    }
                }
                guaDouVH.amount.text = it.getDisplayAmount().toString()
                guaDouVH.price.text = String.format(mContext.getString(R.string.gua_dou_price), it.getDisplayPrice())
            }
        }
    }

    class GuaDouViewHolder(v: View) : RecyclerView.ViewHolder(v) {
        val container: View
        val amount: TextView
        val unit: TextView
        val price: TextView

        init {
            // Define click listener for the ViewHolder's View.
            v.setOnClickListener { JLGLLog.d(TAG, "Element $adapterPosition clicked.") }
            container = v.findViewById(R.id.container)
            amount = v.findViewById(R.id.count_gua_dou) as TextView
            unit = v.findViewById(R.id.unit_gua_dou) as TextView
            price = v.findViewById(R.id.price) as TextView
        }
    }

    companion object {
        private const val TAG = "GuaDouAdapter"
    }
}