.class public Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->a:F

    .line 21
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mikhaellopez/circularprogressbar/b$b;->default_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->b:F

    .line 22
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mikhaellopez/circularprogressbar/b$b;->default_background_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->c:F

    .line 23
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->d:I

    .line 24
    const v0, -0x777778

    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->e:I

    .line 27
    const/16 v0, -0x5a

    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->f:I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->g:Landroid/graphics/RectF;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/mikhaellopez/circularprogressbar/b$c;->CircularProgressBar:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/mikhaellopez/circularprogressbar/b$c;->CircularProgressBar_cpb_progress:I

    iget v2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->a:F

    .line 46
    sget v1, Lcom/mikhaellopez/circularprogressbar/b$c;->CircularProgressBar_cpb_progressbar_width:I

    iget v2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->b:F

    .line 47
    sget v1, Lcom/mikhaellopez/circularprogressbar/b$c;->CircularProgressBar_cpb_background_progressbar_width:I

    iget v2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->c:F

    .line 49
    sget v1, Lcom/mikhaellopez/circularprogressbar/b$c;->CircularProgressBar_cpb_progressbar_color:I

    iget v2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->d:I

    .line 50
    sget v1, Lcom/mikhaellopez/circularprogressbar/b$c;->CircularProgressBar_cpb_background_progressbar_color:I

    iget v2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->h:Landroid/graphics/Paint;

    .line 57
    iget-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->c:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->i:Landroid/graphics/Paint;

    .line 63
    iget-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->i:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->i:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->b:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    return-void

    .line 52
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public a(FI)V
    .locals 4
    .param p1, "progress"    # F
    .param p2, "duration"    # I

    .prologue
    .line 167
    const-string v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 168
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 169
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 171
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->e:I

    return v0
.end method

.method public getBackgroundProgressBarWidth()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->c:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->d:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->a:F

    return v0
.end method

.method public getProgressBarWidth()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->b:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 74
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->a:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v3, v0, v1

    .line 75
    .local v3, "angle":F
    iget-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->g:Landroid/graphics/RectF;

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->f:I

    int-to-float v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 82
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v4, p2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getDefaultSize(II)I

    move-result v0

    .line 83
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v4, p1}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getDefaultSize(II)I

    move-result v3

    .line 84
    .local v3, "width":I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 85
    .local v2, "min":I
    invoke-virtual {p0, v2, v2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setMeasuredDimension(II)V

    .line 86
    iget v4, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->b:F

    iget v5, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->c:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->b:F

    .line 87
    .local v1, "highStroke":F
    :goto_0
    iget-object v4, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->g:Landroid/graphics/RectF;

    div-float v5, v1, v9

    add-float/2addr v5, v7

    div-float v6, v1, v9

    add-float/2addr v6, v7

    int-to-float v7, v2

    div-float v8, v1, v9

    sub-float/2addr v7, v8

    int-to-float v8, v2

    div-float v9, v1, v9

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    return-void

    .line 86
    .end local v1    # "highStroke":F
    :cond_0
    iget v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->c:F

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->e:I

    .line 140
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    .line 142
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->requestLayout()V

    .line 143
    return-void
.end method

.method public setBackgroundProgressBarWidth(F)V
    .locals 1
    .param p1, "backgroundStrokeWidth"    # F

    .prologue
    .line 117
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->c:F

    .line 118
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->requestLayout()V

    .line 120
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    .line 121
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->d:I

    .line 129
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    .line 131
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->requestLayout()V

    .line 132
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    const/high16 v0, 0x42c80000    # 100.0f

    .line 97
    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .end local p1    # "progress":F
    :goto_0
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->a:F

    .line 98
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    .line 99
    return-void

    .restart local p1    # "progress":F
    :cond_0
    move p1, v0

    .line 97
    goto :goto_0
.end method

.method public setProgressBarWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->b:F

    .line 107
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->requestLayout()V

    .line 109
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    .line 110
    return-void
.end method

.method public setProgressWithAnimation(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 155
    const/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->a(FI)V

    .line 156
    return-void
.end method
