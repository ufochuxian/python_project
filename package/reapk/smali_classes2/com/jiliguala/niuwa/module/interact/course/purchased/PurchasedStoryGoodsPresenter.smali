.class public Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public isLoadingMore:Z

.field private mSubscriptions:Lrx/i/b;

.field private page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 21
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->mSubscriptions:Lrx/i/b;

    .line 22
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->isLoadingMore:Z

    .line 23
    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->page:I

    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->mSubscriptions:Lrx/i/b;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->notifyRefreshFailed()V

    return-void
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->page:I

    return p1
.end method

.method static synthetic access$108(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    .prologue
    .line 18
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->page:I

    return v0
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;)V

    return-object v0
.end method

.method private notifyRefreshFailed()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;->onRefreshNewFailed()V

    .line 107
    :cond_0
    return-void
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;)V

    return-object v0
.end method


# virtual methods
.method public loadMore()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->isLoadingMore:Z

    .line 32
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->page:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->requestInteractCourse(IZ)V

    .line 33
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 111
    return-void
.end method

.method public refreshNew()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->requestInteractCourse(IZ)V

    .line 37
    return-void
.end method

.method public requestInteractCourse(IZ)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "loadMore"    # Z

    .prologue
    .line 40
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    const-string v2, "storylesson"

    invoke-interface {v0, p1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->a(ILjava/lang/String;)Lrx/e;

    move-result-object v0

    .line 42
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 43
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 44
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 46
    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_0
.end method
