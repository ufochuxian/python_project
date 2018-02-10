.class public Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getFileNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;

    return-object v0
.end method

.method public getFileNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 20
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;->size()I

    move-result v0

    .line 21
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 30
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 23
    :cond_0
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;->getFileNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;

    move-result-object v2

    .line 24
    .local v2, "node":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    invoke-interface {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;->getFile()Ljava/io/File;

    move-result-object v3

    .line 25
    .local v3, "nodeFile":Ljava/io/File;
    if-nez v3, :cond_2

    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {v2, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;->equals(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1
.end method
