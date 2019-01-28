package com.jiliguala.niuwa.module.picturebook

import android.content.Context
import android.text.TextUtils
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import com.jiliguala.niuwa.logic.network.json.PicBookTemplate
import com.jiliguala.niuwa.module.picturebook.fingerread.PicBookFingerPageView

class PictureBookAdapter(private val mContext: Context) : BaseAdapter() {

    private var callback: Callback? = null
    private val pages = ArrayList<PicBookTemplate.Data.Page>()
    private var cover: PicBookTemplate.Data.Cover? = null
    private var isVertical: Boolean = false
    private var auto: Boolean = false
    private var type: String? = null

    interface Callback {
        fun onAudioPlayClick(view: View)

        fun onTurnModeClick(view: View)

        fun onPageBackClick(view: View)

        fun onRecordClick(isRecording: Boolean)

        fun onMineClick(isPlaying: Boolean)

        fun onPointPressed()

        fun onPointUp()
    }

    fun setCallback(callback: Callback) {
        this.callback = callback
    }

    fun setData(pages: List<PicBookTemplate.Data.Page>) {
        this.pages.clear()
        this.pages.addAll(pages)
    }

    fun setCover(cover: PicBookTemplate.Data.Cover?) {
        this.cover = cover
    }


    fun setVertical(vertical: Boolean) {
        this.isVertical = vertical
    }

    fun setAuto(auto: Boolean) {
        this.auto = auto
    }

    fun setType(type: String?) {
        this.type = type
    }

    override fun getCount(): Int {
        return pages.size
    }

    override fun getItem(position: Int): Any {
        return position
    }

    override fun getItemId(position: Int): Long {
        return position.toLong()
    }

    override fun hasStableIds(): Boolean {
        return true
    }

    override fun getViewTypeCount(): Int {
        return 5
    }

    override fun getItemViewType(position: Int): Int {
//        if (position == 0 && cover != null) {
//            return 2
//        }

        val page = pages[position]
        return when {
            page.pType == "cover" -> 2
            page.pType == "end" -> 3
            else -> when (type) {
                "listen" -> 0
                "read" -> 1
                "point" -> 4
                else -> 0
            }
        }

    }

    override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {
        var view = convertView

        if (view == null) {
            val type = getItemViewType(position)
            view = when (type) {
                0 -> PicBookListenPageView(mContext, isVertical)
                1 -> PicBookReadPageView(mContext)
                2 -> PicBookCoverView(mContext)
                3 -> PicBookListenEndView(mContext)
                4 -> PicBookFingerPageView(mContext)
                else -> PicBookListenPageView(mContext, isVertical)
            }
        }

        if (view is PicBookListenPageView) {

            val page = pages[position]
            val pageIndex = if (cover == null) position + 1 else position
            val pageCount = if (cover == null) pages.size - 1 else pages.size - 2

            view.setDefaultColor()
            view.showData(page)
            view.setPageNumber(pageIndex.toString() + "/" + pageCount)
            view.setTurnMode(auto)

            view.setAudioPlayClick { callback?.onAudioPlayClick(it) }
            view.getTurnMode().setOnClickListener { callback?.onTurnModeClick(it) }
            view.getBackBtn().setOnClickListener { callback?.onPageBackClick(it) }

        } else if (view is PicBookReadPageView) {

            val pos = if (cover == null) position else position - 1
            val page = pages[pos]

            view.setDefaultColor()
            view.showData(page)
            view.setPageNumber((pos + 1).toString() + "/" + pages.size)

            view.setAudioPlayClick {
                callback?.onAudioPlayClick(it)
            }
            view.setRecordClick {
                callback?.onRecordClick(it)
            }

            view.setMinePlayClick {
                callback?.onMineClick(it)
            }

            view.setBtnClick {
                callback?.onPageBackClick(it)
            }

            val audio = page.sentence?.lRecord?.audio
            if (!TextUtils.isEmpty(audio)) {
                view.setMinePlayEnable(true)
            } else {
                view.setMinePlayEnable(false)
            }

            val score = page.sentence?.lRecord?.score
            if (score != null) {
                view.showStar(score)
            } else {
                view.hideStar()
            }

        } else if (view is PicBookCoverView) {
            if (cover != null) {
                view.showData(cover)
                view.setBackClick {
                    callback?.onPageBackClick(it)
                }
            }
        } else if (view is PicBookListenEndView) {
            view.showData(cover?.cover)
            view.setOnBackClick {
                callback?.onPageBackClick(it)
            }
        } else if (view is PicBookFingerPageView) {
            val pos = if (cover == null) position else position - 1
            val page = pages[pos]
            view.showData(page)
            view.setPageNumber((pos + 1).toString() + "/" + pages.size)
            view.setOnPointPressedListener {
                callback?.onPointPressed()
            }
            view.setOnPointUpListener {
                callback?.onPointUp()
            }
            view.setRecordClick {
                callback?.onRecordClick(it)
            }
            view.setBtnClick {
                callback?.onPageBackClick(it)
            }
            view.setAudioPlayClick {
                callback?.onAudioPlayClick(it)
            }
            view.setMinePlayClick {
                callback?.onMineClick(it)
            }
        }

        return view
    }
}
