.class public Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/MiDmrController;
.super Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;
.source "SourceFile"

# interfaces
.implements Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/IStdDmrController;


# direct methods
.method protected constructor <init>(Lorg/cybergarage/upnp/Device;)V
    .locals 0
    .param p1, "targetDevice"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;-><init>(Lorg/cybergarage/upnp/Device;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected checkAviliableFunctions(Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .param p1, "targetDevice"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->checkAviliableFunctions(Lorg/cybergarage/upnp/Device;)V

    .line 27
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/MiDmrController;->mAvailableFunctions:Ljava/util/HashSet;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method protected isSuitableDevice(Lorg/cybergarage/upnp/Device;)Z
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isMiDmrDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v0

    return v0
.end method

.method public playMedia(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    .prologue
    .line 32
    const-string v0, "MiDmrController play!"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->playMedia(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v0

    return-object v0
.end method
