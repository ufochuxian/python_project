.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 251
    :sswitch_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showMoreToolsDlg()V

    goto :goto_0

    .line 255
    :sswitch_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doShareThisSong()V

    .line 256
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 257
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 261
    :sswitch_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 262
    const-string v6, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static {v6}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 263
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v6, v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->enableButtons(Z)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-boolean v5, v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isFromPractise:Z

    if-nez v5, :cond_2

    .line 271
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$400(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/r/a;->d()V

    .line 277
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onPlay()V

    goto :goto_0

    .line 274
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/r/a;->c()V

    goto :goto_1

    .line 281
    :sswitch_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 282
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Z)V

    .line 284
    :cond_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    goto :goto_0

    .line 288
    :sswitch_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 292
    :sswitch_5
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 293
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Z)V

    .line 295
    :cond_5
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    goto/16 :goto_0

    .line 299
    :sswitch_6
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->clickFavThisSong()V

    goto/16 :goto_0

    .line 304
    :sswitch_7
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$900(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 305
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 306
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 313
    :sswitch_8
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->changeLoopStrategy()V

    goto/16 :goto_0

    .line 316
    :sswitch_9
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 317
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Z

    move-result v8

    if-nez v8, :cond_6

    :goto_2
    invoke-static {v7, v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1002(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Z)Z

    .line 318
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0x7f080113

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Z)V

    .line 320
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->toggleLyricFullScreen()V

    goto/16 :goto_0

    :cond_6
    move v5, v6

    .line 317
    goto :goto_2

    .line 318
    :cond_7
    const v5, 0x7f080119

    goto :goto_3

    .line 327
    :sswitch_a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Type"

    const-string v6, "Audio"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Lock"

    invoke-static {v5, v6, v3}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 330
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Listen Child Lock"

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 331
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$000(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 332
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 333
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 337
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_b
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V

    .line 338
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->reportStationListViewAmplitude()V

    .line 339
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1300(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 340
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelect()V

    goto/16 :goto_0

    .line 347
    :sswitch_c
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v4

    .line 348
    .local v4, "timeCtlFragment":Lcom/jiliguala/niuwa/common/a/k;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v1

    .line 349
    .local v1, "controller":Lcom/jiliguala/niuwa/logic/r/a;
    sget-object v6, Lcom/jiliguala/niuwa/logic/r/a;->b:[I

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/a;->e()I

    move-result v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    .line 350
    .local v2, "currentSelectedTimeControlIdx":I
    if-nez v4, :cond_8

    .line 351
    new-instance v6, Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-direct {v6}, Lcom/jiliguala/niuwa/common/a/k$b;-><init>()V

    sget-object v7, Lcom/jiliguala/niuwa/logic/r/a;->a:[Ljava/lang/String;

    .line 352
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/util/List;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v6

    const/16 v7, 0x11

    .line 353
    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/a/k$b;->b(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v6

    .line 354
    invoke-virtual {v6, v5}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v6

    .line 355
    invoke-virtual {v6, v2}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    const v8, 0x7f0f0046

    .line 356
    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v6

    .line 357
    invoke-virtual {v6, v5}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v0

    .line 358
    .local v0, "config":Lcom/jiliguala/niuwa/common/a/k$b;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;Lcom/jiliguala/niuwa/common/a/k$b;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v4

    .line 360
    .end local v0    # "config":Lcom/jiliguala/niuwa/common/a/k$b;
    :cond_8
    new-instance v5, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12$1;

    invoke-direct {v5, p0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12$1;-><init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;Lcom/jiliguala/niuwa/logic/r/a;)V

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k$a;)V

    .line 378
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/a/k;->b(Landroid/support/v4/app/ag;)V

    .line 379
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 380
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$12;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$200(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 249
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09006a -> :sswitch_c
        0x7f09006b -> :sswitch_c
        0x7f09006c -> :sswitch_c
        0x7f09006e -> :sswitch_3
        0x7f09006f -> :sswitch_2
        0x7f090072 -> :sswitch_5
        0x7f090079 -> :sswitch_4
        0x7f09012e -> :sswitch_a
        0x7f09012f -> :sswitch_a
        0x7f090148 -> :sswitch_9
        0x7f0901c8 -> :sswitch_7
        0x7f090301 -> :sswitch_8
        0x7f090302 -> :sswitch_8
        0x7f090306 -> :sswitch_6
        0x7f090364 -> :sswitch_0
        0x7f090383 -> :sswitch_b
        0x7f0903a4 -> :sswitch_7
        0x7f0904d9 -> :sswitch_1
        0x7f0904e2 -> :sswitch_1
    .end sparse-switch
.end method
