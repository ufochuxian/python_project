.class public Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;
.implements Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;
.implements Ljavax/jmdns/e;


# static fields
.field private static final HOST_NAME:Ljava/lang/String; = "JLGL_HOST"

.field private static final PORT:I = 0x270f

.field private static final SERVICE_TYPE:Ljava/lang/String; = "_airplay._tcp.local."

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_NAME:Ljava/lang/String; = "job_thread_airplay"


# instance fields
.field private clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

.field private deviceAddress:Ljava/net/InetAddress;

.field private http:Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

.field private isAirPlaying:Z

.field private jmdns:Ljavax/jmdns/a;

.field private lock:Landroid/net/wifi/WifiManager$MulticastLock;

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

.field private mJobThread:Landroid/os/HandlerThread;

.field private mRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

.field private selectedService:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->selectedService:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->isAirPlaying:Z

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "job_thread_airplay"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mJobThread:Landroid/os/HandlerThread;

    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->deviceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->deviceAddress:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->getWifiInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljavax/jmdns/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->jmdns:Ljavax/jmdns/a;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;Ljavax/jmdns/a;)Ljavax/jmdns/a;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;
    .param p1, "x1"    # Ljavax/jmdns/a;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->jmdns:Ljavax/jmdns/a;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private acquiteLock()V
    .locals 4

    .prologue
    .line 233
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 234
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    const-string v2, "JmDNSLock"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 235
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 236
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getWifiInetAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 108
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 110
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 112
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v3, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 120
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v3

    .line 117
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 118
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    move-object v3, v5

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public getPlayBackInfo()V
    .locals 3

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getRender()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->getPlayBackInfo(Ljavax/jmdns/ServiceInfo;Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initModule()V
    .locals 3

    .prologue
    .line 71
    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->acquiteLock()V

    .line 74
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onUpdateMirrorIcon()V

    .line 78
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)V

    .line 99
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->http:Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

    .line 103
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->http:Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

    const/16 v2, 0x270f

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->startServer(I)V

    .line 104
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->isAirPlaying:Z

    return v0
.end method

.method public onPlayVideoError(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/net/URL;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayFailed()V

    .line 296
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->isAirPlaying:Z

    .line 297
    return-void
.end method

.method public onPlayVideoSuccess(Ljava/net/URL;)V
    .locals 1
    .param p1, "location"    # Ljava/net/URL;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlaySucceed()V

    .line 280
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->isAirPlaying:Z

    .line 281
    return-void
.end method

.method public onPutImageError(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 267
    return-void
.end method

.method public onPutImageSuccess(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 255
    return-void
.end method

.method public onStopVideoError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 316
    return-void
.end method

.method public onStopVideoSuccess()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayStop()V

    .line 307
    :cond_0
    return-void
.end method

.method public pauseOrStart()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public performExit()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mJobThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->http:Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->http:Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/HttpServer;->stopServer()V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->jmdns:Ljavax/jmdns/a;

    if-eqz v0, :cond_3

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->jmdns:Ljavax/jmdns/a;

    invoke-virtual {v0}, Ljavax/jmdns/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->jmdns:Ljavax/jmdns/a;

    const-string v1, "_airplay._tcp.local."

    invoke-virtual {v0, v1, p0}, Ljavax/jmdns/a;->b(Ljava/lang/String;Ljavax/jmdns/e;)V

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->jmdns:Ljavax/jmdns/a;

    invoke-virtual {v0}, Ljavax/jmdns/a;->f()V

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->shutdown()V

    .line 152
    :cond_4
    return-void

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public performSeek(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getRender()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-virtual {v2, v0, p1, p2, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->airplaySeek(Ljavax/jmdns/ServiceInfo;JLcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 2
    .param p1, "serviceEvent"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$2;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;Ljavax/jmdns/ServiceEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 2
    .param p1, "serviceEvent"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;->onRemoveRender(Ljava/lang/String;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->selectedService:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->selectedService:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->selectedService:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onUpdateMirrorIcon()V

    .line 353
    :cond_1
    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .param p1, "serviceEvent"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 359
    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;-><init>()V

    .line 360
    .local v1, "renderInfo":Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->setKey(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/ServiceInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->setFriendlyName(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->setRender(Ljava/lang/Object;)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    move-result-object v2

    const/4 v3, 0x1

    .line 361
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->setType(I)Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .line 362
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;

    invoke-interface {v2, v1}, Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;->onGetRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->selectedService:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 367
    const-string v2, "SelectedService"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "remembered":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->selectedService:Ljava/lang/String;

    .line 374
    .end local v0    # "remembered":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setIGetRenderListener(Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;)V
    .locals 1
    .param p1, "iGetRenderListener"    # Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIGetRenderListenerRef:Ljava/lang/ref/WeakReference;

    .line 67
    return-void
.end method

.method public setRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    .prologue
    .line 227
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    .line 228
    return-void
.end method

.method public startRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "renderInfo"    # Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :try_start_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->isAirPlaying:Z

    .line 162
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayConnected()V

    .line 164
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayStart()V

    .line 166
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "url":Ljava/net/URL;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getRender()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->playVideo(Ljava/net/URL;Ljavax/jmdns/ServiceInfo;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public stopRender()V
    .locals 3

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->isAirPlaying:Z

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mIRenderPlayBackListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayDisConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getRender()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->stopVideo(Ljavax/jmdns/ServiceInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 197
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 192
    :try_start_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getRender()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->stopVideo(Ljavax/jmdns/ServiceInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 192
    :try_start_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->clientService:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->mRenderInfo:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getRender()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->stopVideo(Ljavax/jmdns/ServiceInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 195
    :goto_1
    throw v1

    .line 193
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
