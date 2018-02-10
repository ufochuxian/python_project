.class public Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getFileItemNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    return-object v0
.end method

.method public getFileItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;->size()I

    move-result v1

    .line 35
    .local v1, "itemNodeCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 44
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;->getFileItemNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move-result-object v0

    .line 38
    .local v0, "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v2

    .line 39
    .local v2, "itemNodeFile":Ljava/io/File;
    if-nez v2, :cond_2

    .line 35
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->equals(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1
.end method
