.class public Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/video/render/listener/IRenderAction;


# static fields
.field private static final DEVICE_ALREADY_NOT_LIST:I = -0x1

.field private static final DEVICE_UPDATE_TYPE_ADD:I = 0x0

.field private static final DEVICE_UPDATE_TYPE_REMOVE:I = 0x1

.field private static final DEVICE_UPDATE_TYPE_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_NAME:Ljava/lang/String; = "job_thread_iqiyidlna"


# instance fields
.field private es:Ljava/util/concurrent/ExecutorService;

.field private mCurrentDevice:Lorg/cybergarage/upnp/Device;

.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPaused:Z

.field private mIsPlaying:Z

.field private mJobThread:Landroid/os/HandlerThread;

.field private mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "job_thread_iqiyidlna"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mJobThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->es:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Lorg/cybergarage/upnp/Device;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;
    .param p1, "x1"    # Lorg/cybergarage/upnp/Device;
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->updateDeviceList(Lorg/cybergarage/upnp/Device;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->getDevicePosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Lorg/cybergarage/upnp/Device;)Lorg/cybergarage/upnp/Device;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;
    .param p1, "x1"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    return-object p1
.end method

.method static synthetic access$602(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->play(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$802(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIsPaused:Z

    return p1
.end method

.method private getDevicePosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 148
    .local v1, "deviceItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 149
    const-string v3, "deviceUuid"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "currentUuid":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    .end local v0    # "currentUuid":Ljava/lang/String;
    .end local v1    # "deviceItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 146
    .restart local v1    # "deviceItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "deviceItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getDeviceRemoteAddress(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 2
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    const/4 v1, 0x0

    .line 181
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 184
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 185
    .local v0, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDeviceSize()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    if-nez v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v0

    .line 168
    .local v0, "deivceList":Lorg/cybergarage/upnp/DeviceList;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    goto :goto_0
.end method

.method private play(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 344
    :try_start_0
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;-><init>()V

    .line 345
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;
    const-string v8, "control"

    invoke-virtual {v0, v8}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->setType(Ljava/lang/String;)V

    .line 346
    const-string v8, "pushnetvideo"

    invoke-virtual {v0, v8}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->setControl(Ljava/lang/String;)V

    .line 347
    const-string v8, "1.0"

    invoke-virtual {v0, v8}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->setVersion(Ljava/lang/String;)V

    .line 348
    new-instance v7, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;-><init>()V

    .line 349
    .local v7, "value":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;
    invoke-virtual {v7, p1}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->setUrl(Ljava/lang/String;)V

    .line 350
    const-string v8, "test"

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->setTitle(Ljava/lang/String;)V

    .line 351
    const-string v8, "46842154848641"

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->setSession(Ljava/lang/String;)V

    .line 352
    const-string v8, "jiliguala"

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->setSource(Ljava/lang/String;)V

    .line 353
    const-string v8, "0"

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->setHistory(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, v7}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->setValue(Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;)V

    .line 355
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 356
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "info":Ljava/lang/String;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->sendMessage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "mDlnaResultStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 361
    .local v5, "result":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 362
    const-class v8, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;

    invoke-virtual {v2, v4, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;

    .line 363
    .local v6, "resultData":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;
    if-eqz v6, :cond_0

    .line 364
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;->getValue()Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;->isResult()Z

    move-result v5

    .line 367
    .end local v6    # "resultData":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;
    :cond_0
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 368
    if-eqz v5, :cond_2

    .line 369
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIsPaused:Z

    .line 370
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v8}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlaySucceed()V

    .line 381
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "info":Ljava/lang/String;
    .end local v4    # "mDlnaResultStr":Ljava/lang/String;
    .end local v5    # "result":Z
    .end local v7    # "value":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;
    :cond_1
    :goto_0
    return-void

    .line 372
    .restart local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "info":Ljava/lang/String;
    .restart local v4    # "mDlnaResultStr":Ljava/lang/String;
    .restart local v5    # "result":Z
    .restart local v7    # "value":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;
    :cond_2
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v8}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "info":Ljava/lang/String;
    .end local v4    # "mDlnaResultStr":Ljava/lang/String;
    .end local v5    # "result":Z
    .end local v7    # "value":Lcom/jiliguala/niuwa/logic/network/json/IqiyiPlayMsg$ValueBean;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 378
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v8}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayFailed()V

    goto :goto_0
.end method

.method private updateDeviceList(Lorg/cybergarage/upnp/Device;I)V
    .locals 9
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;
    .param p2, "updateType"    # I

    .prologue
    const/4 v7, -0x1

    .line 199
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mDeviceList:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 200
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mDeviceList:Ljava/util/ArrayList;

    .line 202
    :cond_0
    if-nez p1, :cond_2

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "uuid":Ljava/lang/String;
    if-eqz p2, :cond_3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_6

    .line 207
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "friendName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v6

    invoke-virtual {v6}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "ip":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v0, "deviceItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "deviceIp"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v6, "friendName"

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v6, "deviceUuid"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->getDevicePosition(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_5

    .line 217
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v4, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-direct {v4}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;-><init>()V

    .line 220
    .local v4, "renderInfo":Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->setKey(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    move-result-object v6

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->setFriendlyName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->setRender(Ljava/lang/Object;)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    move-result-object v6

    const/4 v7, 0x3

    .line 221
    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->setType(I)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .line 222
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 223
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;

    invoke-interface {v6, v4}, Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;->onGetRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V

    .line 226
    :cond_4
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$3;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$3;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 240
    .end local v4    # "renderInfo":Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    :cond_5
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mDeviceList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mDeviceList:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->getDevicePosition(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 247
    .end local v0    # "deviceItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "friendName":Ljava/lang/String;
    .end local v3    # "ip":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 248
    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->getDevicePosition(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, "devicePosition":I
    if-eq v1, v7, :cond_1

    .line 250
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mDeviceList:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->getDevicePosition(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 252
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;

    invoke-interface {v6, v5}, Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;->onRemoveRender(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getPlayBackInfo()V
    .locals 2

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$5;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$5;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initModule()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    invoke-direct {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->setMaxDelayTolerateTime(J)V

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->setOpenRealTimeFunction(Z)V

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$1;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->setReceiveNotifyMessageListener(Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;)V

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$2;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->addDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->start()Z

    .line 135
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIsPlaying:Z

    return v0
.end method

.method public pauseOrStart()V
    .locals 2

    .prologue
    .line 484
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 497
    return-void
.end method

.method public performExit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mJobThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->stop()Z

    .line 270
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mMediaControlPoint:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    .line 273
    :cond_1
    return-void
.end method

.method public performSeek(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 421
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 448
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 449
    return-void
.end method

.method public setIGetRenderListener(Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;)V
    .locals 1
    .param p1, "iGetRenderListener"    # Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;

    .prologue
    .line 277
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    .line 279
    return-void
.end method

.method public setRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    .prologue
    .line 283
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    .line 284
    return-void
.end method

.method public startRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "renderInfo"    # Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Ljava/lang/String;Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 335
    return-void
.end method

.method public stopRender()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayDisConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_0
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIsPlaying:Z

    .line 464
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$7;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 477
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 463
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIsPlaying:Z

    .line 464
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$7;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->mIsPlaying:Z

    .line 464
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$7;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$7;-><init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 474
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 476
    throw v0
.end method
