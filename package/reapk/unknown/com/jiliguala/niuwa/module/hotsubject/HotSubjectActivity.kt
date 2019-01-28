package com.jiliguala.niuwa.module.hotsubject

import android.graphics.Color
import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.KeyEvent
import android.view.LayoutInflater
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.base.BaseActivity
import com.jiliguala.niuwa.logic.amplitude.AmplitudeConstants
import com.jiliguala.niuwa.logic.amplitude.AmplitudeMgr
import com.jiliguala.niuwa.module.forum.page.ForumSecondaryPageFragment

/**
 * Created by yammoo on 2018/4/9.
 */

class HotSubjectActivity : BaseActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val view = LayoutInflater.from(this).inflate(R.layout.activity_main, null)
        view.setBackgroundColor(Color.parseColor("#ffffff"))
        setContentView(view)

        val channel = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_CHANNEL)
        val title = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_TITLE)
        val pic = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_PIC)
        val color = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_COLOR)


        val fragment: Fragment = HotSubjectFragment.findOrCreateFragment(supportFragmentManager)
        val bundle = Bundle()
        bundle.putString(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_CHANNEL, channel)
        bundle.putString(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_TITLE, title)
        bundle.putString(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_PIC, pic)
        bundle.putString(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_COLOR, color)
        if (fragment.isAdded) {
            val arguments = fragment.arguments
            if (arguments != null) {
                arguments.clear()
                arguments.putAll(bundle)
            }
        } else {
            fragment.arguments = bundle
        }
        val ft = supportFragmentManager.beginTransaction()
        if (!fragment.isAdded) {
            ft.add(R.id.root_container, fragment, HotSubjectFragment.FRAGMENT_TAG)
            ft.addToBackStack(ForumSecondaryPageFragment.FRAGMENT_TAG)
        } else {
            ft.show(fragment)
        }
        ft.commitAllowingStateLoss()

        AmplitudeMgr.getInstance().logEvent(AmplitudeConstants.Events.EVENT_SENTENCE_LIST_VIEW)

    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            val fm = supportFragmentManager
            val backEntryCount = fm.backStackEntryCount
            if (backEntryCount > 1) {
                try {
                    fm.popBackStackImmediate()
                } catch (e: Exception) {
                    e.printStackTrace()
                }
            } else {
                finish()
            }
            return true
        }
        return super.onKeyDown(keyCode, event)
    }
}