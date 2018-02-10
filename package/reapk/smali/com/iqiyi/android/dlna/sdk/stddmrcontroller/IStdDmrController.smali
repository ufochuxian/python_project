.class public interface abstract Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/IStdDmrController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAvailableFunctions()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaDuration()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract getMediaUri()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract getPosition()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract getTransportState()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract getVolume()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract isFunctionAvailable(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;)Z
.end method

.method public abstract pause()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract play()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract playMedia(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract pushUrl(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract seek(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract setVolume(I)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method

.method public abstract stop()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
.end method
