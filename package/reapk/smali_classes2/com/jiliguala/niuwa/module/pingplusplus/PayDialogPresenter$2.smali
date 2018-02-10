.class Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->requestOrderPayResult()V
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
    .line 136
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;)V
    .locals 7
    .param p1, "pingPPPayResult"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;

    .prologue
    const/16 v6, 0x1001

    .line 160
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    .local v0, "afterTime":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$100(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 166
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->isPaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$300(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$300(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->removeMessages(I)V

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$300(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v6, v4, v5}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->mPayDialogUI:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;->data:Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogUI;->onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$400(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v6, 0x1001

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    .local v0, "afterTime":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$100(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$300(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$300(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->removeMessages(I)V

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$300(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v6, v4, v5}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$200(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;->access$400(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter;)V

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialogPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult;)V

    return-void
.end method
