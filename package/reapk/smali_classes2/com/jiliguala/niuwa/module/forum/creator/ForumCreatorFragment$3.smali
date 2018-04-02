.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 280
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 284
    .local v3, "id":I
    sparse-switch v3, :sswitch_data_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 287
    :sswitch_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1700(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)V

    goto :goto_0

    .line 291
    :sswitch_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 292
    .local v1, "fm":Landroid/support/v4/app/ag;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$1800(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    move-result-object v2

    .line 295
    .local v2, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 297
    .end local v2    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    :cond_1
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    move-result-object v2

    .line 298
    .local v2, "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->setCallback(Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;)V

    .line 299
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 304
    .end local v1    # "fm":Landroid/support/v4/app/ag;
    .end local v2    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
    :sswitch_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->onClickAudioRecord()V

    goto :goto_0

    .line 307
    :sswitch_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->deleteCurrentAudioRecord()V

    goto :goto_0

    .line 313
    :sswitch_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecordPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopPlayAudioRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->playAudioRecord()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 327
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v4

    if-nez v4, :cond_4

    .line 329
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->startAudioRecord()V

    goto/16 :goto_0

    .line 332
    :cond_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment$3;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopAudioRecord()V

    goto/16 :goto_0

    .line 284
    :sswitch_data_0
    .sparse-switch
        0x7f090147 -> :sswitch_4
        0x7f09021e -> :sswitch_0
        0x7f09022b -> :sswitch_0
        0x7f090438 -> :sswitch_2
        0x7f090439 -> :sswitch_4
        0x7f09043a -> :sswitch_4
        0x7f09043b -> :sswitch_4
        0x7f09045e -> :sswitch_3
        0x7f09055f -> :sswitch_1
    .end sparse-switch
.end method
