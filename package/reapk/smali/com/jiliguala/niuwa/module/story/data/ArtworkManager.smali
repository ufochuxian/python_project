.class public Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private final mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/MyApplication;Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;)V
    .locals 0
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;
    .param p2, "cache"    # Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 23
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 24
    return-void
.end method


# virtual methods
.method public get(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;)V
    .locals 4
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "storyPreloader"    # Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getLiveDataManager()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    move-result-object v0

    const-class v1, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    invoke-direct {v2, p1}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager$1;

    invoke-direct {v3, p0, p2}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager$1;-><init>(Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->registerForLiveData(Ljava/lang/Class;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    .line 42
    return-void
.end method

.method public get(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V
    .locals 3
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/module/story/data/internal/Asset;",
            "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;",
            "Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "listener":Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;, "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener<Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getLiveDataManager()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    move-result-object v0

    const-class v1, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    invoke-direct {v2, p1}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, p2}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->registerForLiveData(Ljava/lang/Class;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    .line 46
    return-void
.end method
