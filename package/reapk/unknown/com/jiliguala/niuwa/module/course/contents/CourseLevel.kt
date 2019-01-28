package com.jiliguala.niuwa.module.course.contents

import com.google.gson.Gson
import com.google.gson.annotations.SerializedName
import java.io.Serializable

class CourseLevel : Serializable {

    @SerializedName("color")
    var bgColor: String? = null

    var id: String? = null

    @SerializedName("topTtl")
    var level: String? = null

    @SerializedName("ttl")
    var title: String? = null

    @SerializedName("subTtl")
    var subTitle: String? = null

    @SerializedName("bg")
    var imgLevel: String? = null

    @SerializedName("cur")
    var isCurrent: Boolean = false

    var has: String? = null

    var locked: Boolean = false

    override fun toString(): String {
        return Gson().toJson(this)
    }
}