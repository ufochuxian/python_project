.class public Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;,
        Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;,
        Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;,
        Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;,
        Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

.field private es:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->callback:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->es:Ljava/util/concurrent/ExecutorService;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->callback:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    return-object v0
.end method


# virtual methods
.method public airplaySeek(Ljavax/jmdns/ServiceInfo;JLcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
    .locals 8
    .param p1, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;
    .param p2, "pos"    # J
    .param p4, "listener"    # Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not connected to AirPlay service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljavax/jmdns/ServiceInfo;JLcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 112
    return-void
.end method

.method public getPlayBackInfo(Ljavax/jmdns/ServiceInfo;Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
    .locals 2
    .param p1, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;
    .param p2, "listener"    # Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not connected to AirPlay service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljavax/jmdns/ServiceInfo;Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 105
    return-void
.end method

.method public playVideo(Ljava/net/URL;Ljavax/jmdns/ServiceInfo;)V
    .locals 2
    .param p1, "location"    # Ljava/net/URL;
    .param p2, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    if-nez p2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not connected to AirPlay service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljava/net/URL;Ljavax/jmdns/ServiceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 85
    return-void
.end method

.method public putImage(Ljava/io/File;Ljavax/jmdns/ServiceInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;
    .param p3, "transition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not connected to AirPlay service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljava/io/File;Ljavax/jmdns/ServiceInfo;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 71
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->es:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->es:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 56
    :cond_0
    return-void
.end method

.method public stopVideo(Ljavax/jmdns/ServiceInfo;)V
    .locals 2
    .param p1, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not connected to AirPlay service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljavax/jmdns/ServiceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 98
    return-void
.end method
