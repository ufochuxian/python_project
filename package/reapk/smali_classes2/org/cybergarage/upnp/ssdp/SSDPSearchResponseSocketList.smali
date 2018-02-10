.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
.super Ljava/util/Vector;
.source "SourceFile"


# instance fields
.field private binds:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "binds"    # [Ljava/net/InetAddress;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 47
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 48
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 142
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 148
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 145
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->close()Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    return-object v0
.end method

.method public open()Z
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x76c

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v0

    return v0
.end method

.method public open(I)Z
    .locals 11
    .param p1, "port"    # I

    .prologue
    const/4 v8, 0x0

    .line 82
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 84
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_2

    .line 86
    array-length v9, v1

    new-array v0, v9, [Ljava/lang/String;

    .line 87
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v1

    if-lt v3, v9, :cond_1

    .line 104
    .end local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    :try_start_0
    array-length v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, v9, :cond_3

    .line 131
    const/4 v8, 0x1

    :goto_2
    return v8

    .line 89
    .end local v4    # "j":I
    .restart local v3    # "i":I
    :cond_1
    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getNHostAddresses="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; n="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v6

    .line 95
    .local v6, "nHostAddrs":I
    new-array v0, v6, [Ljava/lang/String;

    .line 96
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_3
    if-ge v5, v6, :cond_0

    .line 98
    invoke-static {v5}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v5

    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getNHostAddresses="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; n="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 109
    .end local v5    # "n":I
    .end local v6    # "nHostAddrs":I
    .restart local v4    # "j":I
    :cond_3
    :try_start_1
    new-instance v7, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct {v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;-><init>()V

    .line 110
    .local v7, "socket":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    aget-object v9, v0, v4

    invoke-static {v9}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 104
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    :cond_4
    aget-object v9, v0, v4

    invoke-virtual {v7, v9, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->open(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getNHostAddresses="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v0, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; j="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; port="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 116
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 117
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 124
    .end local v7    # "socket":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 127
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 128
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    goto/16 :goto_2

    .line 120
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "socket":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getNHostAddresses open success"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v0, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; j="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; port="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method public post(Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z
    .locals 8
    .param p1, "req"    # Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;

    .prologue
    .line 180
    const/4 v4, 0x1

    .line 181
    .local v4, "ret":Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v3

    .line 182
    .local v3, "nSockets":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 207
    .end local v4    # "ret":Z
    :goto_1
    return v4

    .line 184
    .restart local v4    # "ret":Z
    :cond_0
    const/4 v5, 0x0

    .line 187
    .local v5, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 194
    invoke-virtual {v5}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "bindAddr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->setLocalAddress(Ljava/lang/String;)V

    .line 196
    const-string v6, "239.255.255.250"

    .line 197
    .local v6, "ssdpAddr":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v6

    .line 182
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "bindAddr":Ljava/lang/String;
    .end local v6    # "ssdpAddr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "++++Do search when stop, exception happened!!!"

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const/4 v4, 0x0

    goto :goto_1

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bindAddr":Ljava/lang/String;
    .restart local v6    # "ssdpAddr":Ljava/lang/String;
    :cond_2
    const/16 v7, 0x76c

    invoke-virtual {v5, v6, v7, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 204
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 3
    .param p1, "ctrlPoint"    # Lorg/cybergarage/upnp/ControlPoint;

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 60
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 65
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 63
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 157
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 162
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 160
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->start()V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 167
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 172
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 170
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->stop()V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
