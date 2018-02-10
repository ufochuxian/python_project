.class public Lorg/cybergarage/upnp/ssdp/SSDPRequest;
.super Lorg/cybergarage/http/HTTPRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 33
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setVersion(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPRequest;-><init>(Ljava/io/InputStream;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getFileMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "FILEMD5"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeaseTime()I
    .locals 2

    .prologue
    .line 176
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "cacheCtrl":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/upnp/ssdp/SSDP;->getLeaseTime(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMYNAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "MYNAME"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "NT"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNTS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "NTS"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "USN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnect(Z)V
    .locals 2
    .param p1, "keepConnect"    # Z

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 97
    const-string v0, "IQIYIConnection"

    const-string v1, "Keep-Alive"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v0, "IQIYIConnection"

    const-string v1, "close"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDEVICEVERSION(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 129
    const-string v0, "DEVICEVERSION"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "FILEMD5"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setIQIYIDEVICE(I)V
    .locals 1
    .param p1, "deviceName"    # I

    .prologue
    .line 124
    const-string v0, "IQIYIDEVICE"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method public setIQIYIPORT(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 109
    const-string v0, "IQIYIPORT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public setIQIYIUDPPORT(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 119
    const-string v0, "IQIYIUDPPORT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public setIQIYIVERSION(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 114
    const-string v0, "IQIYIVERSION"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method public setLeaseTime(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 171
    const-string v0, "Cache-Control"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "max-age="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "Location"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setMYNAME(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "MYNAME"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setNT(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setNTS(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setUSN(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "USN"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method
