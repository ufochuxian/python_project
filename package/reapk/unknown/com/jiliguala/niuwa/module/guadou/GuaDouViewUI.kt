package com.jiliguala.niuwa.module.guadou

import com.jiliguala.niuwa.common.base.BaseUI
import com.jiliguala.niuwa.logic.network.json.GuaDou
import com.jiliguala.niuwa.logic.network.json.GuaDouBundle

interface GuaDouViewUI : BaseUI {
    fun onRequestDataSuccess(data: GuaDouBundle?, isLoadMore: Boolean = false)
    fun onRequestDataFail(ex: Throwable?, isLoadMore: Boolean = false)
    fun showPayPage(guaDou: GuaDou?)
}
