package com.jiliguala.niuwa.module.course.contents

import com.google.gson.Gson
import com.google.gson.annotations.SerializedName
import com.jiliguala.niuwa.logic.network.json.BabyIntiationTemplete
import java.io.Serializable

class CourseContents : Serializable {

    var banner: BabyIntiationTemplete.Banner ?= null

    @SerializedName("lessons")
    var categories: List<CourseCategory>? = null

    override fun toString(): String {
        return Gson().toJson(this)
    }

}