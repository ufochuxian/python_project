.class public Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->isLoadingMore:Z

    .line 26
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->mSubscriptions:Lrx/i/b;

    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->mSubscriptions:Lrx/i/b;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->notifyRefreshFailed()V

    return-void
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;)V

    return-object v0
.end method

.method private notifyRefreshFailed()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;->onRefreshNewFailed()V

    .line 108
    :cond_0
    return-void
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;)V

    return-object v0
.end method


# virtual methods
.method public loadMore()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->isLoadingMore:Z

    .line 35
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->requestQualityStoryLesson(Z)V

    .line 36
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 113
    return-void
.end method

.method public refreshNew()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->requestQualityStoryLesson(Z)V

    .line 101
    return-void
.end method

.method public requestQualityStoryLesson(Z)V
    .locals 3
    .param p1, "loadMore"    # Z

    .prologue
    .line 39
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/jiliguala/niuwa/logic/network/d;->m()Lrx/e;

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

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 46
    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_0
.end method
