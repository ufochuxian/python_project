.class public Lorg/cybergarage/upnp/StateVariable;
.super Lorg/cybergarage/upnp/xml/NodeData;
.source "SourceFile"


# static fields
.field private static final DATATYPE:Ljava/lang/String; = "dataType"

.field private static final DEFAULT_VALUE:Ljava/lang/String; = "defaultValue"

.field public static final ELEM_NAME:Ljava/lang/String; = "stateVariable"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final SENDEVENTS:Ljava/lang/String; = "sendEvents"

.field private static final SENDEVENTS_NO:Ljava/lang/String; = "no"

.field private static final SENDEVENTS_YES:Ljava/lang/String; = "yes"


# instance fields
.field private serviceNode:Lorg/cybergarage/xml/Node;

.field private stateVariableNode:Lorg/cybergarage/xml/Node;

.field private upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lorg/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 450
    new-instance v0, Lorg/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lorg/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    .line 502
    iput-object v1, p0, Lorg/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    .line 103
    iput-object v1, p0, Lorg/cybergarage/upnp/StateVariable;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 104
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v1, "stateVariable"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->stateVariableNode:Lorg/cybergarage/xml/Node;

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "serviceNode"    # Lorg/cybergarage/xml/Node;
    .param p2, "stateVarNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 450
    new-instance v0, Lorg/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lorg/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lorg/cybergarage/upnp/StateVariable;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 110
    iput-object p2, p0, Lorg/cybergarage/upnp/StateVariable;->stateVariableNode:Lorg/cybergarage/xml/Node;

    .line 111
    return-void
.end method

.method public static isStateVariableNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 119
    const-string v0, "stateVariable"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setQueryResponse(Lorg/cybergarage/upnp/control/QueryResponse;)V
    .locals 1
    .param p1, "res"    # Lorg/cybergarage/upnp/control/QueryResponse;

    .prologue
    .line 414
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/StateVariableData;->setQueryResponse(Lorg/cybergarage/upnp/control/QueryResponse;)V

    .line 415
    return-void
.end method


# virtual methods
.method public getAllowedValueList()Lorg/cybergarage/upnp/AllowedValueList;
    .locals 8

    .prologue
    .line 270
    new-instance v4, Lorg/cybergarage/upnp/AllowedValueList;

    invoke-direct {v4}, Lorg/cybergarage/upnp/AllowedValueList;-><init>()V

    .line 271
    .local v4, "valueList":Lorg/cybergarage/upnp/AllowedValueList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "allowedValueList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 272
    .local v5, "valueListNode":Lorg/cybergarage/xml/Node;
    if-nez v5, :cond_1

    .line 273
    const/4 v4, 0x0

    .line 283
    .end local v4    # "valueList":Lorg/cybergarage/upnp/AllowedValueList;
    :cond_0
    return-object v4

    .line 274
    .restart local v4    # "valueList":Lorg/cybergarage/upnp/AllowedValueList;
    :cond_1
    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v2

    .line 275
    .local v2, "nNode":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 277
    invoke-virtual {v5, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 278
    .local v3, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v3}, Lorg/cybergarage/upnp/AllowedValue;->isAllowedValueNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 275
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/AllowedValue;

    invoke-direct {v0, v3}, Lorg/cybergarage/upnp/AllowedValue;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 281
    .local v0, "allowedVal":Lorg/cybergarage/upnp/AllowedValue;
    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/AllowedValueList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getAllowedValueRange()Lorg/cybergarage/upnp/AllowedValueRange;
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "allowedValueRange"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 332
    .local v0, "valueRangeNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 333
    const/4 v1, 0x0

    .line 334
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/cybergarage/upnp/AllowedValueRange;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/AllowedValueRange;-><init>(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "defaultValue"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryListener()Lorg/cybergarage/upnp/control/QueryListener;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/StateVariableData;->getQueryListener()Lorg/cybergarage/upnp/control/QueryListener;

    move-result-object v0

    return-object v0
.end method

.method public getQueryResponse()Lorg/cybergarage/upnp/control/QueryResponse;
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/StateVariableData;->getQueryResponse()Lorg/cybergarage/upnp/control/QueryResponse;

    move-result-object v0

    return-object v0
.end method

.method public getQueryStatus()Lorg/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getQueryResponse()Lorg/cybergarage/upnp/control/QueryResponse;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/control/QueryResponse;->getUPnPError()Lorg/cybergarage/upnp/UPnPStatus;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lorg/cybergarage/upnp/Service;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 87
    .local v0, "serviceNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/cybergarage/upnp/Service;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getServiceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->serviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 196
    .local v0, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/StateVariableData;

    .line 197
    .local v1, "userData":Lorg/cybergarage/upnp/xml/StateVariableData;
    if-nez v1, :cond_0

    .line 199
    new-instance v1, Lorg/cybergarage/upnp/xml/StateVariableData;

    .end local v1    # "userData":Lorg/cybergarage/upnp/xml/StateVariableData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/StateVariableData;-><init>()V

    .line 200
    .restart local v1    # "userData":Lorg/cybergarage/upnp/xml/StateVariableData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/StateVariableData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 203
    :cond_0
    return-object v1
.end method

.method public getStateVariableNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->stateVariableNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getStatus()Lorg/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue_dlna()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/StateVariableData;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue_tvguo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/StateVariableData;->getValue_ext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAllowedValueList()Z
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getAllowedValueList()Lorg/cybergarage/upnp/AllowedValueList;

    move-result-object v0

    .line 322
    .local v0, "valueList":Lorg/cybergarage/upnp/AllowedValueList;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasAllowedValueRange()Z
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getAllowedValueRange()Lorg/cybergarage/upnp/AllowedValueRange;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendEvents()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    const-string v3, "sendEvents"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 172
    :cond_1
    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public performQueryListener(Lorg/cybergarage/upnp/control/QueryRequest;Z)Z
    .locals 6
    .param p1, "queryReq"    # Lorg/cybergarage/upnp/control/QueryRequest;
    .param p2, "external"    # Z

    .prologue
    const/4 v4, 0x0

    .line 383
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getQueryListener()Lorg/cybergarage/upnp/control/QueryListener;

    move-result-object v0

    .line 384
    .local v0, "listener":Lorg/cybergarage/upnp/control/QueryListener;
    if-nez v0, :cond_0

    .line 400
    :goto_0
    return v4

    .line 386
    :cond_0
    new-instance v1, Lorg/cybergarage/upnp/control/QueryResponse;

    invoke-direct {v1}, Lorg/cybergarage/upnp/control/QueryResponse;-><init>()V

    .line 387
    .local v1, "queryRes":Lorg/cybergarage/upnp/control/QueryResponse;
    new-instance v2, Lorg/cybergarage/upnp/StateVariable;

    invoke-direct {v2}, Lorg/cybergarage/upnp/StateVariable;-><init>()V

    .line 388
    .local v2, "retVar":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v2, p0, p2}, Lorg/cybergarage/upnp/StateVariable;->set(Lorg/cybergarage/upnp/StateVariable;Z)V

    .line 389
    const-string v5, ""

    invoke-virtual {v2, v5, v4}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 390
    const/16 v4, 0x194

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/StateVariable;->setStatus(I)V

    .line 391
    invoke-interface {v0, v2}, Lorg/cybergarage/upnp/control/QueryListener;->queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/control/QueryResponse;->setResponse(Lorg/cybergarage/upnp/StateVariable;)V

    .line 399
    :goto_1
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/control/QueryRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 400
    const/4 v4, 0x1

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/StateVariable;->getStatus()Lorg/cybergarage/upnp/UPnPStatus;

    move-result-object v3

    .line 397
    .local v3, "upnpStatus":Lorg/cybergarage/upnp/UPnPStatus;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/UPnPStatus;->getCode()I

    move-result v4

    invoke-virtual {v3}, Lorg/cybergarage/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/cybergarage/upnp/control/QueryResponse;->setFaultResponse(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public postQuerylAction(Z)Z
    .locals 4
    .param p1, "isKeepAlive"    # Z

    .prologue
    const/4 v2, 0x0

    .line 428
    new-instance v0, Lorg/cybergarage/upnp/control/QueryRequest;

    invoke-direct {v0}, Lorg/cybergarage/upnp/control/QueryRequest;-><init>()V

    .line 429
    .local v0, "queryReq":Lorg/cybergarage/upnp/control/QueryRequest;
    invoke-virtual {v0, p0}, Lorg/cybergarage/upnp/control/QueryRequest;->setRequest(Lorg/cybergarage/upnp/StateVariable;)V

    .line 430
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-virtual {v0}, Lorg/cybergarage/upnp/control/QueryRequest;->print()V

    .line 432
    :cond_0
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/control/QueryRequest;->post(Z)Lorg/cybergarage/upnp/control/QueryResponse;

    move-result-object v1

    .line 433
    .local v1, "queryRes":Lorg/cybergarage/upnp/control/QueryResponse;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    invoke-virtual {v1}, Lorg/cybergarage/upnp/control/QueryResponse;->print()V

    .line 435
    :cond_1
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/StateVariable;->setQueryResponse(Lorg/cybergarage/upnp/control/QueryResponse;)V

    .line 437
    invoke-virtual {v1}, Lorg/cybergarage/upnp/control/QueryResponse;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_2

    .line 439
    invoke-virtual {v1}, Lorg/cybergarage/upnp/control/QueryResponse;->getReturnValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 443
    :goto_0
    return v2

    .line 442
    :cond_2
    invoke-virtual {v1}, Lorg/cybergarage/upnp/control/QueryResponse;->getReturnValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 443
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public set(Lorg/cybergarage/upnp/StateVariable;Z)V
    .locals 1
    .param p1, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;
    .param p2, "external"    # Z

    .prologue
    .line 183
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/StateVariable;->setName(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getValue_dlna()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 185
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getDataType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/StateVariable;->setDataType(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->isSendEvents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/StateVariable;->setSendEvents(Z)V

    .line 187
    return-void
.end method

.method public setAllowedValueList(Lorg/cybergarage/upnp/AllowedValueList;)V
    .locals 5
    .param p1, "avl"    # Lorg/cybergarage/upnp/AllowedValueList;

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    const-string v4, "allowedValueList"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 306
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    const-string v4, "allowedValueRange"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 307
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v3, "allowedValueList"

    invoke-direct {v2, v3}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, "n":Lorg/cybergarage/xml/Node;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/AllowedValueList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 309
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 317
    return-void

    .line 311
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/AllowedValue;

    .line 313
    .local v0, "av":Lorg/cybergarage/upnp/AllowedValue;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/AllowedValue;->getAllowedValueNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public setAllowedValueRange(Lorg/cybergarage/upnp/AllowedValueRange;)V
    .locals 2
    .param p1, "avr"    # Lorg/cybergarage/upnp/AllowedValueRange;

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "allowedValueList"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 357
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "allowedValueRange"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 358
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 360
    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "defaultValue"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/QueryListener;

    .prologue
    .line 378
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/StateVariableData;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 379
    return-void
.end method

.method public setSendEvents(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "sendEvents"

    if-eqz p1, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 164
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method setServiceNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "n"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/cybergarage/upnp/StateVariable;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 82
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 460
    invoke-static {p1}, Lorg/cybergarage/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/StateVariable;->setStatus(ILjava/lang/String;)V

    .line 461
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "descr"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 455
    iget-object v0, p0, Lorg/cybergarage/upnp/StateVariable;->upnpStatus:Lorg/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 506
    iput-object p1, p0, Lorg/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    .line 507
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 242
    return-void
.end method

.method public setValue(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 246
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 247
    return-void
.end method

.method public setValue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "external"    # Z

    .prologue
    .line 214
    if-eqz p2, :cond_1

    .line 215
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/xml/StateVariableData;->getValue_ext()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "currValue":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    .line 237
    :cond_0
    :goto_1
    return-void

    .line 217
    .end local v0    # "currValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/xml/StateVariableData;->getValue()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "currValue":Ljava/lang/String;
    goto :goto_0

    .line 225
    :cond_2
    if-eqz p2, :cond_3

    .line 226
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/xml/StateVariableData;->setValue_ext(Ljava/lang/String;)V

    .line 231
    :goto_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getService()Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 232
    .local v1, "service":Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->isSendEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1, p0, p2}, Lorg/cybergarage/upnp/Service;->notify(Lorg/cybergarage/upnp/StateVariable;Z)V

    goto :goto_1

    .line 228
    .end local v1    # "service":Lorg/cybergarage/upnp/Service;
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableData()Lorg/cybergarage/upnp/xml/StateVariableData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/xml/StateVariableData;->setValue(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setValue_ext(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 256
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 257
    return-void
.end method
