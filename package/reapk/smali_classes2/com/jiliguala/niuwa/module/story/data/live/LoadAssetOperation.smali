.class public Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;
.super Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;",
        ">;"
    }
.end annotation


# instance fields
.field private mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private mLibrary:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;)Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;)Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;)Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mLibrary:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    return-object v0
.end method


# virtual methods
.method protected begin()V
    .locals 5

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getAssetCache()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 30
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getAssetStore()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 31
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getPreloadLibrary()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mLibrary:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 33
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getAsset()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    .line 36
    .local v0, "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mLibrary:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mLibrary:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    aput-object v4, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;-><init>(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;)V

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->onResult(Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getVolleyManager()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->getAudioRequestQueue()Lcom/android/volley/j;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/story/api/AssetRequest;

    new-instance v3, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;

    invoke-direct {v3, p0, v0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$1;-><init>(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V

    new-instance v4, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$2;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation$2;-><init>(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/jiliguala/niuwa/module/story/api/AssetRequest;-><init>(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 44
    invoke-virtual {v1, v2}, Lcom/android/volley/j;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public getAsset()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getParams()Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getAsset()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isExpired()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getAsset()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getAsset()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->mLibrary:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getAsset()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
