.class public interface abstract Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public abstract addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V
.end method

.method public abstract checkVideoPlay()V
.end method

.method public abstract getClickManager()Lcom/jiliguala/niuwa/common/util/xutils/c;
.end method

.method public abstract getEvluateStr()Ljava/lang/String;
.end method

.method public abstract getSaveFileName()Ljava/lang/String;
.end method

.method public abstract isLastPage()Z
.end method

.method public abstract onBiginOfSpeech()V
.end method

.method public abstract onClickNextBtn()V
.end method

.method public abstract onEndOfOpenRecordUI()V
.end method

.method public abstract onEndOfProgressAnim(I)V
.end method

.method public abstract onEndOfShowPartOfRecordUI()V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onEndOfTranslateUI()V
.end method

.method public abstract onResult(ILcom/jiliguala/niuwa/module/speak/model/Result;)V
.end method

.method public abstract onStartProgressAnim()V
.end method

.method public abstract onStartRecord()V
.end method

.method public abstract onStopEvluate()V
.end method

.method public abstract playRecordFile(Ljava/lang/String;)V
.end method

.method public abstract startRecordByChiShen()V
.end method

.method public abstract stopRecordByChiShen()V
.end method
