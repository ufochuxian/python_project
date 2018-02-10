.class public Lorg/cybergarage/xml/Node;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attrList:Lorg/cybergarage/xml/AttributeList;

.field private name:Ljava/lang/String;

.field private nodeList:Lorg/cybergarage/xml/NodeList;

.field private parentNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Lorg/cybergarage/xml/Node;->parentNode:Lorg/cybergarage/xml/Node;

    .line 102
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    .line 160
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    .line 269
    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    .line 372
    iput-object v1, p0, Lorg/cybergarage/xml/Node;->userData:Ljava/lang/Object;

    .line 50
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    .line 191
    return-void
.end method

.method public addAttribute(Lorg/cybergarage/xml/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/cybergarage/xml/Attribute;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public addNode(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 293
    invoke-virtual {p1, p0}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 295
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    return-void
.end method

.method public addValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 144
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAttribute(I)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeIntegerValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 248
    :goto_0
    return v1

    .line 245
    :catch_0
    move-exception v1

    .line 248
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 234
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getIndentLevelString(I)Ljava/lang/String;
    .locals 1
    .param p1, "nIndentLevel"    # I

    .prologue
    .line 395
    const-string v0, "   "

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/xml/Node;->getIndentLevelString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndentLevelString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nIndentLevel"    # I
    .param p2, "space"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 410
    .local v0, "indentString":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 412
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v1, -0x1

    .line 310
    .local v1, "index":I
    iget-object v4, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v4}, Lorg/cybergarage/xml/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v1

    .line 317
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    return v2

    .line 312
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cybergarage/xml/Node;

    .line 314
    .local v3, "n":Lorg/cybergarage/xml/Node;
    invoke-virtual {v3}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    .line 315
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0
.end method

.method public getNAttributes()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/AttributeList;->size()I

    move-result v0

    return v0
.end method

.method public getNNodes()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode(I)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 363
    .local v0, "node":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 365
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getParentNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->parentNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getRootNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 90
    .local v0, "parentNode":Lorg/cybergarage/xml/Node;
    :goto_0
    if-nez v0, :cond_0

    .line 95
    return-object v1

    .line 92
    :cond_0
    move-object v1, v0

    .line 93
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNodes()Z
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v0

    if-lez v0, :cond_0

    .line 339
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertAttributeAt(Lorg/cybergarage/xml/Attribute;I)V
    .locals 1
    .param p1, "attr"    # Lorg/cybergarage/xml/Attribute;
    .param p2, "index"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/xml/AttributeList;->insertElementAt(Ljava/lang/Object;I)V

    .line 185
    return-void
.end method

.method public insertNode(Lorg/cybergarage/xml/Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/xml/Node;
    .param p2, "index"    # I

    .prologue
    .line 303
    invoke-virtual {p1, p0}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 304
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/xml/NodeList;->insertElementAt(Ljava/lang/Object;I)V

    .line 305
    return-void
.end method

.method public isName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public output(Ljava/io/OutputStream;IZ)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "indentLevel"    # I
    .param p3, "hasChildNode"    # Z

    .prologue
    .line 500
    invoke-virtual {p0, p2}, Lorg/cybergarage/xml/Node;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "indentString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p3, :cond_3

    .line 511
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 512
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/OutputStream;)V

    .line 514
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 516
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "></"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 549
    :goto_0
    return-void

    .line 519
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ">"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 532
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 533
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/OutputStream;)V

    .line 534
    const-string v7, ">"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 536
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 537
    .local v4, "nChildNodes":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-lt v3, v4, :cond_4

    .line 543
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "</"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 544
    .end local v3    # "n":I
    .end local v4    # "nChildNodes":I
    :catch_1
    move-exception v1

    .line 546
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 539
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "n":I
    .restart local v4    # "nChildNodes":I
    :cond_4
    :try_start_2
    invoke-virtual {p0, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 540
    .local v0, "cnode":Lorg/cybergarage/xml/Node;
    add-int/lit8 v7, p2, 0x1

    const/4 v8, 0x1

    invoke-virtual {v0, p1, v7, v8}, Lorg/cybergarage/xml/Node;->output(Ljava/io/OutputStream;IZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public output(Ljava/io/PrintWriter;IZ)V
    .locals 8
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "indentLevel"    # I
    .param p3, "hasChildNode"    # Z

    .prologue
    .line 453
    invoke-virtual {p0, p2}, Lorg/cybergarage/xml/Node;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "indentString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p3, :cond_3

    .line 460
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 463
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 466
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "></"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    :goto_0
    return-void

    .line 469
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 477
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    .line 480
    .local v3, "nChildNodes":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    if-lt v2, v3, :cond_4

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_4
    invoke-virtual {p0, v2}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 483
    .local v0, "cnode":Lorg/cybergarage/xml/Node;
    add-int/lit8 v6, p2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, p1, v6, v7}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 480
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public outputAttributes(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v3

    .line 437
    .local v3, "nAttributes":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 449
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0, v2}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 442
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public outputAttributes(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "ps"    # Ljava/io/PrintWriter;

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v2

    .line 420
    .local v2, "nAttributes":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 425
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 423
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public print()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->print(Z)V

    .line 603
    return-void
.end method

.method public print(Z)V
    .locals 2
    .param p1, "hasChildNode"    # Z

    .prologue
    .line 595
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 596
    .local v0, "pr":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 597
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 598
    return-void
.end method

.method public removeAllNodes()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->clear()V

    .line 334
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->removeAttribute(Lorg/cybergarage/xml/Attribute;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Lorg/cybergarage/xml/Attribute;)Z
    .locals 1
    .param p1, "attr"    # Lorg/cybergarage/xml/Attribute;

    .prologue
    .line 195
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNode(Lorg/cybergarage/xml/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 323
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 228
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 217
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    .end local v0    # "attr":Lorg/cybergarage/xml/Attribute;
    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .restart local v0    # "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setNameSpace(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v0, "xmlns"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public setNameSpace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xmlns:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 350
    .local v0, "node":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "node":Lorg/cybergarage/xml/Node;
    invoke-direct {v0, p1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v0    # "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public setParentNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->parentNode:Lorg/cybergarage/xml/Node;

    .line 75
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 376
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->userData:Ljava/lang/Object;

    .line 377
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    const-string v0, "utf-8"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/xml/Node;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "enc"    # Ljava/lang/String;
    .param p2, "hasChildNode"    # Z

    .prologue
    .line 554
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 556
    .local v0, "byteOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 557
    .local v1, "pr":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p2}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 559
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 562
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 563
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 567
    :goto_0
    return-object v2

    .line 564
    :catch_0
    move-exception v2

    .line 567
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public toXMLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->toXMLString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXMLString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "hasChildNode"    # Z

    .prologue
    .line 577
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "xmlStr":Ljava/lang/String;
    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    const-string v1, "&"

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    return-object v0
.end method
