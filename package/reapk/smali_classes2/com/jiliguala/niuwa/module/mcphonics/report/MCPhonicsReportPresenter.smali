.class public Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportUi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method


# virtual methods
.method public requestServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "mc"    # Ljava/lang/String;
    .param p2, "ph"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "curBabyId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;->getSubscription()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 22
    invoke-interface {v2, v0, p1, p2}, Lcom/jiliguala/niuwa/logic/network/d;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 23
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 24
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 25
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter$1;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;)V

    .line 26
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 44
    return-void
.end method
