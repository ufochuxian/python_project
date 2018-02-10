.class public Lcom/jiliguala/niuwa/common/widget/MultiViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:J

.field f:J

.field private final g:Landroid/graphics/Point;

.field private final h:Landroid/graphics/Point;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 39
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->i:I

    .line 43
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->j:I

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->g:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->h:Landroid/graphics/Point;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->i:I

    .line 43
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->j:I

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->g:Landroid/graphics/Point;

    .line 62
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->h:Landroid/graphics/Point;

    .line 63
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->setClipChildren(Z)V

    .line 80
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->MultiViewPager:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->setMaxWidth(I)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->setMaxHeight(I)V

    .line 83
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->setMatchChildWidth(I)V

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method

.method private static a(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p0, "size"    # Landroid/graphics/Point;
    .param p1, "maxSize"    # Landroid/graphics/Point;

    .prologue
    .line 66
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    .line 67
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_0

    .line 68
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 71
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    .line 72
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    .line 73
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 102
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->l:Z

    if-nez v6, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->k:I

    if-nez v6, :cond_2

    .line 106
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->l:Z

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 108
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 111
    .local v5, "pageWidth":I
    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->k:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "match":Landroid/view/View;
    if-nez v3, :cond_3

    .line 113
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "MatchWithChildResId did not find that ID in the first fragment of the ViewPager; is that view defined in the child view\'s layout? Note that MultiViewPager only measures the child for index 0."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 116
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 118
    .local v1, "childWidth":I
    if-lez v1, :cond_0

    .line 119
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->l:Z

    .line 120
    sub-int v2, v5, v1

    .line 123
    .local v2, "difference":I
    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->setPageMargin(I)V

    .line 125
    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v4, v6, 0x1

    .line 126
    .local v4, "offscreen":I
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->setOffscreenPageLimit(I)V

    .line 127
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->requestLayout()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_1
    return v0

    .line 174
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->a:F

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->b:F

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->e:J

    goto :goto_0

    .line 181
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->c:F

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->d:F

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->f:J

    .line 184
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->f:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 185
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 186
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 199
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->g:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 90
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->i:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->j:I

    if-ltz v0, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->h:Landroid/graphics/Point;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->i:I

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->g:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->h:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->a(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 96
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->a(II)V

    .line 98
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onSizeChanged(IIII)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->l:Z

    .line 137
    return-void
.end method

.method public setMatchChildWidth(I)V
    .locals 1
    .param p1, "matchChildWidthResId"    # I

    .prologue
    .line 145
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->k:I

    if-eq v0, p1, :cond_0

    .line 146
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->k:I

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->l:Z

    .line 149
    :cond_0
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->j:I

    .line 167
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/MultiViewPager;->i:I

    .line 158
    return-void
.end method
