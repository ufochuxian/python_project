.class public Lcom/jiliguala/niuwa/module/video/VideoRenderManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;


# static fields
.field public static final RENDER_AIRPLAY:I = 0x1

.field public static final RENDER_IQIYIDLNA:I = 0x3

.field public static final RENDER_LOCAL:I


# instance fields
.field private mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

.field private mCurrentRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

.field private mCurrentRenderMode:I

.field private mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRenders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoController:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderMode:I

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mRenders:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoRenderManager;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoRenderManager;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    return-object p1
.end method

.method private switchRenderMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderMode:I

    .line 59
    return-void
.end method


# virtual methods
.method public getPlayBackInfo()V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderMode:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->getPlayBackInfo()V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->getPlayBackInfo()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPlayingMode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderMode:I

    packed-switch v1, :pswitch_data_0

    .line 76
    :goto_0
    :pswitch_0
    return v0

    .line 66
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getRenders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mRenders:Ljava/util/Map;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;-><init>(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 193
    iget v1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderMode:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    return v0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onGetRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V
    .locals 2
    .param p1, "renderInfo"    # Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .prologue
    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mRenders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mRenders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_1
    monitor-exit p0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRemoveRender(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mRenders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public onSwitchRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V
    .locals 1
    .param p1, "renderInfo"    # Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .line 46
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->switchRenderMode(I)V

    .line 47
    return-void
.end method

.method public pauseOrStart()V
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderMode:I

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    :pswitch_0
    return-void

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->pauseOrStart()V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performExit()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mRenders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mRenders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;-><init>(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 282
    return-void
.end method

.method public seekToPos(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 233
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderMode:I

    packed-switch v0, :pswitch_data_0

    .line 251
    :goto_0
    :pswitch_0
    return-void

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    invoke-interface {v0, p1, p2}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->performSeek(J)V

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-virtual {v0, p1, p2}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->performSeek(J)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setIRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 55
    return-void
.end method

.method public setVideoController(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 0
    .param p1, "controller"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mVideoController:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .line 42
    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 110
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderMode:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-interface {v0, v1, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->startRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mCurrentRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-virtual {v0, v1, p1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->startRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->switchRenderMode(I)V

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mAirplayController:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->stopRender()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->mIqiyiDlnaController:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->stopRender()V

    .line 190
    :cond_1
    return-void
.end method
