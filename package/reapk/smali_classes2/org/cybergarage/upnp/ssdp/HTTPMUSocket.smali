.class public Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

.field private receiveBroadcastSocket:Ljava/net/DatagramSocket;

.field private receiveMulticastSocket:Ljava/net/MulticastSocket;

.field private sendBroadcastSocket:Ljava/net/DatagramSocket;

.field private ssdpMultiGroup:Ljava/net/InetSocketAddress;

.field private ssdpMultiIf:Ljava/net/NetworkInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 59
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    .line 60
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    .line 61
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    .line 62
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->sendBroadcastSocket:Ljava/net/DatagramSocket;

    .line 63
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "bindAddr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 59
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    .line 60
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    .line 61
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    .line 62
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->sendBroadcastSocket:Ljava/net/DatagramSocket;

    .line 63
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    .line 76
    return-void
.end method


# virtual methods
.method public closeReceiveBroadcastSocket()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 206
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    .line 212
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 213
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    .line 215
    :cond_2
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 218
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "+++++Fail to open the SSDP broad port"

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 223
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 224
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public closeReceiveMulticastSocket()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 274
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    if-nez v2, :cond_0

    .line 289
    :goto_0
    return v1

    .line 279
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v2, v3, v4}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 280
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->close()V

    .line 281
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Fail to close the receive multicast socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public closeSendBroadcastSocket()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->sendBroadcastSocket:Ljava/net/DatagramSocket;

    if-nez v2, :cond_0

    .line 269
    :goto_0
    return v1

    .line 261
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->sendBroadcastSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 262
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->sendBroadcastSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Fail to close the send broadcast socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->closeReceiveMulticastSocket()Z

    .line 81
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->closeReceiveBroadcastSocket()Z

    .line 82
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->closeSendBroadcastSocket()Z

    .line 83
    return-void
.end method

.method public getBroadcastSocket(I)Ljava/net/DatagramSocket;
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 383
    const/16 v0, 0x76c

    if-ne p1, v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    .line 390
    :goto_0
    return-object v0

    .line 386
    :cond_0
    const v0, 0x99de

    if-ne p1, v0, :cond_1

    .line 388
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    if-nez v3, :cond_1

    .line 92
    :cond_0
    const-string v3, ""

    .line 103
    :goto_0
    return-object v3

    .line 93
    :cond_1
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 94
    .local v2, "mcastAddr":Ljava/net/InetAddress;
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 95
    .local v1, "addrs":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_3

    .line 103
    const-string v3, ""

    goto :goto_0

    .line 97
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 98
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_4

    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_4

    .line 99
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 100
    :cond_4
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    .line 101
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getMulticastInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastPort()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getMulticastSocket()Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public getSocket()Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 233
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->openReceiveMulticastSocket(Ljava/lang/String;ILjava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    :goto_0
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 237
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openReceiveBroadcastSocket()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 186
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    .line 187
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 188
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    new-instance v3, Ljava/net/InetSocketAddress;

    const v4, 0x99de

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 190
    new-instance v2, Ljava/net/DatagramSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    .line 191
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 192
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    new-instance v3, Ljava/net/InetSocketAddress;

    const/16 v4, 0x76c

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "the result of open 39390 port socket is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveBroadcastSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 194
    const-string v3, ", and the result of open 1900 port socket is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->expandReceiveBroadcastSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Fail to open the SSDP broad port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openReceiveMulticastSocket(Ljava/lang/String;ILjava/net/InetAddress;)Z
    .locals 6
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "bindAddr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x1

    .line 163
    :try_start_0
    new-instance v3, Ljava/net/MulticastSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    .line 164
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 165
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 166
    .local v0, "bindSockAddr":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v3, v0}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 167
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 168
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 169
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    iget-object v4, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v3, v4, v5}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "addr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bindAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0    # "bindSockAddr":Ljava/net/InetSocketAddress;
    :goto_0
    return v2

    .line 171
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Fail to open the SSDP multicast port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 174
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 175
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openSendBroadcastSocket()Z
    .locals 3

    .prologue
    .line 245
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->sendBroadcastSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 246
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Fail to open the send broadcast socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public post(Lorg/cybergarage/http/HTTPRequest;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "req"    # Lorg/cybergarage/http/HTTPRequest;
    .param p2, "bindAddr"    # Ljava/lang/String;
    .param p3, "bindPort"    # I

    .prologue
    .line 352
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    const/16 v2, 0x400

    new-array v1, v2, [B

    .line 358
    .local v1, "ssdvRecvBuf":[B
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 359
    .local v0, "recvPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->receiveMulticastSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Receive multicast packet...["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getMAN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V

    .line 373
    return-object v0

    .line 369
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Multicast socket has already been closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "bindAddr"    # Ljava/lang/String;
    .param p3, "bindPort"    # I

    .prologue
    const/4 v4, 0x0

    .line 301
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 303
    :try_start_0
    new-instance v3, Ljava/net/MulticastSocket;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 304
    .local v3, "msock":Ljava/net/MulticastSocket;
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 309
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Send multicast packet["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 311
    .local v2, "ms":[B
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v2

    iget-object v7, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 312
    .local v0, "dgmPacket":Ljava/net/DatagramPacket;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getTimeToLive()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 313
    invoke-virtual {v3, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 314
    invoke-virtual {v3}, Ljava/net/MulticastSocket;->close()V

    .line 321
    const/4 v4, 0x1

    .end local v0    # "dgmPacket":Ljava/net/DatagramPacket;
    .end local v2    # "ms":[B
    .end local v3    # "msock":Ljava/net/MulticastSocket;
    :goto_1
    return v4

    .line 307
    :cond_0
    new-instance v3, Ljava/net/MulticastSocket;

    invoke-direct {v3}, Ljava/net/MulticastSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "msock":Ljava/net/MulticastSocket;
    goto :goto_0

    .line 315
    .end local v3    # "msock":Ljava/net/MulticastSocket;
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Send multicast packet failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendBroadcast(Ljava/lang/String;)Z
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send broadcast packet ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 330
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const-string v4, "255.255.255.255"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 331
    const v5, 0x99de

    .line 330
    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 332
    .local v1, "packet":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->sendBroadcastSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v1    # "packet":Ljava/net/DatagramPacket;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 333
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Send broadcast packet failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
