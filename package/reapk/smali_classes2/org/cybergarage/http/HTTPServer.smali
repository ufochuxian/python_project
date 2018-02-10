.class public Lorg/cybergarage/http/HTTPServer;
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

.field private httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

.field private httpServerThread:Ljava/lang/Thread;

.field private serverSock:Ljava/net/ServerSocket;

.field protected timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 86
    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    .line 91
    const v0, 0xea60

    iput v0, p0, Lorg/cybergarage/http/HTTPServer;->timeout:I

    .line 216
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    .line 242
    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 77
    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 79
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "osName":Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
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

    .line 188
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 203
    :goto_0
    return-object v1

    .line 192
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 193
    .local v1, "sock":Ljava/net/Socket;
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 194
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 195
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 197
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v1    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 203
    goto :goto_0
.end method

.method public addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public close()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_0

    .line 183
    :goto_0
    return v1

    .line 174
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 175
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 176
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 177
    const/4 v3, 0x0

    iput v3, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move v1, v2

    .line 181
    goto :goto_0
.end method

.method public getBindAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 101
    const-string v0, ""

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindPort()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    return v0
.end method

.method public getHttpServerThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getServerSock()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public declared-synchronized getTimeout()I
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/cybergarage/http/HTTPServer;->timeout:I
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
    .line 209
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

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

    .line 153
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_0

    .line 165
    :goto_0
    return v1

    .line 157
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 158
    iput p2, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    .line 159
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 160
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v1, v2

    .line 163
    goto :goto_0
.end method

.method public open(Ljava/net/InetAddress;I)Z
    .locals 7
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_0

    .line 148
    :goto_0
    return v1

    .line 142
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 143
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/net/ServerSocket;->setPerformancePreferences(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v1, v2

    .line 146
    goto :goto_0
.end method

.method public performRequestListener(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 4
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 230
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 231
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 236
    return-void

    .line 233
    :cond_0
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPRequestListener;

    .line 234
    .local v0, "listener":Lorg/cybergarage/http/HTTPRequestListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/http/HTTPRequestListener;->httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServer;->isOpened()Z

    move-result v7

    if-nez v7, :cond_0

    .line 253
    const-string v7, "[HTTPServer] [Error] thread exit...[serverSock == null]"

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v7, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 257
    .local v0, "addr":Ljava/net/SocketAddress;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[HTTPServer] Thread start...ServerAddr="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 258
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 259
    .local v1, "clients":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/net/Socket;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 261
    .local v6, "thisThread":Ljava/lang/Thread;
    :goto_1
    iget-object v7, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    if-eq v7, v6, :cond_1

    .line 289
    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 290
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Socket;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[HTTPServer] Thread exit...ServerAddr="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Socket;>;"
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 267
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[HTTPServer] Wait for connecting...HTTPServer="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServer;->accept()Ljava/net/Socket;

    move-result-object v5

    .line 269
    .local v5, "sock":Ljava/net/Socket;
    if-eqz v5, :cond_2

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[HTTPServer] Remote client connected...ClientAddr="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[HTTPServer] Create thread to handle connection...ClientAddr="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 285
    new-instance v3, Lorg/cybergarage/http/HTTPServerThread;

    invoke-direct {v3, p0, v5}, Lorg/cybergarage/http/HTTPServerThread;-><init>(Lorg/cybergarage/http/HTTPServer;Ljava/net/Socket;)V

    .line 286
    .local v3, "httpServThread":Lorg/cybergarage/http/HTTPServerThread;
    invoke-virtual {v3}, Lorg/cybergarage/http/HTTPServerThread;->start()V

    .line 287
    const-string v7, "httpServThread ..."

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_1

    .line 275
    .end local v3    # "httpServThread":Lorg/cybergarage/http/HTTPServerThread;
    :cond_2
    :try_start_1
    const-string v7, "[HTTPServer] [Error] Accept() failure...[sock == null]"

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 278
    .end local v5    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    const/4 v5, 0x0

    .line 282
    .restart local v5    # "sock":Ljava/net/Socket;
    goto :goto_2

    .line 292
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "sock":Ljava/net/Socket;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Socket;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/Socket;

    .line 295
    .restart local v5    # "sock":Ljava/net/Socket;
    :try_start_2
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 296
    :catch_1
    move-exception v2

    .line 298
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/cybergarage/http/HTTPServer;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "iqiyi.HTTPServer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "name":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 308
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 309
    iget-object v1, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 310
    const/4 v1, 0x1

    return v1
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 316
    const/4 v0, 0x1

    return v0
.end method
