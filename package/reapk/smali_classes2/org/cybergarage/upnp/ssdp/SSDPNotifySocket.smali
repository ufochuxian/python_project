.class public Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
.super Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;
.source "SourceFile"


# instance fields
.field private controlPoint:Lorg/cybergarage/upnp/ControlPoint;

.field private mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

.field private useIPv6Address:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 78
    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 62
    const-string v0, "239.255.255.250"

    .line 63
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 64
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 69
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    .line 70
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 71
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->getInstance()Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    .line 72
    return-void
.end method


# virtual methods
.method public getControlPoint()Lorg/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "req"    # Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    .param p2, "bindAddr"    # Ljava/lang/String;
    .param p3, "bindPort"    # I

    .prologue
    const/4 v2, 0x0

    .line 100
    if-nez p1, :cond_1

    .line 102
    const-string v3, "SSDPNotifyRequest is null"

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_0
    return v2

    .line 105
    :cond_1
    iget-boolean v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    if-eqz v3, :cond_2

    .line 107
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setHost(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/http/HTTPRequest;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0

    .line 110
    :cond_2
    const-string v3, "239.255.255.250"

    const/16 v4, 0x76c

    invoke-virtual {p1, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/http/HTTPRequest;Ljava/lang/String;I)Z

    move-result v1

    .line 112
    .local v1, "multicastResult":Z
    const-string v3, "255.255.255.255"

    const v4, 0x99de

    invoke-virtual {p1, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->sendBroadcast(Ljava/lang/String;)Z

    move-result v0

    .line 114
    .local v0, "broadcastResult":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Send multicast request is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and send broadcast result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 115
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 0
    .param p1, "ctrlp"    # Lorg/cybergarage/upnp/ControlPoint;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 83
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    .line 121
    new-instance v1, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveTask;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getControlPoint()Lorg/cybergarage/upnp/ControlPoint;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getMulticastSocket()Ljava/net/MulticastSocket;

    move-result-object v3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveTask;-><init>(Lorg/cybergarage/upnp/ControlPoint;Ljava/net/DatagramSocket;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    .line 123
    new-instance v1, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveTask;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getControlPoint()Lorg/cybergarage/upnp/ControlPoint;

    move-result-object v2

    const/16 v3, 0x76c

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getBroadcastSocket(I)Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveTask;-><init>(Lorg/cybergarage/upnp/ControlPoint;Ljava/net/DatagramSocket;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    .line 125
    new-instance v1, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveTask;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getControlPoint()Lorg/cybergarage/upnp/ControlPoint;

    move-result-object v2

    const v3, 0x99de

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getBroadcastSocket(I)Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveTask;-><init>(Lorg/cybergarage/upnp/ControlPoint;Ljava/net/DatagramSocket;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->finalize()V

    .line 131
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->stop()V

    .line 132
    return-void
.end method
