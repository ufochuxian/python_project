.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

.field private b:Ljavax/jmdns/ServiceInfo;

.field private c:Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljavax/jmdns/ServiceInfo;Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
    .locals 0
    .param p2, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;
    .param p3, "listener"    # Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->b:Ljavax/jmdns/ServiceInfo;

    .line 249
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->c:Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;)Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->c:Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;->b:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/scrub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b$1;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$b;)V

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lokhttp3/f;)V

    .line 305
    return-void
.end method
