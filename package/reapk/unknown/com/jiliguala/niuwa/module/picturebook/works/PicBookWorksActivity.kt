package com.jiliguala.niuwa.module.picturebook.works

import android.graphics.Rect
import android.graphics.drawable.AnimationDrawable
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import android.view.View
import android.widget.ImageView
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.base.BaseActivity
import com.jiliguala.niuwa.common.util.DeviceUtils
import com.jiliguala.niuwa.common.util.UnitConvertUtils
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.amplitude.AmplitudeUtils
import com.jiliguala.niuwa.logic.login.AccountCenter
import com.jiliguala.niuwa.logic.network.RestApiManager
import com.jiliguala.niuwa.logic.network.json.MineStoryBookTemplate
import com.jiliguala.niuwa.logic.share.ShareCenter
import com.jiliguala.niuwa.logic.share.ShareType
import com.jiliguala.niuwa.logic.share.ShareUrlStrings
import com.jiliguala.niuwa.module.course.main.lisetners.ShareSuccessListener
import com.jiliguala.niuwa.module.mediaplayer.SimpleMediaPlayer
import kotlinx.android.synthetic.main.activity_picbook_works.*
import kotlinx.android.synthetic.main.item_picbook_works.view.*
import rx.android.schedulers.AndroidSchedulers
import rx.schedulers.Schedulers


class PicBookWorksActivity : BaseActivity(), SimpleMediaPlayer.OnCompleteListener, SimpleMediaPlayer.OnErrorListener {

    private var lid: String? = null

    private lateinit var adapter: PicBookWorksAdapter

    private val mMediaPlayer = SimpleMediaPlayer()

    private var mData: MutableList<MineStoryBookTemplate.Data>? = null
    private var mCurData: MineStoryBookTemplate.Data? = null
    private var mCurPlayingVh: PicBookWorksAdapter.ViewHolder? = null
    private var mAudioIndex = 0
    private var mCurPlayItemIndex = 0

    init {
//        mData = mutableListOf()
//        for (i in 1..10) {
//            val data = MineStoryBookTemplate.Data()
//            val url = ContentResolver.SCHEME_ANDROID_RESOURCE + "://" + GlobalCtxHolder.getContext().packageName + "/raw/" + "ding"
//            data.audio = mutableListOf()
//            data.audio.add(url)
//            data.audio.add(url)
//            data.audio.add(url)
//            mData?.add(data)
//        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.activity_picbook_works)


        lid = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_ID)

        back.setOnClickListener {
            onBackPressed()
        }

        recyclerView.layoutManager = LinearLayoutManager(this, LinearLayoutManager.HORIZONTAL, false)
        recyclerView.addItemDecoration(SpacesItemDecoration())
        adapter = PicBookWorksAdapter(this, { vh, pos ->

            val isPlaying = mCurData?.playing ?: false
            if (isPlaying) {
                finishPlay()
            } else {
                val data = mData?.get(pos)
                if (data?.audio != null && data.audio.size > 0) {
                    mCurData = data
                    mAudioIndex = 0
                    mCurPlayingVh = vh
                    mCurPlayItemIndex = pos
                    val audio = data.audio[mAudioIndex]
                    mMediaPlayer.start(audio)

                    data.playing = true
                    playAnimation(vh.itemView.play, true)

                    reportPlayClick(pos, data)
                }
            }


        }, { holder, pos ->
            doShare(pos)
        })
        recyclerView.adapter = adapter

        mMediaPlayer.setMediaPlayerListener(null, this, this)

        requestServer()

        mData?.let {
            adapter.setData(it)
            adapter.notifyDataSetChanged()
        }
    }

    private fun reportPlayClick(pos: Int, data: MineStoryBookTemplate.Data?) {
        val map: MutableMap<String, Any?> = mutableMapOf()
        map[AmplitudeConstants.TYPE_NAME.POSITION] = pos
        map[AmplitudeConstants.TYPE_NAME.TYPE] = "Reader"
        map[AmplitudeConstants.TYPE_NAME.ID] = AmplitudeUtils.convertSubId(data?.sublessonid)
        map[AmplitudeConstants.TYPE_NAME.UNIT] = data?.unit
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_MY_WORK_PLAY, map)
    }

    private fun reportView() {
        val map: MutableMap<String, Any?> = mutableMapOf()
        map[AmplitudeConstants.TYPE_NAME.TYPE] = "Reader"
        map[AmplitudeConstants.TYPE_NAME.ID] = lid
        map[AmplitudeConstants.TYPE_NAME.UNIT] = mData?.getOrNull(0)?.unit
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_MY_WORK_VIEW, map)
    }


    private fun reportShareClick(data: MineStoryBookTemplate.Data?) {
        val map: MutableMap<String, Any?> = mutableMapOf()
        map[AmplitudeConstants.TYPE_NAME.SOURCE] = "MyWork"
        map[AmplitudeConstants.TYPE_NAME.ID] = AmplitudeUtils.convertSubId(data?.sublessonid)
        map[AmplitudeConstants.TYPE_NAME.UNIT] = data?.unit
        map[AmplitudeConstants.TYPE_NAME.TYPE] = "Circle"
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_SHARE_CLICK, map)
    }


    fun doShare(pos: Int) {

        val data = mData?.getOrNull(pos)

        if (data != null) {
            val coverUrl = data.cover + ".png"
            val shareUrl = String.format(ShareUrlStrings.SHARE_URL_PRE + ShareUrlStrings.LESSON_SHARE_SUPER,
                    lid,
                    AccountCenter.newInstance().curBabyId,
                    data.typ,
                    data.sublessonid,
                    "mywork",
                    data.unit
            )

            var name = "绘本作品"
            if ("read" == data.typ) {
                name = "跟读作品"
            } else if ("point" == data.typ) {
                name = "指读作品"
            }
            val title = "宝贝的英语绘本配音作品太棒了！快来听一下刚完成的" + name + "吧"


            ShareCenter.doShare(R.id.share_to_pengyouquan, title, null, null, AmplitudeUtils.convertSubId(data.sublessonid),
                    ShareType.H5_SHARE, null, null, this, coverUrl, shareUrl,
                    "MyWork", data.unit)
            ShareCenter.setListener(object : ShareSuccessListener {
                override fun shareComplete() {

                }

                override fun shareError() {}

                override fun shareCancel() {}

            })
            reportShareClick(data)
        }
    }


    override fun onResume() {
        super.onResume()
        DeviceUtils.toggleOnFullScreen(this)
    }

    private fun playAnimation(iv: ImageView, play: Boolean) {

        var drawable = iv.drawable
        if (drawable is AnimationDrawable) {
            drawable.stop()
        }

        if (play) {
            drawable = resources.getDrawable(R.drawable.mine_book_playing) as AnimationDrawable
            iv.setImageDrawable(drawable)
            drawable.start()
        } else {
            iv.setImageResource(R.drawable.btn_play_the_end_share)
        }
    }

    private fun finishPlay() {
        mCurData?.playing = false
        if (mCurPlayItemIndex == mCurPlayingVh?.pos) {
            val play = mCurPlayingVh?.itemView?.play
            if (play != null) {
                playAnimation(play, false)
            }
        }
    }

    private fun requestServer() {
        val curBabyId = AccountCenter.newInstance().curBabyId
        subscriptions.add(RestApiManager.getInstance().restAPI
                .requestMineStoryBook(curBabyId, lid)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe({
                    if (it?.data != null) {
                        showData(it.data)
                    }
                }, {

                })
        )
    }

    override fun onComplete() {
        ++mAudioIndex
        val audio = mCurData?.audio?.getOrNull(mAudioIndex)
        if (audio.isNullOrEmpty()) {
            finishPlay()
        } else {
            mMediaPlayer.start(audio)
        }
    }

    override fun onError(what: Int) {
        finishPlay()
    }

    fun showData(data: MutableList<MineStoryBookTemplate.Data>) {
        mData = data
        adapter.setData(data)
        adapter.notifyDataSetChanged()
        reportView()
    }


    class SpacesItemDecoration : RecyclerView.ItemDecoration() {

        val space: Int = UnitConvertUtils.dip2px(16f)

        override fun getItemOffsets(outRect: Rect?, view: View?, parent: RecyclerView?, state: RecyclerView.State?) {
            super.getItemOffsets(outRect, view, parent, state)
            outRect?.left = space
            outRect?.right = space
        }
    }

    override fun onPause() {
        super.onPause()
        mMediaPlayer.stop()
        finishPlay()
    }

}