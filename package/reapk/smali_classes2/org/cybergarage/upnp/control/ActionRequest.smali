.class public Lorg/cybergarage/upnp/control/ActionRequest;
.super Lorg/cybergarage/upnp/control/ControlRequest;
.source "SourceFile"


# instance fields
.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ControlRequest;-><init>()V

    .line 57
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/control/ActionRequest;->mutex:Lorg/cybergarage/util/Mutex;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 1
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ControlRequest;-><init>()V

    .line 57
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/control/ActionRequest;->mutex:Lorg/cybergarage/util/Mutex;

    .line 40
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/control/ActionRequest;->set(Lorg/cybergarage/http/HTTPRequest;)V

    .line 41
    return-void
.end method

.method private createContentNode(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/Action;Lorg/cybergarage/upnp/ArgumentList;)Lorg/cybergarage/xml/Node;
    .locals 8
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "action"    # Lorg/cybergarage/upnp/Action;
    .param p3, "argList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 132
    invoke-virtual {p2}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "actionName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "serviceType":Ljava/lang/String;
    new-instance v1, Lorg/cybergarage/xml/Node;

    invoke-direct {v1}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 136
    .local v1, "actionNode":Lorg/cybergarage/xml/Node;
    const-string v7, "u"

    invoke-virtual {v1, v7, v0}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v7, "u"

    invoke-virtual {v1, v7, v6}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v3

    .line 140
    .local v3, "argListCnt":I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-lt v5, v3, :cond_0

    .line 149
    return-object v1

    .line 142
    :cond_0
    invoke-virtual {p3, v5}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 143
    .local v2, "arg":Lorg/cybergarage/upnp/Argument;
    new-instance v4, Lorg/cybergarage/xml/Node;

    invoke-direct {v4}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 144
    .local v4, "argNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 140
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 72
    .local v2, "node":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 73
    const-string v3, ""

    .line 80
    :goto_0
    return-object v3

    .line 74
    :cond_0
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 76
    const-string v3, ""

    goto :goto_0

    .line 77
    :cond_1
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 78
    .local v0, "idx":I
    if-gez v0, :cond_2

    .line 79
    const-string v3, ""

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getActionNode()Lorg/cybergarage/xml/Node;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 50
    .local v0, "bodyNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v1

    .line 52
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getArgumentList()Lorg/cybergarage/upnp/ArgumentList;
    .locals 7

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 86
    .local v0, "actNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 87
    const/4 v2, 0x0

    .line 99
    :cond_0
    return-object v2

    .line 89
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v5

    .line 90
    .local v5, "nArgNodes":I
    new-instance v2, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v2}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    .line 91
    .local v2, "argList":Lorg/cybergarage/upnp/ArgumentList;
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 93
    new-instance v1, Lorg/cybergarage/upnp/Argument;

    invoke-direct {v1}, Lorg/cybergarage/upnp/Argument;-><init>()V

    .line 94
    .local v1, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0, v4}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 95
    .local v3, "argNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v3}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cybergarage/upnp/control/ActionRequest;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 62
    return-void
.end method

.method public post(ZZ)Lorg/cybergarage/upnp/control/ActionResponse;
    .locals 3
    .param p1, "isNeedReply"    # Z
    .param p2, "isKeepAlive"    # Z

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getRequestPort()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/cybergarage/upnp/control/ActionRequest;->postMessage(Ljava/lang/String;IZZ)Lorg/cybergarage/soap/SOAPResponse;

    move-result-object v0

    .line 161
    .local v0, "soapRes":Lorg/cybergarage/soap/SOAPResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++++++++postMessage need reply Host ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Port ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getRequestPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string v2, "; isNeedReply ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 163
    new-instance v1, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>(Lorg/cybergarage/soap/SOAPResponse;)V

    .line 171
    .end local v0    # "soapRes":Lorg/cybergarage/soap/SOAPResponse;
    :goto_0
    return-object v1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getRequestPort()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/cybergarage/upnp/control/ActionRequest;->postMessage(Ljava/lang/String;IZZ)Lorg/cybergarage/soap/SOAPResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++++++++postMessage no need reply host ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getRequestPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 169
    new-instance v1, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v1}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>()V

    goto :goto_0

    .line 171
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequest(Lorg/cybergarage/upnp/Action;Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 9
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;
    .param p2, "argList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getService()Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 110
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/control/ActionRequest;->setRequestHost(Lorg/cybergarage/upnp/Service;)V

    .line 112
    invoke-static {}, Lorg/cybergarage/soap/SOAP;->createEnvelopeBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/control/ActionRequest;->setEnvelopeNode(Lorg/cybergarage/xml/Node;)V

    .line 114
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 115
    .local v3, "envNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ActionRequest;->getBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 116
    .local v2, "bodyNode":Lorg/cybergarage/xml/Node;
    invoke-direct {p0, v4, p1, p2}, Lorg/cybergarage/upnp/control/ActionRequest;->createContentNode(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/Action;Lorg/cybergarage/upnp/ArgumentList;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 117
    .local v1, "argNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 118
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/control/ActionRequest;->setContent(Lorg/cybergarage/xml/Node;)V

    .line 120
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "serviceType":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "actionName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "soapAction":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/cybergarage/upnp/control/ActionRequest;->setSOAPAction(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/cybergarage/upnp/control/ActionRequest;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 67
    return-void
.end method
