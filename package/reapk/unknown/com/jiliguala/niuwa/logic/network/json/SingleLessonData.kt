package com.jiliguala.niuwa.logic.network.json

import com.google.gson.annotations.SerializedName
import java.io.Serializable

class SingleLessonData : Serializable {

    var _id: String? = null

    @SerializedName("bgpic")
    var bgPic: String? = null
    var category: String? = null
    var cttl: String? = ""
    var ttl: String? = ""

    @SerializedName("doneusers")
    var doneUsers: Int? = 0
    var report: Report? = null
    var subs: ArrayList<Lesson>? = null

    @SerializedName("unlockway")
    var unlockWay: UnlockWay? = null

    class Report : Serializable {
        @SerializedName("signicon")
        var siginIcon: String? = null
        var tgt: String? = null
    }

    class UnlockWay : Serializable {
        var type: String? = null
        var params: Params? = null

        class Params : Serializable {
            var itemID: String? = null
        }
    }

    class Lesson : Serializable {
        var _id: String? = null
        var desc: String? = null
        var pic: String? = null
        var resource: Resource? = null
        var status: String? = null
        var typ: String? = null
        var cttl: String? = ""
        var ttl: String? = ""

        fun isComplete(): Boolean {
            return Status.COMPLETED.status.equals(status?.toLowerCase())
        }

        fun isCurrent(): Boolean {
            return Status.CURRENT.status.equals(status?.toLowerCase())
        }

        fun isLock(): Boolean {
            return Status.LOCKED.status.equals(status?.toLowerCase())
        }

        class Resource : Serializable {
            var _id: String? = null
            var typ: String? = null
        }

        enum class Type(val type: String) {
            INTERACTION("interaction"),
            NEW_INTERACTION("newInteraction")
        }

        enum class Status(val status: String) {
            LOCKED("locked"),
            CURRENT("current"),
            COMPLETED("completed")
        }
    }
}