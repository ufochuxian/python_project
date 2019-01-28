package com.jiliguala.niuwa.logic.network.json

import com.google.gson.Gson
import java.io.Serializable

class GuaDou : Serializable {
    var itemId: String? = null
    var amount: Long = 0 // 呱豆 unit:分
    var price: Long = 0  // 价格 unit: 分

    fun getDisplayAmount(): Long {
        return amount / 100
    }

    fun getDisplayPrice(): Float {
        return price * 1.00F / 100F
    }

    override fun toString(): String {
        return Gson().toJson(this)
    }
}