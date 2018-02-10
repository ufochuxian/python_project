.class Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 660
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->changeTabStyles(I)V

    .line 661
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageSelected(I)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->showRedPoint(IZ)V

    .line 665
    return-void
.end method

.method public a(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 635
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$102(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;I)I

    .line 636
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-static {v0, p2}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$502(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;F)F

    .line 638
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$600(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;II)V

    .line 640
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->invalidate()V

    .line 642
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->onPageScrolled(IFI)V

    .line 645
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 649
    if-nez p1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;II)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$f;

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$a;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$f;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->onPageScrollStateChanged(I)V

    .line 656
    :cond_1
    return-void
.end method
