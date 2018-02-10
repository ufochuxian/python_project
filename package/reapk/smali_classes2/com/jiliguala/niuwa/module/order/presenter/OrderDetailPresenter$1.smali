.class Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->requestServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate;)V
    .locals 2
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate;->getData()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate;->getData()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->access$002(Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;)Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate;->getData()Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;->showData(Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate$DataBean;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;->showError()V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/order/contact/OrderDetailContract$View;->showError()V

    .line 49
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderDetailPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/OrderDetailTemplate;)V

    return-void
.end method
