.class public Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
.super Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
.source "SourceFile"


# static fields
.field public static final COLOR_DEPTH:Ljava/lang/String; = "colorDepth"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final IMPORT_URI:Ljava/lang/String; = "importUri"

.field public static final NAME:Ljava/lang/String; = "item"

.field public static final PROTOCOL_INFO:Ljava/lang/String; = "protocolInfo"

.field public static final RES:Ljava/lang/String; = "res"

.field public static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final SIZE:Ljava/lang/String; = "size"


# instance fields
.field private resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;-><init>()V

    .line 260
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    .line 54
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setID(I)V

    .line 55
    const-string v0, "item"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setName(Ljava/lang/String;)V

    .line 56
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setStorageMedium(Ljava/lang/String;)V

    .line 57
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setWriteStatus(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static final isItemNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    :cond_0
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 113
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 115
    return-void
.end method

.method public addResourceNode(Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;)V
    .locals 1
    .param p1, "resNode"    # Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public getAlbumArtURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "upnp:albumArtURI"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 358
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "dc:creator"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "dc:date"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 156
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "dateStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-wide v4

    .line 159
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "df":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 163
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 164
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getFirstResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .locals 4

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getNResourceNodeLists()I

    move-result v1

    .line 285
    .local v1, "nProperties":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 291
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 287
    :cond_1
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v2

    .line 288
    .local v2, "resNode":Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isThumbnail()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    const-string v0, "*/*"

    return-object v0
.end method

.method public getNResourceNodeLists()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;->size()I

    move-result v0

    return v0
.end method

.method public getProtocolInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    const-string v0, "res"

    const-string v1, "protocolInfo"

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getPropertyAttribureValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-string v0, "res"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v0

    return-object v0
.end method

.method public getResourceNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->resourceNodeList:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    return-object v0
.end method

.method public getSmallImageResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .locals 4

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getNResourceNodeLists()I

    move-result v1

    .line 309
    .local v1, "nProperties":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 315
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 311
    :cond_1
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v2

    .line 312
    .local v2, "resNode":Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isSmallImage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getStorageMedium()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "upnp:storageMedium"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorageUsed()J
    .locals 2

    .prologue
    .line 209
    const-string v0, "upnp:storageUsed"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getPropertyLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnailResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .locals 4

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getNResourceNodeLists()I

    move-result v1

    .line 297
    .local v1, "nProperties":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 303
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 299
    :cond_1
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v2

    .line 300
    .local v2, "resNode":Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isThumbnail()Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAudioClass()Z
    .locals 1

    .prologue
    .line 244
    const-string v0, "object.item.audio"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "object.item.music"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageClass()Z
    .locals 1

    .prologue
    .line 251
    const-string v0, "object.item.image"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "object.item.photo"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovieClass()Z
    .locals 1

    .prologue
    .line 232
    const-string v0, "object.item.movie"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "object.item.video"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isUPnPClassStartWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoClass()Z
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isMovieClass()Z

    move-result v0

    return v0
.end method

.method public removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->removeNode(Lorg/cybergarage/xml/Node;)Z

    move-result v0

    return v0
.end method

.method public set(Lorg/cybergarage/xml/Node;)V
    .locals 8
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 79
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 80
    .local v4, "nNode":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 98
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v3

    .line 99
    .local v3, "nAttr":I
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_4

    .line 104
    return-void

    .line 82
    .end local v3    # "nAttr":I
    :cond_0
    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 83
    .local v1, "cnode":Lorg/cybergarage/xml/Node;
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->isContainerNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_2
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->isItemNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 87
    invoke-static {v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isResourceNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    new-instance v5, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    invoke-direct {v5}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;-><init>()V

    .line 90
    .local v5, "resNode":Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {v5, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->set(Lorg/cybergarage/xml/Node;)V

    .line 91
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->addResourceNode(Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;)V

    goto :goto_2

    .line 94
    .end local v5    # "resNode":Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_3
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 101
    .end local v1    # "cnode":Lorg/cybergarage/xml/Node;
    .restart local v3    # "nAttr":I
    :cond_4
    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 102
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setAlbumArtURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v0, "upnp:albumArtURI"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "dc:creator"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setDate(J)V
    .locals 5
    .param p1, "dateTime"    # J

    .prologue
    .line 142
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 145
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, "df":Ljava/text/DateFormat;
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "dateStr":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateStr":Ljava/lang/String;
    .end local v2    # "df":Ljava/text/DateFormat;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, "dc:date"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "protocolInfo"    # Ljava/lang/String;

    .prologue
    .line 339
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setResource(Ljava/lang/String;Ljava/lang/String;Lorg/cybergarage/xml/AttributeList;)V

    .line 340
    return-void
.end method

.method public setResource(Ljava/lang/String;Ljava/lang/String;Lorg/cybergarage/xml/AttributeList;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "protocolInfo"    # Ljava/lang/String;
    .param p3, "attrList"    # Lorg/cybergarage/xml/AttributeList;

    .prologue
    .line 324
    const-string v5, "res"

    invoke-virtual {p0, v5, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v5, "res"

    const-string v6, "protocolInfo"

    invoke-virtual {p0, v5, v6, p2}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setPropertyAttribure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p3}, Lorg/cybergarage/xml/AttributeList;->size()I

    move-result v1

    .line 328
    .local v1, "attrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 335
    return-void

    .line 330
    :cond_0
    invoke-virtual {p3, v2}, Lorg/cybergarage/xml/AttributeList;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 331
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "value":Ljava/lang/String;
    const-string v5, "res"

    invoke-virtual {p0, v5, v3, v4}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setPropertyAttribure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setStorageMedium(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v0, "upnp:storageMedium"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setStorageUsed(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 204
    const-string v0, "upnp:storageUsed"

    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->setProperty(Ljava/lang/String;J)V

    .line 205
    return-void
.end method
