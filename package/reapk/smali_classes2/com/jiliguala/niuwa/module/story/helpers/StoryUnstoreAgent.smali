.class public Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private final mOfflineManager:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

.field private final mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private final mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/data/json/Story;Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;Lcom/jiliguala/niuwa/module/story/data/OfflineManager;)V
    .locals 0
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/Story;
    .param p2, "store"    # Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .param p3, "cache"    # Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .param p4, "offlineManager"    # Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    .line 26
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 27
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 28
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mOfflineManager:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    .line 29
    return-void
.end method


# virtual methods
.method public unstore()V
    .locals 4

    .prologue
    .line 32
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getAllAssets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .line 33
    .local v0, "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-interface {v3, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-interface {v3, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->getBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)[B

    move-result-object v1

    .line 37
    .local v1, "bytes":[B
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-interface {v3, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->remove(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V

    .line 39
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-interface {v3, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->putBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[B)V

    goto :goto_0

    .line 44
    .end local v0    # "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .end local v1    # "bytes":[B
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mOfflineManager:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getFile(Lcom/jiliguala/niuwa/module/story/data/json/Story;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 45
    return-void
.end method
