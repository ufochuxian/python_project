.class public Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsPresenter;",
        "Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsView;",
        ">;",
        "Landroid/support/v4/view/ViewPager$f;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsView;"
    }
.end annotation


# instance fields
.field private curPagerIndex:I

.field private mBackIcon:Landroid/widget/ImageView;

.field private mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

.field private mViewPager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 43
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f090545

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    .line 47
    const v0, 0x7f0905fc

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mViewPager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mViewPager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedViewPagerAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedViewPagerAdapter;-><init>(Landroid/support/v4/app/ag;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mViewPager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->setViewPager(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;)V

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->curPagerIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->changeTabStyles(I)V

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mViewPager:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->curPagerIndex:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setCurrentItem(I)V

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->mTabStrip:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->createPresenter()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsPresenter;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->getUi()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsView;
    .locals 0

    .prologue
    .line 31
    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onBackPressed()V

    .line 68
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->finish()V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->finish()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x7f090096
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "purchased_goods_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->curPagerIndex:I

    .line 38
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;->initView()V

    .line 40
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 74
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 79
    return-void
.end method
