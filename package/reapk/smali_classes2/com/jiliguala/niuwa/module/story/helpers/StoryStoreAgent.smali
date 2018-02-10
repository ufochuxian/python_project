.class public Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;",
        "Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;",
        ">;"
    }
.end annotation


# instance fields
.field private mFailed:Z

.field private final mFailureCallback:Ljava/lang/Runnable;
    .annotation build Lorg/b/a/e;
    .end annotation
.end field

.field private final mLiveDataManager:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

.field private final mOfflineManager:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

.field private final mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private final mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;Lcom/jiliguala/niuwa/module/story/data/OfflineManager;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    .param p2, "store"    # Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .param p3, "liveDataManager"    # Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;
    .param p4, "offlineManager"    # Lcom/jiliguala/niuwa/module/story/data/OfflineManager;
    .param p5, "failureCallback"    # Ljava/lang/Runnable;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mFailed:Z

    .line 37
    iget-object v0, p1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    .line 38
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 39
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mLiveDataManager:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    .line 40
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mOfflineManager:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    .line 41
    iput-object p5, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mFailureCallback:Ljava/lang/Runnable;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLiveDataFailed(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mFailed:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mFailed:Z

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mOfflineManager:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStories()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mOfflineManager:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getFile(Lcom/jiliguala/niuwa/module/story/data/json/Story;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mFailureCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mFailureCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    :cond_0
    return-void
.end method

.method public bridge synthetic onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    check-cast p2, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;)V

    return-void
.end method

.method public onLiveDataReady(Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;)V
    .locals 3
    .param p1, "op"    # Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;
    .param p2, "result"    # Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;->getAsset()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/cache/DeferredAsset;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->putBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[B)V

    .line 74
    return-void
.end method

.method public store()V
    .locals 5

    .prologue
    .line 45
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mOfflineManager:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getFile(Lcom/jiliguala/niuwa/module/story/data/json/Story;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/story/helpers/FileHelper;->writeString(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getAllAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .line 48
    .local v0, "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mLiveDataManager:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    const-class v3, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    new-instance v4, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    invoke-direct {v4, v0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4, p0}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->registerForLiveData(Ljava/lang/Class;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    goto :goto_0

    .line 50
    .end local v0    # "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    :cond_0
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    .line 61
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mOfflineManager:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getFile(Lcom/jiliguala/niuwa/module/story/data/json/Story;)Ljava/io/File;

    move-result-object v0

    .line 62
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 64
    .local v2, "lastModified":J
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/helpers/FileHelper;->writeString(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 68
    .end local v2    # "lastModified":J
    :cond_0
    return-void
.end method
