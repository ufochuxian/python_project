package com.jiliguala.niuwa.module.voucher

import com.jiliguala.niuwa.common.base.BaseUI
import com.jiliguala.niuwa.logic.network.json.CouponListTemplate

/**
 * Created by chen on 16/7/25.
 */
interface VoucherListUI : BaseUI {

    fun onRefreshNewSuccess(data: CouponListTemplate?)

    fun onRefreshNewFailed()

    fun onLoadMoreSuccess(data: CouponListTemplate?)

    fun onLoadMoreFailed()

}
