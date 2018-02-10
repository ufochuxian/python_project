.class public Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_TIMEOUT:I = 0xea60

.field public static final NAME:Ljava/lang/String; = "HTTP"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private bindAddr:Ljava/net/InetAddress;

.field private bindPort:I

.field private controlPointListenerList:Lorg/cybergarage/util/ListenerList;

.field private httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

.field private httpServerThread:Ljava/lang/Thread;

.field private serverSock:Ljava/net/DatagramSocket;

.field protected timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    .line 61
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindAddr:Ljava/net/InetAddress;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindPort:I

    .line 67
    const v0, 0xea60

    iput v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->timeout:I

    .line 197
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    .line 223
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    .line 252
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpServerThread:Ljava/lang/Thread;

    .line 52
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    .line 54
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "osName":Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "osVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HTTP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private shutDown()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    if-nez v2, :cond_0

    .line 167
    :goto_0
    return v1

    .line 160
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 161
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addControlPointConnectRendererListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public close()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    if-nez v3, :cond_0

    .line 185
    :goto_0
    return v1

    .line 176
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 177
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    .line 178
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindAddr:Ljava/net/InetAddress;

    .line 179
    const/4 v3, 0x0

    iput v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move v1, v2

    .line 183
    goto :goto_0
.end method

.method public getBindAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 77
    const-string v0, ""

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindPort()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindPort:I

    return v0
.end method

.method public getServerSock()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public declared-synchronized getTimeout()I
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x1

    .line 137
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    if-eqz v3, :cond_0

    .line 149
    :goto_0
    return v2

    .line 141
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 142
    .local v1, "socketAddress":Ljava/net/InetSocketAddress;
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindAddr:Ljava/net/InetAddress;

    .line 143
    iput p2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindPort:I

    .line 144
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v1    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public open(Ljava/net/InetAddress;I)Z
    .locals 5
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    if-eqz v4, :cond_0

    .line 132
    :goto_0
    return v2

    .line 118
    :cond_0
    if-nez p1, :cond_1

    move v2, v3

    .line 120
    goto :goto_0

    .line 125
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 126
    .local v1, "socketAddress":Ljava/net/InetSocketAddress;
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v4, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v1    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v2, v3

    .line 130
    goto :goto_0
.end method

.method public performControlPointConnectRendererListener(Z)V
    .locals 4
    .param p1, "isConnect"    # Z

    .prologue
    .line 237
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 238
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 247
    return-void

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    .line 241
    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .line 242
    .local v0, "listener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;
    if-eqz v0, :cond_1

    .line 244
    invoke-interface {v0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;->onReceiveDeviceConnect(Z)V

    .line 238
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public performRequestListener(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 4
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 211
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 212
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 217
    return-void

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPRequestListener;

    .line 215
    .local v0, "listener":Lorg/cybergarage/http/HTTPRequestListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/http/HTTPRequestListener;->httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeControlPointConnectRendererListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public removeRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    :cond_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 265
    .local v1, "thisThread":Ljava/lang/Thread;
    :goto_0
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpServerThread:Ljava/lang/Thread;

    if-ne v2, v1, :cond_0

    .line 267
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 270
    :cond_2
    :goto_1
    new-instance v0, Lorg/cybergarage/http/HTTPRequest;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 271
    .local v0, "httpReq":Lorg/cybergarage/http/HTTPRequest;
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v2}, Lorg/cybergarage/http/HTTPRequest;->readQuickly(Ljava/net/DatagramSocket;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 274
    invoke-direct {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->shutDown()Z

    .line 275
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindAddr:Ljava/net/InetAddress;

    iget v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->bindPort:I

    invoke-virtual {p0, v2, v3}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->open(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 277
    const-string v2, "UDP Quickly Channel Died!"

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPRequest;->getIsSingleSend()Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    invoke-static {v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/RacingStrategy;->isMessageOk(Lorg/cybergarage/http/HTTPRequest;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->performRequestListener(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_1
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "iqiyi.QuicklyHTTPServer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "name":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->serverSock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 300
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpServerThread:Ljava/lang/Thread;

    .line 301
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 302
    const/4 v1, 0x1

    return v1
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->httpServerThread:Ljava/lang/Thread;

    .line 308
    const/4 v0, 0x1

    return v0
.end method
