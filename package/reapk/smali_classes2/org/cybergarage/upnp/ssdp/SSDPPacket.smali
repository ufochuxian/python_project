.class public Lorg/cybergarage/upnp/ssdp/SSDPPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dgmPacket:Ljava/net/DatagramPacket;

.field private localAddr:Ljava/lang/String;

.field private mHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public packetBytes:[B

.field private timeStamp:J


# direct methods
.method public constructor <init>([BI)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->mHeaderMap:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 46
    return-void
.end method

.method private getValue([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {p1, p2}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Cache-Control"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 136
    :goto_0
    return-object v1

    .line 127
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 128
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 134
    .local v0, "packet":Ljava/net/DatagramPacket;
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 136
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    goto :goto_0
.end method

.method public getDatagramPacket()Ljava/net/DatagramPacket;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "FILEMD5"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MYNAME"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "HOST"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostInetAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 355
    const-string v0, "127.0.0.1"

    .line 356
    .local v0, "addrStr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "host":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 358
    .local v1, "canmaIdx":I
    if-ltz v1, :cond_1

    .line 360
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    .line 362
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_1

    .line 364
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_1
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 367
    .local v3, "isockaddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    return-object v4
.end method

.method public getLeaseTime()I
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/ssdp/SSDP;->getLeaseTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Location"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMAN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MAN"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMX()I
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MX"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getIntegerValue([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MYNAME"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNT()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "NT"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNTS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "NTS"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQIYIConnect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "IQIYIConnection"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQiyiDeviceType()I
    .locals 3

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v1

    const-string v2, "IQIYIDEVICE"

    invoke-direct {p0, v1, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "device":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 261
    :cond_0
    const/4 v1, 0x0

    .line 262
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getQiyiDeviceVersion()I
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v1

    const-string v2, "DEVICEVERSION"

    invoke-direct {p0, v1, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "device":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 270
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getQiyiHttpPort()I
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v1

    const-string v2, "IQIYIPORT"

    invoke-direct {p0, v1, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "port":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 229
    :cond_0
    const v1, 0x9a61

    .line 230
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getQiyiUDPHttpPort()I
    .locals 5

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v3

    const-string v4, "IQIYIUDPPORT"

    invoke-direct {p0, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "port":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 237
    :cond_0
    const v2, 0x9a62

    .line 246
    :goto_0
    return v2

    .line 238
    :cond_1
    const v2, 0x9a62

    .line 241
    .local v2, "retport":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid port = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getQiyiVersion()I
    .locals 3

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v1

    const-string v2, "IQIYIVERSION"

    invoke-direct {p0, v1, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "version":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 253
    :cond_0
    const/4 v1, -0x1

    .line 254
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public getST()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "ST"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Server"

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->timeStamp:J

    return-wide v0
.end method

.method public getUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "USN"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/NTS;->isAlive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isByeBye()Z
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/NTS;->isByeBye(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDiscover()Z
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getMAN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/MAN;->isDiscover(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMicrosoftServer()Z
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getServer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Microsoft-Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQiyiServer()Z
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iqiyi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 376
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/device/NT;->isRootDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/device/ST;->isRootDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/USN;->isRootDevice(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRounterServer()Z
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNT()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternetGatewayDevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternetGatewayDevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupperConnectKeepAlive()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getQIYIConnect()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "qiyiConnect":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 330
    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    const/4 v1, 0x1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 333
    :cond_1
    const-string v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->timeStamp:J

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
