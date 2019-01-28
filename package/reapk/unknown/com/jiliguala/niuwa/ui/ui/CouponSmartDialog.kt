package com.jiliguala.niuwa.ui.ui

import android.app.Activity
import android.app.Dialog
import android.view.Gravity
import com.bumptech.glide.Glide
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.util.UnitConvertUtils
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.network.json.CouponSmartTemplate
import com.jiliguala.niuwa.logic.prefixparse.PrefixParser
import com.jiliguala.niuwa.module.voucher.VoucherPagesActivity
import kotlinx.android.synthetic.main.layout_coupon_smart_dialog.*


class CouponSmartDialog(val mActivity: Activity, val mConponSmart: CouponSmartTemplate.Data) {

    val mDialog: Dialog = Dialog(mActivity, R.style.FullScreenDialog)

    init {
        mDialog.setContentView(R.layout.layout_coupon_smart_dialog)
        mDialog.window?.setGravity(Gravity.CENTER)
        mDialog.window?.setLayout(UnitConvertUtils.dip2px(300f), UnitConvertUtils.dip2px(380f))

        Glide.with(mActivity).load(mConponSmart.img).dontAnimate().into(mDialog.image)
        mDialog.button.text = mConponSmart.button
        mDialog.button.setOnClickListener {
            AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_INTELLIGENT_COUPON_DIALOG_CLICK)
            PrefixParser.handleSchemaJump(mActivity, PrefixParser.JLGL_COUPON_LIST)
            dismiss()
        }
    }


    fun show() {
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_INTELLIGENT_COUPON_DIALOG)
        mDialog.show()
    }

    fun dismiss() {
        mDialog.dismiss()
    }
}