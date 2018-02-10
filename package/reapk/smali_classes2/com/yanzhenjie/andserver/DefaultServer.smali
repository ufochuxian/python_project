.class Lcom/yanzhenjie/andserver/DefaultServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yanzhenjie/andserver/Server;


# static fields
.field public static final TAG:Ljava/lang/String; = "ServerStatusReceiver"


# instance fields
.field private mCore:Lcom/yanzhenjie/andserver/CoreThread;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/andserver/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/yanzhenjie/andserver/Server$Listener;

.field private mPort:I

.field private final mTimeout:I

.field private final mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;


# direct methods
.method constructor <init>(IILjava/util/Map;Lcom/yanzhenjie/andserver/website/WebSite;Lcom/yanzhenjie/andserver/Server$Listener;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "timeout"    # I
    .param p4, "webSite"    # Lcom/yanzhenjie/andserver/website/WebSite;
    .param p5, "listener"    # Lcom/yanzhenjie/andserver/Server$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yanzhenjie/andserver/RequestHandler;",
            ">;",
            "Lcom/yanzhenjie/andserver/website/WebSite;",
            "Lcom/yanzhenjie/andserver/Server$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mPort:I

    .line 64
    iput p2, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mTimeout:I

    .line 65
    iput-object p3, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mHandlerMap:Ljava/util/Map;

    .line 66
    iput-object p4, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;

    .line 67
    iput-object p5, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    .line 68
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-virtual {v0}, Lcom/yanzhenjie/andserver/CoreThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    const-string v0, "ServerStatusReceiver"

    const-string v1, "DefaultServer start.."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "ServerStatusReceiver"

    const-string v1, "mCore:%s,mCore.isRunning():%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-virtual {v4}, Lcom/yanzhenjie/andserver/CoreThread;->isRunning()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getServerPort()I

    move-result v0

    iput v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mPort:I

    .line 83
    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/DefaultServer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/yanzhenjie/andserver/CoreThread;

    iget v1, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mPort:I

    iget v2, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mTimeout:I

    iget-object v3, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mHandlerMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;

    iget-object v5, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    invoke-direct/range {v0 .. v5}, Lcom/yanzhenjie/andserver/CoreThread;-><init>(IILjava/util/Map;Lcom/yanzhenjie/andserver/website/WebSite;Lcom/yanzhenjie/andserver/Server$Listener;)V

    iput-object v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    .line 85
    iget-object v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-virtual {v0}, Lcom/yanzhenjie/andserver/CoreThread;->start()V

    .line 86
    const-string v0, "ServerStatusReceiver"

    const-string v1, "DefaultServer start..."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-virtual {v0}, Lcom/yanzhenjie/andserver/CoreThread;->shutdown()V

    .line 89
    new-instance v0, Lcom/yanzhenjie/andserver/CoreThread;

    iget v1, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mPort:I

    iget v2, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mTimeout:I

    iget-object v3, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mHandlerMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mWebSite:Lcom/yanzhenjie/andserver/website/WebSite;

    iget-object v5, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    invoke-direct/range {v0 .. v5}, Lcom/yanzhenjie/andserver/CoreThread;-><init>(IILjava/util/Map;Lcom/yanzhenjie/andserver/website/WebSite;Lcom/yanzhenjie/andserver/Server$Listener;)V

    iput-object v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    .line 90
    iget-object v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-virtual {v0}, Lcom/yanzhenjie/andserver/CoreThread;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/DefaultServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yanzhenjie/andserver/DefaultServer;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-virtual {v0}, Lcom/yanzhenjie/andserver/CoreThread;->shutdown()V

    .line 98
    :cond_0
    return-void
.end method
