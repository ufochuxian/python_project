.class public Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrControllerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStdDmrControllerByDevice(Lorg/cybergarage/upnp/Device;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;
    .locals 1
    .param p0, "targetDevice"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 9
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isMiDmrDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/MiDmrController;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/MiDmrController;-><init>(Lorg/cybergarage/upnp/Device;)V

    .line 19
    :goto_0
    return-object v0

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isStdDmrDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;-><init>(Lorg/cybergarage/upnp/Device;)V

    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
