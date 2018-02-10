.class public Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sSmallestWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->sSmallestWidth:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillRelativeLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 28
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 36
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 37
    return-object v0
.end method

.method public static isPhone(Landroid/app/Activity;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    sget v6, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->sSmallestWidth:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 94
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 96
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 97
    .local v5, "widthPixels":I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    .local v1, "heightPixels":I
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 99
    .local v3, "scaleFactor":F
    int-to-float v6, v5

    div-float v4, v6, v3

    .line 100
    .local v4, "widthDp":F
    int-to-float v6, v1

    div-float v0, v6, v3

    .line 101
    .local v0, "heightDp":F
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sput v6, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->sSmallestWidth:F

    .line 108
    .end local v0    # "heightDp":F
    .end local v1    # "heightPixels":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "scaleFactor":F
    .end local v4    # "widthDp":F
    .end local v5    # "widthPixels":I
    :cond_0
    sget v6, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->sSmallestWidth:F

    const/high16 v7, 0x44160000    # 600.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static makeBlueTintGradient(FFF)Landroid/graphics/drawable/GradientDrawable;
    .locals 6
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "alphaMultiplier"    # F

    .prologue
    .line 46
    add-float v4, p0, p1

    const/high16 v5, 0x40000000    # 2.0f

    div-float v2, v4, v5

    .line 48
    .local v2, "radius":F
    const/high16 v4, 0x43260000    # 166.0f

    mul-float/2addr v4, p2

    float-to-int v4, v4

    const/high16 v5, 0x1000000

    mul-int v0, v4, v5

    .line 49
    .local v0, "alpha":I
    const v4, 0x57507a

    add-int v3, v0, v4

    .line 50
    .local v3, "startColor":I
    const v4, 0x20164d

    add-int v1, v0, v4

    .line 52
    .local v1, "endColor":I
    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3ee66666    # 0.45f

    invoke-static {v2, v3, v1, v4, v5}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->makeRadialGradient(FIIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    return-object v4
.end method

.method public static makeLinearGradient(IZ)Landroid/graphics/drawable/GradientDrawable;
    .locals 6
    .param p0, "startColor"    # I
    .param p1, "reverse"    # Z

    .prologue
    const/4 v5, 0x0

    .line 69
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p0, v2, v5

    const/4 v3, 0x1

    const v4, 0xffffff

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 72
    .local v0, "g":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 73
    return-object v0

    .line 69
    .end local v0    # "g":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0
.end method

.method public static makeRadialGradient(FIIFF)Landroid/graphics/drawable/GradientDrawable;
    .locals 5
    .param p0, "radius"    # F
    .param p1, "innerColor"    # I
    .param p2, "outerColor"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    const/4 v4, 0x1

    .line 61
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 62
    .local v0, "g":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 64
    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 65
    return-object v0
.end method

.method public static makeStoryPageGradient(FF)Landroid/graphics/drawable/GradientDrawable;
    .locals 5
    .param p0, "width"    # F
    .param p1, "height"    # F

    .prologue
    .line 56
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, -0x1

    const v2, -0x2c1316

    const v3, 0x3f0ccccd    # 0.55f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->makeRadialGradient(FIIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static setRadialGradient(Landroid/widget/GridView;II)V
    .locals 4
    .param p0, "gridView"    # Landroid/widget/GridView;
    .param p1, "innerColor"    # I
    .param p2, "outerColor"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 83
    invoke-virtual {p0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v0, v1

    .line 84
    .local v0, "radius":F
    invoke-static {v0, p1, p2, v3, v3}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->makeRadialGradient(FIIFF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/module/story/helpers/CompatibilityHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method
