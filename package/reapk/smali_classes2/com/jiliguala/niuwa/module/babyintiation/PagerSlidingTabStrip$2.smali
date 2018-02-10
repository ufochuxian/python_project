.class Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$2;->b:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iput p2, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$2;->b:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$2;->a:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->setCurrentItem(I)V

    .line 302
    return-void
.end method
