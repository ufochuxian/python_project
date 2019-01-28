package com.jiliguala.niuwa.logic.network.json

import com.google.gson.Gson
import com.google.gson.annotations.SerializedName
import com.jiliguala.niuwa.common.util.DateUtils
import java.io.Serializable

class GuaDouRecord : Serializable {

    @SerializedName("_id")
    var orderId: String? = null

    @SerializedName("uid")
    var userId: String? = null

    @SerializedName("itemid")
    var itemId: String? = null

    var amount: Long = 0    // 呱豆 unit:分

    var channel: String? = null

    var status: String? = null

    @SerializedName("cts")
    var createAt: Long = 0

    @SerializedName("rts")
    var refundAt: Long = 0

    @SerializedName("guadou")
    var guaDou: GuaDou? = null

    fun getDisplayAmount(): Float {
        return amount * 1.00F / 100F
    }

    fun hasFloatingPoint(): Boolean {
        return amount % 100F != 0F
    }

    fun getDisplayTime(): String {
        return DateUtils.formatUnixTime(if ("refunded" == status) refundAt else createAt)
    }

    override fun toString(): String {
        return Gson().toJson(this)
    }
}