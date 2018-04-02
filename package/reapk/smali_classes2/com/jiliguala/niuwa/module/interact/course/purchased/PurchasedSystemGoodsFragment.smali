.class public Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

.field private mBtnPurchase:Landroid/widget/TextView;

.field private mHeadTtl:Landroid/widget/TextView;

.field private mHeadView:Landroid/widget/RelativeLayout;

.field private mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mRootView:Landroid/view/View;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private mValidity:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->goRenewal()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->refreshMembership(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private goRenewal()V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goMemberRenewal(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method private initMembership()V
    .locals 5

    .prologue
    .line 62
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->B()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0170

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    .line 65
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090584

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadTtl:Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0905eb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mValidity:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0900d0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mBtnPurchase:Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mBtnPurchase:Landroid/widget/TextView;

    new-instance v3, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    .line 76
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 80
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->C()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "status":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->D()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "duets":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->refreshMembership(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "duets":Ljava/lang/String;
    .end local v1    # "status":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090546

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 128
    return-void
.end method

.method private refreshMembership(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "duets"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f0f012d

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "valid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadTtl:Landroid/widget/TextView;

    const v1, 0x7f0f012e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mBtnPurchase:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mValidity:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "expired"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadTtl:Landroid/widget/TextView;

    const v1, 0x7f0f012b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mBtnPurchase:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mValidity:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "empty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadTtl:Landroid/widget/TextView;

    const v1, 0x7f0f0129

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mBtnPurchase:Landroid/widget/TextView;

    const v1, 0x7f0f012c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mValidity:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mHeadTtl:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mBtnPurchase:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mValidity:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private requestServer()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "newacademy"

    .line 140
    invoke-interface {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->b(ILjava/lang/String;)Lrx/e;

    move-result-object v1

    .line 141
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 142
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 143
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)V

    .line 144
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 165
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mAdapter:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->requestServer()V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    .line 54
    const v0, 0x7f0b00c3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mRootView:Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->setAdapter()V

    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->initMembership()V

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 170
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 171
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 175
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->g(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 176
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 177
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    const-wide/16 v4, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 178
    invoke-virtual {v2, v4, v5, v3}, Lrx/e;->q(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v2

    .line 179
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment$3;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedSystemGoodsFragment;)V

    .line 180
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 173
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 203
    .end local v0    # "uid":Ljava/lang/String;
    :cond_0
    return-void
.end method
