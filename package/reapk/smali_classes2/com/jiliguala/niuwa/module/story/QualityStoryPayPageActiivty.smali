.class public Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/a/b/h$a;
.implements Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryPayPagePresenter;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/a/b/h$a;",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mItemID:Ljava/lang/String;

.field private mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

.field private mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

.field private mTopBar:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mItemID:Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method

.method private replaceFragment(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)V
    .locals 6
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    .prologue
    const v5, 0x7f010020

    const v4, 0x7f01001f

    .line 92
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 93
    .local v2, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "ITEM_ID"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mItemID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 108
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    const v3, 0x7f090158

    sget-object v4, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 110
    sget-object v3, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 114
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 115
    return-void

    .line 105
    :cond_1
    invoke-virtual {p1, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v2, p1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mItemID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Item Order View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method private reportAvenueAmplitude(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "payAmount"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;

    .prologue
    .line 207
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Channel"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mItemID:Ljava/lang/String;

    const/4 v3, 0x1

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    const-string v6, "Wuminlan"

    invoke-virtual/range {v1 .. v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;IDLjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryPayPagePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/story/QualityStoryPayPagePresenter;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPagePresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPagePresenter;-><init>()V

    return-object v0
.end method

.method public dismissPaySuccessDialog()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/h;->b()V

    .line 183
    :cond_0
    return-void
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/story/QualityStoryActivityView;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 129
    sget v3, Lcom/pingplusplus/android/Pingpp;->REQUEST_CODE_PAYMENT:I

    if-ne p1, v3, :cond_3

    .line 130
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 131
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pay_result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_msg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "extraMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->enablePayDialogBtn()V

    .line 145
    :cond_0
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->hidePayPage()V

    .line 148
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->requestOrderResultWithNoRetry()V

    .line 153
    :cond_1
    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->showPaySuccessDialog()V

    .line 155
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->updateOrderNoStatusToServer()V

    .line 160
    :cond_2
    const-string v3, "fail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    const-string v3, "\u652f\u4ed8\u5931\u8d25,\u8bf7\u5728\u5fae\u4fe1\u5173\u6ce8\u53fd\u91cc\u5471\u5566\u670d\u52a1\u53f7\u540e\u8fdb\u884c\u53cd\u9988"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 166
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "extraMsg":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onBackPressed()V

    .line 189
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->finish()V

    .line 190
    return-void
.end method

.method public onBtnClick()V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/h;

    const/16 v2, 0x1019

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/h;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->onBackPressed()V

    .line 235
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->finish()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x7f090096
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->handleIntent()V

    .line 63
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->reportAmplitude()V

    .line 64
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->setContentView(I)V

    .line 65
    const v0, 0x7f09059f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mTopBar:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mTopBar:Landroid/widget/TextView;

    const-string v1, "\u7cbe\u54c1\u7ed8\u672c\u8bfe\u7a0b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mBackIcon:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mContainer:Landroid/widget/RelativeLayout;

    .line 73
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mQualityStoryFragment:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->replaceFragment(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)V

    .line 77
    return-void
.end method

.method public onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;
    .param p2, "payAmount"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    const-string v1, "paid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->reportLessonPurchaseSuccess()V

    .line 199
    invoke-direct {p0, p2, p3}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->reportAvenueAmplitude(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->showPaySuccessDialog()V

    goto :goto_0
.end method

.method public onReceivedPayResultTimeout()V
    .locals 1

    .prologue
    .line 226
    const-string v0, "\u652f\u4ed8\u5931\u8d25,\u8bf7\u5728\u5fae\u4fe1\u5173\u6ce8\u53fd\u91cc\u5471\u5566\u670d\u52a1\u53f7\u540e\u8fdb\u884c\u53cd\u9988"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->dismissPaySuccessDialog()V

    .line 228
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->onBackPressed()V

    .line 229
    return-void
.end method

.method public reportLessonPurchaseSuccess()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mItemID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "Type"

    const-string v2, "story"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Item Purchase Success"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    return-void
.end method

.method public showPaySuccessDialog()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/jiliguala/niuwa/a/b/h;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/a/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const v1, 0x7f080420

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->c(I)V

    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const v1, 0x7f0f023c

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->b(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->e(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/h;->a(Lcom/jiliguala/niuwa/a/b/h$a;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/h;->a()V

    .line 177
    return-void
.end method
