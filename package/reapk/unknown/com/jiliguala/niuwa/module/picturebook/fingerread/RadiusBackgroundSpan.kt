package com.jiliguala.niuwa.module.picturebook.fingerread

import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.RectF
import android.text.style.ReplacementSpan

class RadiusBackgroundSpan(private val mBgColor: Int, private val mRadius: Float, private val mForeColor: Int) : ReplacementSpan() {


    override fun getSize(paint: Paint, text: CharSequence?, start: Int, end: Int, fm: Paint.FontMetricsInt?): Int {
        return (paint.measureText(text, start, end)).toInt()
    }

    override fun draw(canvas: Canvas, text: CharSequence, start: Int, end: Int, x: Float, top: Int, y: Int, bottom: Int, paint: Paint) {
        val color = paint.color;//保存文字颜色
        paint.color = mBgColor//设置背景颜色
        paint.isAntiAlias = true// 设置画笔的锯齿效果
        val mSize = (paint.measureText(text, start, end)).toInt()
        val oval = RectF(x - mRadius * 3 / 4, y + paint.ascent(), x + mSize + mRadius * 3 / 4, y + paint.descent())
        //设置文字背景矩形，x为span其实左上角相对整个TextView的x值，y为span左上角相对整个View的y值。paint.ascent()获得文字上边缘，paint.descent()获得文字下边缘
        canvas.drawRoundRect(oval, mRadius, mRadius, paint)//绘制圆角矩形，第二个参数是x半径，第三个参数是y半径
        paint.color = mForeColor
        canvas.drawText(text, start, end, x, y.toFloat(), paint)//绘制文字
        paint.color = color//恢复画笔的文字颜色
    }
}