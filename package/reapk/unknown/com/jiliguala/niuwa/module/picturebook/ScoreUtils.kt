package com.jiliguala.niuwa.module.picturebook

object ScoreUtils {

    fun getStarCount(score: Int): Int {
        return when (score) {
            in 85..100 -> 3
            in 70..84 -> 2
            in 55..69 -> 1
            else -> 1
        }
    }

    fun getLessonStarCount(score: Int): Int {
        return when (score) {
            in 80..100 -> 3
            in 46..79 -> 2
            in 0..45 -> 1
            else -> 1
        }
    }

    fun getLessonScoreText(score: Int): String {
        return when (score) {
            in 80..100 -> "Excellent！"
            in 46..79 -> "Very Good！"
            in 0..45 -> "Good！"
            else -> "Good！"
        }
    }
}