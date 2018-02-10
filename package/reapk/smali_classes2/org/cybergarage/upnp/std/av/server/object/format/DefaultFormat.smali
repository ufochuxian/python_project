.class public Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/Format;
.implements Lorg/cybergarage/upnp/std/av/server/object/FormatObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 44
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public getAttributeList()Lorg/cybergarage/xml/AttributeList;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, ""

    return-object v0
.end method

.method public getMediaClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "object.item"

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "*/*"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, ""

    return-object v0
.end method
