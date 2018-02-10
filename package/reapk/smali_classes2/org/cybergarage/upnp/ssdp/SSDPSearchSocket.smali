.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
.super Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;
.source "SourceFile"


# instance fields
.field private deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

.field private mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

.field private useIPv6Address:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "bindAddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "multicast"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 136
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    .line 62
    invoke-virtual {p0, p1, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->getInstance()Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "bindAddr"    # Ljava/net/InetAddress;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 136
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    .line 74
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 76
    check-cast p1, Ljava/net/Inet6Address;

    .end local p1    # "bindAddr":Ljava/net/InetAddress;
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/net/Inet6Address;)Z

    .line 81
    :goto_0
    return-void

    .line 79
    .restart local p1    # "bindAddr":Ljava/net/InetAddress;
    :cond_0
    check-cast p1, Ljava/net/Inet4Address;

    .end local p1    # "bindAddr":Ljava/net/InetAddress;
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/net/Inet4Address;)Z

    goto :goto_0
.end method


# virtual methods
.method public addSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchListener;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "239.255.255.250"

    .line 123
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 124
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 129
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bind"    # Ljava/lang/String;
    .param p2, "multicast"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 110
    :goto_0
    const/16 v0, 0x76c

    invoke-virtual {p0, p2, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 103
    :cond_0
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot open a UDP Socket for IPv6 address on IPv4 interface or viceversa"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Ljava/net/Inet4Address;)Z
    .locals 2
    .param p1, "bindAddr"    # Ljava/net/Inet4Address;

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 89
    const-string v0, "239.255.255.250"

    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->openReceiveMulticastSocket(Ljava/lang/String;ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/net/Inet6Address;)Z
    .locals 2
    .param p1, "bindAddr"    # Ljava/net/Inet6Address;

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 95
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->openReceiveMulticastSocket(Ljava/lang/String;ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public performSearchListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 4
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 150
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 151
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 156
    return-void

    .line 153
    :cond_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/SearchListener;

    .line 154
    .local v0, "listener":Lorg/cybergarage/upnp/device/SearchListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/SearchListener;->deviceSearchReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchListener;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/16 v4, 0x3a

    .line 164
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "iqiyi.SSDPSearchSocket/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "name":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "localAddr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getMulticastAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getMulticastPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 174
    :cond_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    new-instance v3, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getMulticastSocket()Ljava/net/MulticastSocket;

    move-result-object v4

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;-><init>(Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;Ljava/net/DatagramSocket;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->closeReceiveMulticastSocket()Z

    .line 180
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->mSsdpPacketReceiveThreadPool:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->stop()V

    .line 181
    return-void
.end method
