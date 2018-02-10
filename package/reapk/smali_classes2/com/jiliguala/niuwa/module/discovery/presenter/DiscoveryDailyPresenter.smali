.class public Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field bannerFail:Z

.field private hasResponse:Z

.field private isLoadingMore:Z

.field private mDailyDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

.field private mDailyView:Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

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

.field private mHandler:Landroid/os/Handler;

.field mRspCnter:I

.field private mSpecailSubject:Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

.field postFail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;)V
    .locals 2
    .param p1, "dailyView"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    .line 23
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->bannerFail:Z

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->postFail:Z

    .line 24
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->isLoadingMore:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mData:Ljava/util/ArrayList;

    .line 28
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->hasResponse:Z

    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyView:Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyView:Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->checkRefreshResponse()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mSpecailSubject:Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    return-object v0
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;)Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mSpecailSubject:Lcom/jiliguala/niuwa/logic/network/json/HotSubjectTemplete;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    return-object v0
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;)Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/DailyDataTemplate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->notifyRefreshFailed()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->hasResponse:Z

    return v0
.end method

.method static synthetic access$802(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->hasResponse:Z

    return p1
.end method

.method private checkRefreshResponse()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    return-object v0
.end method

.method private notifyRefreshFailed()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyView:Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyView:Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;->onRefreshNewFailed()V

    .line 157
    :cond_0
    return-void
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    return-object v0
.end method

.method private requestBanner()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyView:Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyView:Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 107
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->e()Lrx/e;

    move-result-object v1

    .line 108
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 109
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 110
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;)V

    .line 111
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 141
    :cond_0
    return-void
.end method

.method private requestForumBanner()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method private requestHotSubjectChannelList(IZ)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "loadMore"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyView:Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mDailyView:Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DailyView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v0

    .line 213
    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/logic/network/d;->b(I)Lrx/e;

    move-result-object v0

    .line 214
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 215
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 216
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    if-eqz p2, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->loadMoreSub()Lrx/l;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 211
    invoke-virtual {v1, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 219
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->refreshNewSub()Lrx/l;

    move-result-object v0

    goto :goto_0
.end method

.method private requestPost()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0, v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->requestHotSubjectChannelList(IZ)V

    .line 101
    return-void
.end method


# virtual methods
.method public isLoadingMore()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->isLoadingMore:Z

    return v0
.end method

.method public loadMore(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->isLoadingMore:Z

    .line 206
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->requestHotSubjectChannelList(IZ)V

    .line 207
    return-void
.end method

.method public refreshNew()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->hasResponse:Z

    .line 146
    iput v0, p0, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->mRspCnter:I

    .line 148
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->requestPost()V

    .line 150
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->requestBanner()V

    .line 151
    return-void
.end method
