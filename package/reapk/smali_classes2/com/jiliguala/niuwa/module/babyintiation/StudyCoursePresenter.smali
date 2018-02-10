.class public Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;)V
    .locals 0
    .param p1, "ui"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->showErrorView()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->dismisiiLoadingView()V

    return-void
.end method

.method private dismisiiLoadingView()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->getSuperView()Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->d()V

    .line 48
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->showLoadingView()V

    .line 105
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 109
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->n(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 110
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 111
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 112
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$3;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V

    .line 113
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 144
    :cond_0
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->getSuperView()Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->getSuperView()Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$1;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->setOnErrorClickListener(Lcom/jiliguala/niuwa/common/widget/customview/b;)V

    .line 44
    return-void
.end method

.method private showLoadingView()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->getSuperView()Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a()V

    .line 97
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->refresh()V

    .line 101
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public request(Z)V
    .locals 4
    .param p1, "forceSelection"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->showLoadingView()V

    .line 56
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 61
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->n(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 62
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 63
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 64
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;

    invoke-direct {v3, p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$2;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;Z)V

    .line 65
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 93
    :cond_0
    return-void
.end method

.method public switchAge(Ljava/lang/String;)V
    .locals 6
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->showLoadingView()V

    .line 151
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/SwithAgeEntity;

    invoke-direct {v3, v0, p1}, Lcom/jiliguala/niuwa/logic/network/json/SwithAgeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v1

    .line 153
    .local v1, "body":Lokhttp3/ab;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->mUi:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v4

    .line 154
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v4

    .line 155
    invoke-interface {v4, v1}, Lcom/jiliguala/niuwa/logic/network/d;->y(Lokhttp3/ab;)Lrx/e;

    move-result-object v4

    .line 156
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 157
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v4

    .line 158
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$4;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter$4;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;)V

    .line 159
    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v4

    .line 153
    invoke-virtual {v3, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 180
    .end local v1    # "body":Lokhttp3/ab;
    .end local v2    # "json":Ljava/lang/String;
    :cond_0
    return-void
.end method
