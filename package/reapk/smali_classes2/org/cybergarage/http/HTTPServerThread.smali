.class public Lorg/cybergarage/http/HTTPServerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private httpServer:Lorg/cybergarage/http/HTTPServer;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lorg/cybergarage/http/HTTPServer;Ljava/net/Socket;)V
    .locals 1
    .param p1, "httpServer"    # Lorg/cybergarage/http/HTTPServer;
    .param p2, "sock"    # Ljava/net/Socket;

    .prologue
    .line 35
    const-string v0, "iqiyi.HTTPServerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServerThread;->mutex:Lorg/cybergarage/util/Mutex;

    .line 36
    iput-object p1, p0, Lorg/cybergarage/http/HTTPServerThread;->httpServer:Lorg/cybergarage/http/HTTPServer;

    .line 37
    iput-object p2, p0, Lorg/cybergarage/http/HTTPServerThread;->sock:Ljava/net/Socket;

    .line 38
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServerThread;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 45
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v2, p0, Lorg/cybergarage/http/HTTPServerThread;->sock:Ljava/net/Socket;

    if-nez v2, :cond_0

    .line 56
    const-string v2, "[HTTPServerThread] [Error] Thread exit...[sock == null]"

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v1, Lorg/cybergarage/http/HTTPSocket;

    iget-object v2, p0, Lorg/cybergarage/http/HTTPServerThread;->sock:Ljava/net/Socket;

    invoke-direct {v1, v2}, Lorg/cybergarage/http/HTTPSocket;-><init>(Ljava/net/Socket;)V

    .line 60
    .local v1, "httpSock":Lorg/cybergarage/http/HTTPSocket;
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPSocket;->open()Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    const-string v2, "[HTTPServerThread] [Error] Thread exit...[httpSock.open() == false]"

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[HTTPServerThread] Thread start...ClientAddr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/cybergarage/http/HTTPServerThread;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lorg/cybergarage/http/HTTPRequest;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 67
    .local v0, "httpReq":Lorg/cybergarage/http/HTTPRequest;
    invoke-virtual {v0, v1}, Lorg/cybergarage/http/HTTPRequest;->setSocket(Lorg/cybergarage/http/HTTPSocket;)V

    .line 68
    :cond_2
    iget-object v2, p0, Lorg/cybergarage/http/HTTPServerThread;->httpServer:Lorg/cybergarage/http/HTTPServer;

    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->getHttpServerThread()Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_3

    .line 84
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[HTTPServerThread] Thread exit...ClientAddr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/cybergarage/http/HTTPServerThread;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPSocket;->close()Z

    .line 86
    const/4 v1, 0x0

    .line 87
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPRequest;->read()Z

    move-result v2

    if-nez v2, :cond_4

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[HTTPServerThread] Exit thread [httpReq.read() == false]...ClientAddr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServerThread;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_4
    iget-object v2, p0, Lorg/cybergarage/http/HTTPServerThread;->httpServer:Lorg/cybergarage/http/HTTPServer;

    invoke-virtual {v2, v0}, Lorg/cybergarage/http/HTTPServer;->performRequestListener(Lorg/cybergarage/http/HTTPRequest;)V

    .line 77
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPRequest;->isKeepAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[HTTPServerThread] Exit thread [httpReq.isKeepAlive() == false]...ClientAddr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServerThread;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServerThread;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 50
    return-void
.end method
