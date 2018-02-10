.class public Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;
.super Lorg/cybergarage/upnp/std/av/server/Directory;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;


# instance fields
.field private itemFile:Ljava/io/File;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->setPath(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private addFileNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;

    .prologue
    .line 326
    check-cast p1, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .end local p1    # "node":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 327
    return-void
.end method

.method private addItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;)V
    .locals 0
    .param p1, "itemNode"    # Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 322
    return-void
.end method

.method private createCompareItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v0

    .line 195
    .local v0, "format":Lorg/cybergarage/upnp/std/av/server/object/Format;
    if-nez v0, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 199
    :goto_0
    return-object v1

    .line 197
    :cond_0
    new-instance v1, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    invoke-direct {v1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;-><init>()V

    .line 198
    .local v1, "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method private getCurrentDirectoryFileNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;-><init>()V

    .line 260
    .local v0, "nodeList":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, "pathFile":Ljava/io/File;
    invoke-direct {p0, v2, v0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getDirectoryFileNodeList(Ljava/io/File;Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;)I

    .line 263
    return-object v0
.end method

.method private getCurrentDirectoryItemNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
    .locals 3

    .prologue
    .line 273
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;-><init>()V

    .line 274
    .local v0, "itemNodeList":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v2, "pathFile":Ljava/io/File;
    invoke-direct {p0, v2, v0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getDirectoryItemNodeList(Ljava/io/File;Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;)I

    .line 277
    return-object v0
.end method

.method private getDirectoryFileNodeList(Ljava/io/File;Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;)I
    .locals 8
    .param p1, "dirFile"    # Ljava/io/File;
    .param p2, "fileNodeList"    # Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 209
    .local v0, "childFile":[Ljava/io/File;
    array-length v3, v0

    .line 210
    .local v3, "fileCnt":I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-lt v5, v3, :cond_0

    .line 231
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;->size()I

    move-result v6

    return v6

    .line 212
    :cond_0
    aget-object v2, v0, v5

    .line 213
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 215
    new-instance v1, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v1, "directory":Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v1, v6}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->setChildCount(I)V

    .line 217
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->setFile(Ljava/io/File;)V

    .line 218
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 219
    invoke-virtual {p2, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v1    # "directory":Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->createCompareItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move-result-object v4

    .line 223
    .local v4, "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {p2, v4}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getDirectoryItemNodeList(Ljava/io/File;Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;)I
    .locals 6
    .param p1, "dirFile"    # Ljava/io/File;
    .param p2, "itemNodeList"    # Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 237
    .local v0, "childFile":[Ljava/io/File;
    array-length v2, v0

    .line 238
    .local v2, "fileCnt":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-lt v4, v2, :cond_0

    .line 254
    invoke-virtual {p2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;->size()I

    move-result v5

    return v5

    .line 240
    :cond_0
    aget-object v1, v0, v4

    .line 241
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    invoke-direct {p0, v1, p2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getDirectoryItemNodeList(Ljava/io/File;Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;)I

    .line 238
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->createCompareItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move-result-object v3

    .line 249
    .local v3, "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    if-eqz v3, :cond_1

    .line 251
    invoke-virtual {p2, v3}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getFileNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getNContentNodes()I

    move-result v3

    .line 287
    .local v3, "nContents":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 296
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 289
    :cond_1
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .local v0, "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    move-object v1, v0

    .line 290
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;

    .line 291
    .local v1, "fileNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    invoke-interface {v1, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;->equals(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 306
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getNContentNodes()I

    move-result v3

    .line 307
    .local v3, "nContents":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 316
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 309
    :cond_0
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 310
    .local v0, "cnode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    instance-of v4, v0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    if-nez v4, :cond_2

    .line 307
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 312
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    .line 313
    .local v1, "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->equals(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1
.end method

.method private updateFileNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;Ljava/io/File;)Z
    .locals 27
    .param p1, "node"    # Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 63
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 65
    invoke-interface/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;->getFile()Ljava/io/File;

    move-result-object v14

    .local v14, "innerFile":Ljava/io/File;
    move-object/from16 v6, p1

    .line 66
    check-cast v6, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;

    .line 67
    .local v6, "dir":Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->setTitle(Ljava/lang/String;)V

    .line 122
    .end local v6    # "dir":Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;
    .end local v14    # "innerFile":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 124
    const/16 v25, 0x1

    :goto_1
    return v25

    .line 69
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 71
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v9

    .line 72
    .local v9, "format":Lorg/cybergarage/upnp/std/av/server/object/Format;
    if-nez v9, :cond_2

    .line 73
    const/16 v25, 0x0

    goto :goto_1

    .line 74
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Lorg/cybergarage/upnp/std/av/server/object/Format;->createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;

    move-result-object v12

    .local v12, "formatObj":Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    move-object/from16 v15, p1

    .line 75
    check-cast v15, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    .line 77
    .local v15, "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setFile(Ljava/io/File;)V

    .line 80
    invoke-interface {v12}, Lorg/cybergarage/upnp/std/av/server/object/FormatObject;->getTitle()Ljava/lang/String;

    move-result-object v23

    .line 81
    .local v23, "title":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_3

    .line 82
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setTitle(Ljava/lang/String;)V

    .line 85
    :cond_3
    invoke-interface {v12}, Lorg/cybergarage/upnp/std/av/server/object/FormatObject;->getCreator()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "creator":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_4

    .line 87
    invoke-virtual {v15, v5}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setCreator(Ljava/lang/String;)V

    .line 90
    :cond_4
    invoke-interface {v9}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMediaClass()Ljava/lang/String;

    move-result-object v18

    .line 91
    .local v18, "mediaClass":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_5

    .line 92
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setUPnPClass(Ljava/lang/String;)V

    .line 95
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    .line 96
    .local v16, "lastModTime":J
    invoke-virtual/range {v15 .. v17}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setDate(J)V

    .line 101
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 102
    .local v10, "fileSize":J
    invoke-virtual {v15, v10, v11}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setStorageUsed(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v10    # "fileSize":J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getServerRootDir()Ljava/lang/String;

    move-result-object v22

    .line 109
    .local v22, "serverRoot":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "absServerPath":Ljava/lang/String;
    invoke-virtual {v15}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 115
    invoke-interface {v9}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMimeType()Ljava/lang/String;

    move-result-object v19

    .line 116
    .local v19, "mimeType":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "http-get:*:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":*"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 117
    .local v21, "protocol":Ljava/lang/String;
    invoke-virtual {v15}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getID()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "id":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v13}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 119
    .local v24, "url":Ljava/lang/String;
    invoke-interface {v12}, Lorg/cybergarage/upnp/std/av/server/object/FormatObject;->getAttributeList()Lorg/cybergarage/xml/AttributeList;

    move-result-object v20

    .line 120
    .local v20, "objAttrList":Lorg/cybergarage/xml/AttributeList;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setResource(Ljava/lang/String;Ljava/lang/String;Lorg/cybergarage/xml/AttributeList;)V

    goto/16 :goto_0

    .line 103
    .end local v4    # "absServerPath":Ljava/lang/String;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v13    # "id":Ljava/lang/String;
    .end local v19    # "mimeType":Ljava/lang/String;
    .end local v20    # "objAttrList":Lorg/cybergarage/xml/AttributeList;
    .end local v21    # "protocol":Ljava/lang/String;
    .end local v22    # "serverRoot":Ljava/lang/String;
    .end local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 105
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private updateFileNodeList()Z
    .locals 12

    .prologue
    .line 431
    const/4 v10, 0x0

    .line 434
    .local v10, "updateFlag":Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getNContentNodes()I

    move-result v6

    .line 435
    .local v6, "nContents":I
    new-array v0, v6, [Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .line 436
    .local v0, "cnode":[Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-lt v5, v6, :cond_0

    .line 438
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_1

    .line 468
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getCurrentDirectoryFileNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;

    move-result-object v7

    .line 469
    .local v7, "nodeList":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;->size()I

    move-result v1

    .line 470
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v1, :cond_3

    .line 492
    return v10

    .line 437
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v7    # "nodeList":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;
    :cond_0
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v11

    aput-object v11, v0, v5

    .line 436
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 441
    :cond_1
    aget-object v8, v0, v5

    .line 443
    .local v8, "subNode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    instance-of v11, v8, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;

    if-eqz v11, :cond_2

    .line 445
    check-cast v8, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;

    .end local v8    # "subNode":Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-interface {v8}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;->getFile()Ljava/io/File;

    move-result-object v9

    .line 446
    .local v9, "tfile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 448
    aget-object v11, v0, v5

    invoke-virtual {p0, v11}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z

    .line 449
    const/4 v10, 0x1

    .line 438
    .end local v9    # "tfile":Ljava/io/File;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 472
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    .restart local v7    # "nodeList":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;
    :cond_3
    invoke-virtual {v7, v4}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNodeList;->getFileNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;

    move-result-object v3

    .line 473
    .local v3, "fnode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateFileNodeList(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;)Z

    move-result v10

    .line 475
    const/4 v2, 0x0

    .line 476
    .local v2, "flag":Z
    instance-of v11, v3, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;

    if-eqz v11, :cond_4

    .line 478
    check-cast v3, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;

    .end local v3    # "fnode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->update()Z

    move-result v2

    .line 481
    :cond_4
    or-int/2addr v10, v2

    .line 470
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private updateFileNodeList(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;)Z
    .locals 9
    .param p1, "newFileNode"    # Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;

    .prologue
    const/4 v8, 0x1

    .line 331
    invoke-interface {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;->getFile()Ljava/io/File;

    move-result-object v4

    .line 332
    .local v4, "newNodeFile":Ljava/io/File;
    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getFileNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;

    move-result-object v2

    .line 333
    .local v2, "currentNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;
    if-nez v2, :cond_2

    .line 335
    const/4 v3, -0x1

    .line 336
    .local v3, "newItemID":I
    instance-of v5, p1, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;

    if-eqz v5, :cond_1

    .line 338
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextContainerID()I

    move-result v3

    :cond_0
    :goto_0
    move-object v5, p1

    .line 343
    check-cast v5, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    invoke-virtual {v5, v3}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setID(I)V

    .line 344
    invoke-direct {p0, p1, v4}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateFileNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;Ljava/io/File;)Z

    .line 345
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->addFileNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;)V

    move v5, v8

    .line 357
    .end local v3    # "newItemID":I
    :goto_1
    return v5

    .line 339
    .restart local v3    # "newItemID":I
    :cond_1
    instance-of v5, p1, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    if-eqz v5, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextItemID()I

    move-result v3

    goto :goto_0

    .line 350
    .end local v3    # "newItemID":I
    :cond_2
    invoke-interface {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;->getFileTimeStamp()J

    move-result-wide v0

    .line 351
    .local v0, "currTimeStamp":J
    invoke-interface {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;->getFileTimeStamp()J

    move-result-wide v6

    .line 352
    .local v6, "newTimeStamp":J
    cmp-long v5, v0, v6

    if-nez v5, :cond_3

    .line 353
    const/4 v5, 0x0

    goto :goto_1

    .line 355
    :cond_3
    invoke-direct {p0, v2, v4}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateFileNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;Ljava/io/File;)Z

    move v5, v8

    .line 357
    goto :goto_1
.end method

.method private updateItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;Ljava/io/File;)Z
    .locals 24
    .param p1, "itemNode"    # Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v10

    .line 136
    .local v10, "format":Lorg/cybergarage/upnp/std/av/server/object/Format;
    if-nez v10, :cond_0

    .line 137
    const/16 v22, 0x0

    .line 189
    :goto_0
    return v22

    .line 138
    :cond_0
    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Lorg/cybergarage/upnp/std/av/server/object/Format;->createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;

    move-result-object v11

    .line 141
    .local v11, "formatObj":Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    invoke-virtual/range {p1 .. p2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setFile(Ljava/io/File;)V

    .line 144
    invoke-interface {v11}, Lorg/cybergarage/upnp/std/av/server/object/FormatObject;->getTitle()Ljava/lang/String;

    move-result-object v20

    .line 145
    .local v20, "title":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_1

    .line 146
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setTitle(Ljava/lang/String;)V

    .line 149
    :cond_1
    invoke-interface {v11}, Lorg/cybergarage/upnp/std/av/server/object/FormatObject;->getCreator()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "creator":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    .line 151
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setCreator(Ljava/lang/String;)V

    .line 154
    :cond_2
    invoke-interface {v10}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMediaClass()Ljava/lang/String;

    move-result-object v13

    .line 155
    .local v13, "mediaClass":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_3

    .line 156
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setUPnPClass(Ljava/lang/String;)V

    .line 159
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 160
    .local v14, "lastModTime":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setDate(J)V

    .line 165
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 166
    .local v8, "fileSize":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setStorageUsed(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v8    # "fileSize":J
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getServerRootDir()Ljava/lang/String;

    move-result-object v19

    .line 173
    .local v19, "serverRoot":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "absServerPath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "filePath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-interface {v10}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMimeType()Ljava/lang/String;

    move-result-object v16

    .line 180
    .local v16, "mimeType":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "http-get:*:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 181
    .local v18, "protocol":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getID()Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, "id":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v12}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 183
    .local v21, "url":Ljava/lang/String;
    invoke-interface {v11}, Lorg/cybergarage/upnp/std/av/server/object/FormatObject;->getAttributeList()Lorg/cybergarage/xml/AttributeList;

    move-result-object v17

    .line 184
    .local v17, "objAttrList":Lorg/cybergarage/xml/AttributeList;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setResource(Ljava/lang/String;Ljava/lang/String;Lorg/cybergarage/xml/AttributeList;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 189
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 167
    .end local v4    # "absServerPath":Ljava/lang/String;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v12    # "id":Ljava/lang/String;
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v17    # "objAttrList":Lorg/cybergarage/xml/AttributeList;
    .end local v18    # "protocol":Ljava/lang/String;
    .end local v19    # "serverRoot":Ljava/lang/String;
    .end local v21    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 169
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method private updateItemNodeList()Z
    .locals 9

    .prologue
    .line 394
    const/4 v7, 0x0

    .line 397
    .local v7, "updateFlag":Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getNContentNodes()I

    move-result v6

    .line 398
    .local v6, "nContents":I
    new-array v0, v6, [Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .line 399
    .local v0, "cnode":[Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-lt v5, v6, :cond_0

    .line 401
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_1

    .line 417
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getCurrentDirectoryItemNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;

    move-result-object v4

    .line 418
    .local v4, "itemNodeList":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;->size()I

    move-result v3

    .line 419
    .local v3, "itemNodeCnt":I
    const/4 v5, 0x0

    :goto_2
    if-lt v5, v3, :cond_4

    .line 426
    return v7

    .line 400
    .end local v3    # "itemNodeCnt":I
    .end local v4    # "itemNodeList":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
    :cond_0
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v8

    aput-object v8, v0, v5

    .line 399
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 403
    :cond_1
    aget-object v8, v0, v5

    instance-of v8, v8, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    if-nez v8, :cond_3

    .line 401
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 405
    :cond_3
    aget-object v2, v0, v5

    check-cast v2, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    .line 406
    .local v2, "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v1

    .line 407
    .local v1, "itemFile":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 409
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 411
    aget-object v8, v0, v5

    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->removeContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)Z

    .line 412
    const/4 v7, 0x1

    goto :goto_3

    .line 421
    .end local v1    # "itemFile":Ljava/io/File;
    .end local v2    # "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .restart local v3    # "itemNodeCnt":I
    .restart local v4    # "itemNodeList":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
    :cond_4
    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;->getFileItemNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move-result-object v2

    .line 422
    .restart local v2    # "itemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateItemNodeList(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 423
    const/4 v7, 0x1

    .line 419
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private updateItemNodeList(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;)Z
    .locals 9
    .param p1, "newItemNode"    # Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    .prologue
    const/4 v5, 0x1

    .line 367
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v4

    .line 368
    .local v4, "newItemNodeFile":Ljava/io/File;
    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move-result-object v0

    .line 369
    .local v0, "currItemNode":Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNextItemID()I

    move-result v1

    .line 372
    .local v1, "newItemID":I
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setID(I)V

    .line 373
    invoke-direct {p0, p1, v4}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;Ljava/io/File;)Z

    .line 374
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->addItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;)V

    .line 385
    .end local v1    # "newItemID":I
    :goto_0
    return v5

    .line 378
    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFileTimeStamp()J

    move-result-wide v2

    .line 379
    .local v2, "currTimeStamp":J
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFileTimeStamp()J

    move-result-wide v6

    .line 380
    .local v6, "newTimeStamp":J
    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    .line 381
    const/4 v5, 0x0

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0, v0, v4}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateItemNode(Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;Ljava/io/File;)Z

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 549
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->itemFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 550
    const/4 v0, 0x0

    .line 551
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->itemFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 567
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->itemFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileTimeStamp()J
    .locals 4

    .prologue
    .line 532
    const-wide/16 v2, 0x0

    .line 533
    .local v2, "itemFileTimeStamp":J
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->itemFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 537
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->itemFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 543
    :cond_0
    :goto_0
    return-wide v2

    .line 538
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 520
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->itemFile:Ljava/io/File;

    .line 521
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->path:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/directory/file/FileDirectory;->updateFileNodeList()Z

    move-result v0

    return v0
.end method
