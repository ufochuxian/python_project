.class public Lorg/cybergarage/upnp/ssdp/HTTPUSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private localAddr:Ljava/lang/String;

.field private ssdpUniSock:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->open()Z

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bindPort"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->open(I)Z

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "bindAddr"    # Ljava/lang/String;
    .param p2, "bindPort"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->open(Ljava/lang/String;I)Z

    .line 60
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 183
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    if-nez v2, :cond_0

    .line 196
    :goto_0
    return v1

    .line 188
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 189
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 193
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 70
    return-void
.end method

.method public getDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUDPSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public open()Z
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 110
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open(I)Z
    .locals 5
    .param p1, "bindPort"    # I

    .prologue
    const/4 v2, 0x1

    .line 160
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 164
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 165
    .local v0, "bindSock":Ljava/net/InetSocketAddress;
    new-instance v3, Ljava/net/DatagramSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 166
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 167
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "bindSock":Ljava/net/InetSocketAddress;
    :goto_0
    return v2

    .line 168
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "bindAddr"    # Ljava/lang/String;
    .param p2, "bindPort"    # I

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 127
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v3, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 128
    .local v0, "bindInetAddr":Ljava/net/InetSocketAddress;
    new-instance v3, Ljava/net/DatagramSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 129
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 130
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 131
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTTPUSocket REUSEADDR is enabled: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->setLocalAddress(Ljava/lang/String;)V

    .line 155
    .end local v0    # "bindInetAddr":Ljava/net/InetSocketAddress;
    :goto_0
    return v2

    .line 132
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 135
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 205
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v4

    .line 213
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 214
    .local v2, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 215
    .local v3, "ms":[B
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v3

    invoke-direct {v0, v5, v6, v2, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 216
    .local v0, "dgmPacket":Ljava/net/DatagramPacket;
    iget-object v5, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 218
    iget-object v5, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 229
    const/4 v4, 0x1

    goto :goto_0

    .line 221
    :cond_2
    const-string v5, "ssdpUniSock == null && dgmPacket== null"

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v0    # "dgmPacket":Ljava/net/DatagramPacket;
    .end local v2    # "inetAddr":Ljava/net/InetAddress;
    .end local v3    # "ms":[B
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 6

    .prologue
    .line 239
    const/16 v3, 0x400

    new-array v2, v3, [B

    .line 240
    .local v2, "ssdvRecvBuf":[B
    new-instance v1, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 241
    .local v1, "recvPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 244
    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "recvPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :goto_0
    return-object v1

    .line 246
    .restart local v1    # "recvPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSDPPacket receive exception e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 81
    return-void
.end method
