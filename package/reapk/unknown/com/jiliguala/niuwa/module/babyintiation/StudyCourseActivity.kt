package com.jiliguala.niuwa.module.babyintiation

import android.graphics.Color
import android.os.Bundle
import android.view.KeyEvent
import android.view.LayoutInflater
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.base.BaseActivity
import com.jiliguala.niuwa.common.util.CrashLyticsLogWrapper

/**
 * Created by yammoo on 2018/4/18.
 */
class StudyCourseActivity : BaseActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val view = LayoutInflater.from(this).inflate(R.layout.activity_main, null)
        view.setBackgroundColor(Color.parseColor("#ffffff"))
        setContentView(view)

        try {
            val fragment = StudyCourseFragment.instantiate(this, StudyCourseFragment::class.java.canonicalName)
            var arguments: Bundle? = fragment.arguments
            if (arguments != null) {
                arguments.clear()
            } else {
                arguments = Bundle()
            }
            arguments.putString("source", "Home")
            fragment.arguments = arguments
            val ft = supportFragmentManager.beginTransaction()
            ft.setCustomAnimations(R.anim.right_slide_in,
                    R.anim.right_slide_out,
                    R.anim.right_slide_in,
                    R.anim.right_slide_out)
            if (!fragment.isAdded) {
                ft.add(R.id.root_container, fragment, StudyCourseFragment.FRAGMENT_TAG)
                ft.addToBackStack(StudyCourseFragment.FRAGMENT_TAG)
            } else {
                ft.show(fragment)
            }
            ft.commitAllowingStateLoss()
        } catch (e: Exception) {
            CrashLyticsLogWrapper.logException(e)
        }
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