.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->showDeleteAudioConfirmDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0801fd

    .line 508
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecordPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->cancelAudioRecordPlay()V

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->cancelAudioRecord()V

    .line 515
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 516
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "0\""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->b:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$5;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 522
    return-void
.end method
