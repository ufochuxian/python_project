package com.jiliguala.niuwa.logic.network.json

import com.google.gson.Gson
import com.google.gson.annotations.SerializedName
import java.io.Serializable

class GuaDouBundle : Serializable {

    var balance: Long = 0

    var defaultOption: String? = null

    @SerializedName("topUpOptions")
    var topOptions: Array<GuaDou>? = null

    var records: Array<GuaDouRecord>? = null

    fun getDisplayBalance(): Float {
        return balance * 1.00F / 100F
    }

    override fun toString(): String {
        return Gson().toJson(this)
    }
}