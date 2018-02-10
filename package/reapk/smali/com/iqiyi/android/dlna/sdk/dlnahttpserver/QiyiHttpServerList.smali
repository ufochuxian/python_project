.class public Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private binds:[Ljava/net/InetAddress;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->binds:[Ljava/net/InetAddress;

    .line 27
    const/16 v0, 0xfa4

    iput v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->port:I

    .line 31
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "list"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->binds:[Ljava/net/InetAddress;

    .line 27
    const/16 v0, 0xfa4

    iput v0, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->port:I

    .line 35
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->binds:[Ljava/net/InetAddress;

    .line 36
    iput p2, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->port:I

    .line 37
    return-void
.end method


# virtual methods
.method public addControlPointConnectListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->size()I

    move-result v1

    .line 56
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 61
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->getHTTPServer(I)Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    move-result-object v2

    .line 59
    .local v2, "server":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
    invoke-virtual {v2, p1}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->addControlPointConnectRendererListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->size()I

    move-result v1

    .line 46
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 51
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->getHTTPServer(I)Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    move-result-object v2

    .line 49
    .local v2, "server":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
    invoke-virtual {v2, p1}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->size()I

    move-result v1

    .line 75
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 80
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->getHTTPServer(I)Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    move-result-object v2

    .line 78
    .local v2, "server":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->close()Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getHTTPServer(I)Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    return-object v0
.end method

.method public open()I
    .locals 9

    .prologue
    .line 84
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->binds:[Ljava/net/InetAddress;

    .line 86
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_2

    .line 88
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 89
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-lt v3, v7, :cond_1

    .line 102
    .end local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    .line 103
    .local v4, "j":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v7, v0

    if-lt v3, v7, :cond_3

    .line 118
    return v4

    .line 91
    .end local v4    # "j":I
    :cond_1
    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v6

    .line 96
    .local v6, "nHostAddrs":I
    new-array v0, v6, [Ljava/lang/String;

    .line 97
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_2
    if-ge v5, v6, :cond_0

    .line 99
    invoke-static {v5}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 105
    .end local v5    # "n":I
    .end local v6    # "nHostAddrs":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_3
    aget-object v7, v0, v3

    invoke-static {v7}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 103
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    :cond_4
    new-instance v2, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    invoke-direct {v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;-><init>()V

    .line 108
    .local v2, "httpServer":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
    aget-object v7, v0, v3

    if-eqz v7, :cond_5

    aget-object v7, v0, v3

    iget v8, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->port:I

    invoke-virtual {v2, v7, v8}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->open(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->close()V

    .line 111
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->clear()V

    goto :goto_3

    .line 114
    :cond_6
    invoke-virtual {p0, v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public open(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->port:I

    .line 124
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->open()I

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
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->size()I

    move-result v1

    .line 134
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 139
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->getHTTPServer(I)Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    move-result-object v2

    .line 137
    .local v2, "server":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->start()Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->size()I

    move-result v1

    .line 144
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 149
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->getHTTPServer(I)Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    move-result-object v2

    .line 147
    .local v2, "server":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->stop()Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
