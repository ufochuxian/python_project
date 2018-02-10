.class public abstract Lorg/cybergarage/upnp/std/av/server/object/format/Header;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getID(Ljava/io/File;I)[B
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "headerSize"    # I

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getID(Ljava/io/InputStream;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 75
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method public static final getID(Ljava/io/InputStream;I)[B
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "headerSize"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getID(Ljava/io/InputStream;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getID(Ljava/io/InputStream;II)[B
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "headerOffset"    # I
    .param p2, "headerSize"    # I

    .prologue
    .line 30
    add-int v3, p1, p2

    .line 31
    .local v3, "headerCnt":I
    new-array v2, v3, [B

    .line 34
    .local v2, "header":[B
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    .local v0, "dataIn":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 49
    .end local v0    # "dataIn":Ljava/io/DataInputStream;
    .end local v4    # "n":I
    :goto_1
    return-object v2

    .line 37
    .restart local v0    # "dataIn":Ljava/io/DataInputStream;
    .restart local v4    # "n":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 38
    .local v5, "readByte":B
    if-ge v4, p1, :cond_1

    .line 35
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    :cond_1
    sub-int v6, v4, p1

    aput-byte v5, v2, v6
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 43
    .end local v0    # "dataIn":Ljava/io/DataInputStream;
    .end local v4    # "n":I
    .end local v5    # "readByte":B
    :catch_0
    move-exception v6

    goto :goto_1

    .line 45
    :catch_1
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static final getIDString(Ljava/io/File;I)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "headerSize"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getIDString(Ljava/io/File;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getIDString(Ljava/io/File;II)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "headerOffset"    # I
    .param p2, "headerSize"    # I

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, p1, p2}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getIDString(Ljava/io/InputStream;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 87
    const-string v1, ""

    goto :goto_0
.end method

.method public static final getIDString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "headerSize"    # I

    .prologue
    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getID(Ljava/io/InputStream;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final getIDString(Ljava/io/InputStream;II)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "headerOffset"    # I
    .param p2, "headerSize"    # I

    .prologue
    .line 59
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getID(Ljava/io/InputStream;II)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final getSuffix(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "fname":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, "idx":I
    if-gez v1, :cond_0

    .line 105
    const-string v2, ""

    .line 106
    :goto_0
    return-object v2

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
