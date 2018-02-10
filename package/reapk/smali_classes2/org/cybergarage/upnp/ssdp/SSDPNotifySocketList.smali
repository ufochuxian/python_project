.class public Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private binds:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 35
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "binds"    # [Ljava/net/InetAddress;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 45
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 114
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 121
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 117
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->closeReceiveMulticastSocket()Z

    .line 118
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->closeReceiveBroadcastSocket()Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    return-object v0
.end method

.method public open()Z
    .locals 8

    .prologue
    .line 77
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 79
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_2

    .line 81
    array-length v6, v1

    new-array v0, v6, [Ljava/lang/String;

    .line 82
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_1

    .line 96
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v6, v0

    if-lt v2, v6, :cond_3

    .line 108
    const/4 v6, 0x1

    return v6

    .line 84
    :cond_1
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v4

    .line 89
    .local v4, "nHostAddrs":I
    new-array v0, v4, [Ljava/lang/String;

    .line 90
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 92
    invoke-static {v3}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 98
    .end local v3    # "n":I
    .end local v4    # "nHostAddrs":I
    .restart local v2    # "i":I
    :cond_3
    aget-object v6, v0, v2

    invoke-static {v6}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 96
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_5
    aget-object v6, v0, v2

    if-eqz v6, :cond_4

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "add ssdp notifysocket: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 103
    new-instance v5, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    aget-object v6, v0, v2

    invoke-direct {v5, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 104
    .local v5, "ssdpNotifySocket":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->openReceiveBroadcastSocket()Z

    .line 105
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 3
    .param p1, "ctrlPoint"    # Lorg/cybergarage/upnp/ControlPoint;

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 64
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 67
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 130
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 135
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 133
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->start()V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 140
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 145
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 143
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->stop()V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
