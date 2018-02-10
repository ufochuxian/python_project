.class public Lcom/jiliguala/niuwa/common/Activity/a;
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
        "Lcom/jiliguala/niuwa/common/Activity/b;",
        ">;",
        "Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;",
        "Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;",
        "Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/Activity/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p0, p0, p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 33
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getDuration()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->seekTo(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 26
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/a;->a()V

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    iget v1, p0, Lcom/jiliguala/niuwa/common/Activity/a;->c:I

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;I)V

    .line 73
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getCurrentPos()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->c:I

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/a;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/a;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/b;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/Activity/b;->pauseVideo()V

    .line 66
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->playRightNow()V

    .line 87
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->pause()V

    .line 93
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->prepareAsync()V

    .line 101
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getCurrentPos()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setLooping(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getDuration()I

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->releaseRes()V

    .line 140
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/a;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/a;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/b;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/Activity/b;->onVideoPlayComplete()V

    .line 50
    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/a;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/Activity/a;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/Activity/b;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/Activity/a;->b:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/common/Activity/b;->onPrepared(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;)V

    .line 41
    :cond_0
    return-void
.end method
