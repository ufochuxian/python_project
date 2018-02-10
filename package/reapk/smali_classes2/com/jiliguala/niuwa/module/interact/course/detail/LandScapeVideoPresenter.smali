.class public Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;
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
        "Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeUI;",
        ">;",
        "Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;",
        "Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;",
        "Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;"
    }
.end annotation


# instance fields
.field private mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 16
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 17
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 46
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 36
    :cond_0
    return-void
.end method

.method public setOnPrepareListener()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p0, p0, p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 30
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 23
    :cond_0
    return-void
.end method

.method public surfaceDestoryed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onDestroy()V

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/LandScapeVideoPresenter;->mMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 58
    return-void
.end method
