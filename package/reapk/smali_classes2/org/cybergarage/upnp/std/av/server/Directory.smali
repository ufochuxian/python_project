.class public abstract Lorg/cybergarage/upnp/std/av/server/Directory;
.super Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;-><init>(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;Ljava/lang/String;)V
    .locals 0
    .param p1, "cdir"    # Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 31
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/std/av/server/Directory;->setFriendlyName(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/Directory;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;->setTitle(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public abstract update()Z
.end method

.method public updateContentList()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/Directory;->update()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/Directory;->getNContentNodes()I

    move-result v0

    .line 64
    .local v0, "nContents":I
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/Directory;->setChildCount(I)V

    .line 65
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/Directory;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 67
    .end local v0    # "nContents":I
    :cond_0
    return-void
.end method
