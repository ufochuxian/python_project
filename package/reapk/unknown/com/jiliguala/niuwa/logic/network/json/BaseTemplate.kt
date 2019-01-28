package com.jiliguala.niuwa.logic.network.json

import java.io.Serializable

class BaseTemplate<T> : Serializable {

    var code: Int? = 0
    var data: T? = null

}