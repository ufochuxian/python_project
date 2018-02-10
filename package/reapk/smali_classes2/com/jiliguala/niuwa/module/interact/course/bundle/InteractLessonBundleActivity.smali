.class public Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;
.implements Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;
.implements Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;
.implements Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;
.implements Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;",
        "Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;",
        ">;",
        "Landroid/content/DialogInterface$OnDismissListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/common/widget/customview/b;",
        "Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;",
        "Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;",
        "Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;",
        "Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;"
    }
.end annotation


# static fields
.field private static final MSG_FINISH_SELEF:I = 0x1002

.field private static final MSG_SHOW_PAY_SUCCESS_DIALOG:I = 0x1001

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;

.field private mBackIcon:Landroid/widget/ImageView;

.field private mBuyRightNow:Landroid/widget/TextView;

.field private mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;

.field private mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

.field private mId:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

.field private mTopBar:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->testBindWx()V

    return-void
.end method

.method private goToBuyedGoodsPage()V
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->startActivity(Landroid/content/Intent;)V

    .line 293
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mId:Ljava/lang/String;

    .line 173
    :cond_0
    return-void
.end method

.method private hasBuyBundle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "totalcount"    # Ljava/lang/String;
    .param p2, "hascount"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 143
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 144
    const v0, 0x7f090595

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTopBar:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f0902d5

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mListView:Landroid/widget/ListView;

    .line 148
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->requestBundleData(Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mAdapter:Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mAdapter:Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->setOnGridClickListener(Lcom/jiliguala/niuwa/module/qualitycourse/adapter/GridViewWithHeaderBaseAdapter$GridItemClickListener;)V

    .line 151
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mAdapter:Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 155
    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mBuyRightNow:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mBuyRightNow:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;-><init>(Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;

    .line 158
    const v0, 0x7f09053c

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 161
    return-void
.end method

.method private reportAmplitude(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    if-eqz v1, :cond_0

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 384
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->itemid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "Vol"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "Type"

    const-string v2, "bundle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Item Purchase View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 390
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private showPayPage()V
    .locals 4

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->totalprice:Ljava/lang/String;

    .line 207
    .local v0, "amount":Ljava/lang/String;
    new-instance v1, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->itemid:Ljava/lang/String;

    const-string v3, "REQUEST_CHARGE_USE_GET"

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    .line 208
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setOnPayClickListener(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;)V

    .line 209
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setCallBack(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;)V

    .line 211
    .end local v0    # "amount":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private testBindWx()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->goToMobilePage()V

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v1, "\u8bf7\u7ed1\u5b9a\u5fae\u4fe1\u624d\u80fd\u4fdd\u5b58\u73cd\u8d35\u7684\u5b66\u4e60\u8bb0\u5f55\u54e6"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/onboading/WxBindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public addEventObserver()V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 105
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;)V

    .line 106
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 122
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->createPresenter()Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;-><init>()V

    return-object v0
.end method

.method public dismissConfirmPayResultDialog()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dismiss()V

    .line 421
    :cond_0
    return-void
.end method

.method public enablePayDialogBtn()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 228
    :cond_0
    return-void
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->getUi()Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method protected goToMobilePage()V
    .locals 3

    .prologue
    .line 125
    const-string v1, "\u8bf7\u8865\u5145\u624b\u673a\u53f7\u624d\u80fd\u4fdd\u5b58\u73cd\u8d35\u7684\u5b66\u4e60\u8bb0\u5f55\u54e6"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 126
    const v1, 0x7f0f0183

    const-string v2, "PURCHASE_GET_CHARGE"

    invoke-static {p0, v1, v2}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPurchaseCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public goToUnitFragment(I)V
    .locals 9
    .param p1, "pos"    # I

    .prologue
    .line 481
    :try_start_0
    new-instance v4, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    invoke-direct {v4}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;-><init>()V

    .line 482
    .local v4, "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->relay:Z

    .line 483
    new-instance v5, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;-><init>()V

    iput-object v5, v4, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    .line 484
    iget-object v6, v4, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->detail:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;->_id:Ljava/lang/String;

    iput-object v5, v6, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;->_id:Ljava/lang/String;

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 486
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "UNIT_OBJ"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 487
    const-class v5, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 488
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 489
    .local v3, "ft":Landroid/support/v4/app/an;
    const v5, 0x7f01001d

    const v6, 0x7f01001e

    const v7, 0x7f01001d

    const v8, 0x7f01001e

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 490
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 491
    const v5, 0x7f09053c

    sget-object v6, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v5, v2, v6}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 492
    sget-object v5, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 496
    :goto_0
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 500
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    .end local v4    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :goto_1
    return-void

    .line 494
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v3    # "ft":Landroid/support/v4/app/an;
    .restart local v4    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :cond_0
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    .end local v4    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :catch_0
    move-exception v1

    .line 498
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public hidePayPage()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 222
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 425
    sget v1, Lcom/pingplusplus/android/Pingpp;->REQUEST_CODE_PAYMENT:I

    if-ne p1, v1, :cond_2

    .line 426
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 427
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pay_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->enablePayDialogBtn()V

    .line 439
    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->hidePayPage()V

    .line 441
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->requestOrderResultWithNoRetry()V

    .line 444
    :cond_0
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->updateOrderNoStatusToServer()V

    .line 448
    :cond_1
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    const-string v1, "\u652f\u4ed8\u5931\u8d25,\u8bf7\u5728\u5fae\u4fe1\u5173\u6ce8\u53fd\u91cc\u5471\u5566\u670d\u52a1\u53f7\u540e\u8fdb\u884c\u53cd\u9988"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 454
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 185
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->finish()V

    goto :goto_0

    .line 190
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->totalcount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->hascount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->totalcount:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->hascount:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->hasBuyBundle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->showPayPage()V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->target:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->target:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x7f090096 -> :sswitch_0
        0x7f0900e4 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->handleIntent()V

    .line 97
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->setContentView(I)V

    .line 98
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->initView()V

    .line 100
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->addEventObserver()V

    .line 101
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->goToBuyedGoodsPage()V

    .line 476
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;

    const/16 v1, 0x1002

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;->sendEmptyMessageDelayed(IJ)Z

    .line 477
    return-void
.end method

.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public onGridItemClicked(Landroid/view/View;IJ)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "itemId"    # J

    .prologue
    .line 470
    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->goToUnitFragment(I)V

    .line 471
    return-void
.end method

.method public onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;
    .param p2, "payAmount"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "orderId"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    const-string v1, "paid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0, p2, p3, p4}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->reportLessonPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mCustomHandler:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity$a;->sendEmptyMessage(I)Z

    .line 263
    :cond_1
    return-void
.end method

.method public onReceivedPayResultTimeout()V
    .locals 1

    .prologue
    .line 247
    const-string v0, "\u652f\u4ed8\u5931\u8d25,\u8bf7\u5728\u5fae\u4fe1\u5173\u6ce8\u53fd\u91cc\u5471\u5566\u670d\u52a1\u53f7\u540e\u8fdb\u884c\u53cd\u9988"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->dismissConfirmPayResultDialog()V

    .line 249
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->onBackPressed()V

    .line 252
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->requestBundleData(Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void
.end method

.method public onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;)V
    .locals 7
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    .prologue
    .line 317
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->detail:Ljava/util/List;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 318
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->totalcount:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->hascount:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->reportAmplitude(I)V

    .line 320
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 321
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 322
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    .line 323
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->ttl:Ljava/lang/String;

    .line 324
    .local v3, "ttl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTopBar:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 325
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTopBar:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    if-eqz v4, :cond_2

    .line 328
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    invoke-virtual {v4, v3}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->setTitle(Ljava/lang/String;)V

    .line 330
    :cond_2
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->banner:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    if-eqz v4, :cond_3

    .line 331
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->banner:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->showBannerIcon(Ljava/lang/String;)V

    .line 334
    :cond_3
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->desc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    if-eqz v4, :cond_4

    .line 335
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->setSubTitle(Ljava/lang/String;)V

    .line 338
    :cond_4
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->totalcount:Ljava/lang/String;

    .line 339
    .local v2, "totalcount":Ljava/lang/String;
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v0, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->hascount:Ljava/lang/String;

    .line 340
    .local v0, "hascount":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    if-eqz v4, :cond_5

    .line 341
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 342
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u793c\u5305\u542b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u8282\u8bfe"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->setDesc(Ljava/lang/String;)V

    .line 348
    :cond_5
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->hasBuyBundle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 349
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->oritotalprice:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    if-eqz v4, :cond_6

    .line 350
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->oritotalprice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->setOriginPrice(Ljava/lang/String;)V

    .line 352
    :cond_6
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->totalprice:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    if-eqz v4, :cond_7

    .line 353
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->totalprice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->setDiscountPrice(Ljava/lang/String;)V

    .line 355
    :cond_7
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    if-eqz v4, :cond_8

    .line 356
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->showOriginTotalPriceContainer(I)V

    .line 357
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->showTotalPriceContainer(I)V

    .line 373
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mAdapter:Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;

    if-eqz v4, :cond_9

    .line 374
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mAdapter:Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->detail:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/adapter/InteractLessonBundleAdapter;->updateData(Ljava/util/List;)V

    .line 379
    .end local v0    # "hascount":Ljava/lang/String;
    .end local v2    # "totalcount":Ljava/lang/String;
    .end local v3    # "ttl":Ljava/lang/String;
    :cond_9
    :goto_2
    return-void

    .line 344
    .restart local v0    # "hascount":Ljava/lang/String;
    .restart local v2    # "totalcount":Ljava/lang/String;
    .restart local v3    # "ttl":Ljava/lang/String;
    :cond_a
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u793c\u5305\u542b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u8282\u8bfe\uff0c\u4f60\u5df2\u6709"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u8282\u8bfe"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->setDesc(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v0    # "hascount":Ljava/lang/String;
    .end local v2    # "totalcount":Ljava/lang/String;
    .end local v3    # "ttl":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 360
    .restart local v0    # "hascount":Ljava/lang/String;
    .restart local v2    # "totalcount":Ljava/lang/String;
    .restart local v3    # "ttl":Ljava/lang/String;
    :cond_b
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v1, v4, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->hint:Ljava/lang/String;

    .line 361
    .local v1, "hint":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 362
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    invoke-virtual {v4, v1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->setDesc(Ljava/lang/String;)V

    .line 364
    :cond_c
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    if-eqz v4, :cond_d

    .line 365
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->showOriginTotalPriceContainer(I)V

    .line 366
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mHeaderView:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->showTotalPriceContainer(I)V

    .line 368
    :cond_d
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mBuyRightNow:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 369
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mBuyRightNow:Landroid/widget/TextView;

    const-string v5, "\u66f4\u591a\u8d44\u6e90"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 166
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->requestBundleData(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onStart()V

    .line 178
    return-void
.end method

.method public onWeixinPayClick()V
    .locals 1

    .prologue
    .line 297
    const-string v0, "\u6b63\u5728\u8fdb\u5165\u5fae\u4fe1,\u8bf7\u7a0d\u540e..."

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->reportLessonPurchaseClick()V

    .line 300
    return-void
.end method

.method public onZhiFuBaoPayClick()V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->reportLessonPurchaseClick()V

    .line 305
    return-void
.end method

.method public reportLessonPurchaseClick()V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mTemplete:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;->itemid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "Type"

    const-string v2, "bundle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Item Purchase Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 312
    return-void
.end method

.method public reportLessonPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "payAmount"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;

    .prologue
    .line 272
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double v4, v2, v8

    .line 273
    .local v4, "price":D
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Channel"

    invoke-interface {v7, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const/4 v3, 0x1

    const-string v6, "Digital Bundle"

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;IDLjava/lang/String;Ljava/util/Map;)V

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v0, "mapAdd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Digital Product Purchased"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v1, "Digital Total Spent"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0    # "mapAdd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "price":D
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestOrderResultWithNoRetry()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->requestOrderResultWithNoRetry()V

    .line 242
    :cond_0
    return-void
.end method

.method public showConfirmPayResultDialog()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    .line 410
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->setOnDismisslListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 411
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    const-string v1, "\u606d\u559c\u60a8\u8d2d\u4e70\u6210\u529f!"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->setPayResultDesc(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->enableCancel(Z)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->show()V

    .line 415
    return-void
.end method

.method public showErrorView()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 398
    :cond_0
    return-void
.end method

.method public updateOrderNoStatusToServer()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->reportOrderNoStatusToServer()V

    .line 234
    :cond_0
    return-void
.end method
