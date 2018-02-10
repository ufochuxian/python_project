.class Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->startRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 323
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->isTranslateUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->onError()V

    .line 335
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->startRecordByChiShen()V

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$200(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;->getEvluateStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/TimeOutUtil;->getMaxTime(Ljava/lang/String;)I

    move-result v0

    .line 331
    .local v0, "maxTime":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 332
    .local v1, "obtain":Landroid/os/Message;
    const/16 v2, 0x1004

    iput v2, v1, Landroid/os/Message;->what:I

    .line 333
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$300(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 334
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$2;->a:Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->access$400(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method
