package com.jiliguala.niuwa.module.unit.fragment

import android.app.Dialog
import android.content.Intent
import android.content.IntentFilter
import android.os.Bundle
import android.os.Handler
import android.support.v7.widget.GridLayoutManager
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.text.TextUtils
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import com.bumptech.glide.Glide
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.GlobalCtxHolder
import com.jiliguala.niuwa.MyApplication
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.base.BaseMvpFragment
import com.jiliguala.niuwa.common.fragment.DownloadNoneWifiFragment
import com.jiliguala.niuwa.common.util.*
import com.jiliguala.niuwa.common.util.storage.StorageUtils
import com.jiliguala.niuwa.logic.network.json.Lessons
import com.jiliguala.niuwa.logic.network.json.SingleLessonData
import com.jiliguala.niuwa.logic.prefixparse.PrefixParser
import com.jiliguala.niuwa.module.NewRoadMap.LessonType
import com.jiliguala.niuwa.module.game.NativeGameActivity
import com.jiliguala.niuwa.module.interact.course.detail.InteractLessonDetailActivity
import com.jiliguala.niuwa.module.mcphonics.detail.CourseFinishReceiver
import com.jiliguala.niuwa.module.mcphonics.detail.Model.McPcSubTaskTicket
import com.jiliguala.niuwa.module.picturebook.PictureBookBaseActivity
import com.jiliguala.niuwa.module.speak.SpeakActivity
import com.jiliguala.niuwa.module.unit.presenter.LessonView
import com.jiliguala.niuwa.module.video.VideoLandscapeActivity
import com.jiliguala.niuwa.receivers.CompletePurchasedReceiver
import com.jiliguala.niuwa.services.DownloadIntent
import com.jiliguala.niuwa.services.DownloadService
import com.jiliguala.niuwa.services.SystemMsgService
import com.jiliguala.niuwa.ui.photo.ScreenSizeUtil.Dp2Px
import kotlinx.android.synthetic.main.fragment_quality_course_detail.*
import java.io.File
import java.util.*

class QualityCourseDetailFragment : BaseMvpFragment<QualityCourseDetailPresenter, LessonView>(), LessonView, OnItemClickListener, CompletePurchasedReceiver.CallBack {

    private lateinit var lessonId: String
    private var isQuitFromActivity: Boolean = false
    private lateinit var currentLayoutManagerType: LayoutManagerType
    private lateinit var layoutManager: RecyclerView.LayoutManager
    private lateinit var adapter: QualityCourseDetailAdapter
    private var mCourse: SingleLessonData? = null
    private var updateDialog: Dialog? = null
    private var networkDlg: DownloadNoneWifiFragment? = null
    private lateinit var genLessons: Lessons
    private lateinit var courseFinishReceiver: CourseFinishReceiver
    private lateinit var completedPurchasedReceiver: CompletePurchasedReceiver
    private var courseReportUrl: String? = null
    private lateinit var mHandle: Handler

    enum class LayoutManagerType { GRID_LAYOUT_MANAGER, LINEAR_LAYOUT_MANAGER }

    override fun createPresenter(): QualityCourseDetailPresenter {
        return QualityCourseDetailPresenter()
    }

    override fun getUi(): LessonView {
        return this
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        arguments?.let {
            lessonId = it.getString(KEY_LESSON_ID)
            isQuitFromActivity = it.getBoolean(KEY_QUIT_FROM_ACTIVITY)
        }
        presenter.setLessonId(lessonId)
        mHandle = Handler()
        registerBroadcastReceiver()
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        // Inflate the layout for this fragment
        val rootView = inflater.inflate(R.layout.fragment_quality_course_detail, container, false)

        layoutManager = LinearLayoutManager(context)

        currentLayoutManagerType = LayoutManagerType.GRID_LAYOUT_MANAGER

        return rootView
    }

    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        container_course.setOnTouchListener { _, _ -> true }
        back_img.setOnClickListener { onBack() }
        course_report.setOnClickListener { _ -> openReport() }
        setRecyclerViewLayoutManager(currentLayoutManagerType)
        adapter = QualityCourseDetailAdapter(context, this)
        course_list.adapter = adapter
        presenter.requestSingleLessonData()
    }

    private fun registerBroadcastReceiver() {
        completedPurchasedReceiver = CompletePurchasedReceiver(this)
        val filter = IntentFilter()
        filter.addAction(CompletePurchasedReceiver.ACTION_NAME)
        activity.registerReceiver(completedPurchasedReceiver, filter)

        courseFinishReceiver = CourseFinishReceiver()
        val intentFilter = IntentFilter()
        intentFilter.addAction(CourseFinishReceiver.ACTION_SEND_PROGRESS_FAIL)
        intentFilter.addAction(CourseFinishReceiver.ACTION_COURSE_FINISH)
        activity.registerReceiver(courseFinishReceiver, intentFilter)
    }

    /**
     * Set RecyclerView's LayoutManager to the one given.
     *
     * @param layoutManagerType Type of layout manager to switch to.
     */
    private fun setRecyclerViewLayoutManager(layoutManagerType: LayoutManagerType) {
        var scrollPosition = 0

        // If a layout manager has already been set, get current scroll position.
        if (course_list.layoutManager != null) {
            scrollPosition = (course_list.layoutManager as LinearLayoutManager)
                    .findFirstCompletelyVisibleItemPosition()
        }

        when (layoutManagerType) {
            QualityCourseDetailFragment.LayoutManagerType.GRID_LAYOUT_MANAGER -> {
                val gridLayoutManager = GridLayoutManager(activity, SPAN_COUNT)
                gridLayoutManager.spanSizeLookup = object : GridLayoutManager.SpanSizeLookup() {
                    override fun getSpanSize(position: Int): Int {
                        return if (position == 0) SPAN_COUNT else SINGLE_COUNT
                    }
                }
                layoutManager = gridLayoutManager
                currentLayoutManagerType = LayoutManagerType.GRID_LAYOUT_MANAGER
            }
            QualityCourseDetailFragment.LayoutManagerType.LINEAR_LAYOUT_MANAGER -> {
                layoutManager = LinearLayoutManager(activity)
                currentLayoutManagerType = LayoutManagerType.LINEAR_LAYOUT_MANAGER
            }
        }

        with(course_list) {
            layoutManager = this@QualityCourseDetailFragment.layoutManager
            scrollToPosition(scrollPosition)
        }

    }

    override fun onRequestDataSuccess(data: SingleLessonData?) {
        refreshUI(data)
        genLessons = convertToGeneralCourse(data)
        if (mCourse?.unlockWay?.type != null) {
            goToBuyOrShareActivity()
        }
    }

    override fun onReceivedSuccessPayResult() {
//JLGLLog.d(TAG, "pay success")
        presenter.refreshSingleLessonData()
    }

    private fun refreshUI(data: SingleLessonData?) {
//JLGLLog.d(TAG, "refresh UI")
        this.mCourse = data
        courseReportUrl = data?.report?.tgt
        data?.bgPic?.let { Glide.with(this).load(it).skipMemoryCache(true).animate(R.anim.fade_in_slowly).into(bg_image) }
        if (data?.subs != null && data.subs!!.size > 0) {
            setCourseListPadding(data.subs!!.size)
            val subCourse = data.subs!![0]
            subCourse.cttl = data.cttl
            subCourse.ttl = data.ttl
        }
        adapter.setDataSet(data?.subs, data?.unlockWay?.type)
        data?.report?.let { Glide.with(this).load(it.siginIcon).placeholder(R.drawable.report).dontAnimate().into(course_report) }
        done_users.text = String.format(getString(R.string.done_users), data?.doneUsers, Locale.getDefault())
    }

    private fun setCourseListPadding(size: Int?) {
        if (size != null && size > 1) {
            course_list.setPadding(0, Dp2Px(context, 40f), 0, Dp2Px(context, 60f))
        }
    }

    override fun onRefreshDataSuccess(data: SingleLessonData?) {
        refreshUI(data)
    }

    override fun onRequestDataFail(errorMsg: String) {

    }

    private fun goToBuyOrShareActivity() {
        when (mCourse?.unlockWay?.type) {
            CommonSets.UNLOCK_WAY_TYPE.BUY -> {
                mCourse?.unlockWay?.params?.itemID.let {
                    val interactLessonDetailIntent = Intent(activity, InteractLessonDetailActivity::class.java)
                    if (!TextUtils.isEmpty(lessonId)) {
                        interactLessonDetailIntent.putExtra(CommonSets.COMMON_PARAM.PARAM_COURSE_ID, lessonId)
                        interactLessonDetailIntent.putExtra(CommonSets.COMMON_PARAM.ITEM_ID, it)
                    }
                    activity.startActivity(interactLessonDetailIntent)
                }
            }
            else -> {
//JLGLLog.d(TAG, "unknown unlock way type")
                SystemMsgService.sendMessage(getString(R.string.type_desc_unknown))
            }
        }
    }

    override fun startLesson(data: SingleLessonData?, position: Int, isDelay: Boolean) {
        val lesson = data?.subs?.get(position) ?: return
        presenter.reportSubLessonClick(lesson)
        if (data.unlockWay?.type != null) {
            goToBuyOrShareActivity()
        } else {
            if (lesson.isLock()) {
                SystemMsgService.sendMessage(getString(R.string.lock_click_toast))
                return
            }
            val taskTicket = McPcSubTaskTicket.Builder().setLessons(genLessons)
                    .setPosition(position).setRedId(lesson.resource?._id).setType(LessonType.SINGLE)
                    .build()
            when (lesson.resource?.typ) {
                "native_game" -> {
                    if (isDelay) {
                        // in order to wait NativeGameActivity in other process to destroy
//JLGLLog.d(TAG, "delay to start next lesson")
                        mHandle.postDelayed({ goToNativeGame(lesson, taskTicket) }, 1000)
                    } else {
                        goToNativeGame(lesson, taskTicket)
                    }
                }
                "video" -> {
                    goToWatch(lesson, taskTicket)
                }
                "listen", "read", "point" -> {
                    testGoPicBook(lesson, taskTicket)
                }

                else -> {
                    showUpdateDialog()
                }
            }
        }
    }

    private fun convertToGeneralCourse(data: SingleLessonData?): Lessons {
        val courses = Lessons()
        courses._id = lessonId
        courses.subs = ArrayList<Lessons.SubsBean>()
        data?.subs?.let {
            for (subLesson in it) {
                val lesson = Lessons.SubsBean()
                lesson._id = subLesson._id
                lesson.typ = subLesson.typ
                courses.subs.add(lesson)
            }
        }
        return courses
    }

    override fun openReport() {
        courseReportUrl?.let {
            presenter.reportCourseReport()
            PrefixParser.handleSchemaJump(context, it)
        }
    }

    override fun onItemClick(position: Int) {
        startLesson(mCourse, position, false)
        /*val intent = Intent()
        val ticket = SubCourseTicket()
        lesson.resource?._id.let {
            ticket.resourceId = it
        }
        ticket.setCourseId(lessonId).setTaskId(lesson._id).setTaskPostion(position).taskType = lesson.typ
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_COURSE_TICKET, ticket)

        when (lesson.typ) {
            CommonSets.TYPE_SETS.TYPE_NEW_INTERACT_LESSON -> {

            }
            CommonSets.TYPE_SETS.TYPE_LISTEN -> {
                intent.setClass(activity, AudioActivity::class.java)
                intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_EXTRA, true)
                activity.startActivity(intent)
                activity.overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out)
            }
            CommonSets.TYPE_SETS.TYPE_WATCH -> {
                intent.setClass(activity, VideoActivity::class.java)
                intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_EXTRA, false)
                activity.startActivity(intent)
                activity.overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out)
            }
            CommonSets.TYPE_SETS.TYPE_EXAM -> {
                // exam
                intent.setClass(activity, MatchGameActivity::class.java)
                activity.startActivity(intent)
                activity.overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out)
            }
            CommonSets.TYPE_SETS.TYPE_SPEAK -> goToSpeakActivity(intent, lesson)
            CommonSets.TYPE_SETS.TYPE_SPEAK_CARD -> goToSpeakActivity(intent, lesson)
            CommonSets.TYPE_SETS.TYPE_CARD -> {
                // card
                intent.setClass(activity, FlashCardActivity::class.java)
                activity.startActivity(intent)
                activity.overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out)
            }
            CommonSets.TYPE_SETS.TYPE_STORY -> {
                // Story
                intent.setClass(activity, StoryActivity::class.java)
                intent.putExtra(StoryActivity.PARAM_STORY_FROM_COURSE, true)
                activity.startActivity(intent)
                activity.overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out)
            }
            CommonSets.TYPE_SETS.TYPE_WRITE -> {
                val bundle = Bundle()
                bundle.putString(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID, lesson.resource?._id)
                bundle.putString(CommonSets.COMMON_PARAM.PARAM_COURSE_ID, lessonId)
                bundle.putSerializable(CommonSets.COMMON_PARAM.PARAM_SUB, lesson)
                intent.setClass(activity, WriteActivity::class.java)
                intent.putExtras(bundle)
                activity.startActivity(intent)
                activity.overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out)
            }
            CommonSets.TYPE_SETS.TYPE_INTERACT_LESSON -> {

            }
            else -> {
                showUpdateDialog()
            }
        }*/
    }

    private fun goToNativeGame(lesson: SingleLessonData.Lesson, taskTicket: McPcSubTaskTicket) {
//JLGLLog.d(TAG, "go to native game")
        presenter.reportSubLessonView(lesson)
        val intent = Intent(context, NativeGameActivity::class.java)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_ID, lessonId)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET, taskTicket)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID, lesson.resource?._id)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_TYP, lesson.typ)
        startActivity(intent)
    }

    private fun goToWatch(lesson: SingleLessonData.Lesson, taskTicket: McPcSubTaskTicket) {
        presenter.reportSubLessonView(lesson)
        val intent = Intent(context, VideoLandscapeActivity::class.java)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET, taskTicket)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID, lesson.resource?._id)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_FROM_PRACTISE, true)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_EXTRA, false)
        startActivity(intent)
    }

    private fun testGoPicBook(lesson: SingleLessonData.Lesson, taskTicket: McPcSubTaskTicket) {
        val hasOpenPermission = PrefsUtils.getBoolean(PrefsUtils.KEYS.PREFS_KEY_HAS_OPEN_RECORD_PERMISSION, false)
        if (hasOpenPermission) {
            gotoPictureBook(lesson, taskTicket)
        } else {
            val checker = RecordPermissionChecker()
            checker.startCheckRecordPermission(object : RecordPermissionChecker.RecordPermissionCheckListener {
                override fun hasRecordPermission() {
                    PrefsUtils.putBooleanWithCommit(PrefsUtils.KEYS.PREFS_KEY_HAS_OPEN_RECORD_PERMISSION, true)
                    gotoPictureBook(lesson, taskTicket)
                }

                override fun hasNoRecordPermission() {
//JLGLLog.i("MCPhonicsDetailAdapter", "check error..")
                    PrefsUtils.putBooleanWithCommit(PrefsUtils.KEYS.PREFS_KEY_HAS_OPEN_RECORD_PERMISSION, false)
                    Toast.makeText(GlobalCtxHolder.getContext(), R.string.record_failed, Toast.LENGTH_LONG).show()
                }
            })
        }
    }

    private fun gotoPictureBook(lesson: SingleLessonData.Lesson, taskTicket: McPcSubTaskTicket) {
        presenter.reportSubLessonView(lesson)
        val intent = Intent(context, PictureBookBaseActivity::class.java)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_COURSE_ID, lessonId)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID, lesson.resource?._id)
        intent.putExtra(CommonSets.INTENT_PARAM_IDS.MC_PC_SUB_TASK_TICKET, taskTicket)
        startActivity(intent)
    }


    private fun goToSpeakActivity(intent: Intent, lesson: SingleLessonData.Lesson) {
        // speak
        val bundle = Bundle()
        intent.setClass(activity, SpeakActivity::class.java)
        bundle.putString(COURSE_ID, lessonId)
        bundle.putString(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_RESOURCE_ID, lesson.resource?._id)
        bundle.putString(SUB_RES_TYPE, lesson.resource?.typ)
        bundle.putSerializable(SUB, lesson)
        intent.putExtras(bundle)
        activity.startActivity(intent)
        activity.overridePendingTransition(R.anim.right_slide_in, R.anim.left_slide_out)
    }

    private fun showUpdateDialog() {
        updateDialog = Dialog(activity, R.style.FullScreenDialog)
        updateDialog!!.setContentView(R.layout.update_dialog)

        val tips = updateDialog!!.findViewById(R.id.alert_text) as TextView
        tips.text = getString(R.string.need_to_upgrade_version)
        val confirm = updateDialog!!.findViewById(R.id.confirm) as Button
        confirm.text = getString(R.string.upgrade_right_now)
        val cancel = updateDialog!!.findViewById(R.id.cancel) as Button
        cancel.text = getString(R.string.upgrade_later)
        val width = DeviceUtils.getScreenWidth() * 9 / 10
        val height = ViewGroup.LayoutParams.WRAP_CONTENT
        updateDialog!!.window!!.setLayout(width, height)
        updateDialog!!.setCancelable(true)
        updateDialog!!.setCanceledOnTouchOutside(true)

        updateDialog!!.findViewById(R.id.cancel).setOnClickListener { updateDialog!!.dismiss() }
        updateDialog!!.findViewById(R.id.confirm).setOnClickListener {
            checkNetwork()
            updateDialog!!.dismiss()
        }
        try {
            updateDialog!!.show()
        } catch (e: Exception) {
//JLGLLog.e(TAG, "error while show updateDialog.", e)
        }
    }

    private fun checkNetwork() {
        if (!MyApplication.ApkResNoneWifiDownloadEnable && this.isAdded) {
            val type = NetworkUtils.getNetworkType(activity)
            if (type == NetworkUtils.NETWORK_STATE_NONE_WIFI) {
                networkDlg = DownloadNoneWifiFragment.findOrCreateFragment(childFragmentManager)
                networkDlg!!.show(childFragmentManager)
                networkDlg!!.setOnClickListener { v ->
                    when (v.id) {
                        R.id.confirm -> {
                            MyApplication.ApkResNoneWifiDownloadEnable = true
                            doAppUpGrade()
                            if (networkDlg!!.isAdded) {
                            }
                        }
                        R.id.cancel -> {
                            MyApplication.ApkResNoneWifiDownloadEnable = false
                        }
                    }
                    networkDlg!!.dismissAllowingStateLoss()
                }
            } else {
                doAppUpGrade()
            }
        } else {
            doAppUpGrade()
        }
    }

    private fun doAppUpGrade() {
        val filePath = StorageUtils.getApkDownloadCacheDir(GlobalCtxHolder.getContext()).absolutePath

//JLGLLog.i(TAG, "filePath = %s", filePath)
        val dstFile = File(filePath)
        FileUtils.checkAndCreateFile(dstFile, true)

        val upgradeUrl = GlobalCtxHolder.getDownloadUrl()
//JLGLLog.i(TAG, "downloadLrc lrcUrl = %s", upgradeUrl)
        val apkDownIntent = Intent(GlobalCtxHolder.getContext(), DownloadService::class.java)
        apkDownIntent.action = DownloadService.ACTION_NAME
        apkDownIntent.putExtra(DownloadIntent.KEY_TYPE, DownloadIntent.Types.ADD)
        apkDownIntent.putExtra(DownloadIntent.KEY_ID, StringUtils.getMD5Name(upgradeUrl))
        apkDownIntent.putExtra(DownloadIntent.KEY_URL, upgradeUrl)
        apkDownIntent.putExtra(DownloadIntent.KEY_DOWNLOAD_TYPE, DownloadIntent.DOWNLOAD_TYPE.DOWNLOAD_TYPE_APK)
        apkDownIntent.putExtra(DownloadIntent.KEY_PATH, filePath)
        try {
            GlobalCtxHolder.getContext().startService(apkDownIntent)
        } catch (e: Exception) {
            CrashLyticsLogWrapper.logException(e)
        }
    }

    override fun onBack() {
        if (this.isAdded) {
            if (isQuitFromActivity) {
                activity.finish()
            } else {
                val fm = fragmentManager
                val count = fm.backStackEntryCount
                if (count > 0) {
                    try {
                        fm.popBackStackImmediate()
                    } catch (e: Exception) {
                        CrashLyticsLogWrapper.logException(e)
                    }
                }
            }
        }
    }

    override fun onResume() {
        super.onResume()
        adapter.startAnim()
    }

    override fun onPause() {
        super.onPause()
        adapter.cancelAnim()
    }

    override fun onDestroy() {
        super.onDestroy()
        updateDialog?.dismiss()
        networkDlg?.dismiss()
        activity.unregisterReceiver(courseFinishReceiver)
        activity.unregisterReceiver(completedPurchasedReceiver)
    }

    companion object {
        const val TAG = "QualityCourseDetailFragment"
        const val COURSE_ID = "courseId"
        const val SUB_RES_TYPE = "sub_res_type"
        const val SUB = "sub"
        private const val KEY_LESSON_ID = "LESSON_ID"
        private const val KEY_QUIT_FROM_ACTIVITY = "QUIT"
        private const val SINGLE_COUNT = 1
        private var SPAN_COUNT = 2

        @JvmStatic
        fun newInstance(lessonId: String, isQuitFromActivity: Boolean) =
                QualityCourseDetailFragment().apply {
                    arguments = Bundle().apply {
                        putString(KEY_LESSON_ID, lessonId)
                        putBoolean(KEY_QUIT_FROM_ACTIVITY, isQuitFromActivity)
                    }
                }
    }
}
