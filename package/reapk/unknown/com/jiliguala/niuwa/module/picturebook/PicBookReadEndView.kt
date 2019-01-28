package com.jiliguala.niuwa.module.picturebook

import android.content.Context
import android.text.TextUtils
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.View
import android.widget.FrameLayout
import com.bumptech.glide.Glide
import com.github.sahasbhop.apngview.ApngImageLoader
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.network.json.SuperLessonProgressResult
import com.jiliguala.niuwa.logic.share.ShareCenter
import com.jiliguala.niuwa.logic.share.ShareType
import kotlinx.android.synthetic.main.picbook_read_end.view.*

class PicBookReadEndView : FrameLayout {


    private var shareUrl: String? = null

    private var result: SuperLessonProgressResult.Data? = null

    constructor(context: Context?) : super(context) {
        init(context)
    }


    constructor(context: Context?, attrs: AttributeSet?) : super(context, attrs) {
        init(context)
    }

    constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(context, attrs, defStyleAttr) {
        init(context)
    }

    private fun init(context: Context?) {
        LayoutInflater.from(context).inflate(R.layout.picbook_read_end, this)
    }

    fun setShareUrl(url: String) {
        shareUrl = url
    }

    fun setBackClick(l: (View) -> Unit) {
        back.setOnClickListener(l)
    }

    fun setPlayClick() {
        play.setOnClickListener {

        }
    }

    fun show(result: SuperLessonProgressResult.Data) {

        this.result = result

        val coverUrl = result.cover + ".png"

        Glide.with(context).load(coverUrl).fitCenter().into(cover)

        if (!TextUtils.isEmpty(result.thmb)) {
            Glide.with(context).load(result.thmb).dontAnimate().centerCrop().into(guagua)
        }

        if (!TextUtils.isEmpty(result.desc)) {
            desc.text = result.desc
        }


        title_tv.text = ScoreUtils.getLessonScoreText(result.score)

        share_container.setOnClickListener({
            val title = result.wechatmsg
            ShareCenter.doShare(R.id.share_to_pengyouquan, title, null, null, null,
                    ShareType.H5_SHARE, null, null, context, coverUrl, shareUrl, AmplitudeConstants.SHARE_SOURCE.BIG_LESSON_COMPLETE)
        })

        val star = ScoreUtils.getLessonStarCount(result.score)
        val url = when (star) {
            3 -> "assets://apng/finish_star_3.png"
            2 -> "assets://apng/finish_star_2.png"
            1 -> "assets://apng/finish_star_1.png"
            else ->
                "assets://apng/finish_star_1.png"
        }

        val mApngConfig = ApngImageLoader.ApngConfig(1, true, true)
        ApngImageLoader.getInstance().displayApng(url, apng_star, mApngConfig)
    }

    fun setStyle(hasShare: Boolean) {
        if (hasShare) {
            desc.visibility = View.VISIBLE
            share_container.visibility = View.VISIBLE
            guagua.visibility = View.GONE
            play.visibility = View.VISIBLE
        } else {
            desc.visibility = View.GONE
            share_container.visibility = View.GONE
            guagua.visibility = View.VISIBLE
            play.visibility = View.VISIBLE
        }
    }
}