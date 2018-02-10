.class public Lorg/cybergarage/upnp/std/av/server/object/format/PNGFormat;
.super Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;-><init>(Ljava/io/File;)V

    .line 35
    return-void
.end method


# virtual methods
.method public createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 51
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/PNGFormat;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/PNGFormat;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public equals(Ljava/io/File;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    .line 43
    const/4 v2, 0x3

    invoke-static {p1, v1, v2}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getIDString(Ljava/io/File;II)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "headerID":Ljava/lang/String;
    const-string v2, "PNG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "image/png"

    return-object v0
.end method
