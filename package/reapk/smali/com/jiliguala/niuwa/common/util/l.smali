.class public Lcom/jiliguala/niuwa/common/util/l;
.super Lcom/bumptech/glide/load/resource/bitmap/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "pool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 48
    :goto_0
    return-object v3

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 31
    .local v4, "size":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v6, v8, 0x2

    .line 32
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v7, v8, 0x2

    .line 35
    .local v7, "y":I
    invoke-static {p1, v6, v7, v4, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 37
    .local v5, "squared":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, v4, v4, v8}, Lcom/bumptech/glide/load/engine/a/c;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 38
    .local v3, "result":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 39
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 42
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .local v1, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v5, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 45
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    int-to-float v8, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, v8, v9

    .line 47
    .local v2, "r":F
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p2, "toTransform"    # Landroid/graphics/Bitmap;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .prologue
    .line 24
    invoke-static {p1, p2}, Lcom/jiliguala/niuwa/common/util/l;->a(Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
