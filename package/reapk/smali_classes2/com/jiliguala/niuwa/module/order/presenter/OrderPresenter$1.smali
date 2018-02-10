.class Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->requestServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/YzData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/YzData;)V
    .locals 2
    .param p1, "yzData"    # Lcom/jiliguala/niuwa/logic/network/json/YzData;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;->data:Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/YzData$DataPart;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;->loadYzH5Fragment(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter$1;->a:Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/order/contact/OrderContract$View;->loadYzH5ErrorPage()V

    .line 83
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/YzData;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/order/presenter/OrderPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/YzData;)V

    return-void
.end method
