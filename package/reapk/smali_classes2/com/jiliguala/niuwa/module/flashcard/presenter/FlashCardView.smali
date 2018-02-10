.class public interface abstract Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract changeVPView(I)V
.end method

.method public abstract enableButton(Z)V
.end method

.method public abstract getSubscriptions()Lrx/i/b;
.end method

.method public abstract isChannelShowing()Z
.end method

.method public abstract onDismissLoading()V
.end method

.method public abstract onDoScaleAnimation(I)V
.end method

.method public abstract onFlashCardPlayComplete(I)V
.end method

.method public abstract onNetworkError()V
.end method

.method public abstract onNetworkResponse()V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onShowLoading()V
.end method

.method public abstract onSubCourseReportFailed()V
.end method

.method public abstract onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
.end method

.method public abstract onUpdateSpeakCardModelTemplete(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V
.end method

.method public abstract updateVPData(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;)V"
        }
    .end annotation
.end method
