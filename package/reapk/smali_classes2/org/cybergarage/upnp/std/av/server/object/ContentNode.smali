.class public abstract Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
.super Lorg/cybergarage/xml/Node;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final PARENT_ID:Ljava/lang/String; = "parentID"

.field public static final RESTRICTED:Ljava/lang/String; = "restricted"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private contentDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

.field private propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 95
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 47
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setParentID(I)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setRestricted(I)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 50
    return-void
.end method

.method private outputPropertyAttributes(Ljava/io/PrintWriter;Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V
    .locals 5
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "prop"    # Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    .prologue
    .line 342
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getNAttributes()I

    move-result v2

    .line 343
    .local v2, "nAttributes":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 348
    return-void

    .line 345
    :cond_0
    invoke-virtual {p2, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 346
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

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v0, "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->addProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    .line 126
    return-void
.end method

.method public addProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V
    .locals 1
    .param p1, "prop"    # Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->contentDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v0

    return-object v0
.end method

.method public getNProperties()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->size()I

    move-result v0

    return v0
.end method

.method public getParentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string v0, "parentID"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->getContentProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->getContentProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyAttribureValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    .line 221
    .local v0, "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPropertyIntegerValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 188
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v1

    .line 188
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPropertyLongValue(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 200
    :goto_0
    return-wide v2

    .line 197
    :catch_0
    move-exception v1

    .line 200
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    .line 174
    .local v0, "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getRestricted()I
    .locals 1

    .prologue
    .line 281
    const-string v0, "restricted"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getAttributeIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string v0, "dc:title"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUPnPClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const-string v0, "upnp:class"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWriteStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, "upnp:writeStatus"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getNProperties()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertPropertyAt(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;I)V
    .locals 1
    .param p1, "prop"    # Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .param p2, "index"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->insertElementAt(Ljava/lang/Object;I)V

    .line 120
    return-void
.end method

.method public isContainerNode()Z
    .locals 1

    .prologue
    .line 79
    instance-of v0, p0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemNode()Z
    .locals 1

    .prologue
    .line 86
    instance-of v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUPnPClassStartWith(Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetClass"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 314
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v1

    .line 316
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "upnpClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public output(Ljava/io/PrintWriter;IZ)V
    .locals 13
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "indentLevel"    # I
    .param p3, "hasChildNode"    # Z

    .prologue
    .line 352
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "indentString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 357
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->hasNodes()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->hasProperties()Z

    move-result v11

    if-nez v11, :cond_0

    .line 359
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 361
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ">"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 365
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 367
    const-string v11, ">"

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getNProperties()I

    move-result v4

    .line 370
    .local v4, "nProps":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    if-lt v2, v4, :cond_2

    .line 385
    if-eqz p3, :cond_1

    .line 387
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getNNodes()I

    move-result v3

    .line 388
    .local v3, "nChildNodes":I
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_4

    .line 395
    .end local v3    # "nChildNodes":I
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "</"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_2
    add-int/lit8 v11, p2, 0x1

    invoke-virtual {p0, v11}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, "propIndentString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v6

    .line 374
    .local v6, "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "propName":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, "propValue":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->hasAttributes()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 378
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, p1, v6}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->outputPropertyAttributes(Ljava/io/PrintWriter;Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    .line 380
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ">"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 382
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 390
    .end local v6    # "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    .end local v7    # "propIndentString":Ljava/lang/String;
    .end local v8    # "propName":Ljava/lang/String;
    .end local v9    # "propValue":Ljava/lang/String;
    .restart local v3    # "nChildNodes":I
    :cond_4
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 391
    .local v0, "cnode":Lorg/cybergarage/xml/Node;
    add-int/lit8 v11, p2, 0x1

    const/4 v12, 0x1

    invoke-virtual {v0, p1, v11, v12}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method public removeProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->removeProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)Z

    move-result v0

    return v0
.end method

.method public removeProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)Z
    .locals 1
    .param p1, "prop"    # Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->propList:Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentPropertyList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract set(Lorg/cybergarage/xml/Node;)V
.end method

.method public setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V
    .locals 0
    .param p1, "cdir"    # Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->contentDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    .line 61
    return-void
.end method

.method public setID(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 238
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setAttribute(Ljava/lang/String;I)V

    .line 239
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 243
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setParentID(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 257
    const-string v0, "parentID"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setAttribute(Ljava/lang/String;I)V

    .line 258
    return-void
.end method

.method public setParentID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v0, "parentID"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 163
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 168
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    .line 152
    .local v0, "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setValue(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    .end local v0    # "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-direct {v0, p1, p2}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .restart local v0    # "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->addProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    goto :goto_0
.end method

.method public setPropertyAttribure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v0

    .line 210
    .local v0, "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    .end local v0    # "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .restart local v0    # "prop":Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->addProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    .line 215
    :cond_0
    invoke-virtual {v0, p2, p3}, Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setRestricted(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 276
    const-string v0, "restricted"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setAttribute(Ljava/lang/String;I)V

    .line 277
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v0, "dc:title"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public setUPnPClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v0, "upnp:class"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public setWriteStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string v0, "upnp:writeStatus"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method
