.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;
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
    .line 279
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 282
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1502(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;I)I

    .line 283
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 284
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 286
    :sswitch_0
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1600(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 289
    :sswitch_1
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1700(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/EditText;

    move-result-object v7

    new-instance v8, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27$1;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27$1;-><init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 298
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->onClickAudioRecord()V

    goto :goto_0

    .line 302
    :sswitch_2
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    .line 303
    .local v3, "fm":Landroid/support/v4/app/ag;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    invoke-static {v3}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;

    move-result-object v4

    .line 305
    .local v4, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 307
    .end local v4    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/PhotoDialogFragment;
    :cond_1
    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;

    move-result-object v4

    .line 308
    .local v4, "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1800(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->setCallback(Lcom/jiliguala/niuwa/module/settings/listener/ModifyPictureCallback;)V

    .line 309
    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 313
    .end local v3    # "fm":Landroid/support/v4/app/ag;
    .end local v4    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/ForumPicModifyDialogFragment;
    :sswitch_3
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 314
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopAudioRecord()V

    .line 316
    :cond_2
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->I()Z

    move-result v7

    if-nez v7, :cond_4

    .line 317
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->p()Z

    move-result v7

    if-nez v7, :cond_3

    .line 318
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0f016d

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->makeIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v5

    .line 319
    .local v5, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    const/16 v8, 0xce5

    invoke-virtual {v7, v5, v8}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 322
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v7

    if-nez v7, :cond_4

    .line 325
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0f0156

    const-string v9, "SEND_REPLY_FORUM_POST"

    invoke-static {v7, v8, v9}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 326
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    const/16 v8, 0xce6

    invoke-virtual {v7, v5, v8}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 330
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$1900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    goto/16 :goto_0

    .line 333
    :sswitch_4
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->deleteCurrentAudioRecord()V

    goto/16 :goto_0

    .line 339
    :sswitch_5
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isRecordDone()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 342
    :try_start_0
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecordPlaying()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 343
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopPlayAudioRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 346
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->playAudioRecord()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 353
    :cond_6
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->isAudioRecording()Z

    move-result v7

    if-nez v7, :cond_7

    .line 355
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->startAudioRecord()V

    goto/16 :goto_0

    .line 358
    :cond_7
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->stopAudioRecord()V

    goto/16 :goto_0

    .line 363
    :sswitch_6
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 364
    const/4 v6, 0x0

    .line 365
    .local v6, "rootNick":Ljava/lang/String;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getRootPart()Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 366
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getRootPart()Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v7

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v6, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->nick:Ljava/lang/String;

    .line 368
    :cond_8
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7, v9, v9, v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->invokeRplyLogic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    .end local v6    # "rootNick":Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    const v8, 0x7f0f0063

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;IZ)Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;

    move-result-object v1

    .line 371
    .local v1, "adf":Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 378
    .end local v1    # "adf":Lcom/jiliguala/niuwa/module/settings/fragment/AlertDialogFragment;
    :sswitch_7
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 379
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->I()Z

    move-result v7

    if-nez v7, :cond_b

    .line 381
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->p()Z

    move-result v7

    if-nez v7, :cond_a

    .line 382
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0f016e

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->makeIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v5

    .line 383
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    const/16 v8, 0xce7

    invoke-virtual {v7, v5, v8}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 386
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_a
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v7

    if-nez v7, :cond_b

    .line 389
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0f0158

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v5

    .line 390
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    const/16 v8, 0xce8

    invoke-virtual {v7, v5, v8}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 394
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2200(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V

    goto/16 :goto_0

    .line 400
    :cond_c
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 401
    const v7, 0x7f0f0285

    invoke-static {v7}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 402
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    .line 403
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$27;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v7, v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090147 -> :sswitch_5
        0x7f0901f7 -> :sswitch_7
        0x7f090438 -> :sswitch_1
        0x7f090439 -> :sswitch_5
        0x7f09043a -> :sswitch_5
        0x7f09043b -> :sswitch_5
        0x7f09044f -> :sswitch_0
        0x7f090450 -> :sswitch_3
        0x7f090451 -> :sswitch_6
        0x7f09045e -> :sswitch_4
        0x7f09055f -> :sswitch_2
    .end sparse-switch
.end method
