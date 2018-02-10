.class public Lcom/jiliguala/niuwa/common/widget/cropper/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 46
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 48
    .local v0, "targetRadius":F
    return v0
.end method

.method public static a(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;FFFFFF)Landroid/util/Pair;
    .locals 8
    .param p0, "handle"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;",
            "FFFFFF)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v2, 0x0

    .line 161
    :goto_0
    return-object v2

    .line 114
    :cond_0
    const/4 v3, 0x0

    .line 115
    .local v3, "touchOffsetX":F
    const/4 v4, 0x0

    .line 118
    .local v4, "touchOffsetY":F
    sget-object v5, Lcom/jiliguala/niuwa/common/widget/cropper/a/b$1;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 160
    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    goto :goto_0

    .line 121
    .end local v2    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :pswitch_0
    sub-float v3, p3, p1

    .line 122
    sub-float v4, p4, p2

    .line 123
    goto :goto_1

    .line 125
    :pswitch_1
    sub-float v3, p5, p1

    .line 126
    sub-float v4, p4, p2

    .line 127
    goto :goto_1

    .line 129
    :pswitch_2
    sub-float v3, p3, p1

    .line 130
    sub-float v4, p6, p2

    .line 131
    goto :goto_1

    .line 133
    :pswitch_3
    sub-float v3, p5, p1

    .line 134
    sub-float v4, p6, p2

    .line 135
    goto :goto_1

    .line 137
    :pswitch_4
    sub-float v3, p3, p1

    .line 138
    const/4 v4, 0x0

    .line 139
    goto :goto_1

    .line 141
    :pswitch_5
    const/4 v3, 0x0

    .line 142
    sub-float v4, p4, p2

    .line 143
    goto :goto_1

    .line 145
    :pswitch_6
    sub-float v3, p5, p1

    .line 146
    const/4 v4, 0x0

    .line 147
    goto :goto_1

    .line 149
    :pswitch_7
    const/4 v3, 0x0

    .line 150
    sub-float v4, p6, p2

    .line 151
    goto :goto_1

    .line 153
    :pswitch_8
    add-float v5, p5, p3

    div-float v0, v5, v7

    .line 154
    .local v0, "centerX":F
    add-float v5, p4, p6

    div-float v1, v5, v7

    .line 155
    .local v1, "centerY":F
    sub-float v3, v0, p1

    .line 156
    sub-float v4, v1, p2

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static a(FFFFFFF)Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;
    .locals 7
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "targetRadius"    # F

    .prologue
    .line 72
    const/4 v6, 0x0

    .line 76
    .local v6, "pressedHandle":Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;
    invoke-static {p0, p1, p2, p3, p6}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    .line 99
    :cond_0
    :goto_0
    return-object v6

    .line 78
    :cond_1
    invoke-static {p0, p1, p4, p3, p6}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p0, p1, p2, p5, p6}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {p0, p1, p4, p5, p6}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 84
    :cond_4
    invoke-static/range {p0 .. p5}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->c(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->CENTER:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_5
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    move v5, p6

    .line 86
    invoke-static/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->TOP:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_6
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 88
    invoke-static/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_7
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->b(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 91
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->LEFT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_8
    move v0, p0

    move v1, p1

    move v2, p4

    move v3, p3

    move v4, p5

    move v5, p6

    .line 92
    invoke-static/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->b(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 94
    :cond_9
    invoke-static/range {p0 .. p5}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->c(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object v6, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;->CENTER:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/handle/Handle;

    goto :goto_0
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/CropOverlayView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(FFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleX"    # F
    .param p3, "handleY"    # F
    .param p4, "targetRadius"    # F

    .prologue
    .line 184
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleXStart"    # F
    .param p3, "handleXEnd"    # F
    .param p4, "handleY"    # F
    .param p5, "targetRadius"    # F

    .prologue
    .line 210
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p3

    if-gez v0, :cond_0

    sub-float v0, p1, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleX"    # F
    .param p3, "handleYStart"    # F
    .param p4, "handleYEnd"    # F
    .param p5, "targetRadius"    # F

    .prologue
    .line 236
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p4

    if-gez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 262
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p4

    if-gez v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p5

    if-gez v0, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
