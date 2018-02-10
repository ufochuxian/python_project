.class public Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;
.implements Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;
.implements Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;",
        ">;",
        "Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;",
        "Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;",
        "Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

.field private mSubscriptions:Lrx/i/b;

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 27
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mSubscriptions:Lrx/i/b;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mSubscriptions:Lrx/i/b;

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mVideoUrl:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public isVideoPlaying()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;->onVideoPlayComplete()V

    .line 136
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 141
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;->pauseVideo()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;->onPrepared()V

    .line 150
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->pause()V

    .line 169
    :cond_0
    return-void
.end method

.method public playVideo()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->resume()V

    .line 163
    :cond_0
    return-void
.end method

.method public releasePlayer()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onDestroy()V

    .line 114
    :cond_1
    return-void
.end method

.method public requestGoodsDetail(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemID"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->v(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 42
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 43
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 44
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;)V

    .line 45
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 70
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;->showLoadingProgress()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;->hideVideoBg()V

    .line 105
    :cond_1
    return-void
.end method

.method public setOnPrepareListener()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p0, p0, p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 77
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->setOnPrepareListener()V

    .line 83
    return-void
.end method

.method public surfaceDestoryed()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentUI;->pauseVideo()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragmentPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    return-void
.end method
