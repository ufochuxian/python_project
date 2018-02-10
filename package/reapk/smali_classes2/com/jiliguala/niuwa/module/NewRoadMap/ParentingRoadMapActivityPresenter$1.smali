.class Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;->requestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/McTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 1
    .param p1, "mcTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadMapData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;->onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter$1;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;->onRequestError()V

    .line 40
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    return-void
.end method
