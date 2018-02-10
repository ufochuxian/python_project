.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 165
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)I

    move-result v5

    if-nez v5, :cond_1

    .line 169
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecordPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopPlayAudioRecord()V

    .line 173
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$500(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    const v5, 0x7f090286

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 176
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 177
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isFastDoubleClick()Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 181
    :cond_3
    const v5, 0x7f090077

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 182
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    const v5, 0x7f090076

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, "iv":Ljava/lang/Object;
    const v5, 0x7f090071

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 185
    .local v2, "statusIv":Ljava/lang/Object;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 186
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)V

    .line 188
    :cond_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 189
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f08034a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :cond_5
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 193
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 215
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v6

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eq v6, v5, :cond_1

    .line 217
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "iv":Ljava/lang/Object;
    invoke-static {v5, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$602(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 218
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "statusIv":Ljava/lang/Object;
    invoke-static {v5, v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$802(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 219
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_1

    .line 221
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 222
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)V

    .line 223
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_1

    .line 226
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "url":Ljava/lang/String;
    .restart local v1    # "iv":Ljava/lang/Object;
    .restart local v2    # "statusIv":Ljava/lang/Object;
    :cond_7
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v6, v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$602(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 196
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v6, v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$802(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 197
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 198
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_6

    .line 199
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    .line 200
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Landroid/widget/ImageView;)V

    .line 201
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .restart local v4    # "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_6

    .line 204
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 206
    :try_start_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$12;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 207
    :catch_1
    move-exception v0

    .line 208
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
