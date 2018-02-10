.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;
.super Landroid/os/Handler;
.source "SourceFile"


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
    .line 243
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x1000

    const/4 v6, 0x0

    .line 250
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 275
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 277
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->getCurrentAudioLen()J

    move-result-wide v0

    .line 253
    .local v0, "audioRealLen":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 267
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 268
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 256
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;->millSecTranslate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v0

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 259
    .local v3, "progress":I
    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopAudioRecord()V

    .line 265
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 271
    .end local v0    # "audioRealLen":J
    .end local v3    # "progress":I
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->removeMessages(I)V

    .line 272
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$23;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
