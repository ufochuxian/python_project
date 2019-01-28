package com.jiliguala.niuwa.module.pingplusplus

import android.app.Activity
import android.app.Dialog
import android.content.pm.ActivityInfo
import android.graphics.Rect
import android.support.v7.widget.GridLayoutManager
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.view.WindowManager
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.util.DeviceUtils
import com.jiliguala.niuwa.common.util.UnitConvertUtils
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.network.json.CouponListTemplate
import kotlinx.android.synthetic.main.pay_voucher_list.*


class PayVoucherDialog(val mItemId: String, val mActivity: Activity, val mDirection: Int = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE) {

    var mData: List<CouponListTemplate.Data>? = null
    var mListener: PayVoucherListener? = null
    val mDialog: Dialog = Dialog(mActivity, R.style.FullScreenDialog)
    val mAdapter: PayVoucherAdapter = PayVoucherAdapter(mActivity, {
        mData?.get(it)?.let {
            mListener?.onChoose(it)
            mDialog.btn_dont_user.isChecked = false
            dismiss()
        }
    })

    init {
        mDialog.window?.setGravity(Gravity.BOTTOM)
        mDialog.setContentView(if (isLandScape()) R.layout.pay_voucher_list else R.layout.pay_voucher_list_portrait)
        mDialog.window?.setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)
        mDialog.window?.attributes?.windowAnimations = R.style.FullScreenLeftRightDialogStyle

        mDialog.close.setOnClickListener {
            dismiss()
        }

        mDialog.dont_user_container.setOnClickListener {
            val checked = !mDialog.btn_dont_user.isChecked
            mDialog.btn_dont_user.isChecked = checked
            if (checked) {
                mListener?.onDontUse()
                AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_NOT_USE_COUPON)
            }
            mAdapter.setSelect(null)
            //            dismiss()
        }
        if (isLandScape()) {
            mDialog.recycler.layoutManager = GridLayoutManager(mActivity, 2)
            mDialog.recycler.addItemDecoration(GridItemDecoration(UnitConvertUtils.dip2px(15f)))
        } else {
            mDialog.recycler.layoutManager = LinearLayoutManager(mActivity)
            mDialog.recycler.addItemDecoration(LinearItemDecoration(UnitConvertUtils.dip2px(10f)))
        }

        mDialog.recycler.adapter = mAdapter
    }

    private fun isLandScape(): Boolean = mDirection == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE

    fun dismiss() {
        mDialog.dismiss()
    }


    fun show() {
        //hack 防止Immersive Mode下显示虚拟键
        val window = mDialog.window
        window?.setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE)
        toggleFullScreen()
        mDialog.show()
        window?.clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE)
    }

    fun updateData(it: ArrayList<CouponListTemplate.Data>) {
        mData = it
        var chosen: CouponListTemplate.Data? = null
        for (data in it) {
            if (data.chosen) {
                chosen = data
            }
        }
        mAdapter.setSelect(chosen, false)
        mAdapter.updateDataSet(it, true)
        mDialog.btn_dont_user.isChecked = chosen == null
    }

    private fun toggleFullScreen() {
        if (DeviceUtils.isHideSystemBar(mActivity)) {
            if (mDialog.window != null) {
                DeviceUtils.hideSystemBar(mDialog.window)
            }
        }
    }

    fun setListener(l: PayVoucherListener) {
        mListener = l
    }

    fun clearSelect() {
        mAdapter.setSelect(null)
        mDialog.btn_dont_user.isChecked = true
    }
}

interface PayVoucherListener {
    fun onChoose(id: CouponListTemplate.Data)
    fun onDontUse()
}


class LinearItemDecoration(private val vSpace: Int) : RecyclerView.ItemDecoration() {

    override fun getItemOffsets(outRect: Rect?, view: View?, parent: RecyclerView?, state: RecyclerView.State?) {
        super.getItemOffsets(outRect, view, parent, state)
        outRect?.top = vSpace / 2
        outRect?.bottom = vSpace / 2
    }
}


class GridItemDecoration(private val space: Int) : RecyclerView.ItemDecoration() {

    override fun getItemOffsets(outRect: Rect, view: View, parent: RecyclerView, state: RecyclerView.State) {
        super.getItemOffsets(outRect, view, parent, state)

        outRect.top = space / 2
        outRect.bottom = space / 2
        outRect.right = space / 2
        outRect.left = space / 2
    }

}