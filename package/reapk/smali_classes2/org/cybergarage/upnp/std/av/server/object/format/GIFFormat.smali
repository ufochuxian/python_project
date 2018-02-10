.class public Lorg/cybergarage/upnp/std/av/server/object/format/GIFFormat;
.super Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;-><init>(Ljava/io/File;)V

    .line 39
    return-void
.end method


# virtual methods
.method public createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 55
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/GIFFormat;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/GIFFormat;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public equals(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 47
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getIDString(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "headerID":Ljava/lang/String;
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 50
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "image/gif"

    return-object v0
.end method
