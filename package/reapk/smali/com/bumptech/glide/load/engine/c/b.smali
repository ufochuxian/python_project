.class public final Lcom/bumptech/glide/load/engine/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/b/i;

.field private final b:Lcom/bumptech/glide/load/engine/a/c;

.field private final c:Lcom/bumptech/glide/load/DecodeFormat;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/bumptech/glide/load/engine/c/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2
    .param p1, "memoryCache"    # Lcom/bumptech/glide/load/engine/b/i;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .param p3, "defaultFormat"    # Lcom/bumptech/glide/load/DecodeFormat;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c/b;->d:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c/b;->a:Lcom/bumptech/glide/load/engine/b/i;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c/b;->b:Lcom/bumptech/glide/load/engine/a/c;

    .line 31
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/c/b;->c:Lcom/bumptech/glide/load/DecodeFormat;

    .line 32
    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/engine/c/d;)I
    .locals 3
    .param p0, "size"    # Lcom/bumptech/glide/load/engine/c/d;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/c/d;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/c/d;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/c/d;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/i/i;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method


# virtual methods
.method a([Lcom/bumptech/glide/load/engine/c/d;)Lcom/bumptech/glide/load/engine/c/c;
    .locals 13
    .param p1, "preFillSizes"    # [Lcom/bumptech/glide/load/engine/c/d;

    .prologue
    .line 58
    iget-object v11, p0, Lcom/bumptech/glide/load/engine/c/b;->a:Lcom/bumptech/glide/load/engine/b/i;

    invoke-interface {v11}, Lcom/bumptech/glide/load/engine/b/i;->b()I

    move-result v11

    iget-object v12, p0, Lcom/bumptech/glide/load/engine/c/b;->a:Lcom/bumptech/glide/load/engine/b/i;

    invoke-interface {v12}, Lcom/bumptech/glide/load/engine/b/i;->a()I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/bumptech/glide/load/engine/c/b;->b:Lcom/bumptech/glide/load/engine/a/c;

    invoke-interface {v12}, Lcom/bumptech/glide/load/engine/a/c;->a()I

    move-result v12

    add-int v8, v11, v12

    .line 60
    .local v8, "maxSize":I
    const/4 v10, 0x0

    .line 61
    .local v10, "totalWeight":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/bumptech/glide/load/engine/c/d;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v9, v0, v6

    .line 62
    .local v9, "size":Lcom/bumptech/glide/load/engine/c/d;
    invoke-virtual {v9}, Lcom/bumptech/glide/load/engine/c/d;->d()I

    move-result v11

    add-int/2addr v10, v11

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    .end local v9    # "size":Lcom/bumptech/glide/load/engine/c/d;
    :cond_0
    int-to-float v11, v8

    int-to-float v12, v10

    div-float v5, v11, v12

    .line 67
    .local v5, "bytesPerWeight":F
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v1, "attributeToCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/engine/c/d;Ljava/lang/Integer;>;"
    move-object v0, p1

    array-length v7, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v9, v0, v6

    .line 69
    .restart local v9    # "size":Lcom/bumptech/glide/load/engine/c/d;
    invoke-virtual {v9}, Lcom/bumptech/glide/load/engine/c/d;->d()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 70
    .local v3, "bytesForSize":I
    invoke-static {v9}, Lcom/bumptech/glide/load/engine/c/b;->a(Lcom/bumptech/glide/load/engine/c/d;)I

    move-result v4

    .line 71
    .local v4, "bytesPerBitmap":I
    div-int v2, v3, v4

    .line 72
    .local v2, "bitmapsForSize":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 75
    .end local v2    # "bitmapsForSize":I
    .end local v3    # "bytesForSize":I
    .end local v4    # "bytesPerBitmap":I
    .end local v9    # "size":Lcom/bumptech/glide/load/engine/c/d;
    :cond_1
    new-instance v11, Lcom/bumptech/glide/load/engine/c/c;

    invoke-direct {v11, v1}, Lcom/bumptech/glide/load/engine/c/c;-><init>(Ljava/util/Map;)V

    return-object v11
.end method

.method public varargs a([Lcom/bumptech/glide/load/engine/c/d$a;)V
    .locals 7
    .param p1, "bitmapAttributeBuilders"    # [Lcom/bumptech/glide/load/engine/c/d$a;

    .prologue
    .line 36
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/b;->e:Lcom/bumptech/glide/load/engine/c/a;

    if-eqz v4, :cond_0

    .line 37
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/b;->e:Lcom/bumptech/glide/load/engine/c/a;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/c/a;->a()V

    .line 40
    :cond_0
    array-length v4, p1

    new-array v1, v4, [Lcom/bumptech/glide/load/engine/c/d;

    .line 41
    .local v1, "bitmapAttributes":[Lcom/bumptech/glide/load/engine/c/d;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 42
    aget-object v2, p1, v3

    .line 43
    .local v2, "builder":Lcom/bumptech/glide/load/engine/c/d$a;
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d$a;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-nez v4, :cond_2

    .line 44
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/b;->c:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v5, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/b;->c:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v5, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v4, v5, :cond_3

    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/load/engine/c/d$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/c/d$a;

    .line 48
    :cond_2
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/c/d$a;->b()Lcom/bumptech/glide/load/engine/c/d;

    move-result-object v4

    aput-object v4, v1, v3

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 51
    .end local v2    # "builder":Lcom/bumptech/glide/load/engine/c/d$a;
    :cond_4
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/c/b;->a([Lcom/bumptech/glide/load/engine/c/d;)Lcom/bumptech/glide/load/engine/c/c;

    move-result-object v0

    .line 52
    .local v0, "allocationOrder":Lcom/bumptech/glide/load/engine/c/c;
    new-instance v4, Lcom/bumptech/glide/load/engine/c/a;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/c/b;->b:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/c/b;->a:Lcom/bumptech/glide/load/engine/b/i;

    invoke-direct {v4, v5, v6, v0}, Lcom/bumptech/glide/load/engine/c/a;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/c/c;)V

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/c/b;->e:Lcom/bumptech/glide/load/engine/c/a;

    .line 53
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c/b;->d:Landroid/os/Handler;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/c/b;->e:Lcom/bumptech/glide/load/engine/c/a;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method
