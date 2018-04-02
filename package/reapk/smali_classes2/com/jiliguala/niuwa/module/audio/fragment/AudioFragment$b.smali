.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 2702
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2703
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    .line 2704
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 2708
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2709
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2765
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 2769
    :cond_0
    :goto_0
    return-void

    .line 2711
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2712
    .local v1, "current":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2713
    .local v2, "dur":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4, v1, v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;II)V

    goto :goto_0

    .line 2716
    .end local v1    # "current":I
    .end local v2    # "dur":I
    :pswitch_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2717
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2721
    :pswitch_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$4000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2722
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$4000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2726
    :pswitch_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$4000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2727
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$4000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2731
    :pswitch_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2732
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isStartOfSong()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2736
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->pausePlay()V

    .line 2740
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/logic/r/a;->a(Z)V

    .line 2742
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 2743
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$3600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    goto/16 :goto_0

    .line 2747
    :pswitch_5
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2748
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelect()V

    goto/16 :goto_0

    .line 2752
    :pswitch_6
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2753
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    .line 2754
    .local v0, "audioActivity":Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;
    if-eqz v0, :cond_0

    .line 2757
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;->isAudioChannelListFragmentShowing()Z

    move-result v3

    .line 2759
    .local v3, "isAudioChannelShowing":Z
    if-eqz v3, :cond_0

    .line 2760
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->pausePlay()V

    goto/16 :goto_0

    .line 2709
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
