.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;
.super Landroid/os/Handler;
.source "SourceFile"


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
    .line 81
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

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

    .line 88
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 113
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->getCurrentAudioLen()J

    move-result-wide v0

    .line 91
    .local v0, "audioRealLen":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 103
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 104
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 94
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;->millSecTranslate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v0

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 97
    .local v3, "progress":I
    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopAudioRecord()V

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 107
    .end local v0    # "audioRealLen":J
    .end local v3    # "progress":I
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->removeMessages(I)V

    .line 108
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
