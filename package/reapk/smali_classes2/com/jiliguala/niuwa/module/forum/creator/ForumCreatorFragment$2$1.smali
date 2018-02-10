.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->onAudioRecordCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 138
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f0071

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;Z)V

    .line 143
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0801fd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$800(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    .line 146
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method
