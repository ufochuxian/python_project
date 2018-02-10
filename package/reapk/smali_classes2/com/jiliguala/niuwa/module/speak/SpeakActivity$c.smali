.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 2374
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeVPView(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 2383
    return-void
.end method

.method public enableButton(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2414
    return-void
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    return-object v0
.end method

.method public isChannelShowing()Z
    .locals 1

    .prologue
    .line 2474
    const/4 v0, 0x0

    return v0
.end method

.method public onDismissLoading()V
    .locals 0

    .prologue
    .line 2434
    return-void
.end method

.method public onDoScaleAnimation(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$3300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;I)V

    .line 2378
    return-void
.end method

.method public onFlashCardPlayComplete(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 2449
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$3600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->validAudioExist(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2450
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addSpeakView()V

    .line 2451
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1400(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2452
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1400(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;

    move-result-object v1

    const/16 v2, 0x100e

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 2453
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2454
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setWaitingRecord(Z)V

    .line 2460
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$3700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    .line 2461
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    move-result-object v0

    .line 2462
    .local v0, "flashCardFragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    if-eqz v0, :cond_1

    .line 2463
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->hideTitleContainer()V

    .line 2465
    :cond_1
    return-void

    .line 2458
    .end local v0    # "flashCardFragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showSpeaViewAndScoreView()V

    goto :goto_0
.end method

.method public onNetworkError()V
    .locals 1

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 2409
    :cond_0
    return-void
.end method

.method public onNetworkResponse()V
    .locals 0

    .prologue
    .line 2402
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 2484
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;

    move-result-object v0

    .line 2485
    .local v0, "flashCardFragment":Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;
    if-eqz v0, :cond_0

    .line 2486
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/flashcard/fragment/FlashCardFragment;->showTitleContainer()V

    .line 2488
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$3800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    .line 2489
    return-void
.end method

.method public onShowLoading()V
    .locals 0

    .prologue
    .line 2429
    return-void
.end method

.method public onSubCourseReportFailed()V
    .locals 0

    .prologue
    .line 2424
    return-void
.end method

.method public onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 0
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 2419
    return-void
.end method

.method public onUpdateSpeakCardModelTemplete(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V
    .locals 0
    .param p1, "speakCardModelTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    .prologue
    .line 2480
    return-void
.end method

.method public updateVPData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2388
    .local p1, "mPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$3402(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;Ljava/util/List;)Ljava/util/List;

    .line 2389
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$3500(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$3500(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/flashcard/adapter/FlashCardAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 2392
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->prepareFlashCardLogic()V

    .line 2393
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2394
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2397
    :cond_1
    return-void
.end method
