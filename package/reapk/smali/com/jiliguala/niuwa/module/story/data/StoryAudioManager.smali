.class public Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;,
        Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private cancelled:Z

.field private volatile mAudioLag:D

.field private volatile mAudioStartTime:J

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLiveDataManager:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private volatile mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

.field private final mSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/helpers/ListenerHelper;->newListenerSet(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    .line 52
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mAudioLag:D

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mSources:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mSources:Ljava/util/List;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/MyApplication;->getAssetCache()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mSources:Ljava/util/List;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/MyApplication;->getAssetStore()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mSources:Ljava/util/List;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/MyApplication;->getPreloadLibrary()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/MyApplication;->getLiveDataManager()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mLiveDataManager:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->cancelled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    return-object p1
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mAudioStartTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public getCurrentAudioTime()J
    .locals 12

    .prologue
    .line 73
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_3

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mAudioStartTime:J

    sub-long v6, v8, v10

    .line 75
    .local v6, "timeSinceStart":J
    const-wide/16 v0, 0x0

    .line 77
    .local v0, "currentPosition":J
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-long v0, v5

    .line 81
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_0

    .line 82
    const-wide/16 v8, -0x1

    .line 114
    .end local v0    # "currentPosition":J
    .end local v6    # "timeSinceStart":J
    :goto_0
    return-wide v8

    .line 84
    .restart local v0    # "currentPosition":J
    .restart local v6    # "timeSinceStart":J
    :catch_0
    move-exception v4

    .line 87
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    goto :goto_0

    .line 89
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    sub-long v2, v0, v6

    .line 92
    .local v2, "delta":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 93
    iget-wide v8, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mAudioLag:D

    const-wide/16 v10, 0x0

    cmpg-double v5, v8, v10

    if-gez v5, :cond_2

    .line 95
    long-to-double v8, v2

    iput-wide v8, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mAudioLag:D

    .line 112
    :cond_1
    :goto_1
    const-wide/16 v8, 0x0

    iget-wide v10, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mAudioLag:D

    double-to-long v10, v10

    sub-long v10, v0, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_0

    .line 98
    :cond_2
    iget-wide v8, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mAudioLag:D

    const-wide/high16 v10, 0x4033000000000000L    # 19.0

    mul-double/2addr v8, v10

    long-to-double v10, v2

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    div-double/2addr v8, v10

    iput-wide v8, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mAudioLag:D

    goto :goto_1

    .line 114
    .end local v0    # "currentPosition":J
    .end local v2    # "delta":J
    .end local v6    # "timeSinceStart":J
    :cond_3
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method public getMediaPlayer(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)Landroid/media/MediaPlayer;
    .locals 4
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;->getAudio()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    .line 155
    .local v0, "audio":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 156
    .local v1, "source":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->getMediaPlayer(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 161
    .end local v1    # "source":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPlayingPage()Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 263
    .local v0, "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    goto :goto_0

    .line 259
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :catch_0
    move-exception v1

    .line 262
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 263
    .restart local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    goto :goto_1

    .line 262
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 263
    .restart local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v3}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    goto :goto_2

    .line 265
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :cond_1
    throw v1

    .line 266
    :cond_2
    return-void
.end method

.method public play(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;I)V
    .locals 8
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;
    .param p2, "prerollDelayMillis"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->stop()V

    .line 176
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->getMediaPlayer(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)Landroid/media/MediaPlayer;

    move-result-object v3

    .line 178
    .local v3, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v0, v6

    int-to-long v6, p2

    add-long v4, v0, v6

    .line 180
    .local v4, "playTimeMillis":J
    if-eqz v3, :cond_0

    .line 182
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 184
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 185
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$2;-><init>(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;Landroid/media/MediaPlayer;JLcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 252
    :cond_0
    return-void
.end method

.method public preload(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;)V
    .locals 6
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;->getAudio()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    .line 121
    .local v0, "audio":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 122
    .local v1, "source":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    if-eqz p2, :cond_1

    .line 126
    const/4 v2, 0x1

    invoke-interface {p2, p1, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;->onStoryAudioPreload(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;Z)V

    .line 149
    .end local v1    # "source":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mLiveDataManager:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    const-class v3, Lcom/jiliguala/niuwa/module/story/data/live/LoadAssetOperation;

    new-instance v4, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    invoke-direct {v4, v0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$1;-><init>(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPreloadListener;Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;->registerForLiveData(Ljava/lang/Class;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public resume(Lcom/jiliguala/niuwa/module/story/data/internal/Page;)Z
    .locals 3
    .param p1, "pageToResume"    # Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 272
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 273
    .local v0, "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackStarted(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :catch_0
    move-exception v1

    .line 280
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 275
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setPlayCancel(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->cancelled:Z

    .line 285
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 292
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 293
    .local v0, "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :catch_0
    move-exception v1

    .line 299
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 300
    .restart local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    goto :goto_1

    .line 299
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 300
    .restart local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v2}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    goto :goto_2

    .line 299
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;

    .line 300
    .restart local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mPlayingPage:Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    invoke-interface {v0, v3}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;->onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V

    goto :goto_3

    .line 302
    .end local v0    # "listener":Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;
    :cond_1
    throw v1

    .line 304
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :goto_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 310
    :cond_3
    return-void

    .line 305
    :catch_1
    move-exception v1

    goto :goto_4
.end method
