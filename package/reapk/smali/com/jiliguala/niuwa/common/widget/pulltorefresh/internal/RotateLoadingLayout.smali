.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;
.super Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
.source "SourceFile"


# static fields
.field static final a:I = 0x4b0


# instance fields
.field private final h:Landroid/view/animation/Animation;

.field private final i:Landroid/graphics/Matrix;

.field private final j:Z

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 41
    const/16 v0, 0xf

    invoke-virtual {p4, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->j:Z

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->i:Landroid/graphics/Matrix;

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 47
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->h:Landroid/view/animation/Animation;

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->h:Landroid/view/animation/Animation;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->h:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->h:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 52
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->i:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected a(F)V
    .locals 4
    .param p1, "scaleOfLayout"    # F

    .prologue
    const/high16 v3, 0x43340000    # 180.0f

    .line 63
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->j:Z

    if-eqz v1, :cond_0

    .line 64
    const/high16 v1, 0x42b40000    # 90.0f

    mul-float v0, p1, v1

    .line 69
    .local v0, "angle":F
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->i:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->k:F

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->l:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 70
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->i:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 71
    return-void

    .line 66
    .end local v0    # "angle":F
    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, p1

    sub-float/2addr v2, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .restart local v0    # "angle":F
    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->k:F

    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->l:F

    .line 59
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 81
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;->k()V

    .line 82
    return-void
.end method

.method protected getDefaultDrawableResId()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f080146

    return v0
.end method
