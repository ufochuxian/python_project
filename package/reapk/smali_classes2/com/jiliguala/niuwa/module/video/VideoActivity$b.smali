.class Lcom/jiliguala/niuwa/module/video/VideoActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;
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
            "Lcom/jiliguala/niuwa/module/video/VideoActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 3296
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    .line 3298
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/module/video/VideoActivity$b;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity$b;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 3293
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 3307
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3308
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 3366
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3369
    :cond_0
    :goto_0
    return-void

    .line 3310
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->hide()V

    goto :goto_0

    .line 3313
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3314
    .local v0, "curPosition":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 3316
    .local v1, "duration":I
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    .line 3317
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3, v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3500(Lcom/jiliguala/niuwa/module/video/VideoActivity;II)V

    goto :goto_0

    .line 3321
    .end local v0    # "curPosition":I
    .end local v1    # "duration":I
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3600(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V

    .line 3322
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3323
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$300(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/module/video/VideoActivity$b;

    move-result-object v3

    const/4 v4, 0x4

    const-wide/16 v6, 0x190

    invoke-virtual {v3, v4, v6, v7}, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3327
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3328
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3700(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3333
    :pswitch_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3334
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3339
    :pswitch_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3340
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3800(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3344
    :pswitch_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$3900(Lcom/jiliguala/niuwa/module/video/VideoActivity;Z)V

    goto/16 :goto_0

    .line 3352
    :pswitch_7
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3353
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelect()V

    goto/16 :goto_0

    .line 3357
    :pswitch_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3358
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->isVideoChannelListFragmentShowing()Z

    move-result v2

    .line 3360
    .local v2, "isVideoChannelShowing":Z
    if-eqz v2, :cond_0

    .line 3361
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V

    goto/16 :goto_0

    .line 3308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
