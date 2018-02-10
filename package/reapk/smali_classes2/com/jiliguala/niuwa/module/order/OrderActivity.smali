.class public Lcom/jiliguala/niuwa/module/order/OrderActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;
.implements Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;",
        ">;",
        "Landroid/support/v4/view/ViewPager$f;",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

.field private mViewPager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/order/OrderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private getYzH5Fragment()Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    .locals 4

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 131
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    if-eqz v3, :cond_0

    .line 132
    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .line 136
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->requestServer()V

    .line 83
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->setContentView(I)V

    .line 61
    const v1, 0x7f090096

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    .local v0, "backIv":Landroid/widget/ImageView;
    new-instance v1, Lcom/jiliguala/niuwa/module/order/OrderActivity$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity$1;-><init>(Lcom/jiliguala/niuwa/module/order/OrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f090545

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/order/OrderActivity;->mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    .line 70
    const v1, 0x7f0905fc

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/order/OrderActivity;->mViewPager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    .line 71
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/OrderActivity;->mViewPager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    new-instance v2, Lcom/jiliguala/niuwa/module/order/adapter/OrderAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/module/order/adapter/OrderAdapter;-><init>(Landroid/support/v4/app/ag;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 72
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/OrderActivity;->mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/OrderActivity;->mViewPager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->setViewPager(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;)V

    .line 74
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/OrderActivity;->mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->changeTabStyles(I)V

    .line 75
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/order/OrderActivity;->mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 77
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->onPageSelected(I)V

    .line 78
    return-void
.end method

.method public static makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/order/OrderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_PARAM_A"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "KEY_PARAM_URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->createPresenter()Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getUi()Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public loadYzH5ErrorPage()V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getYzH5Fragment()Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v0

    .line 117
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    const-string v1, "file:///android_asset/local_error.html"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->setSignUrl(Ljava/lang/String;)V

    .line 120
    const-string v1, "file:///android_asset/local_error.html"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadPage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public loadYzH5Fragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getYzH5Fragment()Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v0

    .line 104
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->setSignUrl(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->loadPage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->getCurrentPos()I

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->finish()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getYzH5Fragment()Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    move-result-object v0

    .line 146
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->finish()V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->init(Landroid/content/Intent;Lrx/i/b;)V

    .line 55
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->initData()V

    .line 57
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 99
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->onPageSelected(I)V

    .line 94
    return-void
.end method
