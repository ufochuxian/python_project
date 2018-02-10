.class public Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "RoundedImageView"

.field public static final b:F = 0.0f

.field public static final c:F = 0.0f

.field public static final d:Landroid/graphics/Shader$TileMode;

.field static final synthetic e:Z

.field private static final f:I = -0x2

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private final k:[F

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/content/res/ColorStateList;

.field private n:F

.field private o:Landroid/graphics/ColorFilter;

.field private p:Z

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Landroid/widget/ImageView$ScaleType;

.field private w:Landroid/graphics/Shader$TileMode;

.field private x:Landroid/graphics/Shader$TileMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    const-class v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->e:Z

    .line 42
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->j:[Landroid/widget/ImageView$ScaleType;

    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    .line 53
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->o:Landroid/graphics/ColorFilter;

    .line 56
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->p:Z

    .line 58
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->r:Z

    .line 59
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->s:Z

    .line 60
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->t:Z

    .line 62
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 64
    sget-object v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 68
    return-void

    .line 50
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct/range {p0 .. p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v12, 0x4

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    .line 53
    const/high16 v12, -0x1000000

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 54
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    .line 55
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->o:Landroid/graphics/ColorFilter;

    .line 56
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->p:Z

    .line 58
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->r:Z

    .line 59
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->s:Z

    .line 60
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->t:Z

    .line 62
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 63
    sget-object v12, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 64
    sget-object v12, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 77
    sget-object v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 79
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_android_scaleType:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 80
    .local v7, "index":I
    if-ltz v7, :cond_0

    .line 81
    sget-object v12, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->j:[Landroid/widget/ImageView$ScaleType;

    aget-object v12, v12, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    :goto_0
    sget v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_corner_radius:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    int-to-float v5, v12

    .line 89
    .local v5, "cornerRadiusOverride":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    const/4 v13, 0x0

    sget v14, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_corner_radius_top_left:I

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    const/4 v13, 0x1

    sget v14, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_corner_radius_top_right:I

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 93
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    const/4 v13, 0x2

    sget v14, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_corner_radius_bottom_right:I

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    const/4 v13, 0x3

    sget v14, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_corner_radius_bottom_left:I

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, "any":Z
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    array-length v8, v12

    .local v8, "len":I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aget v12, v12, v6

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    const/4 v13, 0x0

    aput v13, v12, v6

    .line 99
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 84
    .end local v4    # "any":Z
    .end local v5    # "cornerRadiusOverride":F
    .end local v6    # "i":I
    .end local v8    # "len":I
    :cond_0
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 103
    .restart local v4    # "any":Z
    .restart local v5    # "cornerRadiusOverride":F
    .restart local v6    # "i":I
    .restart local v8    # "len":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 107
    :cond_2
    if-nez v4, :cond_4

    .line 108
    const/4 v12, 0x0

    cmpg-float v12, v5, v12

    if-gez v12, :cond_3

    .line 109
    const/4 v5, 0x0

    .line 111
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    array-length v8, v12

    :goto_3
    if-ge v6, v8, :cond_4

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aput v5, v12, v6

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 116
    :cond_4
    sget v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_border_width:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    .line 117
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 118
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    .line 121
    :cond_5
    sget v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_border_color:I

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    if-nez v12, :cond_6

    .line 123
    const/high16 v12, -0x1000000

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 126
    :cond_6
    sget v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_mutate_background:I

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->t:Z

    .line 127
    sget v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_oval:I

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->s:Z

    .line 129
    sget v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_tile_mode:I

    const/4 v13, -0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 130
    .local v9, "tileMode":I
    const/4 v12, -0x2

    if-eq v9, v12, :cond_7

    .line 131
    invoke-static {v9}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 132
    invoke-static {v9}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 135
    :cond_7
    sget v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_tile_mode_x:I

    const/4 v13, -0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 136
    .local v10, "tileModeX":I
    const/4 v12, -0x2

    if-eq v10, v12, :cond_8

    .line 137
    invoke-static {v10}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 140
    :cond_8
    sget v12, Lcom/jiliguala/niuwa/dashedroundedimageview/d$l;->DashedRoundedImageView_driv_tile_mode_y:I

    const/4 v13, -0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 141
    .local v11, "tileModeY":I
    const/4 v12, -0x2

    if-eq v11, v12, :cond_9

    .line 142
    invoke-static {v11}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 145
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 146
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 147
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    return-void

    .line 50
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 299
    if-nez p1, :cond_1

    .line 322
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 303
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v3, p1, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    if-eqz v3, :cond_3

    move-object v3, p1

    .line 304
    check-cast v3, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/widget/ImageView$ScaleType;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    move-result-object v3

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->b(F)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/content/res/ColorStateList;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    move-result-object v3

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->s:Z

    .line 305
    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Z)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/graphics/Shader$TileMode;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->b(Landroid/graphics/Shader$TileMode;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    .line 307
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    if-eqz v3, :cond_2

    .line 308
    check-cast p1, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(FFFF)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    .line 314
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->e()V

    goto :goto_0

    .line 315
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 317
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 318
    .local v2, "ld":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .local v1, "layers":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 319
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    .prologue
    .line 151
    packed-switch p0, :pswitch_data_0

    .line 159
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 153
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 155
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 157
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Z)V
    .locals 1
    .param p1, "convert"    # Z

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->t:Z

    if-eqz v0, :cond_1

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_1
    return-void
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 236
    .local v2, "rsrc":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    .line 237
    const/4 v3, 0x0

    .line 251
    :goto_0
    return-object v3

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->u:I

    if-eqz v3, :cond_1

    .line 244
    :try_start_0
    iget v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->u:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RoundedImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    const/4 v3, 0x0

    iput v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->u:I

    goto :goto_1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 261
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->p:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->r:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->o:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 296
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1
    .param p1, "corner"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aget v0, v0, p1

    return v0
.end method

.method public a(FFFF)V
    .locals 5
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomLeft"    # F
    .param p4, "bottomRight"    # F

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aget v0, v0, v1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aget v0, v0, v2

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aget v0, v0, v3

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aget v0, v0, v4

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aput p1, v0, v1

    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aput p2, v0, v2

    .line 432
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aput p3, v0, v4

    .line 433
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aput p4, v0, v3

    .line 435
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 436
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public a(IF)V
    .locals 1
    .param p1, "corner"    # I
    .param p2, "radius"    # F

    .prologue
    .line 403
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aget v0, v0, p1

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    aput p2, v0, p1

    .line 408
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1
    .param p1, "corner"    # I
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/m;
        .end annotation
    .end param

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->a(IF)V

    .line 392
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "mutate"    # Z

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->t:Z

    if-ne v0, p1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->t:Z

    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 537
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->s:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->t:Z

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 166
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    .line 167
    return-void
.end method

.method public getBorderColor()I
    .locals 1
    .annotation build Landroid/support/annotation/k;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "maxRadius":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->k:[F

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 355
    .local v1, "r":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "r":F
    :cond_0
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    .line 328
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/k;
        .end annotation
    .end param

    .prologue
    .line 465
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    .line 466
    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    :goto_0
    return-void

    .line 473
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_1
    if-eqz p1, :cond_2

    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :goto_1
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 474
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 476
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    goto :goto_0

    .line 473
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_2
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 449
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 453
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->n:F

    .line 454
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 456
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/m;
        .end annotation
    .end param

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setBorderWidth(F)V

    .line 446
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->o:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->o:Landroid/graphics/ColorFilter;

    .line 276
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->r:Z

    .line 277
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->p:Z

    .line 278
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->e()V

    .line 279
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    .line 281
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 346
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->a(FFFF)V

    .line 347
    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/m;
        .end annotation
    .end param

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 379
    .local v0, "radius":F
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->a(FFFF)V

    .line 380
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->u:I

    .line 213
    invoke-static {p1}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/graphics/Bitmap;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->u:I

    .line 205
    invoke-static {p1}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 206
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 220
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->u:I

    if-eq v0, p1, :cond_0

    .line 221
    iput p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->u:I

    .line 222
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 231
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    return-void
.end method

.method public setOval(Z)V
    .locals 1
    .param p1, "oval"    # Z

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->s:Z

    .line 491
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 493
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    .line 494
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 176
    sget-boolean v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 179
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 181
    sget-object v0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    .line 200
    :cond_1
    return-void

    .line 189
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 543
    if-nez p1, :cond_1

    .line 544
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d()Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    .line 547
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->e()V

    .line 548
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e()Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    .line 554
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->e()V

    .line 555
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "tileModeX"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 506
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 508
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "tileModeY"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 520
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 521
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->d()V

    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->b(Z)V

    .line 523
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/DashedRoundedImageView;->invalidate()V

    goto :goto_0
.end method
