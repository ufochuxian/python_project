.class Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeVPView(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1818
    return-void
.end method

.method public enableButton(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1850
    return-void
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    return-object v0
.end method

.method public isChannelShowing()Z
    .locals 1

    .prologue
    .line 1899
    const/4 v0, 0x0

    return v0
.end method

.method public onDismissLoading()V
    .locals 0

    .prologue
    .line 1870
    return-void
.end method

.method public onDoScaleAnimation(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;I)V

    .line 1813
    return-void
.end method

.method public onFlashCardPlayComplete(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 1874
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$3300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->validAudioExist(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1875
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addSpeakView()V

    .line 1876
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1877
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    move-result-object v1

    const/16 v2, 0x100e

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 1878
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setWaitingRecord(Z)V

    .line 1886
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    move-result-object v0

    .line 1887
    .local v0, "flashCardFragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    if-eqz v0, :cond_1

    .line 1888
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->hideTitleContainer()V

    .line 1890
    :cond_1
    return-void

    .line 1883
    .end local v0    # "flashCardFragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showSpeaViewAndScoreView()V

    goto :goto_0
.end method

.method public onNetworkError()V
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$3200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$3200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 1845
    :cond_0
    return-void
.end method

.method public onNetworkResponse()V
    .locals 0

    .prologue
    .line 1838
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 1909
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getCurrentFlashCardFragment()Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    move-result-object v0

    .line 1910
    .local v0, "flashCardFragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    if-eqz v0, :cond_0

    .line 1911
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->showTitleContainer()V

    .line 1912
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->showWordContainer()V

    .line 1915
    :cond_0
    return-void
.end method

.method public onShowLoading()V
    .locals 0

    .prologue
    .line 1865
    return-void
.end method

.method public onSubCourseReportFailed()V
    .locals 0

    .prologue
    .line 1860
    return-void
.end method

.method public onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 0
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 1855
    return-void
.end method

.method public onUpdateSpeakCardModelTemplete(Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;)V
    .locals 0
    .param p1, "speakCardModelTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakCardModelTemplete;

    .prologue
    .line 1905
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
    .line 1823
    .local p1, "mPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2802(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;Ljava/util/List;)Ljava/util/List;

    .line 1824
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2900(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2900(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->prepareFlashCardLogic()V

    .line 1828
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1829
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$800(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

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

    .line 1831
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$3000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    .line 1832
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$c;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$3100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    .line 1833
    return-void
.end method
