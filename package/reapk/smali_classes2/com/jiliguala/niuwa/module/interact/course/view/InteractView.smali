.class public interface abstract Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/base/e;


# virtual methods
.method public abstract dismissLoadingProgress()V
.end method

.method public abstract getCourseId()Ljava/lang/String;
.end method

.method public abstract getScoreNum()I
.end method

.method public abstract hasFocus()Z
.end method

.method public abstract hideTimeOutProgress()V
.end method

.method public abstract hideTransition()V
.end method

.method public abstract notifyInteractLayerTimeOut()V
.end method

.method public abstract onEndOfLesson()V
.end method

.method public abstract onGainResult(Ljava/lang/String;)V
.end method

.method public abstract onPrepareAdjustVideoSize(II)V
.end method

.method public abstract onRequestIteractLessonScriptError()V
.end method

.method public abstract onTimeOut()V
.end method

.method public abstract releaseResAndExit()V
.end method

.method public abstract removeMaskAllView()V
.end method

.method public abstract removeTransition()V
.end method

.method public abstract resetTimeOutProgress()V
.end method

.method public abstract setBtnPlay(Z)V
.end method

.method public abstract showInteractView(Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;)V
.end method

.method public abstract showReplayDialog()V
.end method

.method public abstract showScoreView()V
.end method

.method public abstract showTimeOutProgress()V
.end method

.method public abstract showTransition()V
.end method

.method public abstract toastReplay()V
.end method

.method public abstract updateTimeOutProgress(I)V
.end method
