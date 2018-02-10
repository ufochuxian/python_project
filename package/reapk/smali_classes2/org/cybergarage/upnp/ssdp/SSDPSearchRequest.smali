.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;
.super Lorg/cybergarage/upnp/ssdp/SSDPRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "upnp:rootdevice"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "serachTarget"    # Ljava/lang/String;

    .prologue
    .line 43
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "serachTarget"    # Ljava/lang/String;
    .param p2, "mx"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/SSDPRequest;-><init>()V

    .line 32
    const-string v0, "M-SEARCH"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->setMethod(Ljava/lang/String;)V

    .line 33
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->setURI(Ljava/lang/String;)V

    .line 35
    const-string v0, "ST"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "MX"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "MAN"

    const-string v1, "\"ssdp:discover\""

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public setLocalAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "239.255.255.250"

    .line 58
    .local v0, "ssdpAddr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLocalAddress: bindAddr = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHost(Ljava/lang/String;I)V

    .line 62
    return-void
.end method
