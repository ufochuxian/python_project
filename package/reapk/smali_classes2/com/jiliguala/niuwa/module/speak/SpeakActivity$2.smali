.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addSpeakView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1112
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->createSpeakViewWidget()Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$902(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1200(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setTotalHeight(I)V

    .line 1116
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setVisibility(I)V

    .line 1117
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->setCallBack(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    .line 1118
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v1, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->validAudioExist(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->changeRecordIconByRecordStatus(Z)V

    .line 1121
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->addOnGlobalLayoutListener()V

    .line 1122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V

    .line 1125
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$2;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Landroid/view/View;

    move-result-object v0

    .line 1126
    .local v0, "scoreView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1127
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    :cond_2
    return-void
.end method
