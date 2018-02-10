.class public Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
.super Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
.source "SourceFile"


# static fields
.field public static final CHILD_COUNT:Ljava/lang/String; = "childCount"

.field public static final NAME:Ljava/lang/String; = "container"

.field public static final OBJECT_CONTAINER:Ljava/lang/String; = "object.container"

.field public static final SEARCHABLE:Ljava/lang/String; = "searchable"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;-><init>()V

    .line 45
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setID(I)V

    .line 46
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setSearchable(I)V

    .line 48
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setChildCount(I)V

    .line 49
    const-string v0, "object.container"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setUPnPClass(Ljava/lang/String;)V

    .line 50
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setWriteStatus(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static final isContainerNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 62
    :goto_0
    return v1

    :cond_0
    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 124
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setChildCount(I)V

    .line 126
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 127
    return-void
.end method

.method public findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 142
    if-nez p1, :cond_1

    move-object p0, v5

    .line 179
    .end local p0    # "this":Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    :cond_0
    :goto_0
    return-object p0

    .line 145
    .restart local p0    # "this":Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getID()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "nodeID":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v3

    .line 163
    .local v3, "nodeCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    if-lt v2, v3, :cond_2

    move-object p0, v5

    .line 179
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 166
    .local v0, "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isContainerNode()Z

    move-result v6

    if-nez v6, :cond_3

    .line 168
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object p0, v0

    .line 170
    goto :goto_0

    .line 174
    :cond_3
    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v0    # "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->findContentNodeByID(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v1

    .line 175
    .local v1, "fnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    if-eqz v1, :cond_4

    move-object p0, v1

    .line 176
    goto :goto_0

    .line 163
    .end local v1    # "fnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 193
    const-string v0, "childCount"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getAttributeIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    return-object v0
.end method

.method public getContentNode(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    return-object v0
.end method

.method public getNContentNodes()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNNodes()I

    move-result v0

    return v0
.end method

.method public getSearchable()I
    .locals 1

    .prologue
    .line 207
    const-string v0, "searchable"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getAttributeIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasContentNodes()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->hasNodes()Z

    move-result v0

    return v0
.end method

.method public removeAllContentNodes()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->removeAllNodes()V

    .line 119
    return-void
.end method

.method public removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z
    .locals 2
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->removeNode(Lorg/cybergarage/xml/Node;)Z

    move-result v0

    .line 132
    .local v0, "ret":Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setChildCount(I)V

    .line 133
    return v0
.end method

.method public set(Lorg/cybergarage/xml/Node;)V
    .locals 7
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 73
    .local v4, "nNode":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 84
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v3

    .line 85
    .local v3, "nAttr":I
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_3

    .line 90
    return-void

    .line 75
    .end local v3    # "nAttr":I
    :cond_0
    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 76
    .local v1, "cnode":Lorg/cybergarage/xml/Node;
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->isContainerNode(Lorg/cybergarage/xml/Node;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isItemNode(Lorg/cybergarage/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 87
    .end local v1    # "cnode":Lorg/cybergarage/xml/Node;
    .restart local v3    # "nAttr":I
    :cond_3
    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 88
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setChildCount(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 188
    const-string v0, "childCount"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setAttribute(Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method public setSearchable(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 202
    const-string v0, "searchable"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setAttribute(Ljava/lang/String;I)V

    .line 203
    return-void
.end method
