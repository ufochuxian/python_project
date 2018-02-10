.class public Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/registercard/RegisterView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;",
        "Lcom/jiliguala/niuwa/module/registercard/RegisterView;",
        ">;",
        "Lcom/jiliguala/niuwa/module/registercard/RegisterView;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final REGISTER_RECORD:I = 0x0

.field public static final REQUEST_CODE_MOBILE_BINDIND:I = 0x2766

.field public static final REQUEST_CODE_WEIXIN_BINDING:I = 0x2767

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090437
    .end annotation
.end field

.field private mShare:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Share;

.field mShareBtn:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904ce
    .end annotation
.end field

.field mSlogan:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0904fd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->TAG:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    return-void
.end method

.method private reportAmplitude(Ljava/lang/String;)V
    .locals 3
    .param p1, "rawstatus"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Check In View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    return-void
.end method


# virtual methods
.method public answer()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f09005a
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/checkin-faq.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->createPresenter()Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;-><init>()V

    return-object v0
.end method

.method public exit()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/k;->a(Landroid/support/v4/app/Fragment;)V

    .line 262
    return-void
.end method

.method public getFootView()Landroid/view/View;
    .locals 4

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b01a8

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 4

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b01a9

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getUi()Lcom/jiliguala/niuwa/module/registercard/RegisterView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/registercard/RegisterView;
    .locals 0

    .prologue
    .line 76
    return-object p0
.end method

.method public goToMobilePage()V
    .locals 4

    .prologue
    const v3, 0x7f0f0072

    .line 164
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CLOCKING_RECORD"

    invoke-static {v1, v3, v2}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPurchaseCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x2766

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    return-void
.end method

.method public goToWxBind()V
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->goToMobilePage()V

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v1, "\u8bf7\u7ed1\u5b9a\u5fae\u4fe1\u624d\u80fd\u4fdd\u5b58\u73cd\u8d35\u7684\u5b66\u4e60\u8bb0\u5f55\u54e6"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    const/16 v1, 0x2767

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/c;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    const/16 v0, 0x2766

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2767

    if-ne p1, v0, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->onMobileBinding()V

    .line 187
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 83
    const v1, 0x7f0b00c6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "rootView":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 87
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mShareBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mSlogan:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->requestServer()V

    .line 90
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->addEventObserver()V

    .line 92
    return-object v0
.end method

.method public onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;)V
    .locals 17
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;

    .prologue
    .line 98
    new-instance v5, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const/4 v15, 0x6

    invoke-direct {v5, v14, v15}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 99
    .local v5, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getHeaderView()Landroid/view/View;

    move-result-object v3

    .line 102
    .local v3, "headerView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->hasTop()Z

    move-result v14

    if-eqz v14, :cond_0

    if-eqz v3, :cond_0

    .line 103
    const v14, 0x7f090595

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 104
    .local v13, "topBarTitle":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v12, v14, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->top:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;

    .line 105
    .local v12, "top":Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;
    iget-object v14, v12, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->status:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v14, 0x7f09057a

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 107
    .local v11, "title":Landroid/widget/TextView;
    iget-object v14, v12, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->hint:Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v14, 0x7f090531

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 111
    .local v10, "subTitle":Landroid/widget/TextView;
    iget-object v14, v12, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->text:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 112
    iget-object v14, v12, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->text:Ljava/lang/String;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :goto_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->top:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->rawstatus:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->reportAmplitude(Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mShareBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->registerFail()Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v14, 0x8

    :goto_1
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mSlogan:Landroid/widget/TextView;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->registerFail()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;->registerSuccess()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 124
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v14

    new-instance v15, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v16, 0x1030

    invoke-direct/range {v15 .. v16}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v14, v15}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 128
    .end local v10    # "subTitle":Landroid/widget/TextView;
    .end local v11    # "title":Landroid/widget/TextView;
    .end local v12    # "top":Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;
    .end local v13    # "topBarTitle":Landroid/widget/TextView;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->hasDivider()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mSlogan:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v15, v15, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->divider:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Divider;

    iget-object v15, v15, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Divider;->slogan:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v14, 0x7f090400

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 132
    .local v8, "progress":Landroid/widget/TextView;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v15, v15, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->divider:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Divider;

    iget-object v15, v15, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Divider;->progress:Ljava/lang/String;

    invoke-static {v15}, Lcom/jiliguala/niuwa/common/util/x;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u5929"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .end local v8    # "progress":Landroid/widget/TextView;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->hasRecord()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 136
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v9, v14, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->record:Ljava/util/ArrayList;

    .line 138
    .local v9, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_5

    .line 141
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;

    .line 142
    .local v1, "bean":Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;
    new-instance v7, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    const/4 v14, 0x0

    invoke-direct {v7, v14, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .line 143
    .local v7, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;"
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 115
    .end local v1    # "bean":Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;
    .end local v4    # "i":I
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;>;"
    .end local v7    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;"
    .end local v9    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;"
    .restart local v10    # "subTitle":Landroid/widget/TextView;
    .restart local v11    # "title":Landroid/widget/TextView;
    .restart local v12    # "top":Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;
    .restart local v13    # "topBarTitle":Landroid/widget/TextView;
    :cond_2
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 121
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 122
    :cond_4
    const/16 v14, 0x8

    goto/16 :goto_2

    .line 145
    .end local v10    # "subTitle":Landroid/widget/TextView;
    .end local v11    # "title":Landroid/widget/TextView;
    .end local v12    # "top":Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Top;
    .end local v13    # "topBarTitle":Landroid/widget/TextView;
    .restart local v4    # "i":I
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;>;"
    .restart local v9    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;"
    :cond_5
    new-instance v14, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-direct {v14, v6, v15}, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mAdapter:Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;

    .line 148
    .end local v4    # "i":I
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;>;"
    .end local v9    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Record;>;"
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->hasShare()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 149
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;

    iget-object v14, v14, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Data;->share:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Share;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mShare:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Share;

    .line 152
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mAdapter:Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;

    invoke-virtual {v14, v3}, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->addHeaderView(Landroid/view/View;)I

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getFootView()Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, "footView":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mAdapter:Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;

    invoke-virtual {v14, v2}, Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;->addFooterView(Landroid/view/View;)I

    .line 159
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mAdapter:Lcom/jiliguala/niuwa/module/registercard/RegisterAdapter;

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 160
    return-void
.end method

.method public share()V
    .locals 11
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0904ce
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    .line 238
    .local v6, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/checkin-share.html?user_id=%s&baby_id=%s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "shareUrl":Ljava/lang/String;
    const-string v3, "\u5feb\u6765\u8ddf\u6211\u4eec\u4e00\u8d77\u5b66\u4e60\u5427\uff01"

    .line 241
    .local v3, "content":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mShare:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Share;

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6211\u548c"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u5df2\u7ecf\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u6253\u5361\u5b66\u4e60"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->mShare:Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Share;

    iget v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete$Share;->totalprogress:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u5929"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "title":Ljava/lang/String;
    :goto_0
    const/high16 v9, -0x10000000

    .line 247
    .local v9, "switcher":I
    or-int/lit8 v9, v9, 0x1

    .line 248
    or-int/lit8 v9, v9, 0x2

    .line 249
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v7

    .line 250
    .local v7, "fm":Landroid/support/v4/app/ag;
    invoke-static {v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 251
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    const-string v1, ""

    const-string v4, "pid"

    const/16 v5, 0xd

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    const-string v1, "Check In"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSource(Ljava/lang/String;)V

    .line 253
    const-string v1, ""

    invoke-virtual {v0, v1, v8}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setShareUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    int-to-long v4, v9

    invoke-virtual {v0, v4, v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSwitch(J)V

    .line 255
    invoke-virtual {v0, v7}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 257
    return-void

    .line 244
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    .end local v2    # "title":Ljava/lang/String;
    .end local v7    # "fm":Landroid/support/v4/app/ag;
    .end local v9    # "switcher":I
    :cond_0
    const-string v2, ""

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0
.end method
