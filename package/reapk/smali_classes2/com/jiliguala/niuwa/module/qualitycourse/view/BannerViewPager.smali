.class public Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private downX:F

.field private downY:F

.field private mMatchWidthChildResId:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mNeedsMeasurePage:Z

.field private final maxSize:Landroid/graphics/Point;

.field private final size:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 79
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 48
    iput v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxWidth:I

    .line 52
    iput v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxHeight:I

    .line 80
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->size:Landroid/graphics/Point;

    .line 81
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->maxSize:Landroid/graphics/Point;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxWidth:I

    .line 52
    iput v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxHeight:I

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->size:Landroid/graphics/Point;

    .line 88
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->maxSize:Landroid/graphics/Point;

    .line 89
    return-void
.end method

.method private static constrainTo(Landroid/graphics/Point;Landroid/graphics/Point;)V
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

.method private disallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getSecureX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 235
    :catch_0
    move-exception v0

    .line 238
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecureY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 250
    :goto_0
    return v0

    .line 247
    :catch_0
    move-exception v0

    .line 250
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->setClipChildren(Z)V

    .line 93
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->MultiViewPager:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->setMaxWidth(I)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->setMaxHeight(I)V

    .line 96
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->setMatchChildWidth(I)V

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 214
    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 218
    :goto_1
    return v2

    .line 193
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->getSecureX(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->downX:F

    .line 194
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->getSecureY(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->downY:F

    .line 195
    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->disallowInterceptTouchEvent(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->requestFocus()Z

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->getSecureX(Landroid/view/MotionEvent;)F

    move-result v0

    .line 200
    .local v0, "moveX":F
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->getSecureY(Landroid/view/MotionEvent;)F

    move-result v1

    .line 201
    .local v1, "moveY":F
    iget v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->downX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->downY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 202
    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->disallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->disallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 210
    .end local v0    # "moveX":F
    .end local v1    # "moveY":F
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->disallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v3

    goto :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->size:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 104
    iget v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxWidth:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxHeight:I

    if-ltz v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->maxSize:Landroid/graphics/Point;

    iget v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxWidth:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->size:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->maxSize:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->constrainTo(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 114
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->onMeasurePage(II)V

    .line 116
    return-void
.end method

.method protected onMeasurePage(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 120
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mNeedsMeasurePage:Z

    if-nez v6, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget v6, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMatchWidthChildResId:I

    if-nez v6, :cond_2

    .line 124
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mNeedsMeasurePage:Z

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 126
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 129
    .local v5, "pageWidth":I
    iget v6, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMatchWidthChildResId:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 130
    .local v3, "match":Landroid/view/View;
    if-nez v3, :cond_3

    .line 131
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "MatchWithChildResId did not find that ID in the first fragment of the ViewPager; is that view defined in the child view\'s layout? Note that MultiViewPager only measures the child for index 0."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 136
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 138
    .local v1, "childWidth":I
    if-lez v1, :cond_0

    .line 139
    iput-boolean v7, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mNeedsMeasurePage:Z

    .line 140
    sub-int v2, v5, v1

    .line 141
    .local v2, "difference":I
    neg-int v6, v2

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->setPageMargin(I)V

    .line 142
    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v4, v6, 0x1

    .line 143
    .local v4, "offscreen":I
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->setOffscreenPageLimit(I)V

    .line 144
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->requestLayout()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onSizeChanged(IIII)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mNeedsMeasurePage:Z

    .line 154
    return-void
.end method

.method public setMatchChildWidth(I)V
    .locals 1
    .param p1, "matchChildWidthResId"    # I

    .prologue
    .line 162
    iget v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMatchWidthChildResId:I

    if-eq v0, p1, :cond_0

    .line 163
    iput p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMatchWidthChildResId:I

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mNeedsMeasurePage:Z

    .line 166
    :cond_0
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxHeight:I

    .line 184
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/BannerViewPager;->mMaxWidth:I

    .line 175
    return-void
.end method
