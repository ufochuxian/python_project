package com.jiliguala.niuwa.module.course.contents

import com.google.gson.Gson
import com.google.gson.annotations.SerializedName
import java.io.Serializable

class CourseCategory : Serializable {

    @SerializedName("id")
    var type: String? = null

    var desc: String? = null

    @SerializedName("lv")
    var levels: List<CourseLevel>? = null

    override fun toString(): String {
        return Gson().toJson(this)
    }

}