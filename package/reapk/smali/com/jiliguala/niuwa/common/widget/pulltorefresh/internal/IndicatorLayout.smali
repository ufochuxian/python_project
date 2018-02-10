.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final a:I = 0x96


# instance fields
.field private final b:Landroid/view/animation/Animation;

.field private final c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 50
    .local v7, "arrowD":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 53
    .local v12, "padding":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v12, v12, v12, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->addView(Landroid/view/View;)V

    .line 57
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$2;->a:[I

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    const v8, 0x7f010022

    .line 72
    .local v8, "inAnimResId":I
    const v11, 0x7f010025

    .line 73
    .local v11, "outAnimResId":I
    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 77
    :goto_0
    invoke-static {p1, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 80
    invoke-static {p1, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 83
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 84
    .local v9, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 89
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->c:Landroid/view/animation/Animation;

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->c:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->c:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 94
    return-void

    .line 59
    .end local v8    # "inAnimResId":I
    .end local v9    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v11    # "outAnimResId":I
    :pswitch_0
    const v8, 0x7f010021

    .line 60
    .restart local v8    # "inAnimResId":I
    const v11, 0x7f010024

    .line 61
    .restart local v11    # "outAnimResId":I
    const v0, 0x7f0801f6

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .local v10, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v10, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 98
    .local v0, "currentAnim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 99
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    if-ne v3, v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 99
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout$1;-><init>(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 127
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->clearAnimation()V

    .line 128
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 133
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/IndicatorLayout;->setVisibility(I)V

    .line 138
    return-void
.end method
