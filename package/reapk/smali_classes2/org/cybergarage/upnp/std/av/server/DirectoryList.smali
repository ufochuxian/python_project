.class public Lorg/cybergarage/upnp/std/av/server/DirectoryList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/Directory;

    return-object v0
.end method

.method public getDirectory(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/Directory;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->size()I

    move-result v1

    .line 42
    .local v1, "dirCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    .line 45
    .local v0, "dir":Lorg/cybergarage/upnp/std/av/server/Directory;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/Directory;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "dirName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1
.end method

.method public update()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->size()I

    move-result v1

    .line 61
    .local v1, "dirCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 66
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    .line 64
    .local v0, "dir":Lorg/cybergarage/upnp/std/av/server/Directory;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/Directory;->updateContentList()V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
