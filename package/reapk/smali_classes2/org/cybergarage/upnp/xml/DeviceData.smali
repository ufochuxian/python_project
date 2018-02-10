.class public Lorg/cybergarage/upnp/xml/DeviceData;
.super Lorg/cybergarage/upnp/xml/NodeData;
.source "SourceFile"


# instance fields
.field private advertiser:Lorg/cybergarage/upnp/device/Advertiser;

.field private controlActionListenerList:Lorg/cybergarage/util/ListenerList;

.field private descriptionFile:Ljava/io/File;

.field private descriptionURI:Ljava/lang/String;

.field private deviceType:I

.field private deviceVersion:I

.field private httpBinds:[Ljava/net/InetAddress;

.field private httpPort:I

.field private httpServerList:Lorg/cybergarage/http/HTTPServerList;

.field private leaseTime:I

.field private location:Ljava/lang/String;

.field private qiyiVersion:I

.field private qiyihttpPort:I

.field private qiyihttpServerList:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

.field private ssdpBinds:[Ljava/net/InetAddress;

.field private ssdpMulticastIPv4:Ljava/lang/String;

.field private ssdpMulticastIPv6:Ljava/lang/String;

.field private ssdpPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

.field private ssdpPort:I

.field private ssdpSearchSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

.field private udpqiyihttpPort:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lorg/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 42
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->descriptionURI:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->descriptionFile:Ljava/io/File;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->location:Ljava/lang/String;

    .line 85
    const/16 v0, 0x1e

    iput v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->leaseTime:I

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyiVersion:I

    .line 88
    iput v2, p0, Lorg/cybergarage/upnp/xml/DeviceData;->deviceType:I

    .line 89
    iput v2, p0, Lorg/cybergarage/upnp/xml/DeviceData;->deviceVersion:I

    .line 135
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    .line 149
    iput v2, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyihttpPort:I

    .line 162
    iput v2, p0, Lorg/cybergarage/upnp/xml/DeviceData;->udpqiyihttpPort:I

    .line 174
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyihttpServerList:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

    .line 186
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpBinds:[Ljava/net/InetAddress;

    .line 202
    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpPort:I

    .line 218
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->controlActionListenerList:Lorg/cybergarage/util/ListenerList;

    .line 235
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpSearchSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    .line 236
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpMulticastIPv4:Ljava/lang/String;

    .line 237
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpMulticastIPv6:Ljava/lang/String;

    .line 238
    const/16 v0, 0x76c

    iput v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpPort:I

    .line 239
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpBinds:[Ljava/net/InetAddress;

    .line 341
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .line 357
    iput-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->advertiser:Lorg/cybergarage/upnp/device/Advertiser;

    .line 36
    return-void
.end method


# virtual methods
.method public getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->advertiser:Lorg/cybergarage/upnp/device/Advertiser;

    return-object v0
.end method

.method public getControlActionListenerList()Lorg/cybergarage/util/ListenerList;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->controlActionListenerList:Lorg/cybergarage/util/ListenerList;

    return-object v0
.end method

.method public getDescriptionFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->descriptionFile:Ljava/io/File;

    return-object v0
.end method

.method public getDescriptionURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->descriptionURI:Ljava/lang/String;

    return-object v0
.end method

.method public getHTTPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpBinds:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpPort:I

    return v0
.end method

.method public getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lorg/cybergarage/http/HTTPServerList;

    iget-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpBinds:[Ljava/net/InetAddress;

    iget v2, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpPort:I

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/http/HTTPServerList;-><init>([Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    return-object v0
.end method

.method public getLeaseTime()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->leaseTime:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMulticastIPv4Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpMulticastIPv4:Ljava/lang/String;

    return-object v0
.end method

.method public getMulticastIPv6Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpMulticastIPv6:Ljava/lang/String;

    return-object v0
.end method

.method public getQiyiDeviceType()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->deviceType:I

    return v0
.end method

.method public getQiyiDeviceVersion()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->deviceVersion:I

    return v0
.end method

.method public getQiyiHttpServerList()Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
    .locals 3

    .prologue
    .line 178
    iget v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpPort:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyihttpPort:I

    .line 179
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyihttpServerList:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

    iget-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpBinds:[Ljava/net/InetAddress;

    iget v2, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyihttpPort:I

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;-><init>([Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyihttpServerList:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyihttpServerList:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

    return-object v0
.end method

.method public getQiyiVersion()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyiVersion:I

    return v0
.end method

.method public getQiyihttpPort()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyihttpPort:I

    return v0
.end method

.method public getSSDPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpBinds:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    return-object v0
.end method

.method public getSSDPPort()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpPort:I

    return v0
.end method

.method public getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    .locals 5

    .prologue
    .line 243
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpSearchSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    iget-object v1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpBinds:[Ljava/net/InetAddress;

    iget v2, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpPort:I

    iget-object v3, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpMulticastIPv4:Ljava/lang/String;

    iget-object v4, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpMulticastIPv6:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;-><init>([Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpSearchSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpSearchSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    return-object v0
.end method

.method public getUdpqiyihttpPort()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/cybergarage/upnp/xml/DeviceData;->udpqiyihttpPort:I

    return v0
.end method

.method public setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V
    .locals 0
    .param p1, "adv"    # Lorg/cybergarage/upnp/device/Advertiser;

    .prologue
    .line 361
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->advertiser:Lorg/cybergarage/upnp/device/Advertiser;

    .line 362
    return-void
.end method

.method public setDescriptionFile(Ljava/io/File;)V
    .locals 0
    .param p1, "descriptionFile"    # Ljava/io/File;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->descriptionFile:Ljava/io/File;

    .line 58
    return-void
.end method

.method public setDescriptionURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptionURI"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->descriptionURI:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setHTTPBindAddress([Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "inets"    # [Ljava/net/InetAddress;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpBinds:[Ljava/net/InetAddress;

    .line 191
    return-void
.end method

.method public setHTTPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 211
    iput p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->httpPort:I

    .line 212
    return-void
.end method

.method public setLeaseTime(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->leaseTime:I

    .line 99
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->location:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setMulticastIPv4Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpMulticastIPv4:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setMulticastIPv6Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpMulticastIPv6:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setQiyiDeviceType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 108
    iput p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->deviceType:I

    .line 109
    return-void
.end method

.method public setQiyiDeviceVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 128
    iput p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->deviceVersion:I

    .line 129
    return-void
.end method

.method public setQiyiVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 118
    iput p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyiVersion:I

    .line 119
    return-void
.end method

.method public setQiyihttpPort(I)V
    .locals 0
    .param p1, "qiyihttpPort"    # I

    .prologue
    .line 158
    iput p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->qiyihttpPort:I

    .line 159
    return-void
.end method

.method public setSSDPBindAddress([Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "inets"    # [Ljava/net/InetAddress;

    .prologue
    .line 282
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpBinds:[Ljava/net/InetAddress;

    .line 283
    return-void
.end method

.method public setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0
    .param p1, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 350
    iput-object p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpPacket:Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .line 351
    return-void
.end method

.method public setSSDPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 258
    iput p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->ssdpPort:I

    .line 259
    return-void
.end method

.method public setUdpqiyihttpPort(I)V
    .locals 0
    .param p1, "udpqiyihttpPort"    # I

    .prologue
    .line 171
    iput p1, p0, Lorg/cybergarage/upnp/xml/DeviceData;->udpqiyihttpPort:I

    .line 172
    return-void
.end method
