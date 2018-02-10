.class Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addSpeakView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 777
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->createSpeakViewWidget()Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$102(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setTotalHeight(I)V

    .line 781
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setCallBack(Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget$CallBack;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    .line 783
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->validAudioExist(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->changeRecordIconByRecordStatus(Z)V

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->addOnGlobalLayoutListener()V

    .line 787
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$8;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addMaskView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Z)V

    .line 794
    return-void
.end method
