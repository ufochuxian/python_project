.class Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestPingPlusPlusChargeByPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;",
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
    .line 283
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;)V
    .locals 3
    .param p1, "charge"    # Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;

    .prologue
    .line 297
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;->data:Lcom/google/gson/JsonObject;

    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;->data:Lcom/google/gson/JsonObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Data;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Data;

    .line 301
    .local v0, "pingPPData":Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Data;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Data;->order_no:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$502(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Data;->amount:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$602(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete$Data;->channel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$702(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;->data:Lcom/google/gson/JsonObject;

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->startPage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPayDialogUI:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;->enablePayButton()V

    .line 293
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 283
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$5;->a(Lcom/jiliguala/niuwa/logic/network/json/PingPlusPlusChargeTemplete;)V

    return-void
.end method
