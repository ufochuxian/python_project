.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    return-void
.end method

.method public onRefresh(Ljava/lang/String;)V
    .locals 4
    .param p1, "lid"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "curBabyId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->getSubscription()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 62
    invoke-interface {v2, p1, v0}, Lcom/jiliguala/niuwa/logic/network/d;->j(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 63
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 64
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 65
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;)V

    .line 66
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 85
    return-void
.end method

.method public requestServer(Ljava/lang/String;)V
    .locals 4
    .param p1, "lid"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "curBabyId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->getSubscription()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 33
    invoke-interface {v2, p1, v0}, Lcom/jiliguala/niuwa/logic/network/d;->j(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 34
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 35
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 36
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;)V

    .line 37
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 55
    return-void
.end method
