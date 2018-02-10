.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;
.super Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final a:I = 0x96


# instance fields
.field private final h:Landroid/view/animation/Animation;

.field private final i:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 42
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p2, v0, :cond_0

    const/16 v7, -0xb4

    .line 44
    .local v7, "rotateAngle":I
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v7

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->h:Landroid/view/animation/Animation;

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->h:Landroid/view/animation/Animation;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->h:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->h:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 49
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->i:Landroid/view/animation/Animation;

    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->i:Landroid/view/animation/Animation;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->i:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->i:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 53
    return-void

    .line 42
    .end local v7    # "rotateAngle":I
    :cond_0
    const/16 v7, 0xb4

    goto :goto_0
.end method

.method private getDrawableRotationAngle()F
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "angle":F
    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout$1;->a:[I

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->f:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 123
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->g:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v1, v2, :cond_1

    .line 124
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 126
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    .line 128
    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->g:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v2, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v1, v2, :cond_0

    .line 132
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->h:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected a(F)V
    .locals 0
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 85
    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 59
    .local v0, "dHeight":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 66
    .local v1, "dWidth":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 67
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 74
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 77
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->getDrawableRotationAngle()F

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 78
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 80
    .end local v0    # "dHeight":I
    .end local v1    # "dWidth":I
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    return-void
.end method

.method protected getDefaultDrawableResId()I
    .locals 1

    .prologue
    .line 116
    const v0, 0x7f080145

    return v0
.end method
