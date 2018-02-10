.class public interface abstract Lcom/jiliguala/niuwa/module/video/render/listener/IRenderAction;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getPlayBackInfo()V
.end method

.method public abstract initModule()V
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pauseOrStart()V
.end method

.method public abstract performExit()V
.end method

.method public abstract performSeek(J)V
.end method

.method public abstract setIGetRenderListener(Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;)V
.end method

.method public abstract setRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V
.end method

.method public abstract startRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;Ljava/lang/String;)V
.end method

.method public abstract stopRender()V
.end method
