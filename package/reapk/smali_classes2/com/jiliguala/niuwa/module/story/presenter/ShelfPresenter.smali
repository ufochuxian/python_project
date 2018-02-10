.class public Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;
    }
.end annotation


# static fields
.field private static final LOAD_MORE:I = 0x1001

.field private static final REFRESH_NEW:I = 0x1000


# instance fields
.field private isLoadingMore:Z

.field private mHandler:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;

.field private mShelfView:Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;)V
    .locals 1
    .param p1, "shelfView"    # Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->isLoadingMore:Z

    .line 29
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->mShelfView:Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    .line 30
    new-instance v0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;-><init>(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->mHandler:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->mShelfView:Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->isLoadingMore:Z

    return v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->isLoadingMore:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->refreshNew()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->loadMore(I)V

    return-void
.end method

.method private loadMore(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->isLoadingMore:Z

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->requestBookShelf(IZ)V

    .line 118
    return-void
.end method

.method private loadMoreSub()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)V

    return-object v0
.end method

.method private refreshNew()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "page":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->requestBookShelf(IZ)V

    .line 107
    return-void
.end method

.method private refreshNewSub()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/ShelfContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;)V

    return-object v0
.end method

.method private requestBookShelf(IZ)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "loadMore"    # Z

    .prologue
    .line 121
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "bid":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->mShelfView:Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    if-eqz v1, :cond_0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->mShelfView:Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfView;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 128
    invoke-interface {v1, v0, p1}, Lcom/jiliguala/niuwa/logic/network/d;->c(Ljava/lang/String;I)Lrx/e;

    move-result-object v1

    .line 129
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 130
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 131
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    if-eqz p2, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->loadMoreSub()Lrx/l;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 126
    invoke-virtual {v2, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->refreshNewSub()Lrx/l;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public loadMoreShelfData(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 96
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->mHandler:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 97
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 98
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 99
    return-void
.end method

.method public refreshShelfData()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter;->mHandler:Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;

    const/16 v1, 0x1000

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/presenter/ShelfPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    return-void
.end method
