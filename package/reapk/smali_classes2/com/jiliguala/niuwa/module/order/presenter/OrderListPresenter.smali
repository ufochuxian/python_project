.class public Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;",
        ">;",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$Presenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLoadingMore:Z

.field private mQslData:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

.field private page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->page:I

    return p1
.end method

.method static synthetic access$108(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    .prologue
    .line 22
    iget v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->page:I

    return v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->notifyRefreshFailed()V

    return-void
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;)Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->mQslData:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    return-object p1
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V

    return-object v0
.end method

.method private notifyRefreshFailed()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;->onRefreshNewFailed()V

    .line 133
    :cond_0
    return-void
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V

    return-object v0
.end method

.method private refreshStoryLesson()Lrx/l;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V

    return-object v0
.end method


# virtual methods
.method public getQualityLessonUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->mQslData:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->mQslData:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;->lessons:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->mQslData:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;->lessons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->mQslData:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;->lessons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$QualityStoryLesson;->burl:Ljava/lang/String;

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMore()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->isLoadingMore:Z

    if-nez v0, :cond_0

    .line 57
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->isLoadingMore:Z

    .line 58
    iget v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->page:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->requestOrderList(IZ)V

    .line 60
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/h;

    .line 34
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V

    .line 35
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 46
    return-void
.end method

.method public refreshNew()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0, v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->requestOrderList(IZ)V

    .line 52
    return-void
.end method

.method public requestOrderList(IZ)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "loadMore"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->getSubscription()Lrx/i/b;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    .line 66
    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/logic/network/d;->d(I)Lrx/e;

    move-result-object v0

    .line 67
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 68
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 69
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 71
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_0
.end method

.method public requestQualityStoryLesson()V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->m()Lrx/e;

    move-result-object v1

    .line 141
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 142
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 143
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 144
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->refreshStoryLesson()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 145
    return-void
.end method
