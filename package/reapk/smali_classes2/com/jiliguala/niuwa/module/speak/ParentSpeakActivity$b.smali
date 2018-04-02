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
    .line 1668
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1669
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    .line 1670
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

    .line 1674
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1675
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1782
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1786
    :cond_0
    :goto_0
    return-void

    .line 1677
    :pswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isAudioRecording()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1678
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

    .line 1682
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->isAudioRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1683
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

    .line 1687
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->getRecordCurrentPos()I

    move-result v1

    .line 1690
    .local v1, "progress":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1691
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->setProgress(I)V

    .line 1693
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

    .line 1696
    .end local v1    # "progress":I
    :pswitch_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1697
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1699
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$800(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1700
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$800(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1702
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1703
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1704
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1707
    :cond_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hasFocus:Z

    if-eqz v3, :cond_5

    .line 1708
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1710
    :cond_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;

    move-result-object v3

    invoke-virtual {v3, v5, v8, v9}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1714
    :pswitch_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1717
    :pswitch_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1300(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1718
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;

    .line 1719
    .local v0, "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addView(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;)V

    goto/16 :goto_0

    .line 1721
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    :cond_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1400(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1722
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;

    .line 1723
    .restart local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addView(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;)V

    goto/16 :goto_0

    .line 1725
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;

    .line 1726
    .restart local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    iget-boolean v3, v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;->c:Z

    if-eqz v3, :cond_8

    .line 1727
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1500(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/view/View;

    move-result-object v2

    .line 1728
    .local v2, "scoreView":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 1729
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1600(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1732
    .end local v2    # "scoreView":Landroid/view/View;
    :cond_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1700(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1733
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideNextBtn()V

    .line 1735
    :cond_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->addView(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;)V

    goto/16 :goto_0

    .line 1740
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$a;
    :pswitch_7
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->removeScoreView()V

    .line 1741
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->hideNextBtn()V

    goto/16 :goto_0

    .line 1744
    :pswitch_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1800(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    .line 1746
    :pswitch_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$1900(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1749
    :pswitch_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1750
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/view/ParentSpeakWidget;->doAfterPlayScoreSound()V

    goto/16 :goto_0

    .line 1755
    :pswitch_b
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1756
    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->removeMessages(I)V

    goto/16 :goto_0

    .line 1759
    :cond_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2000(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)I

    move-result v3

    if-gtz v3, :cond_b

    .line 1761
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

    .line 1765
    :goto_1
    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1767
    :cond_b
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2200(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    .line 1768
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

    .line 1769
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

    .line 1771
    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1772
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, p1, v4, v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1776
    :pswitch_c
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2400(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1779
    :pswitch_d
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->access$2500(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V

    goto/16 :goto_0

    .line 1762
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1675
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
