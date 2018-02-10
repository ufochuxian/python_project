.class public Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/registercard/RegisterView;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private hasBound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->hasBound:Z

    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->hasBound:Z

    return p1
.end method


# virtual methods
.method public addEventObserver()V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 62
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;)V

    .line 63
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 103
    return-void
.end method

.method public onMobileBinding()V
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->hasBound:Z

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/registercard/RegisterView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/registercard/RegisterView;->exit()V

    .line 110
    :cond_0
    return-void
.end method

.method public requestServer()V
    .locals 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    const-string v2, "{}"

    .line 33
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->E(Lokhttp3/ab;)Lrx/e;

    move-result-object v1

    .line 34
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 35
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 36
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;)V

    .line 37
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 58
    return-void
.end method
