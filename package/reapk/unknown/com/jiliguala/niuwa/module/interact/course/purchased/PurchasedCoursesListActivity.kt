package com.jiliguala.niuwa.module.interact.course.purchased

import android.os.Bundle
import android.support.v4.app.Fragment
import com.jiliguala.niuwa.R
import com.jiliguala.niuwa.common.CommonSets
import com.jiliguala.niuwa.common.base.BaseActivity
import kotlinx.android.synthetic.main.activity_base_page.*

class PurchasedCoursesListActivity : BaseActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_base_page)

        val extra = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_TYP)
        val fragment: Fragment
        var title = intent.getStringExtra(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_TITLE)
        when (extra) {
            "bundle" -> {
                fragment = PurchasedSystemGoodsFragment()
                title = "体系课"
            }
            "ix" -> {
                fragment = PurchasedGoodsFragment().apply {
                    arguments = Bundle().apply {
                        putString(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_TYP, IX_BUNDLE)
                    }
                }
            }
            "wml" -> {
                fragment = PurchasedStoryGoodsFragment()
                title = "吴敏兰绘本精品课"
            }
            SPOT_BUNDLE -> {
                fragment = PurchasedGoodsFragment().apply {
                    arguments = Bundle().apply {
                        putString(CommonSets.INTENT_PARAM_IDS.PARAM_KEY_TYP, extra)
                    }
                }
            }
            else -> {
                fragment = PurchasedGoodsFragment()
            }
        }

        top_bar_title.text = title

        val transaction = supportFragmentManager.beginTransaction()
        transaction.replace(R.id.container, fragment, fragment.javaClass.simpleName)
        transaction.commit()

        back_icon.setOnClickListener {
            finish()
        }
    }

    companion object {
        const val IX_BUNDLE = "ixbundle"
        const val SPOT_BUNDLE = "SPOTBUNDLE"
    }
}