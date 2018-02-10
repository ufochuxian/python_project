.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->initModule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$100(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$002(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljava/net/InetAddress;

    move-result-object v1

    const-string v2, "JLGL_HOST"

    invoke-static {v1, v2}, Ljavax/jmdns/a;->a(Ljava/net/InetAddress;Ljava/lang/String;)Ljavax/jmdns/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$202(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;Ljavax/jmdns/a;)Ljavax/jmdns/a;

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;->access$200(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;)Ljavax/jmdns/a;

    move-result-object v0

    const-string v1, "_airplay._tcp.local."

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl$1;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/a;->a(Ljava/lang/String;Ljavax/jmdns/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method
