.class public Lcom/nostra13/universalimageloader/core/b/b$a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:F

.field protected final b:Landroid/graphics/RectF;

.field protected final c:Landroid/graphics/RectF;

.field protected final d:Landroid/graphics/BitmapShader;

.field protected final e:Landroid/graphics/Paint;

.field protected final f:Landroid/graphics/Paint;

.field protected final g:F

.field protected h:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;F)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "strokeColor"    # Ljava/lang/Integer;
    .param p3, "strokeWidth"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 84
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->b:Landroid/graphics/RectF;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->a:F

    .line 87
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->d:Landroid/graphics/BitmapShader;

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->c:Landroid/graphics/RectF;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->e:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->d:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 94
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 96
    if-nez p2, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->f:Landroid/graphics/Paint;

    .line 105
    :goto_0
    iput p3, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->g:F

    .line 106
    iget v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p3, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->h:F

    .line 107
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->f:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->f:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 124
    iget v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->a:F

    iget v1, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->a:F

    iget v2, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->a:F

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->f:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 126
    iget v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->a:F

    iget v1, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->a:F

    iget v2, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->h:F

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 112
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->a:F

    .line 114
    iget v1, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->a:F

    iget v2, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->g:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->h:F

    .line 117
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 118
    .local v0, "shaderMatrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->b:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 119
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->d:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 120
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/b$a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 143
    return-void
.end method
