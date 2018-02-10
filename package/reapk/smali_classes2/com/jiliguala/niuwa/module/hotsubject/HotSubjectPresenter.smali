.class public Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;",
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
    .line 26
    const-class v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 24
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->mSubscriptions:Lrx/i/b;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->mData:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->isLoadingMore:Z

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->mSubscriptions:Lrx/i/b;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->notifyRefreshFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)V

    return-object v0
.end method

.method private notifyRefreshFailed()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;->onRefreshNewFailed()V

    .line 119
    :cond_0
    return-void
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;)V

    return-object v0
.end method

.method private requestHotSubjectChannel(IZ)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "loadMore"    # Z

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;->getChannelID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectUI;->getChannelID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Lcom/jiliguala/niuwa/logic/network/d;->b(Ljava/lang/String;I)Lrx/e;

    move-result-object v0

    .line 45
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 46
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 47
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    if-eqz p2, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 50
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_0
.end method

.method private requestPost()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0, v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->requestHotSubjectChannel(IZ)V

    .line 113
    return-void
.end method


# virtual methods
.method public loadMore(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->isLoadingMore:Z

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->requestHotSubjectChannel(IZ)V

    .line 38
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 124
    return-void
.end method

.method public refreshNew()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectPresenter;->requestPost()V

    .line 108
    return-void
.end method
