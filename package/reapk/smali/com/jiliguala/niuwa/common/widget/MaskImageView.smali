.class public Lcom/jiliguala/niuwa/common/widget/MaskImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/jiliguala/niuwa/common/widget/RoundRecyclingImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget-object v2, Lcom/jiliguala/niuwa/R$styleable;->MaskImageVIew:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 43
    .local v1, "maskDr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 44
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "maskDr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->b:Landroid/graphics/Bitmap;

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 100
    if-eqz p1, :cond_0

    move-object v9, p1

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_1

    .line 101
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :goto_0
    return-void

    :cond_1
    move-object v9, p1

    .line 105
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 107
    .local v3, "original":Landroid/graphics/Bitmap;
    if-nez v3, :cond_2

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 112
    .local v8, "width":I
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 113
    .local v1, "height":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 114
    .local v5, "original_w":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 117
    .local v4, "original_h":I
    if-ne v8, v5, :cond_3

    if-eq v4, v1, :cond_5

    .line 118
    :cond_3
    const/4 v9, 0x0

    invoke-static {v3, v8, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    .local v2, "origin_New":Landroid/graphics/Bitmap;
    if-eq v2, v3, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 120
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_4
    move-object v3, v2

    .line 125
    .end local v2    # "origin_New":Landroid/graphics/Bitmap;
    :cond_5
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 126
    .local v7, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 128
    const-string v9, "#00fff000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 130
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 131
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 136
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v9, v11, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    invoke-virtual {v0, v3, v11, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 142
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p1, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 145
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "isDisplayed"    # Z

    .prologue
    .line 55
    instance-of v3, p0, Lcom/jiliguala/niuwa/logic/image/c;

    if-eqz v3, :cond_1

    .line 57
    check-cast p0, Lcom/jiliguala/niuwa/logic/image/c;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/image/c;->a(Z)V

    .line 65
    :cond_0
    return-void

    .line 58
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v3, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 60
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 61
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 62
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 76
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    .local v0, "previousDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 91
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 94
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/MaskImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 96
    return-void
.end method
