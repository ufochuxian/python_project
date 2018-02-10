.class Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->requestServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$1;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;)V
    .locals 1
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$1;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$1;->a:Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/registercard/RegisterView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/registercard/RegisterView;->onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/registercard/RegisterPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/ClockingRecordTemplete;)V

    return-void
.end method
