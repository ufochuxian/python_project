.class public Lcom/makeramen/roundedimageview/RoundedImageView;
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
    const-class v0, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Z

    .line 48
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    .line 49
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

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->j:[Landroid/widget/ImageView$ScaleType;

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

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    .line 64
    const/high16 v0, -0x1000000

    .line 65
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    .line 68
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Z

    .line 70
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Z

    .line 71
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->s:Z

    .line 72
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->t:Z

    .line 74
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 75
    sget-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 76
    sget-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 80
    return-void

    .line 60
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
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct/range {p0 .. p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v12, 0x4

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    .line 64
    const/high16 v12, -0x1000000

    .line 65
    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 66
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    .line 67
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    .line 68
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Z

    .line 70
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Z

    .line 71
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->s:Z

    .line 72
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->t:Z

    .line 74
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 75
    sget-object v12, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 76
    sget-object v12, Lcom/makeramen/roundedimageview/RoundedImageView;->d:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 89
    sget-object v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 91
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_android_scaleType:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 92
    .local v7, "index":I
    if-ltz v7, :cond_0

    .line 93
    sget-object v12, Lcom/makeramen/roundedimageview/RoundedImageView;->j:[Landroid/widget/ImageView$ScaleType;

    aget-object v12, v12, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    :goto_0
    sget v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_corner_radius:I

    const/4 v13, -0x1

    .line 100
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    int-to-float v5, v12

    .line 102
    .local v5, "cornerRadiusOverride":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    const/4 v13, 0x0

    sget v14, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_corner_radius_top_left:I

    const/4 v15, -0x1

    .line 103
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    const/4 v13, 0x1

    sget v14, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_corner_radius_top_right:I

    const/4 v15, -0x1

    .line 105
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    const/4 v13, 0x2

    sget v14, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_corner_radius_bottom_right:I

    const/4 v15, -0x1

    .line 107
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    const/4 v13, 0x3

    sget v14, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_corner_radius_bottom_left:I

    const/4 v15, -0x1

    .line 109
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, "any":Z
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    array-length v8, v12

    .local v8, "len":I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aget v12, v12, v6

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    const/4 v13, 0x0

    aput v13, v12, v6

    .line 112
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 96
    .end local v4    # "any":Z
    .end local v5    # "cornerRadiusOverride":F
    .end local v6    # "i":I
    .end local v8    # "len":I
    :cond_0
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 116
    .restart local v4    # "any":Z
    .restart local v5    # "cornerRadiusOverride":F
    .restart local v6    # "i":I
    .restart local v8    # "len":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 120
    :cond_2
    if-nez v4, :cond_4

    .line 121
    const/4 v12, 0x0

    cmpg-float v12, v5, v12

    if-gez v12, :cond_3

    .line 122
    const/4 v5, 0x0

    .line 124
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    array-length v8, v12

    :goto_3
    if-ge v6, v8, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aput v5, v12, v6

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 129
    :cond_4
    sget v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_border_width:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    .line 130
    move-object/from16 v0, p0

    iget v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 131
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    .line 134
    :cond_5
    sget v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_border_color:I

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    if-nez v12, :cond_6

    .line 136
    const/high16 v12, -0x1000000

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 139
    :cond_6
    sget v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_mutate_background:I

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->t:Z

    .line 140
    sget v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_oval:I

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->s:Z

    .line 142
    sget v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_tile_mode:I

    const/4 v13, -0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 143
    .local v9, "tileMode":I
    const/4 v12, -0x2

    if-eq v9, v12, :cond_7

    .line 144
    invoke-static {v9}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 145
    invoke-static {v9}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 148
    :cond_7
    sget v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_tile_mode_x:I

    const/4 v13, -0x2

    .line 149
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 150
    .local v10, "tileModeX":I
    const/4 v12, -0x2

    if-eq v10, v12, :cond_8

    .line 151
    invoke-static {v10}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 154
    :cond_8
    sget v12, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView_riv_tile_mode_y:I

    const/4 v13, -0x2

    .line 155
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 156
    .local v11, "tileModeY":I
    const/4 v12, -0x2

    if-eq v11, v12, :cond_9

    .line 157
    invoke-static {v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 160
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 161
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 163
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    return-void

    .line 60
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
    .line 311
    if-nez p1, :cond_1

    .line 338
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v3, p1, Lcom/makeramen/roundedimageview/d;

    if-eqz v3, :cond_3

    move-object v3, p1

    .line 314
    check-cast v3, Lcom/makeramen/roundedimageview/d;

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 315
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/d;->a(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/d;

    move-result-object v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    .line 316
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/d;->b(F)Lcom/makeramen/roundedimageview/d;

    move-result-object v3

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 317
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/d;->a(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/d;

    move-result-object v3

    iget-boolean v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->s:Z

    .line 318
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/d;->a(Z)Lcom/makeramen/roundedimageview/d;

    move-result-object v3

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 319
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/d;->a(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/d;

    move-result-object v3

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 320
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/d;->b(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/d;

    .line 322
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    if-eqz v3, :cond_2

    .line 323
    check-cast p1, Lcom/makeramen/roundedimageview/d;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/makeramen/roundedimageview/d;->a(FFFF)Lcom/makeramen/roundedimageview/d;

    .line 330
    :cond_2
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->e()V

    goto :goto_0

    .line 331
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 333
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 334
    .local v2, "ld":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .local v1, "layers":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 335
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    .prologue
    .line 167
    packed-switch p0, :pswitch_data_0

    .line 175
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 171
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 173
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 167
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
    .line 277
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->t:Z

    if-eqz v0, :cond_1

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/makeramen/roundedimageview/d;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 283
    :cond_1
    return-void
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 251
    .local v2, "rsrc":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 264
    :goto_0
    return-object v3

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 255
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->u:I

    if-eqz v3, :cond_1

    .line 257
    :try_start_0
    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->u:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 264
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/makeramen/roundedimageview/d;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RoundedImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    const/4 v3, 0x0

    iput v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->u:I

    goto :goto_1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 274
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1
    .param p1, "corner"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

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

    .line 432
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aget v0, v0, v1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aget v0, v0, v2

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aget v0, v0, v3

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aget v0, v0, v4

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aput p1, v0, v1

    .line 440
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aput p2, v0, v2

    .line 441
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aput p3, v0, v4

    .line 442
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aput p4, v0, v3

    .line 444
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 445
    invoke-direct {p0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public a(IF)V
    .locals 1
    .param p1, "corner"    # I
    .param p2, "radius"    # F

    .prologue
    .line 412
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aget v0, v0, p1

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    aput p2, v0, p1

    .line 417
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 419
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

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
    .line 393
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(IF)V

    .line 394
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "mutate"    # Z

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->t:Z

    if-ne v0, p1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->t:Z

    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 537
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->s:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->t:Z

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 182
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    .line 183
    return-void
.end method

.method public getBorderColor()I
    .locals 1
    .annotation build Landroid/support/annotation/k;
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "maxRadius":F
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->k:[F

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 361
    .local v1, "r":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "r":F
    :cond_0
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    .line 344
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 345
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->l:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/k;
        .end annotation
    .end param

    .prologue
    .line 472
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    .line 473
    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    :goto_0
    return-void

    .line 482
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_1
    if-eqz p1, :cond_2

    .line 483
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :goto_1
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->m:Landroid/content/res/ColorStateList;

    .line 484
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 486
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0

    .line 482
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_2
    const/high16 v0, -0x1000000

    .line 483
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 458
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 460
    :cond_0
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->n:F

    .line 461
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 462
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 463
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/m;
        .end annotation
    .end param

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderWidth(F)V

    .line 455
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v1, 0x1

    .line 286
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 287
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->o:Landroid/graphics/ColorFilter;

    .line 288
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->r:Z

    .line 289
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->p:Z

    .line 290
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->e()V

    .line 291
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    .line 293
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 402
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(FFFF)V

    .line 403
    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/m;
        .end annotation
    .end param

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 383
    .local v0, "radius":F
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->a(FFFF)V

    .line 384
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->u:I

    .line 229
    invoke-static {p1}, Lcom/makeramen/roundedimageview/d;->a(Landroid/graphics/Bitmap;)Lcom/makeramen/roundedimageview/d;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 230
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 231
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->u:I

    .line 221
    invoke-static {p1}, Lcom/makeramen/roundedimageview/d;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 222
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 223
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 236
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->u:I

    if-eq v0, p1, :cond_0

    .line 237
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->u:I

    .line 238
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 240
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 246
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    return-void
.end method

.method public setOval(Z)V
    .locals 1
    .param p1, "oval"    # Z

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->s:Z

    .line 497
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 499
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    .line 500
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 192
    sget-boolean v0, Lcom/makeramen/roundedimageview/RoundedImageView;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 195
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->v:Landroid/widget/ImageView$ScaleType;

    .line 197
    sget-object v0, Lcom/makeramen/roundedimageview/RoundedImageView$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 208
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 212
    :goto_0
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    .line 216
    :cond_1
    return-void

    .line 205
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 197
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

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "tileModeX"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 513
    :goto_0
    return-void

    .line 509
    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->w:Landroid/graphics/Shader$TileMode;

    .line 510
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 512
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "tileModeY"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 522
    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->x:Landroid/graphics/Shader$TileMode;

    .line 523
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->d()V

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->b(Z)V

    .line 525
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method
