.class public Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;
.super Landroid/util/LruCache;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/k$b;
.implements Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatisticsProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/android/volley/toolbox/k$b;",
        "Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatisticsProvider;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->getBestCacheSize(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 17
    return-void
.end method

.method private static getBestCacheSize(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 22
    .local v0, "maxMemory":J
    const-wide/16 v2, 0xc

    div-long v2, v0, v2

    long-to-int v2, v2

    const/high16 v3, 0xa00000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .locals 6

    .prologue
    .line 42
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->maxSize()I

    move-result v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;-><init>(IJJ)V

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
