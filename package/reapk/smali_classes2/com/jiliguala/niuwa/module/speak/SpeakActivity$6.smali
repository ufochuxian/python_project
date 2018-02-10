.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onRun(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 2142
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2145
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->a:Ljava/lang/String;

    const-class v5, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    .line 2148
    .local v1, "recordTemplete":Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->isVolumeCallBack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2149
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2150
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v4

    iget v5, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->sound_intensity:I

    int-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->changeVolumeIcon(D)V

    .line 2185
    :cond_0
    :goto_0
    return-void

    .line 2155
    :cond_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->isErrorResult()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2156
    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->result:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;

    iget v3, v4, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;->overall:I

    .line 2157
    .local v3, "score":I
    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->processScore(I)I

    move-result v3

    .line 2159
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2160
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->changeVolumeIcon(D)V

    .line 2161
    new-instance v2, Lcom/jiliguala/niuwa/module/speak/model/Result;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/module/speak/model/Result;-><init>()V

    .line 2162
    .local v2, "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->getRefTextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/jiliguala/niuwa/module/speak/model/Result;->content:Ljava/lang/String;

    .line 2163
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->onScoreAnswer(ILcom/jiliguala/niuwa/module/speak/model/Result;)V

    .line 2164
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v4, v3, v2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onResult(ILcom/jiliguala/niuwa/module/speak/model/Result;)V

    .line 2166
    .end local v2    # "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2167
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$800(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->getWavePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->addToAudioList(ILjava/lang/String;)V

    goto :goto_0

    .line 2174
    .end local v3    # "score":I
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2175
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->onError()V

    .line 2177
    :cond_4
    const-string v4, "40092"

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->errId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2179
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/widget/b;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/b;

    move-result-object v0

    .line 2180
    .local v0, "noticeFragment":Lcom/jiliguala/niuwa/common/widget/b;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$6;->b:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/common/widget/b;->b(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 2182
    .end local v0    # "noticeFragment":Lcom/jiliguala/niuwa/common/widget/b;
    :cond_5
    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->error:Ljava/lang/String;

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
