.class public Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method


# virtual methods
.method public askForVerifyCodeRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 27
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->j(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 28
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 29
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 30
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;)V

    .line 31
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 56
    :cond_0
    return-void
.end method

.method public askForVerifyCodeRequestWithNoAuth(Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 62
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->k(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 63
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 64
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 65
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$2;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;)V

    .line 66
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 91
    :cond_0
    return-void
.end method
