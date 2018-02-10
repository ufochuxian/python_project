.class public Lcom/jiliguala/niuwa/common/widget/TranslateImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Matrix;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->a:Landroid/graphics/Matrix;

    .line 50
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->getWidth()I

    move-result v5

    .line 54
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->getHeight()I

    move-result v1

    .line 55
    .local v1, "height":I
    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 62
    int-to-float v6, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 63
    .local v3, "scaleX":F
    int-to-float v6, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 64
    .local v4, "scaleY":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 65
    .local v2, "scale":F
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->c:F

    .line 66
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->d:F

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->d:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->f:F

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->c:F

    mul-float/2addr v6, v7

    int-to-float v7, v5

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->e:F

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 105
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 106
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->a:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->c:F

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->d:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 107
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->a:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->f:F

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "dx":F
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->g:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_0

    .line 110
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->e:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->b:F

    neg-float v3, v3

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->e:F

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->g:F

    div-float/2addr v4, v5

    mul-float v1, v3, v4

    .line 113
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 114
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 117
    .end local v1    # "dx":F
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    return-void

    .restart local v1    # "dx":F
    :cond_2
    move v1, v2

    .line 110
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 74
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->b()V

    .line 75
    return-void
.end method

.method public setCalculateX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->g:F

    .line 127
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->b()V

    .line 81
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->b()V

    .line 99
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->b()V

    .line 87
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 92
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->b()V

    .line 93
    return-void
.end method

.method public setTranslate(F)V
    .locals 0
    .param p1, "scrollX"    # F

    .prologue
    .line 121
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->b:F

    .line 122
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->invalidate()V

    .line 123
    return-void
.end method
