.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->onRun(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 313
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->val$result:Ljava/lang/String;

    const-class v5, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    .line 320
    .local v2, "recordTemplete":Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->isVolumeCallBack()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;

    move-result-object v4

    iget v5, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->sound_intensity:I

    int-to-double v6, v5

    invoke-interface {v4, v6, v7}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;->changeVolumeIcon(D)V

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->isErrorResult()Z

    move-result v4

    if-nez v4, :cond_3

    .line 328
    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->result:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;

    iget v3, v4, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;->overall:I

    .line 330
    .local v3, "score":I
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->processScore(I)I

    move-result v3

    .line 333
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    int-to-float v5, v3

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;F)V

    .line 335
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->getWavePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/i;->b(Ljava/lang/String;)Z

    move-result v0

    .line 336
    .local v0, "fileExits":Z
    if-eqz v0, :cond_0

    .line 337
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->getWavePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    .end local v0    # "fileExits":Z
    .end local v3    # "score":I
    :cond_3
    const-string v4, "40092"

    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->errId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 359
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/widget/b;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/b;

    move-result-object v1

    .line 360
    .local v1, "noticeFragment":Lcom/jiliguala/niuwa/common/widget/b;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/common/widget/b;->b(Landroid/support/v4/app/ag;)V

    .line 361
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;F)V

    goto :goto_0

    .line 364
    .end local v1    # "noticeFragment":Lcom/jiliguala/niuwa/common/widget/b;
    :cond_4
    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->error:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->error:Ljava/lang/String;

    const-string v5, "concurrency is full"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 366
    const-string v4, "\u8bed\u97f3\u7cfb\u7edf\u5fd9\u788c\uff0c\u8bf7\u518d\u6b21\u5c1d\u8bd5\u91cd\u65b0\u8fde\u63a5\uff01\uff1a\uff09"

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "chivox concurrency error"

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 371
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;->this$0:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;F)V

    goto/16 :goto_0

    .line 369
    :cond_5
    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->error:Ljava/lang/String;

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
