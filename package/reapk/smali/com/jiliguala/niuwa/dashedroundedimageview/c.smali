.class public Lcom/jiliguala/niuwa/dashedroundedimageview/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "DashedRoundedDrawable"

.field public static final b:I = -0x1000000


# instance fields
.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Landroid/graphics/Paint;

.field private final h:I

.field private final i:I

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/RectF;

.field private final n:[Z

.field private o:Landroid/graphics/Shader$TileMode;

.field private p:Landroid/graphics/Shader$TileMode;

.field private q:Z

.field private r:F

.field private s:Z

.field private t:F

.field private u:Landroid/content/res/ColorStateList;

.field private v:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v5, -0x1000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m:Landroid/graphics/RectF;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    .line 62
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->o:Landroid/graphics/Shader$TileMode;

    .line 63
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->p:Landroid/graphics/Shader$TileMode;

    .line 64
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->q:Z

    .line 66
    iput v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->s:Z

    .line 68
    iput v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    .line 69
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->u:Landroid/content/res/ColorStateList;

    .line 70
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->v:Landroid/widget/ImageView$ScaleType;

    .line 73
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->f:Landroid/graphics/Bitmap;

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    .line 77
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->u:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    return-void

    .line 61
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 86
    :array_1
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 100
    if-eqz p0, :cond_0

    .line 101
    instance-of v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    if-eqz v5, :cond_1

    .line 122
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v0, "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 104
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v5, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_3

    move-object v3, p0

    .line 105
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 106
    .local v3, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 109
    .local v4, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 110
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-static {v1}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object p0, v3

    .line 113
    goto :goto_0

    .line 117
    .end local v2    # "i":I
    .end local v3    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "num":I
    :cond_3
    invoke-static {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 119
    new-instance p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    .line 93
    new-instance v0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 336
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    invoke-static {v5}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->b([Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 345
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget v1, v5, Landroid/graphics/RectF;->left:F

    .line 346
    .local v1, "left":F
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget v4, v5, Landroid/graphics/RectF;->top:F

    .line 347
    .local v4, "top":F
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float v3, v1, v5

    .line 348
    .local v3, "right":F
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float v0, v4, v5

    .line 349
    .local v0, "bottom":F
    iget v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    .line 351
    .local v2, "radius":F
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_2

    .line 352
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m:Landroid/graphics/RectF;

    add-float v6, v1, v2

    add-float v7, v4, v2

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 353
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 356
    :cond_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_3

    .line 357
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m:Landroid/graphics/RectF;

    sub-float v6, v3, v2

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 358
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 361
    :cond_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v6, 0x2

    aget-boolean v5, v5, v6

    if-nez v5, :cond_4

    .line 362
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m:Landroid/graphics/RectF;

    sub-float v6, v3, v2

    sub-float v7, v0, v2

    invoke-virtual {v5, v6, v7, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 363
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 366
    :cond_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v6, 0x3

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    .line 367
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m:Landroid/graphics/RectF;

    sub-float v6, v0, v2

    add-float v7, v1, v2

    invoke-virtual {v5, v1, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 368
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static a(I[Z)Z
    .locals 6
    .param p0, "index"    # I
    .param p1, "booleans"    # [Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 149
    aget-boolean v5, p1, v0

    if-ne v0, p0, :cond_0

    move v4, v3

    :goto_1
    if-eq v5, v4, :cond_1

    .line 153
    :goto_2
    return v2

    :cond_0
    move v4, v2

    .line 149
    goto :goto_1

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 153
    goto :goto_2
.end method

.method private static a([Z)Z
    .locals 4
    .param p0, "booleans"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 157
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-boolean v0, p0, v2

    .line 158
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 159
    const/4 v1, 0x1

    .line 162
    .end local v0    # "b":Z
    :cond_0
    return v1

    .line 157
    .restart local v0    # "b":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x2

    .line 126
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 127
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v3, "height":I
    .local v4, "width":I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 131
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 132
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 134
    .restart local v3    # "height":I
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const-string v5, "DashedRoundedDrawable"

    const-string v6, "Failed to create bitmap from drawable!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    invoke-static {v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->b([Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->left:F

    .line 383
    .local v10, "left":F
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 384
    .local v2, "top":F
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float v13, v10, v0

    .line 385
    .local v13, "right":F
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float v9, v2, v0

    .line 386
    .local v9, "bottom":F
    iget v12, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    .line 387
    .local v12, "radius":F
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 389
    .local v11, "offset":F
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    .line 390
    sub-float v1, v10, v11

    add-float v3, v10, v12

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 391
    sub-float v5, v2, v11

    add-float v7, v2, v12

    iget-object v8, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v10

    move v6, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_3

    .line 395
    sub-float v0, v13, v12

    sub-float v1, v0, v11

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v13

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 396
    sub-float v5, v2, v11

    add-float v7, v2, v12

    iget-object v8, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v13

    move v6, v13

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-nez v0, :cond_4

    .line 400
    sub-float v0, v13, v12

    sub-float v4, v0, v11

    add-float v6, v13, v11

    iget-object v8, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 401
    sub-float v5, v9, v12

    iget-object v8, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v13

    move v6, v13

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 404
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 405
    sub-float v4, v10, v11

    add-float v6, v10, v12

    iget-object v8, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    sub-float v5, v9, v12

    iget-object v8, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v10

    move v6, v10

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private static b([Z)Z
    .locals 4
    .param p0, "booleans"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 166
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v0, p0, v2

    .line 167
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 171
    .end local v0    # "b":Z
    :goto_1
    return v1

    .line 166
    .restart local v0    # "b":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "b":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private m()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x40000000    # 2.0f

    .line 199
    sget-object v3, Lcom/jiliguala/niuwa/dashedroundedimageview/c$1;->a:[I

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->v:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 253
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 254
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 255
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 256
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 257
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 284
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 285
    return-void

    .line 201
    :pswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 202
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 204
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 205
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    .line 206
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    add-float/2addr v5, v8

    float-to-int v5, v5

    int-to-float v5, v5

    .line 205
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 211
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 213
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 218
    .local v1, "dy":F
    iget v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 220
    .local v2, "scale":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v8

    .line 226
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 227
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    add-float v4, v0, v8

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    add-float v5, v1, v8

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 222
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 223
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v8

    goto :goto_1

    .line 231
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 233
    iget v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 234
    const/high16 v2, 0x3f800000    # 1.0f

    .line 239
    .restart local v2    # "scale":F
    :goto_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v8

    float-to-int v3, v3

    int-to-float v0, v3

    .line 240
    .restart local v0    # "dx":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v8

    float-to-int v3, v3

    int-to-float v1, v3

    .line 242
    .restart local v1    # "dy":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 243
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 245
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 246
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 247
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 248
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 236
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .restart local v2    # "scale":F
    goto :goto_2

    .line 261
    .end local v2    # "scale":F
    :pswitch_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 262
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 263
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 264
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 265
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 269
    :pswitch_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 270
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 271
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 272
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 273
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 277
    :pswitch_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 278
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v4, v7

    iget v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 279
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 280
    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(I)F
    .locals 1
    .param p1, "corner"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(F)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 474
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(FFFF)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    .line 475
    return-object p0
.end method

.method public a(FFFF)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 8
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomRight"    # F
    .param p4, "bottomLeft"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 530
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 531
    .local v1, "radiusSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Float;>;"
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 538
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 539
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Multiple nonzero corner radii not yet supported."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 542
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 543
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 544
    .local v0, "radius":F
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    cmpg-float v2, v0, v7

    if-gez v2, :cond_2

    .line 545
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid radius value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 547
    :cond_2
    iput v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    .line 552
    .end local v0    # "radius":F
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    cmpl-float v2, p1, v7

    if-lez v2, :cond_4

    move v2, v3

    :goto_1
    aput-boolean v2, v5, v4

    .line 553
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    cmpl-float v2, p2, v7

    if-lez v2, :cond_5

    move v2, v3

    :goto_2
    aput-boolean v2, v5, v3

    .line 554
    iget-object v5, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v6, 0x2

    cmpl-float v2, p3, v7

    if-lez v2, :cond_6

    move v2, v3

    :goto_3
    aput-boolean v2, v5, v6

    .line 555
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v5, 0x3

    cmpl-float v6, p4, v7

    if-lez v6, :cond_7

    :goto_4
    aput-boolean v3, v2, v5

    .line 556
    return-object p0

    .line 549
    :cond_3
    iput v7, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    goto :goto_0

    :cond_4
    move v2, v4

    .line 552
    goto :goto_1

    :cond_5
    move v2, v4

    .line 553
    goto :goto_2

    :cond_6
    move v2, v4

    .line 554
    goto :goto_3

    :cond_7
    move v3, v4

    .line 555
    goto :goto_4
.end method

.method public a(IF)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 2
    .param p1, "corner"    # I
    .param p2, "radius"    # F

    .prologue
    const/4 v1, 0x0

    .line 497
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multiple nonzero corner radii not yet supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    cmpl-float v0, p2, v1

    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(I[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iput v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 513
    :goto_0
    return-object p0

    .line 507
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 508
    iput p2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    goto :goto_0
.end method

.method public a(Landroid/content/res/ColorStateList;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 4
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 584
    if-eqz p1, :cond_0

    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :goto_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->u:Landroid/content/res/ColorStateList;

    .line 585
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->u:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->getState()[I

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 586
    return-object p0

    .line 584
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Landroid/graphics/Shader$TileMode;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 1
    .param p1, "tileModeX"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->o:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 627
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->o:Landroid/graphics/Shader$TileMode;

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->q:Z

    .line 629
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->invalidateSelf()V

    .line 631
    :cond_0
    return-object p0
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 611
    if-nez p1, :cond_0

    .line 612
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->v:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 615
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->v:Landroid/widget/ImageView$ScaleType;

    .line 616
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m()V

    .line 618
    :cond_1
    return-object p0
.end method

.method public a(Z)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 0
    .param p1, "oval"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->s:Z

    .line 603
    return-object p0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    return v0
.end method

.method public b(F)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 564
    iput p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    .line 565
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 566
    return-object p0
.end method

.method public b(I)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/k;
        .end annotation
    .end param

    .prologue
    .line 590
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/content/res/ColorStateList;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/Shader$TileMode;)Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 1
    .param p1, "tileModeY"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->p:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 640
    iput-object p1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->p:Landroid/graphics/Shader$TileMode;

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->q:Z

    .line 642
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->invalidateSelf()V

    .line 644
    :cond_0
    return-object p0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    return v0
.end method

.method public d()Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 4

    .prologue
    .line 570
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 571
    return-object p0

    .line 570
    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 298
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->q:Z

    if-eqz v2, :cond_1

    .line 299
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->f:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->o:Landroid/graphics/Shader$TileMode;

    iget-object v4, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->p:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 300
    .local v0, "bitmapShader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->o:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->p:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v2, v3, :cond_0

    .line 301
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 304
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->q:Z

    .line 307
    .end local v0    # "bitmapShader":Landroid/graphics/BitmapShader;
    :cond_1
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->s:Z

    if-eqz v2, :cond_4

    .line 308
    iget v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 309
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 310
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 333
    :cond_2
    :goto_0
    return-void

    .line 312
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 315
    :cond_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->n:[Z

    invoke-static {v2}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a([Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 316
    iget v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->r:F

    .line 317
    .local v1, "radius":F
    iget v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    .line 318
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 319
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 323
    :cond_5
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 327
    .end local v1    # "radius":F
    :cond_6
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->d:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 328
    iget v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->t:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 329
    iget-object v2, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->j:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public e()Lcom/jiliguala/niuwa/dashedroundedimageview/c;
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 576
    return-object p0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->u:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public g()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->u:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->i:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->h:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, -0x3

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->s:Z

    return v0
.end method

.method public i()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->v:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->u:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method public j()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->o:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public k()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->p:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public l()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 648
    invoke-static {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 293
    invoke-direct {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->m()V

    .line 294
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 185
    iget-object v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->u:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 186
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    const/4 v1, 0x1

    .line 190
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 423
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->invalidateSelf()V

    .line 424
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 434
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->invalidateSelf()V

    .line 435
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->invalidateSelf()V

    .line 441
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 445
    iget-object v0, p0, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/dashedroundedimageview/c;->invalidateSelf()V

    .line 447
    return-void
.end method
