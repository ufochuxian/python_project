.class Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onRun(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1574
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->a:Ljava/lang/String;

    const-class v6, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    .line 1577
    .local v2, "recordTemplete":Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->isVolumeCallBack()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1578
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1579
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v5

    iget v6, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->sound_intensity:I

    int-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->changeVolumeIcon(D)V

    .line 1615
    :cond_0
    :goto_0
    return-void

    .line 1584
    :cond_1
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->isErrorResult()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1585
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->result:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;

    iget v1, v5, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;->overall:I

    .line 1586
    .local v1, "realScore":I
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->processScore(I)I

    move-result v4

    .line 1588
    .local v4, "score":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1589
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->changeVolumeIcon(D)V

    .line 1590
    new-instance v3, Lcom/jiliguala/niuwa/module/speak/model/Result;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/module/speak/model/Result;-><init>()V

    .line 1591
    .local v3, "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->getRefTextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/jiliguala/niuwa/module/speak/model/Result;->content:Ljava/lang/String;

    .line 1592
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->onScoreAnswer(ILcom/jiliguala/niuwa/module/speak/model/Result;)V

    .line 1593
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v5, v4, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onResult(ILcom/jiliguala/niuwa/module/speak/model/Result;)V

    .line 1594
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$500(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;II)V

    .line 1596
    .end local v3    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1597
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->getWavePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->addToAudioList(ILjava/lang/String;)V

    goto :goto_0

    .line 1605
    .end local v1    # "realScore":I
    .end local v4    # "score":I
    :cond_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$400(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    .line 1607
    const-string v5, "40092"

    iget-object v6, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->errId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1609
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/widget/b;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/b;

    move-result-object v0

    .line 1610
    .local v0, "noticeFragment":Lcom/jiliguala/niuwa/common/widget/b;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$2;->b:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jiliguala/niuwa/common/widget/b;->b(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 1612
    .end local v0    # "noticeFragment":Lcom/jiliguala/niuwa/common/widget/b;
    :cond_4
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->error:Ljava/lang/String;

    invoke-static {v5}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
