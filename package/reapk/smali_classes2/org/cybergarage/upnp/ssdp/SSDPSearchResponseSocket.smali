.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
.super Lorg/cybergarage/upnp/ssdp/HTTPUSocket;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private controlPoint:Lorg/cybergarage/upnp/ControlPoint;

.field private deviceSearchResponseThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 65
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 36
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "bindAddr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 65
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 42
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getControlPoint()Lorg/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public interruptThread()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 121
    return-void
.end method

.method public post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "req"    # Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;

    .prologue
    .line 137
    invoke-virtual {p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchResponse;)Z
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "res"    # Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;

    .prologue
    .line 128
    invoke-virtual {p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 71
    .local v2, "thisThread":Ljava/lang/Thread;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getControlPoint()Lorg/cybergarage/upnp/ControlPoint;

    move-result-object v0

    .line 73
    .local v0, "ctrlPoint":Lorg/cybergarage/upnp/ControlPoint;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    if-eq v3, v2, :cond_2

    .line 87
    :cond_1
    return-void

    .line 75
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 76
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v1

    .line 77
    .local v1, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v1, :cond_1

    .line 79
    if-eqz v0, :cond_0

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "++++++++searchResponseReceived get: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->searchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 0
    .param p1, "ctrlp"    # Lorg/cybergarage/upnp/ControlPoint;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 54
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 92
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "iqiyi.SSDPSearchResponseSocket/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "name":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v2

    .line 95
    .local v2, "s":Ljava/net/DatagramSocket;
    if-nez v2, :cond_0

    .line 98
    :cond_0
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 99
    .local v0, "localAddr":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->interruptThread()V

    .line 105
    new-instance v3, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 106
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->interruptThread()V

    .line 112
    return-void
.end method
