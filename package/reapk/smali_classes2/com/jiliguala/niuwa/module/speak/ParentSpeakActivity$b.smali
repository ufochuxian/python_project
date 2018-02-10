.class Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 1
    .param p1, "mParentSpeakActivityRef"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 1640
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1641
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    .line 1642
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0xc8

    const/16 v6, 0x100d

    const/16 v5, 0x1006

    const/4 v4, 0x0

    .line 1646
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1647
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1754
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1649
    :pswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isAudioRecording()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1650
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v4, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onStartAudioRecord(I)V

    goto :goto_0

    .line 1654
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isAudioRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1655
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v4, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->onStopAudioRecord(I)V

    goto :goto_0

    .line 1659
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->getRecordCurrentPos()I

    move-result v1

    .line 1662
    .local v1, "progress":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1663
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setProgress(I)V

    .line 1665
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    move-result-object v3

    const/16 v4, 0x1004

    invoke-virtual {v3, v4, v8, v9}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1668
    .end local v1    # "progress":I
    :pswitch_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1669
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1671
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$800(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1672
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$800(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1674
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1675
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1676
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1679
    :cond_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasFocus:Z

    if-eqz v3, :cond_5

    .line 1680
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1682
    :cond_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    move-result-object v3

    invoke-virtual {v3, v5, v8, v9}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1686
    :pswitch_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1689
    :pswitch_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1690
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;

    .line 1691
    .local v0, "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addView(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;)V

    goto/16 :goto_0

    .line 1693
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    :cond_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1400(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1694
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;

    .line 1695
    .restart local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addView(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;)V

    goto/16 :goto_0

    .line 1697
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;

    .line 1698
    .restart local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    iget-boolean v3, v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;->c:Z

    if-eqz v3, :cond_8

    .line 1699
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1500(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/view/View;

    move-result-object v2

    .line 1700
    .local v2, "scoreView":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 1701
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1704
    .end local v2    # "scoreView":Landroid/view/View;
    :cond_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1705
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideNextBtn()V

    .line 1707
    :cond_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addView(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;)V

    goto/16 :goto_0

    .line 1712
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    :pswitch_7
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->removeScoreView()V

    .line 1713
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideNextBtn()V

    goto/16 :goto_0

    .line 1716
    :pswitch_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1800(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    .line 1718
    :pswitch_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1900(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1721
    :pswitch_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1722
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->doAfterPlayScoreSound()V

    goto/16 :goto_0

    .line 1727
    :pswitch_b
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1728
    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->removeMessages(I)V

    goto/16 :goto_0

    .line 1731
    :cond_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v3

    if-gtz v3, :cond_b

    .line 1733
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    :goto_1
    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1739
    :cond_b
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    .line 1740
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2010(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1741
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->showFadeAnimation(Landroid/view/View;)V

    .line 1743
    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1744
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, p1, v4, v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1748
    :pswitch_c
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2400(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1751
    :pswitch_d
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2500(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1734
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1647
    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
