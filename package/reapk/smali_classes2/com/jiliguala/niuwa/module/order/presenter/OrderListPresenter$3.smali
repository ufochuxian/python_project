.class Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->refreshNewSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;)V
    .locals 2
    .param p1, "orderListTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;

    .prologue
    .line 116
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/order/contact/OrderListContract$View;->onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->access$102(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;I)I

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->access$200(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->access$200(Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;)V

    .line 112
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter$3;->a(Lcom/jiliguala/niuwa/logic/network/json/OrderListTemplate;)V

    return-void
.end method
