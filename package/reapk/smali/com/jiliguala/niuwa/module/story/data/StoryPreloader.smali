.class public Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;
    }
.end annotation


# instance fields
.field private mAllAudioPreloaded:Z

.field private final mArtworkManager:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

.field private mArtworkPreloadedCount:I

.field private mArtworkTotalCount:I

.field private mAudioFailedPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPreloadedPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPreloadingPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioTotalCount:I

.field private mListener:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;

.field private final mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

.field private final mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/MyApplication;Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;)V
    .locals 5
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;
    .param p2, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioPreloadingPages:Ljava/util/Set;

    .line 37
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioPreloadedPages:Ljava/util/Set;

    .line 38
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioFailedPages:Ljava/util/Set;

    .line 39
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAllAudioPreloaded:Z

    .line 42
    iget-object v2, p2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    .line 43
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mListener:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;

    .line 44
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/MyApplication;->getArtworkManager()Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkManager:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    .line 45
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/MyApplication;->getStoryAudioManager()Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .line 48
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkTotalCount:I

    .line 51
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->isSpreadLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkTotalCount:I

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPageCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkTotalCount:I

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getCover()Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioTotalCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioTotalCount:I

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPages()[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 60
    .local v0, "page":Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    iget v4, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioTotalCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioTotalCount:I

    .line 59
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "page":Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    :cond_3
    iget v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioTotalCount:I

    if-nez v1, :cond_4

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAllAudioPreloaded:Z

    .line 68
    :cond_4
    return-void
.end method


# virtual methods
.method public isAllAudioPreloaded()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAllAudioPreloaded:Z

    return v0
.end method

.method public isPageAudioFailed(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)Z
    .locals 1
    .param p1, "currentPage"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioFailedPages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPageAudioReady(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)Z
    .locals 1
    .param p1, "currentPage"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioPreloadedPages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onArtworkPreload()V
    .locals 4

    .prologue
    .line 111
    iget v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkPreloadedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkPreloadedCount:I

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mListener:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;

    iget v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkPreloadedCount:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkTotalCount:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;->onPreloadArtwork(IIZ)V

    .line 113
    return-void
.end method

.method public onStoryAudioPreload(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;Z)V
    .locals 3
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;
    .param p2, "success"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioPreloadingPages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 120
    if-eqz p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioPreloadedPages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mListener:Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioPreloadedPages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioTotalCount:I

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader$StoryPreloaderListener;->onPreloadAudio(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;IIZ)V

    .line 128
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioFailedPages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public preloadAllAudio()V
    .locals 4

    .prologue
    .line 82
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAllAudioPreloaded:Z

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getCover()Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->preloadAudio(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPages()[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 87
    .local v0, "storyPage":Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->preloadAudio(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public preloadArtwork()V
    .locals 6

    .prologue
    .line 71
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkManager:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getCoverArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->get(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;)V

    .line 72
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPages()[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 73
    .local v0, "storyPage":Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStory:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->isSpreadLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkManager:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    move-object v1, v0

    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->getLeftArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v1

    invoke-virtual {v5, v1, p0}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->get(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mArtworkManager:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->getArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v5

    invoke-virtual {v1, v5, p0}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->get(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;)V

    .line 72
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 79
    .end local v0    # "storyPage":Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    :cond_1
    return-void
.end method

.method public preloadAudio(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 1
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioPreloadedPages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mAudioPreloadingPages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryPreloader;->mStoryAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v0, p1, p0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->preload(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;)V

    .line 95
    :cond_0
    return-void
.end method
