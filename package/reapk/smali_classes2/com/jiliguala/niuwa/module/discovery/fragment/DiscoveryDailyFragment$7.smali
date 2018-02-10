.class Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$7;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 451
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 434
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 438
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$7;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$600(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 439
    const/4 v2, 0x2

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$7;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$600(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-lt p1, v2, :cond_1

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$7;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$600(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->getItemIndexForPosition(I)I

    move-result v1

    .line 442
    .local v1, "page":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$7;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$600(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/discovery/adapter/BannerPagerAdapter;->getStartPageIndex()I

    move-result v2

    add-int v0, v2, v1

    .line 443
    .local v0, "newPosition":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$7;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$700(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$a;->a:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 446
    .end local v0    # "newPosition":I
    .end local v1    # "page":I
    :cond_1
    return-void
.end method
