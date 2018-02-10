.class public Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageSelectionHelper"

.field private static isSetUp:Z

.field private static isTablet:Z

.field private static md_7i_score:I

.field private static md_pa_score:I

.field private static md_ph_score:I

.field private static prefix:Ljava/lang/String;

.field private static xh_7i_score:I

.field private static xh_pa_score:I

.field private static xh_ph_score:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->isSetUp:Z

    .line 17
    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->isTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseBest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "md_ph"    # Ljava/lang/String;
    .param p1, "md_7i"    # Ljava/lang/String;
    .param p2, "md_pa"    # Ljava/lang/String;
    .param p3, "xh_ph"    # Ljava/lang/String;
    .param p4, "xh_7i"    # Ljava/lang/String;
    .param p5, "xh_pa"    # Ljava/lang/String;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 111
    sget-boolean v2, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->isSetUp:Z

    if-nez v2, :cond_0

    .line 112
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot choose best image - setUpScores was never called on ImageSelectionHelper."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_0
    const/high16 v0, -0x80000000

    .line 116
    .local v0, "bestScore":I
    const/4 v1, 0x0

    .line 118
    .local v1, "bestString":Ljava/lang/String;
    sget v2, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->md_ph_score:I

    if-le v2, v0, :cond_1

    if-eqz p0, :cond_1

    .line 119
    move-object v1, p0

    .line 120
    sget v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->md_ph_score:I

    .line 122
    :cond_1
    sget v2, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->md_7i_score:I

    if-le v2, v0, :cond_2

    if-eqz p1, :cond_2

    .line 123
    move-object v1, p1

    .line 124
    sget v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->md_7i_score:I

    .line 126
    :cond_2
    sget v2, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->md_pa_score:I

    if-le v2, v0, :cond_3

    if-eqz p2, :cond_3

    .line 127
    move-object v1, p2

    .line 128
    sget v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->md_pa_score:I

    .line 130
    :cond_3
    sget v2, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->xh_ph_score:I

    if-le v2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 131
    move-object v1, p3

    .line 132
    sget v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->xh_ph_score:I

    .line 134
    :cond_4
    sget v2, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->xh_7i_score:I

    if-le v2, v0, :cond_5

    if-eqz p4, :cond_5

    .line 135
    move-object v1, p4

    .line 136
    sget v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->xh_7i_score:I

    .line 138
    :cond_5
    sget v2, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->xh_pa_score:I

    if-le v2, v0, :cond_6

    if-eqz p5, :cond_6

    .line 139
    move-object v1, p5

    .line 142
    :cond_6
    return-object v1
.end method

.method public static getBestAssetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "plainAssetName"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPrefixForWidth(I)Ljava/lang/String;
    .locals 1
    .param p0, "width"    # I

    .prologue
    .line 61
    const/16 v0, 0x280

    if-le p0, v0, :cond_0

    .line 63
    const-string v0, ""

    .line 72
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const/16 v0, 0x1e0

    if-le p0, v0, :cond_1

    .line 66
    const-string v0, "small_640_"

    goto :goto_0

    .line 67
    :cond_1
    const/16 v0, 0x140

    if-le p0, v0, :cond_2

    .line 69
    const-string v0, "small_480_"

    goto :goto_0

    .line 72
    :cond_2
    const-string v0, "small_320_"

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->isTablet:Z

    return v0
.end method

.method public static setUpScores(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 31
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 32
    .local v7, "width":I
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 33
    .local v0, "height":I
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v10}, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->getPrefixForWidth(I)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->prefix:Ljava/lang/String;

    .line 36
    iget v10, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v10

    const-wide v12, 0x3ff199999999999aL    # 1.1

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    move v5, v8

    .line 39
    .local v5, "preferXhdpi":Z
    :goto_0
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    iget v11, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v10, v11

    float-to-int v6, v10

    .line 40
    .local v6, "shortestDimensionInDps":I
    const/16 v10, 0x2cf

    if-le v6, v10, :cond_3

    move v3, v8

    .line 41
    .local v3, "preferIpad":Z
    :goto_1
    if-nez v3, :cond_4

    const/16 v10, 0x257

    if-le v6, v10, :cond_4

    move v2, v8

    .line 42
    .local v2, "prefer7inch":Z
    :goto_2
    if-nez v3, :cond_5

    if-nez v2, :cond_5

    move v4, v8

    .line 44
    .local v4, "preferIphone":Z
    :goto_3
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v9, v8

    :cond_1
    sput-boolean v9, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->isTablet:Z

    .line 46
    invoke-static {v4, v2, v3, v5}, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->setUpScores(ZZZZ)V

    .line 47
    return-void

    .end local v2    # "prefer7inch":Z
    .end local v3    # "preferIpad":Z
    .end local v4    # "preferIphone":Z
    .end local v5    # "preferXhdpi":Z
    .end local v6    # "shortestDimensionInDps":I
    :cond_2
    move v5, v9

    .line 36
    goto :goto_0

    .restart local v5    # "preferXhdpi":Z
    .restart local v6    # "shortestDimensionInDps":I
    :cond_3
    move v3, v9

    .line 40
    goto :goto_1

    .restart local v3    # "preferIpad":Z
    :cond_4
    move v2, v9

    .line 41
    goto :goto_2

    .restart local v2    # "prefer7inch":Z
    :cond_5
    move v4, v9

    .line 42
    goto :goto_3
.end method

.method public static setUpScores(ZZZZ)V
    .locals 7
    .param p0, "preferIphone"    # Z
    .param p1, "prefer7inch"    # Z
    .param p2, "preferIpad"    # Z
    .param p3, "preferXhdpi"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v5, -0x1

    const/4 v1, -0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    if-eqz p0, :cond_1

    move v6, v2

    :goto_0
    if-eqz p1, :cond_2

    move v0, v5

    :goto_1
    add-int/2addr v6, v0

    if-eqz p2, :cond_3

    move v0, v5

    :goto_2
    add-int/2addr v6, v0

    if-eqz p3, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v6

    sput v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->md_ph_score:I

    .line 79
    if-eqz p0, :cond_5

    move v6, v4

    :goto_4
    if-eqz p1, :cond_6

    move v0, v2

    :goto_5
    add-int/2addr v6, v0

    if-eqz p2, :cond_7

    move v0, v4

    :goto_6
    add-int/2addr v6, v0

    if-eqz p3, :cond_8

    move v0, v1

    :goto_7
    add-int/2addr v0, v6

    sput v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->md_7i_score:I

    .line 80
    if-eqz p0, :cond_9

    move v6, v5

    :goto_8
    if-eqz p1, :cond_a

    move v0, v4

    :goto_9
    add-int/2addr v6, v0

    if-eqz p2, :cond_b

    move v0, v2

    :goto_a
    add-int/2addr v6, v0

    if-eqz p3, :cond_c

    move v0, v1

    :goto_b
    add-int/2addr v0, v6

    sput v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->md_pa_score:I

    .line 81
    if-eqz p0, :cond_d

    move v6, v2

    :goto_c
    if-eqz p1, :cond_e

    move v0, v5

    :goto_d
    add-int/2addr v6, v0

    if-eqz p2, :cond_f

    move v0, v5

    :goto_e
    add-int/2addr v6, v0

    if-eqz p3, :cond_10

    const/4 v0, 0x4

    :goto_f
    add-int/2addr v0, v6

    sput v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->xh_ph_score:I

    .line 82
    if-eqz p0, :cond_11

    move v6, v4

    :goto_10
    if-eqz p1, :cond_12

    move v0, v2

    :goto_11
    add-int/2addr v6, v0

    if-eqz p2, :cond_13

    move v0, v4

    :goto_12
    add-int/2addr v6, v0

    if-eqz p3, :cond_14

    const/4 v0, 0x4

    :goto_13
    add-int/2addr v0, v6

    sput v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->xh_7i_score:I

    .line 83
    if-eqz p0, :cond_15

    :goto_14
    if-eqz p1, :cond_16

    move v0, v4

    :goto_15
    add-int/2addr v5, v0

    if-eqz p2, :cond_17

    move v0, v2

    :goto_16
    add-int/2addr v0, v5

    if-eqz p3, :cond_0

    const/4 v1, 0x4

    :cond_0
    add-int/2addr v0, v1

    sput v0, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->xh_pa_score:I

    .line 88
    sput-boolean v4, Lcom/jiliguala/niuwa/module/story/helpers/ImageSelectionHelper;->isSetUp:Z

    .line 89
    return-void

    :cond_1
    move v6, v3

    .line 78
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    goto :goto_3

    :cond_5
    move v6, v3

    .line 79
    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_5

    :cond_7
    move v0, v3

    goto :goto_6

    :cond_8
    const/4 v0, 0x4

    goto :goto_7

    :cond_9
    move v6, v3

    .line 80
    goto :goto_8

    :cond_a
    move v0, v3

    goto :goto_9

    :cond_b
    move v0, v3

    goto :goto_a

    :cond_c
    const/4 v0, 0x4

    goto :goto_b

    :cond_d
    move v6, v3

    .line 81
    goto :goto_c

    :cond_e
    move v0, v3

    goto :goto_d

    :cond_f
    move v0, v3

    goto :goto_e

    :cond_10
    move v0, v1

    goto :goto_f

    :cond_11
    move v6, v3

    .line 82
    goto :goto_10

    :cond_12
    move v0, v3

    goto :goto_11

    :cond_13
    move v0, v3

    goto :goto_12

    :cond_14
    move v0, v1

    goto :goto_13

    :cond_15
    move v5, v3

    .line 83
    goto :goto_14

    :cond_16
    move v0, v3

    goto :goto_15

    :cond_17
    move v0, v3

    goto :goto_16
.end method
