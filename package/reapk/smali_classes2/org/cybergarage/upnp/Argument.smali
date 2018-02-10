.class public Lorg/cybergarage/upnp/Argument;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final ELEM_NAME:Ljava/lang/String; = "argument"

.field public static final IN:Ljava/lang/String; = "in"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final OUT:Ljava/lang/String; = "out"

.field private static final RELATED_STATE_VARIABLE:Ljava/lang/String; = "relatedStateVariable"


# instance fields
.field private argumentNode:Lorg/cybergarage/xml/Node;

.field private serviceNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object v2, p0, Lorg/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    .line 93
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v1, "argument"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/Argument;->argumentNode:Lorg/cybergarage/xml/Node;

    .line 94
    iput-object v2, p0, Lorg/cybergarage/upnp/Argument;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/cybergarage/upnp/Argument;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 2
    .param p1, "servNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    .line 99
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v1, "argument"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/Argument;->argumentNode:Lorg/cybergarage/xml/Node;

    .line 100
    iput-object p1, p0, Lorg/cybergarage/upnp/Argument;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "servNode"    # Lorg/cybergarage/xml/Node;
    .param p2, "argNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lorg/cybergarage/upnp/Argument;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 106
    iput-object p2, p0, Lorg/cybergarage/upnp/Argument;->argumentNode:Lorg/cybergarage/xml/Node;

    .line 107
    return-void
.end method

.method private getArgumentData()Lorg/cybergarage/upnp/xml/ArgumentData;
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 202
    .local v0, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/ArgumentData;

    .line 203
    .local v1, "userData":Lorg/cybergarage/upnp/xml/ArgumentData;
    if-nez v1, :cond_0

    .line 205
    new-instance v1, Lorg/cybergarage/upnp/xml/ArgumentData;

    .end local v1    # "userData":Lorg/cybergarage/upnp/xml/ArgumentData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/ArgumentData;-><init>()V

    .line 206
    .restart local v1    # "userData":Lorg/cybergarage/upnp/xml/ArgumentData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/ArgumentData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 209
    :cond_0
    return-object v1
.end method

.method private getServiceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/cybergarage/upnp/Argument;->serviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public static isArgumentNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 122
    const-string v0, "argument"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAction()Lorg/cybergarage/upnp/Action;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lorg/cybergarage/upnp/Action;

    invoke-direct {p0}, Lorg/cybergarage/upnp/Argument;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/Action;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getActionNode()Lorg/cybergarage/xml/Node;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 72
    .local v1, "argumentLinstNode":Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 75
    .local v0, "actionNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_2

    move-object v0, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-static {v0}, Lorg/cybergarage/upnp/Action;->isActionNode(Lorg/cybergarage/xml/Node;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 78
    goto :goto_0
.end method

.method public getArgumentNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cybergarage/upnp/Argument;->argumentNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerValue()I
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 262
    :catch_0
    move-exception v1

    .line 265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedStateVariable()Lorg/cybergarage/upnp/StateVariable;
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getService()Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 189
    .local v1, "service":Lorg/cybergarage/upnp/Service;
    if-nez v1, :cond_0

    .line 190
    const/4 v2, 0x0

    .line 192
    :goto_0
    return-object v2

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "relatedStatVarName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v2

    goto :goto_0
.end method

.method public getRelatedStateVariableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "relatedStateVariable"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lorg/cybergarage/upnp/Service;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/cybergarage/upnp/Service;

    invoke-direct {p0}, Lorg/cybergarage/upnp/Argument;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentData()Lorg/cybergarage/upnp/xml/ArgumentData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ArgumentData;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInDirection()Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getDirection()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "dir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    :cond_0
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isOutDirection()Z
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->isInDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setRelatedStateVariableName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "relatedStateVariable"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method setService(Lorg/cybergarage/upnp/Service;)V
    .locals 0
    .param p1, "s"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    .line 67
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 276
    iput-object p1, p0, Lorg/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-direct {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentData()Lorg/cybergarage/upnp/xml/ArgumentData;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/cybergarage/upnp/xml/ArgumentData;->setValue(Ljava/lang/String;)V

    .line 220
    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getArgumentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 223
    .local v0, "argument":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 225
    const-string v7, "relatedStateVariable"

    invoke-virtual {v0, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 226
    .local v2, "relateNode":Lorg/cybergarage/xml/Node;
    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Argument;->getService()Lorg/cybergarage/upnp/Service;

    move-result-object v3

    .line 230
    .local v3, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v4

    .line 231
    .local v4, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v5

    .line 232
    .local v5, "tableSize":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 234
    invoke-virtual {v4, v1}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v6

    .line 235
    .local v6, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 237
    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    goto :goto_0

    .line 232
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
