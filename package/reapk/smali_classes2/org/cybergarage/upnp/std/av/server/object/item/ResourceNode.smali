.class public Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
.super Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
.source "SourceFile"


# static fields
.field public static final COLOR_DEPTH:Ljava/lang/String; = "colorDepth"

.field public static final IMPORT_URI:Ljava/lang/String; = "importUri"

.field public static final NAME:Ljava/lang/String; = "res"

.field public static final PROTOCOL_INFO:Ljava/lang/String; = "protocolInfo"

.field public static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final SIZE:Ljava/lang/String; = "size"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;-><init>()V

    .line 44
    return-void
.end method

.method public static final isResourceNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_0
    return v1

    :cond_0
    const-string v1, "res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfoAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalInfoForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "aKey"    # Ljava/lang/String;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    const-string v5, ""

    .line 144
    :goto_0
    return-object v5

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "fullAddInfo":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 130
    const-string v5, ""

    goto :goto_0

    .line 131
    :cond_1
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "addInfos":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-gtz v5, :cond_3

    .line 133
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 134
    :cond_3
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    array-length v5, v1

    if-lt v3, v5, :cond_4

    .line 144
    const-string v5, ""

    goto :goto_0

    .line 136
    :cond_4
    aget-object v0, v1, v3

    .line 137
    .local v0, "addInfo":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    :cond_5
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "tokens":[Ljava/lang/String;
    if-eqz v4, :cond_6

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_7

    .line 141
    :cond_6
    const-string v5, ""

    goto :goto_0

    .line 142
    :cond_7
    const/4 v5, 0x1

    aget-object v5, v4, v5

    goto :goto_0
.end method

.method public getContentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfoAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDlnaOrgFlags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "DLNA.ORG_FLAGS"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getAdditionalInfoForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDlnaOrgOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "DLNA.ORG_OP"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getAdditionalInfoForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDlnaOrgPn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "DLNA.ORG_PN"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getAdditionalInfoForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfoAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfoAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "protocolInfo"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolInfoAtIndex(I)Ljava/lang/String;
    .locals 3
    .param p1, "anIndex"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getProtocolInfo()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "protocolInfo":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 97
    const-string v2, ""

    .line 101
    :goto_0
    return-object v2

    .line 98
    :cond_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "protocols":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-gt v2, p1, :cond_2

    .line 100
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 101
    :cond_2
    aget-object v2, v1, p1

    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudio()Z
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x0

    .line 234
    :goto_0
    return v1

    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isImage()Z
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 211
    :goto_0
    return v1

    :cond_0
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isLargeImage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getDlnaOrgPn()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "dlnaOrgPn":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    const-string v2, "_LRG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMediumImage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getDlnaOrgPn()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "dlnaOrgPn":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    const-string v2, "_MED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMovie()Z
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 218
    const/4 v1, 0x0

    .line 221
    :goto_0
    return v1

    .line 219
    :cond_0
    const-string v1, "movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const/4 v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSmallImage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getDlnaOrgPn()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "dlnaOrgPn":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    const-string v2, "_SM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isThumbnail()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->getDlnaOrgPn()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "dlnaOrgPn":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    const-string v2, "_TN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->isMovie()Z

    move-result v0

    return v0
.end method

.method public set(Lorg/cybergarage/xml/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->setValue(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v2

    .line 68
    .local v2, "nAttr":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 73
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1, v1}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 71
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
