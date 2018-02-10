.class public Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static ConnectCount:I


# instance fields
.field private httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

.field private sock:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->ConnectCount:I

    return-void
.end method

.method public constructor <init>(Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;Ljava/net/Socket;)V
    .locals 1
    .param p1, "httpServer"    # Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
    .param p2, "sock"    # Ljava/net/Socket;

    .prologue
    .line 24
    const-string v0, "iqiyi.QuicklyHTTPServerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    .line 26
    iput-object p2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->sock:Ljava/net/Socket;

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 37
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->sock:Ljava/net/Socket;

    if-nez v6, :cond_0

    .line 39
    const-string v6, "[QiyiHttpServerThread] [Error] Thread exit...[sock == null]"

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v2, Lorg/cybergarage/http/HTTPSocket;

    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->sock:Ljava/net/Socket;

    invoke-direct {v2, v6}, Lorg/cybergarage/http/HTTPSocket;-><init>(Ljava/net/Socket;)V

    .line 43
    .local v2, "httpSock":Lorg/cybergarage/http/HTTPSocket;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPSocket;->open()Z

    move-result v6

    if-nez v6, :cond_1

    .line 45
    const-string v6, "[QiyiHttpServerThread] [Error] Thread exit...[httpSock.open() == false]"

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[QiyiHttpServerThread] Thread start...ClientAddr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->sock:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 49
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->sock:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "client_ip":Ljava/lang/String;
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    invoke-virtual {v6, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->addClient(Ljava/lang/String;)V

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "client_ip: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lorg/cybergarage/http/HTTPRequest;

    invoke-direct {v1}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 54
    .local v1, "httpReq":Lorg/cybergarage/http/HTTPRequest;
    invoke-virtual {v1, v2}, Lorg/cybergarage/http/HTTPRequest;->setSocket(Lorg/cybergarage/http/HTTPSocket;)V

    .line 55
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 56
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 57
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    .local v5, "reader":Ljava/io/BufferedReader;
    const-class v7, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;

    monitor-enter v7

    .line 60
    :try_start_0
    sget v6, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->ConnectCount:I

    if-nez v6, :cond_2

    .line 62
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->performControlPointConnectRendererListener(Z)V

    .line 64
    :cond_2
    sget v6, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->ConnectCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->ConnectCount:I

    .line 58
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->getHttpServerThread()Ljava/lang/Thread;

    move-result-object v6

    if-nez v6, :cond_5

    .line 91
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[QiyiHttpServerThread] Thread exit...ClientAddr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->sock:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 92
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    invoke-virtual {v6, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->removeClient(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPSocket;->close()Z

    .line 94
    const/4 v2, 0x0

    .line 95
    const-class v7, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;

    monitor-enter v7

    .line 97
    :try_start_1
    sget v6, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->ConnectCount:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->ConnectCount:I

    .line 98
    sget v6, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->ConnectCount:I

    if-gtz v6, :cond_4

    .line 100
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->performControlPointConnectRendererListener(Z)V

    .line 95
    :cond_4
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 58
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 68
    :cond_5
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    invoke-virtual {v6, v9}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->performControlPointConnectRendererListener(Z)V

    .line 69
    invoke-virtual {v1, v5}, Lorg/cybergarage/http/HTTPRequest;->readQuickly(Ljava/io/BufferedReader;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[QiyiHttpServerThread] Exit thread [httpReq.read() == false]...ClientAddr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v7, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->sock:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_2

    .line 76
    :cond_6
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPRequest;->getIsKeepAlive()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 78
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    invoke-virtual {v6, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->addClient(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_7
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPRequest;->getIsSingleSend()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 82
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    invoke-virtual {v6, v1}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->performRequestListener(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_1

    .line 85
    :cond_8
    invoke-static {v1}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/RacingStrategy;->isMessageOk(Lorg/cybergarage/http/HTTPRequest;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->httpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    invoke-virtual {v6, v1}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->performRequestListener(Lorg/cybergarage/http/HTTPRequest;)V

    goto/16 :goto_1
.end method
