package com.jiliguala.niuwa.module.voucher

import android.os.Bundle
import android.support.v4.view.ViewPager
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.base.BaseActivity
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.logic.bus.RxBus
import com.jiliguala.niuwa.logic.bus.event.AccountEvent
import com.jiliguala.niuwa.logic.bus.event.BaseEvent
import com.jiliguala.niuwa.logic.prefixparse.PrefixParser
import kotlinx.android.synthetic.main.activity_voucher_pages.*
import java.util.*


class VoucherPagesActivity : BaseActivity(), ViewPager.OnPageChangeListener {

    private var mAdapter: VoucherPagesAdapter? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_voucher_pages)
        reportView()
        initView()
        addObserver()
    }

    private fun addObserver() {
        subscriptions.add(RxBus.getDefault()
                .toObserverable(AccountEvent::class.java)
                .subscribe({ loginEvent ->
                    when (loginEvent.eventType) {
                        BaseEvent.EventType.PURCHASE_LOGIN_SUCCESS -> finish()
                    }
                }) {

                })
    }

    private fun reportView() {
        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_COUPON_LIST_VIEW)
    }

    private fun initView() {
        back_icon.setOnClickListener { finish() }
        invite.setOnClickListener { goInvite() }
        mAdapter = VoucherPagesAdapter(supportFragmentManager)
        viewpager.adapter = mAdapter
        tabStrip.setViewPager(viewpager)
        tabStrip.setOnPageChangeListener(this)
        tabStrip.changeTabStyles(0)
        viewpager.currentItem = 0
        onPageSelected(0)
    }

    private fun reportPageSelect(position: Int) {
        when (position) {
            0 -> AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_UNUSED_COUPON_VIEW)
            1 -> AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_EXPIRED_COUPON_VIEW)
            2 -> AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_USED_COUPON_VIEW)
        }
    }

    private fun goInvite() {
        PrefixParser.handleSchemaJump(this, PrefixParser.JLGL_INVITE_FRIENDS)

        val map = HashMap<String, Any>()
        map[AmplitudeConstants.TYPE_NAME.SOURCE] = "coupon"
        AmplitudeMgr.getInstance().logEventWithProperty(AmplitudeConstants.Events.EVENT_INVITE_FRIENDS_VIEW, map)
    }

    override fun onPageScrollStateChanged(state: Int) {

    }

    override fun onPageScrolled(position: Int, positionOffset: Float, positionOffsetPixels: Int) {

    }

    override fun onPageSelected(position: Int) {
        reportPageSelect(position)
    }
}

