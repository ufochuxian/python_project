.class public Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public isLoadingMore:Z

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->isLoadingMore:Z

    .line 27
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->mSubscriptions:Lrx/i/b;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->mData:Ljava/util/ArrayList;

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->mSubscriptions:Lrx/i/b;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->notifyRefreshFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;)V

    return-object v0
.end method

.method private notifyRefreshFailed()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;->onRefreshNewFailed()V

    .line 111
    :cond_0
    return-void
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;)V

    return-object v0
.end method


# virtual methods
.method public loadMore(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->isLoadingMore:Z

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->requestInteractCourse(IZ)V

    .line 38
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 116
    return-void
.end method

.method public refreshNew()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0, v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->requestInteractCourse(IZ)V

    .line 104
    return-void
.end method

.method public requestInteractCourse(IZ)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "loadMore"    # Z

    .prologue
    .line 41
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/logic/network/d;->c(I)Lrx/e;

    move-result-object v0

    .line 43
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 44
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 45
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 47
    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_0
.end method
