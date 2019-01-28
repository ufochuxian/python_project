package com.jiliguala.niuwa.logic.skin

import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.text.TextUtils
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.GlobalCtxHolder
import com.jiliguala.niuwa.common.util.*
import com.jiliguala.niuwa.common.util.storage.StorageUtils
import com.jiliguala.niuwa.common.util.xutils.ListUtil
import com.jiliguala.niuwa.logic.network.json.HomeTemplate.DataBean.Skin
import com.jiliguala.niuwa.module.interact.course.viewwidget.loading.UnzipFileInterface
import com.jiliguala.niuwa.receivers.DownloadReceiver
import com.jiliguala.niuwa.services.DownloadIntent
import com.jiliguala.niuwa.services.DownloadService
import com.jiliguala.niuwa.services.UnZipFileManager
import rx.Observable
import rx.Subscriber
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers
import rx.subscriptions.CompositeSubscription
import java.io.*
import java.util.*

/**
 * Created by yammoo on 2018/2/6.
 */

class SkinManager : DownloadReceiver.DownloadInterface, UnzipFileInterface {

    companion object {
        private const val SKIN_DATA_FILE_NAME = "skin"
        private val SKIN_RES_SAVE_PATH = StorageUtils.getSkinDir(GlobalCtxHolder.getContext()).absolutePath
        private val TAG = SkinManager::class.java.simpleName
    }

    private val mDownloadReceiver: DownloadReceiver = DownloadReceiver(this)
    private val mContext: Context = GlobalCtxHolder.getContext()
    private var mDownload: List<Skin>? = null
    private val mCompositeSubscription: CompositeSubscription = RxUtils.getNewCompositeSubIfUnsubscribed(null)
    private val mGson: Gson = Gson()
    private val mSuffix: String
        get() {
            val dpi = DeviceUtils.getDeviceDensityDpi()
            return when {
                dpi <= 240 -> "_h"
                dpi in 241..320 -> "_xh"
                dpi in 321..480 -> "_xxh"
                else -> "_xh"
            }
        }

    init {
        registerReceiver()
    }

    val skin: Skin?
        get() {
            val splashStr = getFromFile(mContext, SKIN_DATA_FILE_NAME)
            if (TextUtils.isEmpty(splashStr)) {
                return null
            }
            try {
                var splashList = Gson().fromJson<List<Skin>>(splashStr, object : TypeToken<List<Skin>>() {}.type)
                if (splashList != null && splashList.isNotEmpty()) {
                    val l = System.currentTimeMillis()
                    splashList = splashList.filter { l >= it.startts && l <= it.endts }
                    if (splashList.isNotEmpty()) {
                        return splashList[0]
                    }
                }
            } catch (e: Exception) {
                e.printStackTrace()
            }

            return null
        }


    fun destroy() {
        unRegisterReceiver()
        RxUtils.unsubscribeIfNotNull(mCompositeSubscription)
    }

    private fun registerReceiver() {
        val filter = IntentFilter()
        filter.addAction(DownloadService.ACTION_NAME)
        mContext.registerReceiver(mDownloadReceiver, filter)
    }

    fun unRegisterReceiver() {
        try {
            mContext.unregisterReceiver(mDownloadReceiver)
        } catch (e: Exception) {
//JLGLLog.e(TAG, "unRegisterReceiver:" + e.toString())
        }

    }

    fun save(list: List<Skin>?) {
        downloadAll(list)
    }

    private fun downloadAll(list: List<Skin>?) {
        if (list == null || list.isEmpty()) {
            return
        }
        mDownload = list
        for (skin in list) {
            val successTextFile = getSuccessTextFile(skin._id)
            if (successTextFile.exists() && checkDownloadPackageRes(skin._id)) {
                onUnZipSuccess(skin._id)
            } else {
                download(skin)
            }
        }
    }

    private fun download(skin: Skin) {
        try {
            val downloadUrl = skin.url + mSuffix + ".zip"
            val mDownloadResService = Intent(mContext, DownloadService::class.java)
            mDownloadResService.action = DownloadService.ACTION_NAME
            mDownloadResService.putExtra(DownloadIntent.KEY_TYPE, DownloadIntent.Types.ADD)
            mDownloadResService.putExtra(DownloadIntent.KEY_ID, skin._id)
            mDownloadResService.putExtra(DownloadIntent.KEY_URL, downloadUrl)
            mDownloadResService.putExtra(DownloadIntent.KEY_PATH, SKIN_RES_SAVE_PATH)
            mDownloadResService.putExtra(DownloadIntent.KEY_INTERACT_RES_ID, skin._id)
            mDownloadResService.putExtra(DownloadIntent.KEY_DOWNLOAD_TYPE, DownloadIntent.DOWNLOAD_TYPE.DOWNLOAD_TYPE_SKIN)
            try {
                mContext.startService(mDownloadResService)
            } catch (e: Exception) {
                CrashLyticsLogWrapper.logException(e)
            }

        } catch (e: Exception) {
            e.printStackTrace()
        }

    }


    //检查包的完整性
    private fun checkDownloadPackageRes(fileName: String?): Boolean {
        //success.txt 文件中存在当前地址的md5，下载并且解压完成,此时需要检查包是否完整(用户可能手动删除文件)
        //迭代获取当前下载目录下的所有文件
//JLGLLog.i(TAG, "@@@@@@-------->,start-->")
        val localListFiles = FileUtils.getListFilesInString(getSaveFileDir(fileName))
        val completeListFiles = ArrayList<String>()
        var fr: FileReader? = null
        var br: BufferedReader? = null
        try {
            fr = FileReader(getSuccessTextFile(fileName))
            br = BufferedReader(fr)

            br.lineSequence().forEach {
                completeListFiles.add(it)
            }

        } catch (e: Exception) {
            e.printStackTrace()
            return false
        } finally {
            IOUtils.closeQuietly(fr)
            IOUtils.closeQuietly(br)
        }
        if (!ListUtil.isListEmpty(completeListFiles)) {
            completeListFiles.removeAt(0)//移除第一行文本，第一行是下载地址的md5,不是文件名
            //在V5.6之前的旧版本的success.txt中,没有存储下载package中的所有文件名，强制重新下载
            if (ListUtil.isListEmpty(completeListFiles)) {
                return false
            }
        }
        return localListFiles.containsAll(completeListFiles)
    }

    private fun getSaveFileDir(filename: String?): File {
        return File(SKIN_RES_SAVE_PATH + File.separator + filename)
    }

    private fun getSuccessTextFile(fileName: String?): File {
        return File(SKIN_RES_SAVE_PATH + File.separator + fileName + "/success.txt")
    }


    private fun saveFile(context: Context, fileName: String?, content: String?) {
        var fos: FileOutputStream? = null
        var osw: OutputStreamWriter? = null
        try {
            fos = context.openFileOutput(fileName, Context.MODE_PRIVATE)
            osw = OutputStreamWriter(fos!!)
            osw.write(content)
            osw.flush()
        } catch (e: IOException) {
            e.printStackTrace()
        } finally {
            IOUtils.closeQuietly(fos)
            IOUtils.closeQuietly(osw)
        }
    }

    override fun onDownloadTaskAdded(id: String?, url: String?, download_type: Int) {

    }

    override fun onDownloadTaskComplete(id: String?, url: String?, full_path: String?, download_type: Int) {
//JLGLLog.i(TAG, "onDownloadTaskComplete URL-->$url,id-->$id")
        if (DownloadIntent.DOWNLOAD_TYPE.DOWNLOAD_TYPE_SKIN != download_type) {
            return
        }
        if (!TextUtils.isEmpty(id)) {
            val destFile = getSaveFileDir(id)
            val srcFile = File(SKIN_RES_SAVE_PATH + File.separator + StringUtils.getMD5Name(id))
            UnZipFileManager.getInstance().addUnZipTask(url, id, full_path, this, srcFile, destFile, SKIN_RES_SAVE_PATH)
        }
    }

    override fun onDownloadTaskProgress(id: String?, url: String?, download_type: Int, progress: Long) {

    }

    override fun onDownloadTaskError(id: String?, url: String?, download_type: Int, errorCode: Int) {
//JLGLLog.i(TAG, "onDownloadTaskError URL-->$url,id-->$id")
    }

    override fun onDownloadTaskStop(id: String?, url: String?, download_type: Int) {

    }

    override fun refreshUnZipFileProgress(downloadUrl: String?, progress: Int, id: String?) {

    }

    override fun onUnZipSuccess(taskId: String?) {
        mCompositeSubscription.add(Observable.just(true)
                .subscribeOn(AndroidSchedulers.mainThread())
                .observeOn(Schedulers.io())
                .subscribe(object : Subscriber<Boolean>() {
                    override fun onCompleted() {
                        onSuccess(taskId)
                    }

                    override fun onError(e: Throwable) {

                    }

                    override fun onNext(aBoolean: Boolean?) {

                    }
                }))
    }

    private fun onSuccess(taskId: String?) {
        if ((mDownload?.size ?: 0) == 0) {
            return
        }
        var successCount = 0
        mDownload?.forEach {
            if (it._id == taskId) {
                it.path = SKIN_RES_SAVE_PATH + File.separator + taskId + File.separator + mSuffix
                val file = File(it.path)
                val list = file.list()
                if (list != null) {
                    for (name in list) {
                        when {
                            name.contains("mc_bg_placeholder") -> it.mcBg = name
                            name.contains("phonics_bg_placeholder") -> it.phBg = name
                            name.contains("oldmap_bg_placeholder") -> it.oldmapBg = name
                            name.contains("xx_bg_placeholder") -> it.xxBg = name
                            name.contains("entrance_listen") -> it.listenIcon = name
                            name.contains("entrance_watch") -> it.watchIcon = name
                            name.contains("entrance_reading") -> it.readingIcon = name
                            name.contains("entrance_flashcard") -> it.flashIcon = name
                            name.contains("entrance_daily") -> it.everyDayIcon = name
                            name.contains("img_sdoufu") -> it.squareBg = name
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(it.path)) {
                successCount++
            }
        }
        if (successCount == mDownload?.size) {
            saveFile(GlobalCtxHolder.getContext(), SKIN_DATA_FILE_NAME, mGson.toJson(mDownload))
        }
    }

    override fun onUnZipFail() {

    }

    fun clear() {
        saveFile(mContext, SKIN_DATA_FILE_NAME, "")
    }

    private fun getFromFile(context: Context, name: String?): String? {
        var fis: FileInputStream? = null
        var isr: InputStreamReader? = null
        var br: BufferedReader? = null
        val content = StringBuilder()
        try {
            fis = context.openFileInput(name)
            isr = InputStreamReader(fis!!)
            br = BufferedReader(isr)

            var readString: String? = br.readLine()
            while (readString != null) {
                content.append(readString)
                readString = br.readLine()
            }
            return content.toString()

        } catch (e: IOException) {
            e.printStackTrace()
        } finally {
            IOUtils.closeQuietly(fis)
            IOUtils.closeQuietly(isr)
            IOUtils.closeQuietly(br)
        }
        return null
    }
}
