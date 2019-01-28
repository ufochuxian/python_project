package com.jiliguala.niuwa.module.picturebook

import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.text.TextUtils
import android.view.View
import android.view.ViewGroup
import com.github.sahasbhop.apngview.assist.ApngListener
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.Activity.LandscapeVideoViewActivity
import com.jiliguala.niuwa.common.Activity.VideoViewActivity
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.base.BaseActivity
import com.jiliguala.niuwa.common.util.DeviceUtils
import com.jiliguala.niuwa.common.util.FileUtils
import com.jiliguala.niuwa.common.util.PrefsUtils
import com.jiliguala.niuwa.common.util.xutils.ListUtil
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.amplitude.AmplitudeUtils
import com.jiliguala.niuwa.logic.bus.RxBus
import com.jiliguala.niuwa.logic.bus.event.BaseEvent
import com.jiliguala.niuwa.logic.bus.event.GameEvent
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.json.Guavatar
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import com.jiliguala.niuwa.logic.network.json.SuperLessonProgressResult
import com.jiliguala.niuwa.module.game.DownloadGameResView
import com.jiliguala.niuwa.module.game.GuavatarRewardDialog
import com.jiliguala.niuwa.module.interact.course.viewwidget.InteractLessonTypeEnum
import com.jiliguala.niuwa.module.interact.course.viewwidget.loading.PrepareInteractResView
import com.jiliguala.niuwa.module.mcphonics.detail.Model.McPcSubTaskTicket
import com.jiliguala.niuwa.module.picturebook.fingerread.PicBookCorrectionView
import com.jiliguala.niuwa.module.picturebook.fingerread.PicBookFingerPresenter
import com.jiliguala.niuwa.module.picturebook.fingerread.PicBookFingerStartView
import com.jiliguala.niuwa.module.picturebook.fingerread.SpanIndex
import com.jiliguala.niuwa.module.webview.InternalWebActivity
import com.jiliguala.niuwa.ui.ui.DownloadPopDialog
import kotlinx.android.synthetic.main.activity_base_picture_book.*
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers
import se.emilsjolander.flipview.FlipView
import java.util.*

open class PictureBookBaseActivity : BaseActivity(), FlipView.OnFlipListener, PictureBookAdapter.Callback, PicBookContract.View {

    override var presenter: PicBookContract.Presenter? = null

    private lateinit var mAdapter: PictureBookAdapter

    private var mCurPageView: PicBookPageView? = null
    private var mCoverView: PicBookCoverView? = null
    private var mReadStartView: PicBookReadStartView? = null
    private var mFingerStartView: PicBookFingerStartView? = null
    private var mScoreView: PicBookScoreView? = null
    private var mListenEndView: View? = null
    private var mCorrectionView: PicBookCorrectionView? = null

    private var mUrl: String? = null
    private var mPackageName: String? = null
    private var mDownloadPopDialog: DownloadPopDialog? = null

//    private var mSimpleMediaPlayer: SimpleMediaPlayer? = null


    var lid: String? = null
    private var subId: String? = null
    private lateinit var mTemplate: PicBookTemplate
    private var mcPcSubTaskTicket: McPcSubTaskTicket? = null


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        DeviceUtils.toggleOnFullScreen(this)
        setContentView(R.layout.activity_base_picture_book)
//        mSimpleMediaPlayer?.setMediaPlayerListener(SimpleMediaPlayer.OnPreparedListener { }, SimpleMediaPlayer.OnCompleteListener {
//            playBgm()
//        }, SimpleMediaPlayer.OnErrorListener { })
        initView()
        lid = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_COURSE_ID)
        subId = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID)
        mcPcSubTaskTicket = intent.getSerializableExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET) as McPcSubTaskTicket
//        id = "listendemo"
//        subId = "readdemo"
        request()

        addEventObserver()
    }

    fun request() {
        val curBabyId = AccountCenter.newInstance().curBabyId
        subscriptions.add(RestApiManager
                .getInstance()
                .restAPI
                .requestStoryBook(curBabyId, subId)
                .subscribeOn(Schedulers.io())
                .observeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({

                    if (it != null) {
                        mTemplate = it
                        getPackageSuccess(it)
                    }

                }, {
                    finish()
                }))
    }

    fun playBgm() {
//        mSimpleMediaPlayer?.startRawFile("progress")
    }

    private fun startBook() {
        val path = getDownloadPopDialog()?.mDownloadGameResView?.saveFileDir?.absolutePath
        dismissDownloadPop()
        when {
            mTemplate.data.isListen -> PicBookListenPresenter(lid, mTemplate.data, this, path, subscriptions)
            mTemplate.data.isRead -> PicBookReadPresenter(lid, mTemplate.data, this, path, subscriptions, this)
            mTemplate.data.isPoint -> PicBookFingerPresenter(lid, mTemplate.data, this, path, subscriptions, this)
            else -> PicBookListenPresenter(lid, mTemplate.data, this, path, subscriptions)
        }
        presenter?.setTicket(mcPcSubTaskTicket)
        presenter?.start()
        reportSubLessonViewSuccess()
    }

    private fun reportSubLessonViewSuccess() {
        val map = HashMap<String, Any?>()
        val sub = mcPcSubTaskTicket?.sub
        map[AmplitudeConstants.TYPE_NAME.ID] = AmplitudeUtils.convertSubId(sub?._id)
        map[AmplitudeConstants.TYPE_NAME.TYPE] = sub?.typ
        map[AmplitudeConstants.TYPE_NAME.UNIT] = mcPcSubTaskTicket?.lesson?.unit
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_SUB_LESSON_VIEW_SUCCESS, map)
    }

    private fun dismissDownloadPop() {
        mDownloadPopDialog?.dismiss()
        mDownloadPopDialog = null
    }

    private fun getPackageSuccess(template: PicBookTemplate) {
        if (template.data == null) return
        getDownloadPopDialog()?.show()
        playBgm()
        val packages = template.data.packageUrl
        if (!ListUtil.isListEmpty(packages)) {
            mUrl = packages[0]
        }
        if (mUrl != null) {
            val url: String = mUrl as String
            mPackageName = url.substring(url.lastIndexOf("/") + 1, url.lastIndexOf("."))
        }
        checkPackageIfUpdate(template)

        if (!TextUtils.isEmpty(mUrl)) {
            startDownload()
        }
    }

    fun startDownload() {
        val downloadGameResView = mDownloadPopDialog?.mDownloadGameResView
        downloadGameResView?.setType(InteractLessonTypeEnum.MC_PHONICS.code)
        downloadGameResView?.updateUIOnlyShowProgress()
        downloadGameResView?.initData(mPackageName, mPackageName, mPackageName, mcPcSubTaskTicket?.lesson?.unit)
        downloadGameResView?.setMcPcSubTaskTicket(mcPcSubTaskTicket)
        val url = ArrayList<String>()
        val gamePackageUrl = mUrl
        if (gamePackageUrl != null) {
            url.add(gamePackageUrl)
        }
        downloadGameResView?.setData(url)
        downloadGameResView?.setCallBack(object : PrepareInteractResView.CallBack {
            override fun isInteractCourseFragmentVisible(): Boolean {
                return true
            }

            override fun exitCurrentSubCourse() {
                onBackPressed()
            }

            override fun enableInnerContainer() {}

            override fun hasCoursePay(): Boolean {
                return true
            }

            override fun hasStop(): Boolean {
                return false
            }

        })
        downloadGameResView?.startDownload()
    }

    private fun addEventObserver() {
        subscriptions.add(RxBus.getDefault()
                .toObserverable(GameEvent::class.java)
                .subscribe({ gameEvent ->
                    when (gameEvent.eventType) {
                        BaseEvent.EventType.TEST_SHOW_GAME -> {
                            startBook()
                        }
                        else -> {

                        }
                    }
                }) {

                })
    }

    private fun getDownloadPopDialog(): DownloadPopDialog? {
        if (mDownloadPopDialog == null) {
            mDownloadPopDialog = DownloadPopDialog(this, DownloadGameResView.PICBOOK_RES_DOWNLOAD_STYLE)
            mDownloadPopDialog?.setProgressBgColor(Color.parseColor("#1A000000"))
            mDownloadPopDialog?.updateBg(mTemplate.data?.type)
        }
        mDownloadPopDialog?.hideVirtualBtn()
        mDownloadPopDialog?.setCallBack({
            onBackPressed()
        })
        return mDownloadPopDialog
    }

    private fun checkPackageIfUpdate(template: PicBookTemplate) {
        val key = "picbook_res" + template.data._id
        if (!TextUtils.isEmpty(key) || !TextUtils.isEmpty(mUrl)) return
        val lastDownloadUrl = PrefsUtils.getString(key, "")
//        JLGLLog.i(TAG, "lastDownloadUrl:%s,mUrl:%s", lastDownloadUrl, mUrl)
        if (!TextUtils.isEmpty(lastDownloadUrl) && mUrl != lastDownloadUrl) {
            //当前key对应的游戏的包更新了，需要重新下载
            if (getDownloadPopDialog()?.mDownloadGameResView != null) {
                val downloadSaveFile = getDownloadPopDialog()?.mDownloadGameResView?.downloadSaveFile
                val saveFileDir = getDownloadPopDialog()?.mDownloadGameResView?.saveFileDir
                if (downloadSaveFile != null && downloadSaveFile.exists()) {
                    FileUtils.deleteFile(downloadSaveFile.absolutePath)
                }
                if (saveFileDir != null && saveFileDir.exists()) {
                    FileUtils.deleteDirectory(saveFileDir)
                }
//                JLGLLog.i(TAG, "game package has update,downloadSaveFile:%s,saveFileDir:%s", downloadSaveFile, saveFileDir)
            }
//            JLGLLog.i(TAG, "mUrl:,%s,key:%s,packageName:%s", mUrl, key, packageName)
        }

        PrefsUtils.putString(key, mUrl)
    }


    fun initView() {
        mAdapter = PictureBookAdapter(this)
        mAdapter.setCallback(this)
        flipview.adapter = mAdapter
        flipview.setOnFlipListener(this)
    }

    override fun showBg() {
//        book_container.setBackgroundResource(R.drawable.img_bg_book)
    }

    override fun showCover(cover: PicBookTemplate.Data.Cover) {
//        if (mCoverView == null) {
//            mCoverView = PicBookCoverView(this)
//            root.addView(mCoverView)
//        }
//        mCoverView?.showData(cover)
//        mCoverView?.setBackClick({
//            onBackPressed()
//        })
    }

    override fun showPages(pages: List<PicBookTemplate.Data.Page>,
                           vertical: Boolean,
                           auto: Boolean,
                           type: String?,
                           cover: PicBookTemplate.Data.Cover?) {
        flipview.initCurrentPage()
        mAdapter.setData(pages)
        mAdapter.setCover(cover)
        mAdapter.setAuto(auto)
        mAdapter.setVertical(vertical)
        mAdapter.setType(type)
        mAdapter.notifyDataSetChanged()

        if (flipview.currentView is PicBookCoverView) {
            mCoverView = flipview.currentView as PicBookCoverView?
        } else {
            mCurPageView = flipview.currentView as PicBookPageView?
        }
    }


    override fun hideCover() {
//        if (mCoverView != null) {
//            root.removeView(mCoverView)
//            mCoverView = null
//        }
        mCoverView = null
    }

    override fun onFlippedToPage(v: FlipView?, position: Int, id: Long) {

        presenter?.preFlipToPage(position)

        when {
            flipview.currentView is PicBookCoverView -> mCoverView = flipview.currentView as PicBookCoverView?
            flipview.currentView is PicBookListenEndView -> mListenEndView = flipview.currentView
            else -> mCurPageView = flipview.currentView as PicBookPageView?
        }

        presenter?.onFlippedToPage(position)

    }

    override fun highLight(text: String?, start: Int, i: Int) {
        mCurPageView?.highLight(text, start, i)
    }


    override fun showFlipNotice(b: Boolean) {
        mCurPageView?.showFlipNotice(b)
        if (!b) {
            val preView = flipview.preView
            if (preView is PicBookPageView) {
                preView.showFlipNotice(b)
            }
            val nextView = flipview.nextView
            if (nextView is PicBookPageView) {
                nextView.showFlipNotice(b)
            }
        }
    }


    override fun onAudioPlayClick(view: View) {
        presenter?.onAudioPlayClick()
    }

    override fun onTurnModeClick(view: View) {
        presenter?.onTurnModeClick(view.isPressed)
    }

    override fun setTurnMode(auto: Boolean) {
        mCurPageView?.setTurnMode(auto)
        val preView = flipview.preView
        if (preView is PicBookPageView) {
            preView.setTurnMode(auto)
        }
        val nextView = flipview.nextView
        if (nextView is PicBookPageView) {
            nextView.setTurnMode(auto)
        }
        mAdapter.setAuto(auto)
    }

    override fun flipTo(i: Int, smooth: Boolean) {
        if (smooth) {
            flipview.smoothFlipTo(i)
        } else {
            flipview.flipTo(i)
        }
    }

    override fun onPause() {
        super.onPause()
        presenter?.onPause()
    }

    override fun onResume() {
        super.onResume()
        DeviceUtils.toggleOnFullScreen(this)
        presenter?.onResume()
    }


    override fun showReadStart() {
        if (mReadStartView == null) {
            mReadStartView = PicBookReadStartView(this)
            root.addView(mReadStartView)
        }
        mReadStartView?.showSpeaker()
    }

    override fun hideFingerStart() {
        mFingerStartView?.hideSpeaker()
        root.removeView(mFingerStartView)
        mFingerStartView = null
    }

    override fun showFingerStart() {
        if (mFingerStartView == null) {
            mFingerStartView = PicBookFingerStartView(this)
            root.addView(mFingerStartView)
        }
        mFingerStartView?.showSpeaker()
    }


    override fun hideStartSpeaker() {
        mReadStartView?.hideSpeaker()
    }


    override fun showCountDown(progress: Int) {
        mReadStartView?.showCountDown(progress)
    }

    override fun hideReadStart() {
        root.removeView(mReadStartView)
        mReadStartView = null
    }

    override fun onPageBackClick(view: View) {
        onBackPressed()
    }

    override fun onRecordClick(isRecording: Boolean) {
        presenter?.onRecordClick(isRecording)
    }

    override fun onMineClick(isPlaying: Boolean) {
        presenter?.onMineClick(isPlaying)
    }

    override fun setFlipRightEnable(b: Boolean) {
        flipview.setRightFlipEnable(b)
    }

    override fun setFlipLeftEnable(b: Boolean) {
        flipview.setLeftFlipEnable(b)
    }

//    override fun setFlipEnable(b: Boolean) {
//        flipview.setFlippingEnabled(b)
//    }

    override fun setRecordEnable(b: Boolean) {
        mCurPageView?.setRecordEnable(b)
    }

    override fun setMinePlayEnable(b: Boolean) {
        mCurPageView?.setMinePlayEnable(b)
    }

    override fun showRecording(b: Boolean) {
        mCurPageView?.showRecording(b)
    }

    override fun setAudioPlayEnable(b: Boolean) {
        mCurPageView?.setAudioPlayEnable(b)
    }

    override fun showMinePlaying(b: Boolean) {
        mCurPageView?.showMinePlaying(b)
    }

    override fun showAudioPlay(b: Boolean) {
        mCurPageView?.showAudioPlaying(b)
    }


    override fun showStar(star: Int, l: ApngListener) {
        if (mScoreView == null) {
            mScoreView = PicBookScoreView(this)
            root.addView(mScoreView, ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))
        }
        mScoreView?.showStar(star, l)
    }

    override fun hideStar() {
        if (mScoreView != null) {
            mScoreView?.stop()
            root.removeView(mScoreView)
            mScoreView = null
        }
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (!isFinishing) {
            presenter?.onWindowFocusChanged(hasFocus)
        }
    }

    override fun showPageStar(star: Int) {
        mCurPageView?.showStar(star)
    }

    override fun hidePageStar() {
        mCurPageView?.hideStar()
    }

    override fun showListenEnd(cover: String?) {
//        if (mListenEndView == null) {
//            mListenEndView = LayoutInflater.from(this).inflate(R.layout.picbook_listen_end, null)
//            root.addView(mListenEndView, ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))
//            mListenEndView?.findViewById(R.id.back)?.setOnClickListener({
//                onBackPressed()
//            })
//        }
//
//        mAdapter.notifyDataSetInvalidated()
//
//        val iv: ImageView = mListenEndView?.findViewById(R.id.cover) as ImageView
//        Glide.with(this).load(cover).dontAnimate().centerCrop().into(iv)
    }

    override fun showReadEnd(result: SuperLessonProgressResult.Data?, hasShare: Boolean) {
//        if (mReadEndView == null) {
//            mReadEndView = PicBookReadEndView(this)
//            val url = String.format(ShareUrlStrings.LESSON_SHARE_SUPER,
//                    lid,
//                    AccountCenter.newInstance().curBabyId,
//                    mTemplate.data?.type,
//                    subId)
//            mReadEndView?.setShareUrl(url)
//            mReadEndView?.setStyle(hasShare)
//            root.addView(mReadEndView, ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))
//
//            mReadEndView?.setBackClick {
//                onBackPressed()
//            }
//        }
//
//        if (result != null) {
//            mReadEndView?.show(result)
//        }
        val intent = Intent(this, SuperStoryCompleteShareActivity::class.java)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_COURSE_ID, lid)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_SUBTASK_ID, mTemplate.data?._id)
        intent.putExtra(SuperStoryCompleteShareActivity.HAS_SHARE, hasShare)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET, mcPcSubTaskTicket)
        startActivity(intent)
    }


    override fun onBackPressed() {
//        super.onBackPressed()
        if (presenter == null) {
            super.onBackPressed()
        } else {
            presenter?.onBackPressed()
        }
    }


    override fun showBackDialog() {
        val dialog = PicBookBackDialog(this)
        dialog.setCallBack(object : PicBookBackDialog.CallBack {
            override fun onCancelClick() {

            }

            override fun onConfirmClick() {
                presenter?.confirmBack()
            }

        })
        dialog.show()
    }

    override fun doFinish() {
        finish()
    }

    override fun setDefaultColor() {
        mCurPageView?.setDefaultColor()
    }

    override fun onDestroy() {
        super.onDestroy()
        presenter?.onDestroy()
//        mSimpleMediaPlayer?.releaseRes()
    }

    override fun showReward(guavatar: Guavatar) {
        val grd = GuavatarRewardDialog(this)
        grd.setGuavatar(guavatar, mcPcSubTaskTicket)
        grd.setDismissListener {
            presenter?.onFinishCourse()
        }
        grd.show()
    }

    override fun showSentencePage(index: Int) {
        mCurPageView?.setSentencePage(index)
    }


    override fun showVideo(url: String, code: Int) {
        val intent = Intent(this, LandscapeVideoViewActivity::class.java)
        intent.putExtra(VideoViewActivity.KEY_COMPLETE_FINISH, true)
        intent.putExtra(VideoViewActivity.KEY_HIDE_CONTROL_BAR, true)
        intent.putExtra(InternalWebActivity.KEY_URL, url)
        intent.putExtra(VideoViewActivity.KEY_NO_TRANSITION,true)
        startActivityForResult(intent, code)
        overridePendingTransition(0, 0)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        presenter?.onActivityResult(requestCode, resultCode, data)
    }

    override fun onPointPressed() {
        presenter?.onPointPressed()
    }

    override fun onPointUp() {
        presenter?.onPointUp()
    }

    override fun startRecordProgress(mRecordTime: Long) {
        mCurPageView?.showRecordProgress(true, mRecordTime)
    }

    override fun stopRecordProgress() {
        mCurPageView?.showRecordProgress(false, 0)
    }

    override fun highLight(text: String?, spanIndexList: List<SpanIndex>) {
        mCurPageView?.highLight(text, spanIndexList)
    }

    override fun highLightCorrection(text: String, start: Int, end: Int) {
        mCorrectionView?.highLight(text, start, end)
    }

    override fun showCorrectionGuide(show: Boolean) {
        mCorrectionView?.showTeacherStart(show)
        if (!show) {
            mCorrectionView?.showCorrection()
        }
    }

    override fun showCorrectionView(show: Boolean, l: (View) -> Unit) {
        if (show) {
            if (mCorrectionView == null) {
                mCorrectionView = PicBookCorrectionView(this)
                root.addView(mCorrectionView, ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))
            }
            mCorrectionView?.showTeacherStart(true)
            mCorrectionView?.setRecordClick(l)
        } else {
            root.removeView(mCorrectionView)
            mCorrectionView = null
        }
    }

    override fun showCorrectionRecord(b: Boolean) {
        mCorrectionView?.showRecord(b)
    }

    override fun stopFingerRead() {
        mCurPageView?.stopFingerRead()
    }

    override fun showCorrectionStar(star: Int, apngListener: ApngListener) {
        mCorrectionView?.showStar(star, apngListener)
    }

    override fun showGesture(show: Boolean) {
        mCurPageView?.showGesture(show)
    }
}
