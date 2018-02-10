.class public Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public at(I)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    return-object v0
.end method

.method public getFrame(I)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    return-object v0
.end method

.method public getFrame(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 38
    if-nez p1, :cond_1

    move-object v0, v3

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->size()I

    move-result v2

    .line 42
    .local v2, "nLists":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    if-lt v1, v2, :cond_2

    move-object v0, v3

    .line 48
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->getFrame(I)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    move-result-object v0

    .line 45
    .local v0, "frame":Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getFrameData(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->getFrame(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    move-result-object v0

    .line 54
    .local v0, "frame":Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    if-nez v0, :cond_0

    .line 55
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 56
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->getData()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getFrameStringData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->getFrame(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    move-result-object v0

    .line 62
    .local v0, "frame":Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    if-nez v0, :cond_0

    .line 63
    const-string v1, ""

    .line 64
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->getStringData()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
