.class public Lcom/yanzhenjie/andserver/HandleRequestThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ServerStatusReceiver"


# instance fields
.field private final mConnection:Lorg/apache/http/HttpServerConnection;

.field private mCore:Lcom/yanzhenjie/andserver/CoreThread;

.field private final mHttpService:Lorg/apache/http/protocol/HttpService;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/andserver/CoreThread;Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V
    .locals 0
    .param p1, "core"    # Lcom/yanzhenjie/andserver/CoreThread;
    .param p2, "httpservice"    # Lorg/apache/http/protocol/HttpService;
    .param p3, "connection"    # Lorg/apache/http/HttpServerConnection;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    .line 41
    iput-object p2, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mHttpService:Lorg/apache/http/protocol/HttpService;

    .line 42
    iput-object p3, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mConnection:Lorg/apache/http/HttpServerConnection;

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 47
    const-string v1, "ServerStatusReceiver"

    const-string v2, "HandleRequestThread run start..."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mCore:Lcom/yanzhenjie/andserver/CoreThread;

    invoke-virtual {v1}, Lcom/yanzhenjie/andserver/CoreThread;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mConnection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mHttpService:Lorg/apache/http/protocol/HttpService;

    iget-object v2, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mConnection:Lorg/apache/http/HttpServerConnection;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V

    .line 51
    const-string v1, "ServerStatusReceiver"

    const-string v2, "HandleRequestThread handleRequest..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ignored":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ServerStatusReceiver"

    const-string v2, "HandleRequestThread exception:%s..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/jiliguala/a/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    iget-object v1, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mConnection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 61
    .end local v0    # "ignored":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 57
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mConnection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 58
    :catch_1
    move-exception v1

    goto :goto_1

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    :try_start_4
    iget-object v2, p0, Lcom/yanzhenjie/andserver/HandleRequestThread;->mConnection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 59
    :goto_2
    throw v1

    .line 58
    :catch_2
    move-exception v2

    goto :goto_2

    .restart local v0    # "ignored":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    goto :goto_1
.end method
