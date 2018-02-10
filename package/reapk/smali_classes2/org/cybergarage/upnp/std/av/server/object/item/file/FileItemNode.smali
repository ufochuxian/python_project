.class public Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
.super Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/item/file/FileNode;


# instance fields
.field private itemFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->setFile(Ljava/io/File;)V

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->itemFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->itemFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContent()[B
    .locals 2

    .prologue
    .line 86
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 89
    .local v0, "fileByte":[B
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->itemFile:Ljava/io/File;

    invoke-static {v1}, Lorg/cybergarage/util/FileUtil;->load(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 107
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->itemFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->itemFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->itemFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileTimeStamp()J
    .locals 4

    .prologue
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .local v2, "itemFileTimeStamp":J
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->itemFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->itemFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 68
    :cond_0
    :goto_0
    return-wide v2

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    .line 118
    .local v0, "cdir":Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v1

    .line 119
    .local v1, "itemFile":Ljava/io/File;
    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v2

    .line 120
    .local v2, "itemFormat":Lorg/cybergarage/upnp/std/av/server/object/Format;
    if-nez v2, :cond_0

    .line 122
    const-string v3, "*/*"

    .line 124
    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v2}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMimeType()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->itemFile:Ljava/io/File;

    .line 46
    return-void
.end method
