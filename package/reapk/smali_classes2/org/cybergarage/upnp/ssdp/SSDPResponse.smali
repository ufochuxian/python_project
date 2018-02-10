.class public Lorg/cybergarage/upnp/ssdp/SSDPResponse;
.super Lorg/cybergarage/http/HTTPResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 39
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setVersion(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPResponse;-><init>(Ljava/io/InputStream;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getFileMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "FILEMD5"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLeaseTime()I
    .locals 2

    .prologue
    .line 166
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "cacheCtrl":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/upnp/ssdp/SSDP;->getLeaseTime(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMYNAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "MYNAME"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getST()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "ST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "USN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnect(Z)V
    .locals 2
    .param p1, "keepConnect"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 120
    const-string v0, "IQIYIConnection"

    const-string v1, "Keep-Alive"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v0, "IQIYIConnection"

    const-string v1, "close"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDEVICEVERSION(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 139
    const-string v0, "DEVICEVERSION"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "FILEMD5"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setIQIYIDEVICE(I)V
    .locals 1
    .param p1, "deviceName"    # I

    .prologue
    .line 134
    const-string v0, "IQIYIDEVICE"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public setIQIYIPORT(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 147
    const-string v0, "IQIYIPORT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method public setIQIYIUDPPORT(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 152
    const-string v0, "IQIYIUDPPORT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public setIQIYIVERSION(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 129
    const-string v0, "IQIYIVERSION"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public setLeaseTime(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 161
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

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "Location"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setMYNAME(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "MYNAME"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setST(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "ST"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setUSN(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "USN"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
