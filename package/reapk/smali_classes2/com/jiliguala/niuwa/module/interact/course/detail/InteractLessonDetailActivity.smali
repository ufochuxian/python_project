.class public Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailUI;
.implements Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailPresenter;",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailUI;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailUI;",
        "Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mCourseId:Ljava/lang/String;

.field private mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

.field private mItemID:Ljava/lang/String;

.field private mTopBar:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "COURSE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mCourseId:Ljava/lang/String;

    .line 88
    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mItemID:Ljava/lang/String;

    .line 90
    :cond_0
    return-void
.end method

.method private replaceFragment(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)V
    .locals 6
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    .prologue
    const v5, 0x7f010020

    const v4, 0x7f01001f

    .line 94
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 95
    .local v2, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "COURSE_ID"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mCourseId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "ITEM_ID"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mItemID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 112
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    const v3, 0x7f090158

    sget-object v4, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 114
    sget-object v3, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 118
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 119
    return-void

    .line 109
    :cond_1
    invoke-virtual {p1, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v2, p1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method

.method private reportAvenueAmplitude(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "payAmount"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;

    .prologue
    .line 221
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v4, v2, v8

    .line 222
    .local v4, "price":D
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Channel"

    invoke-interface {v7, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mItemID:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v6, "Digital Lesson"

    invoke-virtual/range {v1 .. v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;IDLjava/lang/String;Ljava/util/Map;)V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v0, "mapAdd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Digital Product Purchased"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "Digital Total Spent"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "mapAdd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "price":D
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->createPresenter()Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailPresenter;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailPresenter;-><init>()V

    return-object v0
.end method

.method public dismissConfirmPayResultDialog()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dismiss()V

    .line 184
    :cond_0
    return-void
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->getUi()Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailUI;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 134
    sget v3, Lcom/pingplusplus/android/Pingpp;->REQUEST_CODE_PAYMENT:I

    if-ne p1, v3, :cond_3

    .line 135
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 136
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pay_result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_msg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "extraMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->enablePayDialogBtn()V

    .line 150
    :cond_0
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->hidePayPage()V

    .line 153
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->requestOrderResultWithNoRetry()V

    .line 158
    :cond_1
    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->showConfirmPayResultDialog()V

    .line 160
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->updateOrderNoStatusToServer()V

    .line 165
    :cond_2
    const-string v3, "fail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    const-string v3, "\u652f\u4ed8\u5931\u8d25,\u8bf7\u5728\u5fae\u4fe1\u5173\u6ce8\u53fd\u91cc\u5471\u5566\u670d\u52a1\u53f7\u540e\u8fdb\u884c\u53cd\u9988"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 171
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "extraMsg":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->finish()V

    .line 238
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->finish()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x7f090096
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->handleIntent()V

    .line 58
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 61
    const v0, 0x7f09059f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mTopBar:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mTopBar:Landroid/widget/TextView;

    const-string v1, "\u5546\u54c1\u8be6\u60c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mBackIcon:Landroid/widget/ImageView;

    const v1, 0x7f0802e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->addScreenStateWatcher(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;)V

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->replaceFragment(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onDestroy()V

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->stopScreenStateWatcher()V

    .line 251
    :cond_0
    return-void
.end method

.method public onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;
    .param p2, "payAmount"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    const-string v2, "paid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    invoke-direct {p0, p2, p3}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->reportAvenueAmplitude(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    const-string v2, "\u606d\u559c\u60a8\u8d2d\u4e70\u6210\u529f!"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->setPayResultDesc(Ljava/lang/String;)V

    .line 203
    :cond_2
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onReceivedPayResultTimeout()V
    .locals 1

    .prologue
    .line 188
    const-string v0, "\u652f\u4ed8\u5931\u8d25,\u8bf7\u5728\u5fae\u4fe1\u5173\u6ce8\u53fd\u91cc\u5471\u5566\u670d\u52a1\u53f7\u540e\u8fdb\u884c\u53cd\u9988"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->dismissConfirmPayResultDialog()V

    .line 190
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->onBackPressed()V

    .line 191
    return-void
.end method

.method public onReceivedSuccessPayResult()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mInteractLessonDetailFragment:Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailFragment;->scrollToHead()V

    .line 82
    :cond_0
    return-void
.end method

.method public refreshTopBar(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttl"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mTopBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mTopBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    return-void
.end method

.method public showConfirmPayResultDialog()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/detail/InteractLessonDetailActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->show()V

    .line 178
    return-void
.end method
