.class Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestOrderPayResultWithNoRetry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$3;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;)V
    .locals 2
    .param p1, "pingPPPayResult"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;

    .prologue
    .line 204
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->isPaid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$3;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPayDialogUI:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;->onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;)V

    goto :goto_0

    .line 212
    :cond_2
    const-string v0, "\u6ca1\u6709\u5b8c\u6210\u652f\u4ed8\uff0c\u8bf7\u91cd\u65b0\u70b9\u51fb\u6309\u94ae\u8d2d\u4e70\uff01"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 190
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$3;->a(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;)V

    return-void
.end method
