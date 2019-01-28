package com.jiliguala.niuwa.module.NewRoadMap

import android.app.DialogFragment
import android.content.DialogInterface
import android.content.Intent
import android.os.Bundle
import android.support.v4.view.ViewPager
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import com.google.gson.JsonObject
import com.jiliguala.log.JLGLLog
import com.jiliguala.niuwa.GlobalCtxHolder
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.base.BaseDialogFragment
import com.jiliguala.niuwa.common.util.GuideInstance
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.JsonParseEngine
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.helper.RequestHelper
import com.jiliguala.niuwa.logic.network.json.LevelTemplete
import com.jiliguala.niuwa.module.NewRoadMap.adapter.LevelPagerAdapter
import com.jiliguala.niuwa.module.SuperRoadMap.SuperRoadMapActivity
import com.jiliguala.niuwa.module.mcphonics.report.ChooseLvFragment
import com.jiliguala.niuwa.ui.photo.ScreenSizeUtil
import kotlinx.android.synthetic.main.activity_level_pager.*
import okhttp3.RequestBody
import rx.Subscriber
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers

class LevelPagerFragment : BaseDialogFragment(), ViewPager.OnPageChangeListener, ChooseLvFragment.OnLevelClickListener, View.OnClickListener {

    private var mRootView: View? = null
    private lateinit var mAdapter: LevelPagerAdapter
    private var mType: String? = null
    private var heightRatio: Float = 1.45f
    private var mPaddingRatio: Float = 0.125f  // viewpager padding ratio
    private var mLevels: Array<String>? = null
    private var mPosition: Int = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        arguments?.let {
            mType = arguments.getString(ARG_TYPE, LevelItem.LevelSwitch)
            mPosition = arguments.getInt(ARG_POSITION, 0)
        }
        setStyle(DialogFragment.STYLE_NORMAL, android.R.style.Theme_Black_NoTitleBar_Fullscreen)
        reportEnterLevelPager()
    }

    private fun getMcLevelPager(): Array<Int> {
        val images: Array<Int>
        when (AccountCenter.newInstance().currentBabyAge) {
            in Int.MIN_VALUE..1 -> {
                mLevels = arrayOf(LevelItem.B1_MC, LevelItem.B2_MC, LevelItem.L1_MC)
                images = arrayOf(R.drawable.guide_img_b1mc, R.drawable.guide_img_b2mc, R.drawable.guide_img_l1mc)
            }
            2 -> {
                mLevels = arrayOf(LevelItem.B2_MC, LevelItem.L1_MC, LevelItem.L2_MC)
                images = arrayOf(R.drawable.guide_img_b2mc, R.drawable.guide_img_l1mc, R.drawable.guide_img_l2mc)
            }
            3 -> {
                mLevels = arrayOf(LevelItem.B2_MC, LevelItem.L1_MC, LevelItem.L2_MC)
                images = arrayOf(R.drawable.guide_img_b2mc_b, R.drawable.guide_img_l1mc, R.drawable.guide_img_l2mc)
            }
            4, 5, 6 -> {
                mLevels = arrayOf(LevelItem.L1_MC, LevelItem.L2_MC, LevelItem.L3_MC)
                images = arrayOf(R.drawable.guide_img_l1mc, R.drawable.guide_img_l2mc, R.drawable.guide_img_l3mc)
            }
            else -> {
                mLevels = arrayOf(LevelItem.L1_MC, LevelItem.L2_MC, LevelItem.L3_MC)
                images = arrayOf(R.drawable.guide_img_l1mc_b, R.drawable.guide_img_l2mc, R.drawable.guide_img_l3mc_b)
            }
        }
        return images
    }

    private fun getGuaLevelDetail(): Array<Int> {
        mLevels = arrayOf(LevelItem.L1_GM)
        return arrayOf(R.drawable.img_guamei_lv1)
    }

    private fun getMcLevelDetail(): Array<Int> {
        mLevels = arrayOf(LevelItem.B1_MC, LevelItem.B2_MC,
                LevelItem.L1_MC, LevelItem.L2_MC, LevelItem.L3_MC)
        return arrayOf(R.drawable.img_mc_baby_1, R.drawable.img_mc_baby_2, R.drawable.img_mc_lv1,
                R.drawable.img_mc_lv2, R.drawable.img_mc_lv3)
    }

    private fun getPhLevelDetail(): Array<Int> {
        mLevels = arrayOf(LevelItem.L1_PH, LevelItem.L2_PH, LevelItem.L3_PH, LevelItem.L4_PH)
        return arrayOf(R.drawable.img_ph_lv1, R.drawable.img_ph_lv2,
                R.drawable.img_ph_lv3, R.drawable.img_ph_lv4)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        mRootView = inflater.inflate(R.layout.activity_level_pager, container, false)
        dialog.window.setBackgroundDrawableResource(android.R.color.transparent)
        mAdapter = LevelPagerAdapter(this)
        return mRootView
    }

    override fun onClick(v: View) {
        when (v.id) {
            R.id.title_level -> {
//JLGLLog.d(TAG, "click title")
            }
            R.id.pager_level -> {
//JLGLLog.d(TAG, "click pager")
            }
            R.id.learn -> {
//JLGLLog.d(TAG, "click learn button")
                switchLevel(mPosition)
            }
            else -> {
                if (LevelItem.LevelSwitch != mType) {
                    this.dismiss()
                }
            }
        }
    }

    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        title_level.setOnClickListener(this)
        learn.setOnClickListener(this)
        mRootView?.setOnClickListener(this)

        val width = ScreenSizeUtil.getScreenWidth(context)
        var height = 0f
        when (mType) {
            LevelItem.LevelSwitch -> {
                mAdapter.setDataSet(getMcLevelPager(), mType)
                heightRatio = 1.45f
                mPaddingRatio = 0.125f
                height += ScreenSizeUtil.Dp2Px(context, 3f)
                title_level.visibility = View.VISIBLE
                learn.visibility = View.GONE
                pager_level.clipToPadding = false
            }
            LevelItem.GuaMei -> {
                mAdapter.setDataSet(getGuaLevelDetail(), mType)
                heightRatio = 1.6f
                mPaddingRatio = 0.07f
                indicator_level.visibility = View.GONE
                title_level.visibility = View.GONE
                learn.visibility = View.VISIBLE
            }
            LevelItem.MC -> {
                mAdapter.setDataSet(getMcLevelDetail(), mType)
                heightRatio = 1.6f
                mPaddingRatio = 0.07f
                title_level.visibility = View.GONE
                learn.visibility = View.VISIBLE
            }
            LevelItem.PH -> {
                mAdapter.setDataSet(getPhLevelDetail(), mType)
                heightRatio = 1.6f
                mPaddingRatio = 0.07f
                title_level.visibility = View.GONE
                learn.visibility = View.VISIBLE
            }
        }

        height += width * heightRatio * (1 - mPaddingRatio * 2)
        pager_level.layoutParams = LinearLayout.LayoutParams(width, height.toInt())
        val mWidthPadding = (width * mPaddingRatio).toInt()
        pager_level.setPadding(mWidthPadding, 0, mWidthPadding, 0)
        pager_level.addOnPageChangeListener(this)
        pager_level.setPageTransformer(false) { page, position ->
            // JLGLLog.d(TAG, "the position is %f", position)
            val normalizedPosition = Math.abs(Math.abs(position) - 1)
            // do transformation here
            val scale = 1 - mScaleRatio + normalizedPosition * mScaleRatio
            page.scaleX = scale
            page.scaleY = scale
        }
        pager_level.adapter = mAdapter
        indicator_level.setViewPager(pager_level)
        if (mPosition == 0) {
            mLevels?.get(mPosition)?.let {
                reportMajorCardView(it)
            }
        }
        pager_level.setCurrentItem(mPosition, false)
    }

    override fun onPageScrollStateChanged(state: Int) {

    }

    override fun onPageScrolled(position: Int, positionOffset: Float, positionOffsetPixels: Int) {

    }

    override fun onPageSelected(position: Int) {
//JLGLLog.d(TAG, "selected position %d", position)
        mPosition = position
        mLevels?.get(mPosition)?.let {
            reportMajorCardView(it)
        }
    }

    private fun generateRequestBody(data: LevelTemplete): RequestBody? {
        val json = JsonParseEngine.generateJsonFromObj(data)
//JLGLLog.i(TAG, "post json:%s", json)
        return RequestHelper.generateRequestBody(json)
    }

    private fun goAmericanEnglishLesson(level: String) {
        val intent = Intent(GlobalCtxHolder.getContext(), SuperRoadMapActivity::class.java)
        intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
        intent.putExtra(CommonSets.COMMON_PARAM.TYPE, LessonType.MC)
        intent.putExtra(CommonSets.COMMON_PARAM.PARAM_KEY_SERVER_LV, level)
        GlobalCtxHolder.getContext().startActivity(intent)
        this.dismiss()
    }

    override fun onItemClick(position: Int) {
        switchLevel(position)
    }

    override fun onCloseClick() {
        dismiss()
    }

    private fun switchLevel(position: Int) {
        mLevels?.get(position)?.let {
//JLGLLog.i(TAG, "switchLevel %d,lv:%s", position, it)
            when (mType) {
                LevelItem.GuaMei -> {
                    goAmericanEnglishLesson(it)
                }
                else -> {
                    val levelTemplate = LevelTemplete()
                    levelTemplate.bid = AccountCenter.newInstance().curBabyId
                    levelTemplate.lv = it
                    subscriptions.add(RestApiManager.getInstance()
                            .restAPI
                            .switchLevel(generateRequestBody(levelTemplate))
                            .subscribeOn(Schedulers.io())
                            .observeOn(AndroidSchedulers.mainThread())
                            .subscribe(object : Subscriber<JsonObject>() {
                                override fun onCompleted() {

                                }

                                override fun onError(e: Throwable) {
//JLGLLog.e(TAG, "fail to switch level", e)
                                }

                                override fun onNext(jsonObject: JsonObject?) {
//JLGLLog.d(TAG, "switch level %s", jsonObject)
                                    if (jsonObject != null) {
                                        reportLevelClick(it)
                                        if (LevelItem.isNewRoadMap(it)) {
                                            val intent = Intent(GlobalCtxHolder.getContext(), NewRoadMapActivity::class.java)
                                            intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                            intent.putExtra(CommonSets.COMMON_PARAM.TYPE, if (LevelItem.LevelSwitch == mType) LevelItem.MC else mType)
                                            intent.putExtra(CommonSets.COMMON_PARAM.PARAM_KEY_SERVER_LV, it)
                                            GlobalCtxHolder.getContext().startActivity(intent)
                                        } else if (LevelItem.isB1MC(it)) {
                                            val intent = Intent(GlobalCtxHolder.getContext(), BabyRoadmapActivity::class.java)
                                            intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                            intent.putExtra(CommonSets.COMMON_PARAM.TYPE, LevelItem.MC)
                                            intent.putExtra(CommonSets.COMMON_PARAM.PARAM_KEY_SERVER_LV, it)
                                            GlobalCtxHolder.getContext().startActivity(intent)
                                        } else if (LevelItem.isB2MC(it)) {
                                            val intent = Intent(GlobalCtxHolder.getContext(), ParentingRoadMapActivity::class.java)
                                            intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
                                            intent.putExtra(CommonSets.COMMON_PARAM.TYPE, LevelItem.MC)
                                            intent.putExtra(CommonSets.COMMON_PARAM.PARAM_KEY_SERVER_LV, it)
                                            GlobalCtxHolder.getContext().startActivity(intent)
                                        }
                                    }
                                    this@LevelPagerFragment.dismiss()
                                }
                            })
                    )
                }
            }
        }
    }

    override fun onCancel(dialog: DialogInterface?) {
//JLGLLog.d(TAG, "onCancel")
        super.onCancel(dialog)
        reportLevelPagerBack()
    }

    private fun reportMajorCardView(level: String) {
        if (LevelItem.LevelSwitch != mType) {
            val map = mutableMapOf<String, Any>()
            map[AmplitudeConstants.TYPE_NAME.TYPE] = level
            AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_MAJOR_LESSON_CARD_VIEW, map)
        }
    }

    private fun reportEnterLevelPager() {
        if (LevelItem.LevelSwitch == mType) {
            AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_LEVEL_SELECT_VIEW)
        }
    }

    private fun reportLevelClick(level: String) {
        val map = mutableMapOf<String, Any>()
        map[AmplitudeConstants.TYPE_NAME.TYPE] = level
        val event = if (LevelItem.LevelSwitch == mType) AmplitudeConstants.Events.EVENT_LEVEL_CLICK else AmplitudeConstants.Events.EVENT_MAJOR_LESSON_ENTER_CLICK
        AmplitudeMgr.getInstance().logEventWithProperty(event, map)
    }

    private fun reportLevelPagerBack() {
        if (LevelItem.LevelSwitch == mType) {
            AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_CLICK_BACK)
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        GuideInstance.getInstance().levelPagerShowStatus = false
    }

    companion object {
        const val TAG = "LevelPagerFragment"
        const val ARG_TYPE = "level_type"
        const val ARG_POSITION = "level_position"
        private const val mScaleRatio = 0.1f    // viewpager scale ratio

        @JvmStatic
        fun newInstance(type: String?, position: Int = 0) =
                LevelPagerFragment().apply {
                    arguments = Bundle().apply {
                        putString(ARG_TYPE, type)
                        putInt(ARG_POSITION, position)
                    }
                }
    }
}
