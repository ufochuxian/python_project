.class Lcom/jiliguala/niuwa/module/LocalServer/CoreService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yanzhenjie/andserver/Server$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/LocalServer/CoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/LocalServer/CoreService;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/LocalServer/CoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/LocalServer/CoreService;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService$1;->a:Lcom/jiliguala/niuwa/module/LocalServer/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 96
    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v3

    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getServerPort()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->setServerPort(I)V

    .line 98
    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getRetryCount()I

    move-result v2

    .line 100
    .local v2, "retryCount":I
    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v3

    iget v1, v3, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->maxRetryCount:I

    .line 104
    .local v1, "maxRetryCount":I
    if-ge v2, v1, :cond_1

    .line 105
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/y;->a()Lcom/jiliguala/niuwa/common/util/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/y;->c()Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    move-result-object v0

    .line 106
    .local v0, "activity":Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/jiliguala/niuwa/MyApplication;->initLocalServer:Z

    if-nez v3, :cond_0

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CoreService],onError:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getServerPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startServer(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->setRetryCount(I)V

    .line 115
    .end local v0    # "activity":Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v3, "\u7aef\u53e3\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5..."

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->resetConfig()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService$1;->a:Lcom/jiliguala/niuwa/module/LocalServer/CoreService;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->serverStart(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public onStopped()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/LocalServer/CoreService$1;->a:Lcom/jiliguala/niuwa/module/LocalServer/CoreService;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->serverStop(Landroid/content/Context;)V

    .line 89
    return-void
.end method
