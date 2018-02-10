.class public Lcom/jiliguala/niuwa/common/widget/CircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final a:Landroid/widget/ImageView$ScaleType;

.field private static final b:Landroid/graphics/Bitmap$Config;

.field private static final c:I = 0x2

.field private static final d:I = 0x0

.field private static final e:I = -0x1000000

.field private static final f:Z


# instance fields
.field private final g:Landroid/graphics/RectF;

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/BitmapShader;

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:Landroid/graphics/ColorFilter;

.field private u:Z

.field private v:Z

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    .line 29
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->b:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->h:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->i:Landroid/graphics/Matrix;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->j:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->k:Landroid/graphics/Paint;

    .line 43
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->l:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    .line 63
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->b()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    .line 37
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->h:Landroid/graphics/RectF;

    .line 39
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->i:Landroid/graphics/Matrix;

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->j:Landroid/graphics/Paint;

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->k:Landroid/graphics/Paint;

    .line 43
    iput v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->l:I

    .line 44
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    .line 73
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    .line 76
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->l:I

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->w:Z

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->b()V

    .line 82
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 215
    if-nez p1, :cond_0

    move-object v0, v3

    .line 237
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 219
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 220
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 226
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v4, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 227
    const/4 v4, 0x2

    const/4 v5, 0x2

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 236
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    move-object v0, v3

    .line 237
    goto :goto_0

    .line 229
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->b:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->u:Z

    .line 88
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->v:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->c()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->v:Z

    .line 92
    :cond_0
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    .line 242
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->u:Z

    if-nez v0, :cond_1

    .line 243
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->v:Z

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->n:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->o:Landroid/graphics/BitmapShader;

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->o:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 257
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 258
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->q:I

    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->p:I

    .line 264
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->s:F

    .line 267
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 268
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->w:Z

    if-nez v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->r:F

    .line 273
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->d()V

    .line 274
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 282
    .local v1, "dy":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->i:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 284
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->p:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->q:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 285
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->q:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 286
    .local v2, "scale":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->p:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 292
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->i:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 293
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->i:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    add-float v5, v1, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 295
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->o:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->i:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 296
    return-void

    .line 288
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->p:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 289
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->q:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->w:Z

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->l:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->r:F

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 120
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->s:F

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 128
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->c()V

    .line 129
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "borderColor"    # I

    .prologue
    .line 136
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->l:I

    if-ne p1, v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->l:I

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1, "borderColorRes"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->setBorderColor(I)V

    .line 147
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1
    .param p1, "borderOverlay"    # Z

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->w:Z

    if-ne p1, v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->w:Z

    .line 172
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->c()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "borderWidth"    # I

    .prologue
    .line 154
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    if-ne p1, v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->m:I

    .line 159
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->c()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->t:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->t:Landroid/graphics/ColorFilter;

    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->t:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 211
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->n:Landroid/graphics/Bitmap;

    .line 179
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->c()V

    .line 180
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->n:Landroid/graphics/Bitmap;

    .line 186
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->c()V

    .line 187
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->n:Landroid/graphics/Bitmap;

    .line 193
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->c()V

    .line 194
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 199
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->n:Landroid/graphics/Bitmap;

    .line 200
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->c()V

    .line 201
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 101
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/CircleImageView;->a:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScaleType %s not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method
