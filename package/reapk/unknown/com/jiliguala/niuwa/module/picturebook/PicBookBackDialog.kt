package com.jiliguala.niuwa.module.picturebook

import android.app.Dialog
import android.content.Context
import android.view.LayoutInflater
import com.jiliguala.niuwa.R
import kotlinx.android.synthetic.main.layout_picbook_back_dialog.view.*

class PicBookBackDialog(context: Context) {

    private var dialog: Dialog = Dialog(context, R.style.FullScreenDialog)
    private var mContext: Context? = context
    private var mCallBack: CallBack? = null

    fun setCallBack(callBack: CallBack) {
        this.mCallBack = callBack
    }

    init {
        val inflater = LayoutInflater.from(context)
        val rootView = inflater.inflate(R.layout.layout_picbook_back_dialog, null)
        rootView.cancel.setOnClickListener {
            mCallBack?.onCancelClick()
            dismiss()
        }
        rootView.confirm.setOnClickListener {
            mCallBack?.onConfirmClick()
            dismiss()
        }
        dialog.setContentView(rootView)
        dialog.setCancelable(false)
        dialog.setCanceledOnTouchOutside(false)

    }

    /**
     * 显示
     */
    fun show() {
        try {
            if (!dialog.isShowing && mContext != null) {
                dialog.show()
            }
        } catch (e: Exception) {

        }
    }


    /**
     * dismiss
     */
    fun dismiss() {
        try {
            if (dialog.isShowing) {
                dialog.dismiss()
            }
        } catch (e: Exception) {
        }
    }

    interface CallBack {
        fun onCancelClick()
        fun onConfirmClick()
    }

}