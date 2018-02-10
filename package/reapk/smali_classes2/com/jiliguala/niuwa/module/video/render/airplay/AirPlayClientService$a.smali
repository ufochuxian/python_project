.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

.field private b:Ljavax/jmdns/ServiceInfo;

.field private c:J

.field private d:Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljavax/jmdns/ServiceInfo;JLcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
    .locals 1
    .param p2, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;
    .param p3, "pos"    # J
    .param p5, "listener"    # Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->b:Ljavax/jmdns/ServiceInfo;

    .line 319
    iput-wide p3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->c:J

    .line 320
    iput-object p5, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->d:Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    .line 321
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;)Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->d:Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 325
    const-string v0, "/scrub"

    .line 326
    .local v0, "suffix":Ljava/lang/String;
    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->c:J

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;->b:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v3}, Ljavax/jmdns/ServiceInfo;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$1;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;)V

    new-instance v5, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a$2;-><init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$a;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lokhttp3/f;)V

    .line 353
    return-void
.end method
