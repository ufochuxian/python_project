.class Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 63
    const/4 v2, 0x2

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-lt p1, v2, :cond_1

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->getItemIndexForPosition(I)I

    move-result v1

    .line 66
    .local v1, "page":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$000(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->getStartPageIndex()I

    move-result v2

    add-int v0, v2, v1

    .line 67
    .local v0, "newPosition":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->access$100(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 70
    .end local v0    # "newPosition":I
    .end local v1    # "page":I
    :cond_1
    return-void
.end method
