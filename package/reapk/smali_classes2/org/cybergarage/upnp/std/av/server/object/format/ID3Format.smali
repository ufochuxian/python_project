.class public Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;
.super Lorg/cybergarage/upnp/std/av/server/object/format/Header;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/Format;
.implements Lorg/cybergarage/upnp/std/av/server/object/FormatObject;


# static fields
.field public static final FRAME_HEADER_SIZE:I = 0xa

.field public static final HEADER_ID:Ljava/lang/String; = "ID3"

.field public static final HEADER_SIZE:I = 0xa


# instance fields
.field private extHeader:[B

.field private frameHeader:[B

.field private frameList:Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

.field private header:[B

.field private mp3File:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 50
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;-><init>()V

    .line 39
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->header:[B

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->extHeader:[B

    .line 41
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameHeader:[B

    .line 42
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameList:Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->mp3File:Ljava/io/File;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/16 v1, 0xa

    .line 55
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;-><init>()V

    .line 39
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->header:[B

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->extHeader:[B

    .line 41
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameHeader:[B

    .line 42
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameList:Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    .line 57
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->mp3File:Ljava/io/File;

    .line 58
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->loadHeader(Ljava/io/File;)Z

    .line 59
    return-void
.end method

.method private getFrameFlag([B)I
    .locals 2
    .param p1, "frameHeader"    # [B

    .prologue
    .line 214
    const/16 v0, 0x8

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private getFrameID([B)Ljava/lang/String;
    .locals 3
    .param p1, "frameHeader"    # [B

    .prologue
    .line 201
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method private getFrameSize([B)I
    .locals 3
    .param p1, "frameHeader"    # [B

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 209
    return v1

    .line 208
    :cond_0
    rsub-int/lit8 v2, v0, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 241
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public equals(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 233
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getIDString(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "headerID":Ljava/lang/String;
    const-string v1, "ID3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x1

    .line 236
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributeList()Lorg/cybergarage/xml/AttributeList;
    .locals 6

    .prologue
    .line 256
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    .line 259
    .local v0, "attrList":Lorg/cybergarage/xml/AttributeList;
    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->mp3File:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 260
    .local v2, "fsize":J
    new-instance v1, Lorg/cybergarage/xml/Attribute;

    const-string v4, "size"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .local v1, "sizeStr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 263
    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    const-string v1, "TPE1"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "creator":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    .line 288
    :goto_0
    return-object v1

    .line 282
    :cond_0
    const-string v1, "TPE2"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, v0

    .line 284
    goto :goto_0

    .line 285
    :cond_1
    const-string v1, "TPE3"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v0

    .line 287
    goto :goto_0

    .line 288
    :cond_2
    const-string v1, "TPE4"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtHeaderSize()I
    .locals 4

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 192
    return v1

    .line 191
    :cond_0
    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->extHeader:[B

    rsub-int/lit8 v3, v0, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFlag()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->header:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getFrameData(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameList:Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->getFrameData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFrameStringData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameList:Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->getFrameStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->header:[B

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getHeaderSize()I
    .locals 4

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 155
    return v1

    .line 154
    :cond_0
    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->header:[B

    rsub-int/lit8 v3, v0, 0x9

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMediaClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string v0, "object.item.audioItem.musicTrack"

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, "audio/mpeg"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    const-string v1, "TIT2"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    .line 274
    :goto_0
    return-object v1

    .line 271
    :cond_0
    const-string v1, "TIT1"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, v0

    .line 273
    goto :goto_0

    .line 274
    :cond_1
    const-string v1, "TIT2"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasExtendedHeader()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFlag()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFooter()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFlag()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader()Z
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getHeaderID()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 138
    :goto_0
    return v1

    :cond_0
    const-string v1, "ID3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isExperimental()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFlag()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsynchronisation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFlag()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadHeader(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 125
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->loadHeader(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadHeader(Ljava/io/InputStream;)Z
    .locals 14
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v0, "dataIn":Ljava/io/DataInputStream;
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_0
    const/16 v12, 0xa

    if-lt v11, v12, :cond_2

    .line 75
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->hasExtendedHeader()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 77
    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x4

    if-lt v11, v12, :cond_3

    .line 79
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getExtHeaderSize()I

    move-result v2

    .line 81
    .local v2, "extHeaderSize":I
    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v12, v2, -0x4

    if-lt v11, v12, :cond_4

    .line 86
    .end local v2    # "extHeaderSize":I
    :cond_0
    iget-object v12, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameList:Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    invoke-virtual {v12}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->clear()V

    .line 87
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getHeaderSize()I

    move-result v12

    add-int/lit8 v6, v12, -0xa

    .line 88
    .local v6, "frameDataSize":I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->hasExtendedHeader()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 89
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getExtHeaderSize()I

    move-result v12

    sub-int/2addr v6, v12

    .line 90
    :cond_1
    const/4 v5, 0x0

    .line 91
    .local v5, "frameDataCnt":I
    :goto_3
    if-lt v5, v6, :cond_5

    .line 110
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 118
    .end local v0    # "dataIn":Ljava/io/DataInputStream;
    .end local v5    # "frameDataCnt":I
    .end local v6    # "frameDataSize":I
    .end local v11    # "n":I
    :goto_4
    const/4 v12, 0x1

    :goto_5
    return v12

    .line 72
    .restart local v0    # "dataIn":Ljava/io/DataInputStream;
    .restart local v11    # "n":I
    :cond_2
    iget-object v12, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->header:[B

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    aput-byte v13, v12, v11

    .line 71
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 78
    :cond_3
    iget-object v12, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->header:[B

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    aput-byte v13, v12, v11

    .line 77
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 82
    .restart local v2    # "extHeaderSize":I
    :cond_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 81
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 93
    .end local v2    # "extHeaderSize":I
    .restart local v5    # "frameDataCnt":I
    .restart local v6    # "frameDataSize":I
    :cond_5
    const/4 v11, 0x0

    :goto_6
    const/16 v12, 0xa

    if-lt v11, v12, :cond_6

    .line 95
    iget-object v12, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameHeader:[B

    invoke-direct {p0, v12}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameID([B)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, "frameID":Ljava/lang/String;
    iget-object v12, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameHeader:[B

    invoke-direct {p0, v12}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameSize([B)I

    move-result v9

    .line 97
    .local v9, "frameSize":I
    iget-object v12, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameHeader:[B

    invoke-direct {p0, v12}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getFrameFlag([B)I

    move-result v7

    .line 98
    .local v7, "frameFlag":I
    new-array v4, v9, [B

    .line 99
    .local v4, "frameData":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7
    if-lt v10, v9, :cond_7

    .line 101
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    invoke-direct {v3}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;-><init>()V

    .line 102
    .local v3, "frame":Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    invoke-virtual {v3, v8}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->setID(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3, v9}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->setSize(I)V

    .line 104
    invoke-virtual {v3, v7}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->setFlag(I)V

    .line 105
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->setData([B)V

    .line 106
    iget-object v12, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameList:Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    invoke-virtual {v12, v3}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v12, v9, 0xa

    add-int/2addr v5, v12

    goto :goto_3

    .line 94
    .end local v3    # "frame":Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    .end local v4    # "frameData":[B
    .end local v7    # "frameFlag":I
    .end local v8    # "frameID":Ljava/lang/String;
    .end local v9    # "frameSize":I
    .end local v10    # "i":I
    :cond_6
    iget-object v12, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameHeader:[B

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v13

    aput-byte v13, v12, v11

    .line 93
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 100
    .restart local v4    # "frameData":[B
    .restart local v7    # "frameFlag":I
    .restart local v8    # "frameID":Ljava/lang/String;
    .restart local v9    # "frameSize":I
    .restart local v10    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    aput-byte v12, v4, v10
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 113
    .end local v0    # "dataIn":Ljava/io/DataInputStream;
    .end local v4    # "frameData":[B
    .end local v5    # "frameDataCnt":I
    .end local v6    # "frameDataSize":I
    .end local v7    # "frameFlag":I
    .end local v8    # "frameID":Ljava/lang/String;
    .end local v9    # "frameSize":I
    .end local v10    # "i":I
    .end local v11    # "n":I
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 116
    const/4 v12, 0x0

    goto :goto_5

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    goto :goto_4
.end method

.method public print()V
    .locals 7

    .prologue
    .line 297
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->header:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 298
    .local v2, "headerStr":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "header = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ID = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getHeaderID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Size = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->getHeaderSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isUnsynchronisation = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->isUnsynchronisation()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hasExtendedHeader = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->hasExtendedHeader()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isExperimental = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->isExperimental()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hasFooter = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->hasFooter()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameList:Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->size()I

    move-result v1

    .line 306
    .local v1, "frameCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 312
    return-void

    .line 308
    :cond_0
    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Format;->frameList:Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;

    invoke-virtual {v4, v3}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->getFrame(I)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    move-result-object v0

    .line 309
    .local v0, "frame":Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "     "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->getData()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
