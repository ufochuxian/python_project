.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissProgress()V
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    return-object v0
.end method

.method public onAudioPlayComplete()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$800(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    .line 200
    return-void
.end method

.method public onAudioPlayError()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    return-void
.end method

.method public onAudioPlayStart()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080355

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    .line 277
    return-void
.end method

.method public onAudioRecordCancel()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2$1;-><init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method public onAudioRecordEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;Z)V

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$800(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 187
    return-void
.end method

.method public onAudioRecordPlayStart()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    .line 124
    return-void
.end method

.method public onAudioRecordPlayStop()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$800(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    .line 132
    return-void
.end method

.method public onAudioRecordStart()V
    .locals 4

    .prologue
    .line 159
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f004b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;Z)V

    .line 161
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$800(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    .line 163
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080205

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "0\""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    return-void
.end method

.method public onAudioRecording()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onReplyFailed()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;->onReplyFailed()V

    .line 258
    :cond_1
    return-void
.end method

.method public onReplySuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;->onReplySuccess(Ljava/lang/Object;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->cancelAudioRecord()V

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->onShowAudioRecordView()V

    .line 246
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->mContent:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1500(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080198

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    return-void
.end method

.method public onShowAudioRecordView()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1200(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    .line 155
    return-void
.end method

.method public onShowDeleteAudioDialog()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1600(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onUpdateAudioRecordProgress()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public showProgress()V
    .locals 3

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1302(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;Lcom/jiliguala/niuwa/common/a/g;)Lcom/jiliguala/niuwa/common/a/g;

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$2;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_2
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
