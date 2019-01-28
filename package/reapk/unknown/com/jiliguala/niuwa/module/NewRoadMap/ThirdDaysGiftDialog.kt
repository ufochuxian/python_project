package com.jiliguala.niuwa.module.NewRoadMap

import android.animation.Animator
import android.animation.AnimatorSet
import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.app.Activity
import android.app.Dialog
import android.view.LayoutInflater
import android.view.View
import android.view.WindowManager
import android.view.animation.OvershootInterpolator
import android.widget.ImageView
import com.bumptech.glide.Glide
import com.bumptech.glide.Priority
import com.bumptech.glide.load.resource.drawable.GlideDrawable
import com.bumptech.glide.request.animation.GlideAnimation
import com.bumptech.glide.request.target.ViewTarget
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.util.DeviceUtils
import com.jiliguala.niuwa.common.util.xutils.ClickManager
import com.jiliguala.niuwa.logic.network.JsonParseEngine
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.helper.RequestHelper
import com.jiliguala.niuwa.logic.network.json.McTemplete
import com.jiliguala.niuwa.logic.network.json.PostRoadMapGift
import kotlinx.android.synthetic.main.layout_third_day_gift.view.*
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers
import rx.subscriptions.CompositeSubscription

class ThirdDaysGiftDialog(val mActivity: Activity, val gift: McTemplete.Gift, val babyId: String, val callBack: (Boolean) -> Unit) {

    val mDialog: Dialog = Dialog(mActivity, R.style.GuavatarDialog)
    val mRootView: View
    val mSubscriptions: CompositeSubscription = CompositeSubscription()
    val mClickManager: ClickManager = ClickManager()


    init {
        val window = mDialog.window
        if (window != null) {
            window.decorView.setPadding(0, 0, 0, 0)
            val lp = window.attributes
            lp.width = WindowManager.LayoutParams.MATCH_PARENT
            lp.height = WindowManager.LayoutParams.MATCH_PARENT
            window.attributes = lp
            if (DeviceUtils.isHideSystemBar(mActivity)) {
                DeviceUtils.hideSystemBar(mDialog.window)
            }
        }
//        mDialog.setCancelable(false)
//        mDialog.setCanceledOnTouchOutside(false)

        mRootView = LayoutInflater.from(mActivity).inflate(R.layout.layout_third_day_gift, null)
        val size = DeviceUtils.getLandsHeight()
        mRootView.star.layoutParams.height = size
        mRootView.star.layoutParams.width = size
        mRootView.bg.layoutParams.height = size

        mDialog.setContentView(mRootView)
        mRootView.confirm.setOnClickListener {
            if (mClickManager.isRepatedClick) {
                return@setOnClickListener
            }
            postGift()
        }
    }


    private fun postGift() {
        val postRoadMapGift = PostRoadMapGift(gift.id, babyId)
        val json = JsonParseEngine.generateJsonFromObj(postRoadMapGift)
        val requestBody = RequestHelper.generateRequestBody(json)
        mSubscriptions.add(RestApiManager.getInstance().restAPI
                .postRoadmapGift(requestBody)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    callBack(true)
                    dismiss()
                }, {
                    callBack(false)
                    dismiss()
                })
        )
    }


    fun show() {
        if (isShowing()) {
            return
        }
        val window = mDialog.window
        window?.setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE)
        mRootView.confirm.visibility = View.INVISIBLE
        mRootView.coupon.visibility = View.INVISIBLE
        mDialog.show()
        window?.clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE)
        beginGuang()
        beginStar()
    }

    fun isShowing(): Boolean {
        return mDialog.isShowing
    }

    private fun beginGuang() {
        mRootView.bg.setAnimation(R.raw.gift_guang)
        mRootView.bg.repeatCount = ValueAnimator.INFINITE
        mRootView.bg.imageAssetsFolder = "lottie"
        mRootView.bg.playAnimation()
    }

    private fun beginStar() {
        mRootView.star.setAnimation(R.raw.gift_star)
        mRootView.star.imageAssetsFolder = "lottie"
        mRootView.star.addAnimatorListener(object : android.animation.Animator.AnimatorListener {
            override fun onAnimationRepeat(animation: android.animation.Animator?) {
            }

            override fun onAnimationEnd(animation: android.animation.Animator?) {
                showGift()
            }

            override fun onAnimationCancel(animation: android.animation.Animator?) {
            }

            override fun onAnimationStart(animation: android.animation.Animator?) {

            }

        })
        mRootView.star.playAnimation()
    }

    fun animConfirm() {
        val view = mRootView.confirm
        val animSet = AnimatorSet()
        val begin = 0.2f
        val end = 1.0f
        val duration: Long = 500
        val scaleX = ObjectAnimator.ofFloat(view, CommonSets.ANIMATOR_PROPERTIES.SCALE_X, begin, end)
        val scaleY = ObjectAnimator.ofFloat(view, CommonSets.ANIMATOR_PROPERTIES.SCALE_Y, begin, end)
        animSet.interpolator = OvershootInterpolator(3f)
        animSet.playTogether(scaleX, scaleY)
        animSet.duration = duration
        animSet.addListener(object : Animator.AnimatorListener {
            override fun onAnimationRepeat(animation: Animator?) {
            }

            override fun onAnimationEnd(animation: Animator?) {

            }

            override fun onAnimationCancel(animation: Animator?) {
            }

            override fun onAnimationStart(animation: Animator?) {
                view.visibility = View.VISIBLE
            }
        })
        animSet.start()
    }

    fun showGift() {
        val view = mRootView.coupon
        Glide.with(mActivity)
                .load(gift.giftImg)
                .dontAnimate()
                .priority(Priority.HIGH)
                .skipMemoryCache(true)
                .into(object : ViewTarget<ImageView, GlideDrawable>(view) {
                    override fun onResourceReady(resource: GlideDrawable, glideAnimation: GlideAnimation<in GlideDrawable>) {
                        view.setImageDrawable(resource)
                        animGift()
                    }
                })
    }

    fun animGift() {
        val view = mRootView.coupon
        val animSet = AnimatorSet()
        val begin = 0.2f
        val end = 1.0f
        val duration: Long = 400
        val scaleX = ObjectAnimator.ofFloat(view, CommonSets.ANIMATOR_PROPERTIES.SCALE_X, begin, end)
        val scaleY = ObjectAnimator.ofFloat(view, CommonSets.ANIMATOR_PROPERTIES.SCALE_Y, begin, end)
        animSet.interpolator = OvershootInterpolator(3f)
        animSet.playTogether(scaleX, scaleY)
        animSet.duration = duration
        animSet.addListener(object : Animator.AnimatorListener {
            override fun onAnimationRepeat(animation: Animator?) {
            }

            override fun onAnimationEnd(animation: Animator?) {
                animConfirm()
            }

            override fun onAnimationCancel(animation: Animator?) {
            }

            override fun onAnimationStart(animation: Animator?) {
                view.visibility = View.VISIBLE
            }
        })
        animSet.start()
    }


    fun dismiss() {
        mRootView.star.cancelAnimation()
        mRootView.coupon.clearAnimation()
        mRootView.confirm.clearAnimation()
        mDialog.dismiss()
    }

}