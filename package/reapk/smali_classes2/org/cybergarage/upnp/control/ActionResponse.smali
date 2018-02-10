.class public Lorg/cybergarage/upnp/control/ActionResponse;
.super Lorg/cybergarage/upnp/control/ControlResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ControlResponse;-><init>()V

    .line 35
    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/control/ActionResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/soap/SOAPResponse;)V
    .locals 2
    .param p1, "soapRes"    # Lorg/cybergarage/soap/SOAPResponse;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/control/ControlResponse;-><init>(Lorg/cybergarage/soap/SOAPResponse;)V

    .line 41
    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/control/ActionResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private createResponseNode(Lorg/cybergarage/upnp/Action;)Lorg/cybergarage/xml/Node;
    .locals 10
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 62
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "actionName":Ljava/lang/String;
    new-instance v1, Lorg/cybergarage/xml/Node;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "u:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Response"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "actionNameResNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getService()Lorg/cybergarage/upnp/Service;

    move-result-object v7

    .line 66
    .local v7, "service":Lorg/cybergarage/upnp/Service;
    if-eqz v7, :cond_0

    .line 68
    const-string v8, "xmlns:u"

    invoke-virtual {v7}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v3

    .line 72
    .local v3, "argList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v6

    .line 73
    .local v6, "nArgs":I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-lt v5, v6, :cond_1

    .line 84
    return-object v1

    .line 75
    :cond_1
    invoke-virtual {v3, v5}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 76
    .local v2, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->isOutDirection()Z

    move-result v8

    if-nez v8, :cond_2

    .line 73
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    :cond_2
    new-instance v4, Lorg/cybergarage/xml/Node;

    invoke-direct {v4}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 79
    .local v4, "argNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_1
.end method

.method private getActionResponseNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionResponse;->getBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 94
    .local v0, "bodyNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getResponse()Lorg/cybergarage/upnp/ArgumentList;
    .locals 8

    .prologue
    .line 101
    new-instance v1, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    .line 103
    .local v1, "argList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ActionResponse;->getActionResponseNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 104
    .local v6, "resNode":Lorg/cybergarage/xml/Node;
    if-nez v6, :cond_1

    .line 117
    :cond_0
    return-object v1

    .line 107
    :cond_1
    invoke-virtual {v6}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    .line 108
    .local v3, "nArgs":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 110
    invoke-virtual {v6, v2}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 111
    .local v5, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "value":Ljava/lang/String;
    new-instance v0, Lorg/cybergarage/upnp/Argument;

    invoke-direct {v0, v4, v7}, Lorg/cybergarage/upnp/Argument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setResponse(Lorg/cybergarage/upnp/Action;)V
    .locals 4
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 50
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/control/ActionResponse;->setStatusCode(I)V

    .line 52
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionResponse;->getBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 53
    .local v0, "bodyNode":Lorg/cybergarage/xml/Node;
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/control/ActionResponse;->createResponseNode(Lorg/cybergarage/upnp/Action;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 54
    .local v2, "resNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 56
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionResponse;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 57
    .local v1, "envNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/control/ActionResponse;->setContent(Lorg/cybergarage/xml/Node;)V

    .line 58
    return-void
.end method
