.class public Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;
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
.method public getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    return-object v0
.end method
