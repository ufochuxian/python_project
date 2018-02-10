.class public Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
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

.field public client:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private controlPointListenerList:Lorg/cybergarage/util/ListenerList;

.field private httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

.field private httpServerThread:Ljava/lang/Thread;

.field private serverSock:Ljava/net/ServerSocket;

.field protected timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    .line 108
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    .line 109
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindAddr:Ljava/net/InetAddress;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindPort:I

    .line 114
    const v0, 0xea60

    iput v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->timeout:I

    .line 238
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    .line 263
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    .line 293
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpServerThread:Ljava/lang/Thread;

    .line 56
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    .line 58
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "osName":Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
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


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 225
    :goto_0
    return-object v1

    .line 215
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 216
    .local v1, "sock":Ljava/net/Socket;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 217
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 218
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 219
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 220
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v1    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 225
    goto :goto_0
.end method

.method public declared-synchronized addClient(Ljava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 62
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 68
    .restart local v1    # "n":I
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public addControlPointConnectRendererListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public close()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_0

    .line 206
    :goto_0
    return v1

    .line 197
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 198
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    .line 199
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindAddr:Ljava/net/InetAddress;

    .line 200
    const/4 v3, 0x0

    iput v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move v1, v2

    .line 204
    goto :goto_0
.end method

.method public getBindAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 124
    const-string v0, ""

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindPort()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindPort:I

    return v0
.end method

.method public declared-synchronized getClientList()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 96
    .local v0, "clientList":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lt v2, v3, :cond_0

    .line 101
    monitor-exit p0

    return-object v0

    .line 98
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "client_ip":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "clientList":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v1    # "client_ip":Ljava/lang/String;
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getHttpServerThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpServerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getServerSock()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public declared-synchronized getTimeout()I
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->timeout:I
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
    .line 231
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 176
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_0

    .line 188
    :goto_0
    return v1

    .line 180
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindAddr:Ljava/net/InetAddress;

    .line 181
    iput p2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindPort:I

    .line 182
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindPort:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    .line 183
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v1, v2

    .line 186
    goto :goto_0
.end method

.method public open(Ljava/net/InetAddress;I)Z
    .locals 7
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 161
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_0

    .line 171
    :goto_0
    return v1

    .line 165
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindPort:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    .line 166
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v1, v2

    .line 169
    goto :goto_0
.end method

.method public performControlPointConnectRendererListener(Z)V
    .locals 4
    .param p1, "isConnect"    # Z

    .prologue
    .line 277
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 278
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 287
    return-void

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    .line 281
    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .line 282
    .local v0, "listener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;
    if-eqz v0, :cond_1

    .line 284
    invoke-interface {v0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;->onReceiveDeviceConnect(Z)V

    .line 278
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public performRequestListener(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 4
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 252
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 253
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 258
    return-void

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPRequestListener;

    .line 256
    .local v0, "listener":Lorg/cybergarage/http/HTTPRequestListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/http/HTTPRequestListener;->httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized removeClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 82
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt v1, v2, :cond_0

    .line 91
    :goto_1
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeControlPointConnectRendererListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->controlPointListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public removeRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->isOpened()Z

    move-result v7

    if-nez v7, :cond_0

    .line 304
    const-string v7, "[QiyiHttpServer] [Error] Thread exit...[httpSock.open() == false]"

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v7, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 308
    .local v0, "addr":Ljava/net/SocketAddress;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[QiyiHttpServer] Thread start...ServerAddr="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 311
    .local v1, "clients":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/net/Socket;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 313
    .local v6, "thisThread":Ljava/lang/Thread;
    :goto_1
    iget-object v7, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpServerThread:Ljava/lang/Thread;

    if-eq v7, v6, :cond_1

    .line 340
    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 341
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Socket;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 352
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[QiyiHttpServer] Thread exit...ServerAddr="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Socket;>;"
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 319
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[QiyiHttpServer] Wait for connecting...HTTPServer="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->accept()Ljava/net/Socket;

    move-result-object v5

    .line 321
    .local v5, "sock":Ljava/net/Socket;
    if-eqz v5, :cond_2

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[QiyiHttpServer] Remote client connected...ClientAddr="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[QiyiHttpServer] Create thread to handle connection...ClientAddr="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 337
    new-instance v3, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;

    invoke-direct {v3, p0, v5}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;-><init>(Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;Ljava/net/Socket;)V

    .line 338
    .local v3, "httpServThread":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;
    invoke-virtual {v3}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;->start()V

    goto :goto_1

    .line 327
    .end local v3    # "httpServThread":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerThread;
    :cond_2
    :try_start_1
    const-string v7, "[QiyiHttpServer] [Error] Accept() failure...[sock == null]"

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 330
    .end local v5    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    const/4 v5, 0x0

    .line 334
    .restart local v5    # "sock":Ljava/net/Socket;
    goto :goto_2

    .line 343
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "sock":Ljava/net/Socket;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Socket;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/Socket;

    .line 346
    .restart local v5    # "sock":Ljava/net/Socket;
    :try_start_2
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 347
    :catch_1
    move-exception v2

    .line 349
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "iqiyi.QuicklyHTTPServer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "name":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 359
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpServerThread:Ljava/lang/Thread;

    .line 360
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 361
    const/4 v1, 0x1

    return v1
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->client:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 368
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->httpServerThread:Ljava/lang/Thread;

    .line 369
    const/4 v0, 0x1

    return v0
.end method
