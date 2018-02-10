.class Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$200(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$102(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;I)I

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->access$300(Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;II)V

    .line 212
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
