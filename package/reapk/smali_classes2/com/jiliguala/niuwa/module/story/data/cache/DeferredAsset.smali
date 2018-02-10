.class public Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$QuarterBitmapOOMError;,
        Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$HalfBitmapOOMError;,
        Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$FullBitmapOOMError;,
        Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset$BitmapOOMError;
    }
.end annotation


# instance fields
.field private final mAsset:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

.field private final mCaches:[Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;


# direct methods
.method public varargs constructor <init>(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;)V
    .locals 0
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "caches"    # [Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mAsset:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .line 36
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mCaches:[Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 37
    return-void
.end method


# virtual methods
.method protected decodeBitmap(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "divisor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 41
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mCaches:[Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 42
    .local v0, "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mAsset:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    invoke-interface {v0, v4}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mAsset:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    invoke-interface {v0, v1, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->getBitmap(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47
    .end local v0    # "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :goto_1
    return-object v1

    .line 41
    .restart local v0    # "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final get()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->decodeBitmap(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 63
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->decodeBitmap(I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 68
    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->decodeBitmap(I)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_2
    move-exception v0

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final get(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "divisor"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->decodeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBytes()[B
    .locals 5
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 77
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mCaches:[Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 78
    .local v0, "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mAsset:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    invoke-interface {v0, v4}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mAsset:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->getBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)[B

    move-result-object v1

    .line 83
    .end local v0    # "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :goto_1
    return-object v1

    .line 77
    .restart local v0    # "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mCaches:[Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 88
    .local v0, "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->mAsset:Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    invoke-interface {v0, v5}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    const/4 v1, 0x1

    .line 93
    .end local v0    # "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :cond_0
    return v1

    .line 87
    .restart local v0    # "cache":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
