.class public abstract Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;
.super Lorg/cybergarage/upnp/std/av/server/object/format/Header;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/Format;
.implements Lorg/cybergarage/upnp/std/av/server/object/FormatObject;


# instance fields
.field private imgFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;->imgFile:Ljava/io/File;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;->imgFile:Ljava/io/File;

    .line 63
    return-void
.end method


# virtual methods
.method public abstract createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
.end method

.method public abstract equals(Ljava/io/File;)Z
.end method

.method public getAttributeList()Lorg/cybergarage/xml/AttributeList;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    .line 106
    .local v0, "attrList":Lorg/cybergarage/xml/AttributeList;
    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, ""

    return-object v0
.end method

.method public getMediaClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "object.item.imageItem.photo"

    return-object v0
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;->imgFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "fname":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "idx":I
    if-gez v1, :cond_0

    .line 114
    const-string v2, ""

    .line 116
    :goto_0
    return-object v2

    .line 115
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
