.class public Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;
.implements Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/jiliguala/niuwa/common/widget/customview/b;",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private emptyView:Landroid/view/View;

.field private mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mOrderListAdapter:Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->goQualityStoryLesson()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method private goQualityStoryLesson()V
    .locals 4

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->startActivity(Landroid/content/Intent;)V

    .line 245
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 246
    return-void
.end method

.method private initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 71
    const v4, 0x7f0b0125

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0902e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 74
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 75
    const v4, 0x7f090546

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 76
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 77
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v4, p0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 78
    const v4, 0x7f0901de

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->emptyView:Landroid/view/View;

    .line 79
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->emptyView:Landroid/view/View;

    new-instance v5, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$1;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$1;-><init>(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v4, 0x7f090390

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, "noOrderText":Landroid/widget/TextView;
    const v4, 0x7f0f0143

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "no_data":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    .local v2, "ss":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/URLSpan;

    const-string v5, ""

    invoke-direct {v4, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v7, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 90
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v7, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v4, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mOrderListAdapter:Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;

    .line 94
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v4, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 95
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v5, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 96
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mOrderListAdapter:Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v5, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$2;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$2;-><init>(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)V

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 126
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v4, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    return-object v3
.end method

.method private showEmptyView()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->b()V

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->emptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 212
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 214
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void
.end method

.method private showSuccess()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->emptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 146
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$3;-><init>(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->createPresenter()Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getUi()Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;
    .locals 0

    .prologue
    .line 55
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->onCreate()V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    .line 67
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->initView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mOrderListAdapter:Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->getOrderId(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "orderId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "order_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method public onLoadMoreFailed()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public onLoadMoreSuccess(Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;)V
    .locals 3
    .param p1, "orderListTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mOrderListAdapter:Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;->getData()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->updateDataSet(Ljava/util/List;Z)V

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mOrderListAdapter:Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->notifyDataSetChanged()V

    .line 176
    :cond_0
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 1
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->refreshNew()V

    .line 168
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->autoRefresh()V

    .line 158
    return-void
.end method

.method public onRefreshNewFailed()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->showErrorView()V

    .line 203
    return-void
.end method

.method public onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;)V
    .locals 3
    .param p1, "orderListTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->showEmptyView()V

    .line 195
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->showSuccess()V

    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mOrderListAdapter:Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;->getData()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->updateDataSet(Ljava/util/List;Z)V

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->mOrderListAdapter:Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/adapter/OrderListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->autoRefresh()V

    .line 136
    return-void
.end method
