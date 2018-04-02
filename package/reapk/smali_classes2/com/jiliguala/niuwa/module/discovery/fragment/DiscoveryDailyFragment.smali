.class public Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;
.implements Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;,
        Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isRunning:Z

.field private mAdapter:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

.field private mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

.field private mBannerAdpter:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

.field private mBannerView:Landroid/view/View;

.field private mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mPresenter:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->TAG:Ljava/lang/String;

    .line 56
    const-class v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->page:I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mPresenter:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->page:I

    return v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->performItemClick(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->goGuaStoreTab()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerAdpter:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->isRunning:Z

    return v0
.end method

.method static synthetic access$802(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->isRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addBannerView(Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V
    .locals 2
    .param p1, "dataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->newBannerView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerView:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 280
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->bindBannerView(Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V

    .line 282
    :cond_1
    return-void
.end method

.method private bindBannerView(Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V
    .locals 10
    .param p1, "dataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 350
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerView:Landroid/view/View;

    const v6, 0x7f0901bc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 351
    .local v2, "discoverDailyTitle":Landroid/widget/TextView;
    const-string v5, "\u70ed\u95e8\u4e13\u9898"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    if-eqz p1, :cond_1

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;

    if-eqz v5, :cond_1

    .line 353
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;

    .line 354
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    .line 358
    .local v0, "bannerViewHolder":Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;
    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->banner:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->banner:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 359
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    iget-object v6, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->banner:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->updateData(Ljava/util/ArrayList;)V

    .line 360
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/af;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/af;->notifyDataSetChanged()V

    .line 361
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerAdpter:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->getStartPageIndex()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 367
    :cond_0
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->b:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->img:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 368
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->c:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->img:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 370
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->d:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->price:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->price:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setFlags(I)V

    .line 374
    iget-object v5, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setFlags(I)V

    .line 375
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->f:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->originprice:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->g:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->originprice:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->h:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->title:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->i:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->title:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->j:Landroid/view/View;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->url:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 383
    iget-object v3, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->j:Landroid/view/View;

    .line 385
    .local v3, "viewToClick1":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v5

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->j:Landroid/view/View;

    new-instance v7, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$4;

    invoke-direct {v7, p0, v3}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$4;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;Landroid/view/View;)V

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 392
    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->k:Landroid/view/View;

    iget-object v5, v1, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;->guadian:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$Guadian;->url:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 393
    iget-object v4, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->k:Landroid/view/View;

    .line 395
    .local v4, "viewToClick2":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v5

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->k:Landroid/view/View;

    new-instance v7, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$5;

    invoke-direct {v7, p0, v4}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$5;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;Landroid/view/View;)V

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 409
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->start()V

    .line 410
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->setListener()V

    .line 412
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v5

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->l:Landroid/widget/TextView;

    new-instance v7, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$6;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$6;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 419
    .end local v0    # "bannerViewHolder":Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;
    .end local v1    # "data":Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate$DataPart;
    .end local v3    # "viewToClick1":Landroid/view/View;
    .end local v4    # "viewToClick2":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private goGuaStoreTab()V
    .locals 3

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 423
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    if-eqz v1, :cond_0

    .line 424
    check-cast v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->goGuaStoreTab()V

    .line 426
    :cond_0
    return-void
.end method

.method private initUIComponent(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    const v0, 0x7f090194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 114
    new-instance v0, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/ag;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAdapter:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAdapter:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$1;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 151
    const v0, 0x7f090546

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$2;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 164
    return-void
.end method

.method private loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "orgUrl"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 468
    .local v0, "url":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 469
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 471
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-void

    .line 467
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/640x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private newBannerView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    if-nez v1, :cond_0

    .line 286
    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0088

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "convertView":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    invoke-direct {v1, v3}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$1;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    .line 291
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    .line 292
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerAdpter:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    if-nez v1, :cond_1

    .line 293
    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerAdpter:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    .line 294
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerAdpter:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->setRunnable(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;)V

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerAdpter:Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 298
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->reLayoutViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 300
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f09029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->b:Landroid/widget/ImageView;

    .line 301
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f0902a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->c:Landroid/widget/ImageView;

    .line 303
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->reLayoutStoreThmb(Landroid/widget/ImageView;)V

    .line 304
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->reLayoutStoreThmb(Landroid/widget/ImageView;)V

    .line 306
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f09029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->d:Landroid/widget/TextView;

    .line 307
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->e:Landroid/widget/TextView;

    .line 309
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f09029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->f:Landroid/widget/TextView;

    .line 310
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f0902a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->g:Landroid/widget/TextView;

    .line 312
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f09029c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->h:Landroid/widget/TextView;

    .line 313
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f0902a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->i:Landroid/widget/TextView;

    .line 315
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v2, 0x7f09029b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->j:Landroid/view/View;

    .line 316
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v2, 0x7f0902a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->k:Landroid/view/View;

    .line 318
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->l:Landroid/widget/TextView;

    .line 320
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 321
    return-object v0
.end method

.method private performItemClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v2, "URL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Item Click"

    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 463
    return-void
.end method

.method private reLayoutStoreThmb(Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 334
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    .line 338
    .local v4, "screenWidth":I
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    .line 339
    .local v2, "leftRightMargin":I
    mul-int/lit8 v5, v2, 0x3

    .line 340
    .local v5, "totalMargin":I
    sub-int v6, v4, v5

    div-int/lit8 v1, v6, 0x2

    .line 341
    .local v1, "imageViewWidth":I
    sub-int v6, v4, v5

    div-int/lit8 v0, v6, 0x2

    .line 343
    .local v0, "imageViewHeight":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 344
    .local v3, "ll":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 345
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 346
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-void
.end method

.method private reLayoutViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 8
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 326
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    .line 327
    .local v1, "screen_width":I
    int-to-double v4, v1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 328
    .local v2, "vpHeight":I
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 329
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 330
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mBannerViewHolder:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$7;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 453
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAdapter:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 184
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$3;-><init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 90
    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;-><init>(Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mPresenter:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .line 91
    const v1, 0x7f0b0095

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 271
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->stopAutoRunnable()V

    .line 272
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 266
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onLoadMoreFailed()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onLoadMoreSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAdapter:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->updateDataSet(Ljava/util/ArrayList;Z)V

    .line 252
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAdapter:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->notifyDataSetChanged()V

    .line 253
    iget v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->page:I

    .line 256
    :cond_0
    return-void
.end method

.method public onLoadingMore()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onRefresh(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 1
    .param p1, "refreshView"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mPresenter:Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->refreshNew()V

    .line 203
    return-void
.end method

.method public onRefreshNewFailed()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->showErrorView()V

    .line 241
    return-void
.end method

.method public onRefreshNewSuccess(Ljava/util/ArrayList;Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V
    .locals 3
    .param p2, "dailyDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAdapter:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->updateDataSet(Ljava/util/ArrayList;Z)V

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAdapter:Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/discovery/adapter/DailyListAdapter;->notifyDataSetChanged()V

    .line 221
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->addBannerView(Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)V

    .line 223
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->showErrorView()V

    .line 224
    iput v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->page:I

    goto :goto_0
.end method

.method public onRefreshingNew()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->initUIComponent(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->autoRefresh()V

    .line 109
    return-void
.end method

.method public stopAutoRunnable()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->mAutoRunnable:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$AutoRunnable;->stop()V

    .line 477
    :cond_0
    return-void
.end method
