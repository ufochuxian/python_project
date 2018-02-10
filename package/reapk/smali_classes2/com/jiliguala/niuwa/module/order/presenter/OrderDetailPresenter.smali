.class public Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;",
        ">;",
        "Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$Presenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOrderDetailData:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;

.field private mOrderId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;)Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->mOrderDetailData:Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;

    return-object p1
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const-string v0, "order_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->mOrderId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public requestServer()V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->mOrderId:Ljava/lang/String;

    .line 36
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->x(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 37
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 38
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 39
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;)V

    .line 40
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 61
    return-void
.end method
