.class public Lcom/jiliguala/niuwa/module/order/LogisticsActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

.field private mAdapter:Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;

.field private mHintText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mLogisticsCodeText:Landroid/widget/TextView;

.field private mOrderId:Ljava/lang/String;

.field private mShippingText:Landroid/widget/TextView;

.field private mTopBar:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/order/fragment/OrderDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/LogisticsActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->showError()V

    return-void
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;)Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/LogisticsActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/LogisticsActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->showData()V

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 86
    const v2, 0x7f09059f

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mTopBar:Landroid/widget/TextView;

    .line 87
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mTopBar:Landroid/widget/TextView;

    const-string v3, "\u8ba2\u5355\u8ddf\u8e2a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v2, 0x7f090096

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .local v0, "backIcon":Landroid/widget/ImageView;
    new-instance v2, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$2;-><init>(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v2, 0x7f0902e1

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mListView:Landroid/widget/ListView;

    .line 97
    const v2, 0x7f0b01a8

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "mHead":Landroid/view/View;
    const v2, 0x7f0904f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mShippingText:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f0902fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mLogisticsCodeText:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f090267

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mHintText:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 102
    new-instance v2, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mAdapter:Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;

    .line 103
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mAdapter:Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    return-void
.end method

.method private requestServer()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mOrderId:Ljava/lang/String;

    .line 54
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->B(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 55
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 56
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 57
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity$1;-><init>(Lcom/jiliguala/niuwa/module/order/LogisticsActivity;)V

    .line 58
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 81
    return-void
.end method

.method private showData()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mShippingText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->getShipper()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u2014\u2014\u2014\u2014\u2014"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mLogisticsCodeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->getLogisticscode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u2014\u2014\u2014\u2014\u2014"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->getLogisticscode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->getHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mAdapter:Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->getTraces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/order/adapter/TracesAdapter;->updateData(Ljava/util/List;)V

    .line 115
    :cond_1
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->getShipper()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->logisticsBean:Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/LogisticsBean;->getLogisticscode()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showError()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->mOrderId:Ljava/lang/String;

    .line 44
    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->init()V

    .line 47
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/LogisticsActivity;->requestServer()V

    .line 48
    return-void
.end method
