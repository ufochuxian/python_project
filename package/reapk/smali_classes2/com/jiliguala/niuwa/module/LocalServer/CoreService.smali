.class public Lcom/jiliguala/niuwa/module/LocalServer/CoreService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private mListener:Lcom/yanzhenjie/andserver/Server$Listener;

.field private mServer:Lcom/yanzhenjie/andserver/Server;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/LocalServer/CoreService$1;-><init>(Lcom/jiliguala/niuwa/module/LocalServer/CoreService;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    return-void
.end method

.method private startServer()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;->mServer:Lcom/yanzhenjie/andserver/Server;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;->mServer:Lcom/yanzhenjie/andserver/Server;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/Server;->start()V

    .line 144
    :cond_0
    return-void
.end method

.method private stopServer()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;->mServer:Lcom/yanzhenjie/andserver/Server;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;->mServer:Lcom/yanzhenjie/andserver/Server;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/Server;->stop()V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6
    .annotation build Landroid/support/annotation/ae;
        b = 0x13
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/d/a;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 58
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "absolutePath":Ljava/lang/String;
    new-instance v3, Lcom/yanzhenjie/andserver/AndServer$Build;

    invoke-direct {v3}, Lcom/yanzhenjie/andserver/AndServer$Build;-><init>()V

    .line 61
    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getServerPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yanzhenjie/andserver/AndServer$Build;->port(I)Lcom/yanzhenjie/andserver/AndServer$Build;

    move-result-object v3

    .line 62
    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v4

    iget v4, v4, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->timeOut:I

    invoke-virtual {v3, v4}, Lcom/yanzhenjie/andserver/AndServer$Build;->timeout(I)Lcom/yanzhenjie/andserver/AndServer$Build;

    move-result-object v3

    const-string v4, "game"

    new-instance v5, Lcom/jiliguala/niuwa/module/LocalServer/handler/RequestGameHandler;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/module/LocalServer/handler/RequestGameHandler;-><init>()V

    .line 66
    invoke-virtual {v3, v4, v5}, Lcom/yanzhenjie/andserver/AndServer$Build;->registerHandler(Ljava/lang/String;Lcom/yanzhenjie/andserver/RequestHandler;)Lcom/yanzhenjie/andserver/AndServer$Build;

    move-result-object v3

    new-instance v4, Lcom/yanzhenjie/andserver/website/StorageWebsite;

    .line 67
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/yanzhenjie/andserver/website/StorageWebsite;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/yanzhenjie/andserver/AndServer$Build;->website(Lcom/yanzhenjie/andserver/website/WebSite;)Lcom/yanzhenjie/andserver/AndServer$Build;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;->mListener:Lcom/yanzhenjie/andserver/Server$Listener;

    .line 68
    invoke-virtual {v3, v4}, Lcom/yanzhenjie/andserver/AndServer$Build;->listener(Lcom/yanzhenjie/andserver/Server$Listener;)Lcom/yanzhenjie/andserver/AndServer$Build;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/yanzhenjie/andserver/AndServer$Build;->build()Lcom/yanzhenjie/andserver/AndServer;

    move-result-object v1

    .line 72
    .local v1, "andServer":Lcom/yanzhenjie/andserver/AndServer;
    invoke-virtual {v1}, Lcom/yanzhenjie/andserver/AndServer;->createServer()Lcom/yanzhenjie/andserver/Server;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;->mServer:Lcom/yanzhenjie/andserver/Server;

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;->stopServer()V

    .line 130
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;->startServer()V

    .line 122
    const/4 v0, 0x1

    return v0
.end method
