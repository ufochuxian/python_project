.class public Lorg/cybergarage/upnp/event/SubscriptionRequest;
.super Lorg/cybergarage/http/HTTPRequest;
.source "SourceFile"


# static fields
.field private static final CALLBACK_END_WITH:Ljava/lang/String; = ">"

.field private static final CALLBACK_START_WITH:Ljava/lang/String; = "<"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setContentLength(J)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 0
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->set(Lorg/cybergarage/http/HTTPRequest;)V

    .line 55
    return-void
.end method

.method private setService(Lorg/cybergarage/upnp/Service;)V
    .locals 7
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 63
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getEventSubURL()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "eventSubURL":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v1, v6}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setURI(Ljava/lang/String;Z)V

    .line 68
    const-string v5, ""

    .line 69
    .local v5, "urlBaseStr":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 70
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v5

    .line 73
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 75
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 76
    .local v4, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v4, :cond_2

    .line 77
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v5

    .line 81
    .end local v4    # "rootDev":Lorg/cybergarage/upnp/Device;
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_4

    .line 83
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 84
    .restart local v4    # "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v4, :cond_4

    .line 85
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 89
    .end local v4    # "rootDev":Lorg/cybergarage/upnp/Device;
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_6

    .line 91
    :cond_5
    invoke-static {v1}, Lorg/cybergarage/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 92
    move-object v5, v1

    .line 95
    :cond_6
    invoke-static {v5}, Lorg/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "reqHost":Ljava/lang/String;
    invoke-static {v5}, Lorg/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v3

    .line 98
    .local v3, "reqPort":I
    invoke-virtual {p0, v2, v3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setHost(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setRequestHost(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setRequestPort(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    const-string v0, "CALLBACK"

    const-string v1, "<"

    const-string v2, ">"

    invoke-virtual {p0, v0, v1, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "GID"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "NT"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    const-string v1, "SID"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/event/Subscription;->getSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "sid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 194
    const-string v0, ""

    .line 195
    .end local v0    # "sid":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 215
    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/event/Subscription;->getTimeout(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCallback()Z
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "callback":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNT()Z
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getNT()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "nt":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSID()Z
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "sid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public post()Lorg/cybergarage/upnp/event/SubscriptionResponse;
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getRequestPort()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v0

    .line 234
    .local v0, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    new-instance v1, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>(Lorg/cybergarage/http/HTTPResponse;)V

    return-object v1
.end method

.method public post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V
    .locals 0
    .param p1, "subRes"    # Lorg/cybergarage/upnp/event/SubscriptionResponse;

    .prologue
    .line 224
    invoke-super {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 225
    return-void
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "CALLBACK"

    const-string v1, "<"

    const-string v2, ">"

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setGID(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "GID"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setNT(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setRenewRequest(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)V
    .locals 1
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 114
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setMethod(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setService(Lorg/cybergarage/upnp/Service;)V

    .line 116
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setSID(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p3, p4}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setTimeout(J)V

    .line 118
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v0, "SID"

    invoke-static {p1}, Lorg/cybergarage/upnp/event/Subscription;->toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public setSubscribeRequest(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)V
    .locals 1
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 105
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setMethod(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setService(Lorg/cybergarage/upnp/Service;)V

    .line 107
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setCallback(Ljava/lang/String;)V

    .line 108
    const-string v0, "upnp:event"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setNT(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p3, p4}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setTimeout(J)V

    .line 110
    return-void
.end method

.method public final setTimeout(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 210
    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Lorg/cybergarage/upnp/event/Subscription;->toTimeoutHeaderString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public setUnsubscribeRequest(Lorg/cybergarage/upnp/Service;)V
    .locals 1
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 122
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setMethod(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setService(Lorg/cybergarage/upnp/Service;)V

    .line 124
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setSID(Ljava/lang/String;)V

    .line 125
    return-void
.end method
