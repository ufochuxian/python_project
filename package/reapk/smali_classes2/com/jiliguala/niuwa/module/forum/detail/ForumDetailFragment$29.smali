.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissProgress()V
    .locals 2

    .prologue
    .line 524
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    return-object v0
.end method

.method public onAudioPlayComplete()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 512
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 513
    return-void
.end method

.method public onAudioPlayError()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 518
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 519
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    return-void
.end method

.method public onAudioPlayStart()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080355

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 591
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 592
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 593
    return-void
.end method

.method public onAudioRecordCancel()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 463
    :cond_0
    return-void
.end method

.method public onAudioRecordEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 492
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)V

    .line 495
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 498
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 501
    return-void
.end method

.method public onAudioRecordPlayStart()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 435
    return-void
.end method

.method public onAudioRecordPlayStop()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 440
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 443
    return-void
.end method

.method public onAudioRecordStart()V
    .locals 4

    .prologue
    .line 472
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f004b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 473
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)V

    .line 474
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 475
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 477
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080205

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "0\""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 480
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 481
    return-void
.end method

.method public onAudioRecording()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public onReplyFailed()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 573
    return-void
.end method

.method public onReplySuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->mPicturePath:Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;->onReplySuccess(Ljava/lang/Object;)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->cancelAudioRecord()V

    .line 559
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->onShowAudioRecordView()V

    .line 560
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$002(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->mContent:Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080198

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 565
    return-void
.end method

.method public onShowAudioRecordView()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 468
    return-void
.end method

.method public onShowDeleteAudioDialog()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 580
    :cond_0
    return-void
.end method

.method public onUpdateAudioRecordProgress()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public showProgress()V
    .locals 3

    .prologue
    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3402(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Lcom/jiliguala/niuwa/common/a/g;)Lcom/jiliguala/niuwa/common/a/g;

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_2
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
