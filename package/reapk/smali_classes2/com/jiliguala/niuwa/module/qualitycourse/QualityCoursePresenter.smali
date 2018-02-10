.class public Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mSubscriptions:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 23
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->mSubscriptions:Lrx/i/b;

    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->mSubscriptions:Lrx/i/b;

    .line 27
    return-void
.end method

.method private loadRecommendCourseSubscriber()Lrx/l;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$2;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;)V

    return-object v0
.end method


# virtual methods
.method public requestHeaderIconData()V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->l()Lrx/e;

    move-result-object v1

    .line 68
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 69
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 70
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$1;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;)V

    .line 71
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 97
    :cond_0
    return-void
.end method

.method public requestServer()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->mSubscriptions:Lrx/i/b;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 35
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->n()Lrx/e;

    move-result-object v1

    .line 36
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 37
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 38
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 39
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->loadRecommendCourseSubscriber()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 41
    return-void
.end method
