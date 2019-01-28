package com.jiliguala.niuwa.module.mcphonics

import android.content.Context
import android.content.Intent
import android.widget.Toast
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.GlobalCtxHolder
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.util.PrefsUtils
import com.jiliguala.niuwa.common.util.RecordPermissionChecker
import com.jiliguala.niuwa.logic.network.json.Lessons
import com.jiliguala.niuwa.module.game.GameLandscapeActivity
import com.jiliguala.niuwa.module.game.NativeGameActivity
import com.jiliguala.niuwa.module.interact.course.viewwidget.loading.PrepareInteractResView
import com.jiliguala.niuwa.module.mcphonics.detail.Model.McPcSubTaskTicket
import com.jiliguala.niuwa.module.picturebook.PictureBookBaseActivity
import com.jiliguala.niuwa.module.video.VideoLandscapeActivity
import com.jiliguala.niuwa.services.SystemMsgService

class LessonJumpHelper(val mContext: Context) {

    companion object {
        val TAG = LessonJumpHelper::javaClass.javaClass.simpleName
    }

//    private var dpdlgFragment: DownloadProgressDialogFragment? = null
//    private var mDownloadReceiver: DownloadReceiver? = null
//    private val mHandler = Handler()
//    private var downloadInterface: DownloadReceiver.DownloadInterface? = object : DownloadReceiver.DownloadInterface {
//
//        override fun onDownloadTaskAdded(id: String, url: String, download_type: Int) {
//            if (download_type == DownloadIntent.DOWNLOAD_TYPE.DOWNLOAD_TYPE_APK) {
//                showApkDownloadProgress()
//            }
//            JLGLLog.d(TAG, "[onDownloadTaskAdded] id = %s, url = %s, download_type = %d", id, url, download_type)
//        }
//
//        override fun onDownloadTaskComplete(id: String, url: String, full_path: String, download_type: Int) {
//            if (download_type == DownloadIntent.DOWNLOAD_TYPE.DOWNLOAD_TYPE_APK) {
//                apkDownloadComplete(full_path)
//            }
//            JLGLLog.d(TAG, "[onDownloadTaskComplete] id = %s, url = %s, download_type = %d", id, url, download_type)
//        }
//
//        override fun onDownloadTaskProgress(id: String, url: String, download_type: Int, progress: Long) {
//            if (download_type == DownloadIntent.DOWNLOAD_TYPE.DOWNLOAD_TYPE_APK) {
//                updateApkDownloadProgress(progress.toInt())
//            }
//            JLGLLog.d(TAG, "[onDownloadTaskProgress] progress = %d", progress)
//        }
//
//        override fun onDownloadTaskError(id: String, url: String, download_type: Int, errorCode: Int) {
//            if (download_type == DownloadIntent.DOWNLOAD_TYPE.DOWNLOAD_TYPE_APK) {
//                apkDownloadFailed()
//            }
//            JLGLLog.d(TAG, "[onDownloadTaskError] id = %s, url = %s, download_type = %d", id, url, download_type)
//        }
//
//        override fun onDownloadTaskStop(id: String, url: String, download_type: Int) {
//
//        }
//    }
//
//    init {
//        mDownloadReceiver = DownloadReceiver(downloadInterface)
//        val filter = IntentFilter()
//        filter.addAction(DownloadService.ACTION_NAME)
//        GlobalCtxHolder.getContext().registerReceiver(mDownloadReceiver, filter)
//    }

    fun jumpCourse(lid: String, subsBean: Lessons.SubsBean, taskTicket: McPcSubTaskTicket?, prepareInteractResView: PrepareInteractResView?) {
        when {
            subsBean.isVideo -> goToWatch(subsBean, taskTicket)  // watch
            subsBean.isInteractionGame -> goToInteract(prepareInteractResView, taskTicket)
            subsBean.isBook -> testGoPicBook(lid, subsBean, taskTicket)
            subsBean.isNativeGame -> goToNativeGame(lid, subsBean, taskTicket)   // game
            subsBean.isH5Game -> goToH5Game(lid, subsBean, taskTicket)
            else -> {
//                var url = GlobalCtxHolder.getDownloadUrl()
//                showUpdateDialog(url)
                SystemMsgService.sendMessage("Oops! 需要升级App才能使用此功能")
            }
        }
    }


    private fun goToWatch(subsBean: Lessons.SubsBean, taskTicket: McPcSubTaskTicket?) {
        val intent = Intent()
        intent.setClass(mContext, VideoLandscapeActivity::class.java)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET, taskTicket)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID, subsBean.resource._id)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_FROM_PRACTISE, true)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_EXTRA, false)
        mContext.startActivity(intent)
    }

    private fun testGoPicBook(lid: String, subsBean: Lessons.SubsBean, taskTicket: McPcSubTaskTicket?) {
        val hasOpenPermission = PrefsUtils.getBoolean(PrefsUtils.KEYS.PREFS_KEY_HAS_OPEN_RECORD_PERMISSION, false)
        if (hasOpenPermission) {
            gotoPictureBook(lid, subsBean, taskTicket)
        } else {
            val checker = RecordPermissionChecker()
            checker.startCheckRecordPermission(object : RecordPermissionChecker.RecordPermissionCheckListener {
                override fun hasRecordPermission() {
                    PrefsUtils.putBooleanWithCommit(PrefsUtils.KEYS.PREFS_KEY_HAS_OPEN_RECORD_PERMISSION, true)
                    gotoPictureBook(lid, subsBean, taskTicket)
                }

                override fun hasNoRecordPermission() {
//JLGLLog.i("MCPhonicsDetailAdapter", "check error..")
                    PrefsUtils.putBooleanWithCommit(PrefsUtils.KEYS.PREFS_KEY_HAS_OPEN_RECORD_PERMISSION, false)
                    Toast.makeText(GlobalCtxHolder.getContext(), R.string.record_failed, Toast.LENGTH_LONG).show()
                }
            })
        }
    }

    private fun gotoPictureBook(lid: String, subsBean: Lessons.SubsBean, taskTicket: McPcSubTaskTicket?) {
        val intent = Intent(mContext, PictureBookBaseActivity::class.java)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_COURSE_ID, lid)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID, subsBean.resource._id)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET, taskTicket)
        mContext.startActivity(intent)
    }


    private fun goToNativeGame(lid: String, subsBean: Lessons.SubsBean, taskTicket: McPcSubTaskTicket?) {
        val intent = Intent()
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_ID, lid)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET, taskTicket)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID, subsBean.resource._id)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_TYP, subsBean.typ)
        intent.setClass(mContext, NativeGameActivity::class.java)
        mContext.startActivity(intent)
    }

    private fun goToH5Game(lid: String, subsBean: Lessons.SubsBean, taskTicket: McPcSubTaskTicket?) {
        val intent = Intent()
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_ID, lid)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET, taskTicket)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID, subsBean.resource._id)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_TYP, subsBean.typ)
        intent.setClass(mContext, GameLandscapeActivity::class.java)
        mContext.startActivity(intent)
    }

    private fun goToInteract(prepareInteractResView: PrepareInteractResView?, taskTicket: McPcSubTaskTicket?) {
        val hasOpenPermission = PrefsUtils.getBoolean(PrefsUtils.KEYS.PREFS_KEY_HAS_OPEN_RECORD_PERMISSION, false)
        if (hasOpenPermission) {
            if (prepareInteractResView != null) {
                prepareInteractResView.setMcPcSubTaskTicket(taskTicket)
                prepareInteractResView.startDownload()
            }
        } else {
            val checker = RecordPermissionChecker()
            checker.startCheckRecordPermission(object : RecordPermissionChecker.RecordPermissionCheckListener {
                override fun hasRecordPermission() {
                    PrefsUtils.putBooleanWithCommit(PrefsUtils.KEYS.PREFS_KEY_HAS_OPEN_RECORD_PERMISSION, true)
                    if (prepareInteractResView != null) {
                        prepareInteractResView.showDownloadProgress()
                        prepareInteractResView.setMcPcSubTaskTicket(taskTicket)
                        prepareInteractResView.startDownload()
                    }
                }

                override fun hasNoRecordPermission() {
//JLGLLog.i("MCPhonicsDetailAdapter", "check error..")
                    PrefsUtils.putBooleanWithCommit(PrefsUtils.KEYS.PREFS_KEY_HAS_OPEN_RECORD_PERMISSION, false)
                    Toast.makeText(GlobalCtxHolder.getContext(), R.string.record_failed, Toast.LENGTH_LONG).show()
                }
            })
        }
    }

//    private fun showUpdateDialog(downloadLink: String?) {
//        val updateDialog = Dialog(mContext, R.style.FullScreenDialog)
//        updateDialog.window?.attributes
//        updateDialog.setContentView(R.layout.update_dialog)
//
//        val tips = updateDialog.findViewById(R.id.alert_text) as TextView
//        tips.text = "Oops! 需要升级App才能使用此功能"
//        val confirm = updateDialog.findViewById(R.id.confirm) as Button
//        confirm.text = "立即升级"
//        val cancel = updateDialog.findViewById(R.id.cancel) as Button
//        cancel.text = "等等"
//        val width = Math.min(DeviceUtils.getScreenWidth(), DeviceUtils.getScreenHeight()) * 9 / 10
//        val height = ViewGroup.LayoutParams.WRAP_CONTENT
//        updateDialog.window?.setLayout(width, height)
//        updateDialog.setCancelable(true)
//        updateDialog.setCanceledOnTouchOutside(true)
//
//        updateDialog.findViewById(R.id.cancel).setOnClickListener { updateDialog.dismiss() }
//        updateDialog.findViewById(R.id.confirm).setOnClickListener {
//            if (!TextUtils.isEmpty(downloadLink)) {
//                checkNetwork(downloadLink)
//            }
//            updateDialog.dismiss()
//        }
//        try {
//            updateDialog.show()
//        } catch (e: Exception) {
//
//        }
//    }
//
//    private fun checkNetwork(downloadLink: String?) {
//        if (!MyApplication.ApkResNoneWifiDownloadEnable) {
//            val type = NetworkUtils.getNetworkType(mContext)
//            if (type == NetworkUtils.NETWORK_STATE_NONE_WIFI) {
//                if (mContext is FragmentActivity) {
//                    val fragmentManager = mContext.supportFragmentManager
//                    val networkDlg = DownloadNoneWifiFragment.findOrCreateFragment(fragmentManager)
//                    networkDlg.show(fragmentManager)
//                    networkDlg.setOnClickListener { v ->
//                        when (v.id) {
//                            R.id.confirm -> {
//                                MyApplication.ApkResNoneWifiDownloadEnable = true
//                                doAppUpGrade(downloadLink)
//                                if (networkDlg != null && networkDlg.isAdded) {
//                                    networkDlg.dismissAllowingStateLoss()
//                                }
//                            }
//                            R.id.cancel -> {
//                                MyApplication.ApkResNoneWifiDownloadEnable = false
//                                if (networkDlg != null && networkDlg.isAdded) {
//                                    networkDlg.dismissAllowingStateLoss()
//                                }
//                            }
//                        }
//                    }
//                }
//
//            } else {
//                doAppUpGrade(downloadLink)
//            }
//        } else {
//            doAppUpGrade(downloadLink)
//        }
//    }
//
//    private fun doAppUpGrade(upgradeUrl: String?) {
//        val filePath = StorageUtils.getApkDownloadCacheDir(GlobalCtxHolder.getContext()).absolutePath
//
//        val dstFile = File(filePath)
//        FileUtils.checkAndCreateFile(dstFile, true)
//
//        val apkDownIntent = Intent(GlobalCtxHolder.getContext(), DownloadService::class.java)
//        apkDownIntent.action = DownloadService.ACTION_NAME
//        apkDownIntent.putExtra(DownloadIntent.KEY_TYPE, DownloadIntent.Types.ADD)
//        apkDownIntent.putExtra(DownloadIntent.KEY_ID, StringUtils.getMD5Name(upgradeUrl))
//        apkDownIntent.putExtra(DownloadIntent.KEY_URL, upgradeUrl)
//        apkDownIntent.putExtra(DownloadIntent.KEY_DOWNLOAD_TYPE, DownloadIntent.DOWNLOAD_TYPE.DOWNLOAD_TYPE_APK)
//        apkDownIntent.putExtra(DownloadIntent.KEY_PATH, filePath)
//        try {
//            GlobalCtxHolder.getContext().startService(apkDownIntent)
//        } catch (e: Exception) {
//            CrashLyticsLogWrapper.logException(e)
//        }
//
//    }
//
//
//    fun updateApkDownloadProgress(progress: Int) {
//        dpdlgFragment?.updateProgress(progress)
//    }
//
//    fun showApkDownloadProgress() {
//
//        if (mContext is FragmentActivity) {
//            val fm = mContext.supportFragmentManager
//            if (dpdlgFragment == null) {
//                dpdlgFragment = DownloadProgressDialogFragment.findOrCreateFragment(fm)
//            }
//            if (dpdlgFragment?.isAdded == false) {
//                dpdlgFragment?.show(fm)
//            }
//        }
//    }
//
//    fun apkDownloadComplete(path: String) {
//        mHandler.postDelayed({
//            if (dpdlgFragment != null) {
//                dpdlgFragment?.dismissAllowingStateLoss()
//            }
//            CommonUtils.install(mContext, path)
//        }, 500)
//    }
//
//    fun apkDownloadFailed() {
//        dpdlgFragment?.dismissAllowingStateLoss()
//        SystemMsgService.sendMessage("网络不给力，请稍后再试")
//    }
//
//
//    fun release() {
//        GlobalCtxHolder.getContext().unregisterReceiver(mDownloadReceiver)
//        mHandler.removeCallbacksAndMessages(null)
//    }
}