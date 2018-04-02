.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->onAudioRecordCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 450
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f0071

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 452
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)V

    .line 455
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080207

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 458
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 459
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$29;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    return-void
.end method
