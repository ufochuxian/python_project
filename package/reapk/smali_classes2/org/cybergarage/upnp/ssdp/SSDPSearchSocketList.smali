.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private binds:[Ljava/net/InetAddress;

.field private multicastIPv4:Ljava/lang/String;

.field private multicastIPv6:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 34
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    .line 35
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    .line 36
    const/16 v0, 0x76c

    iput v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    .line 40
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "binds"    # [Ljava/net/InetAddress;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 34
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    .line 35
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    .line 36
    const/16 v0, 0x76c

    iput v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    .line 49
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 50
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "binds"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "multicastIPv4"    # Ljava/lang/String;
    .param p4, "multicastIPv6"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 34
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    .line 35
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    .line 36
    const/16 v0, 0x76c

    iput v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    .line 66
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 67
    iput p2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    .line 68
    iput-object p3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public addSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchListener;

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 91
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 96
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 94
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->addSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 143
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->clear()V

    .line 149
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 146
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->closeReceiveMulticastSocket()Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open()Z
    .locals 9

    .prologue
    .line 104
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 106
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_2

    .line 108
    array-length v6, v1

    new-array v0, v6, [Ljava/lang/String;

    .line 109
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_1

    .line 123
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v6, v0

    if-lt v2, v6, :cond_3

    .line 137
    const/4 v6, 0x1

    return v6

    .line 111
    :cond_1
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v4

    .line 116
    .local v4, "nHostAddrs":I
    new-array v0, v4, [Ljava/lang/String;

    .line 117
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 119
    invoke-static {v3}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 125
    .end local v3    # "n":I
    .end local v4    # "nHostAddrs":I
    .restart local v2    # "i":I
    :cond_3
    aget-object v6, v0, v2

    invoke-static {v6}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 123
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :cond_5
    aget-object v6, v0, v2

    if-eqz v6, :cond_4

    .line 130
    aget-object v6, v0, v2

    invoke-static {v6}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 131
    new-instance v5, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    aget-object v6, v0, v2

    iget v7, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    iget-object v8, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    .local v5, "ssdpSearchSocket":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :goto_4
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 133
    .end local v5    # "ssdpSearchSocket":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :cond_6
    new-instance v5, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    aget-object v6, v0, v2

    iget v7, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    iget-object v8, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v5    # "ssdpSearchSocket":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    goto :goto_4
.end method

.method public start()V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 158
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 163
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 161
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->start()V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 168
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 173
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 171
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->stop()V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
