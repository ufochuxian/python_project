.class Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->requestAddressDataFromServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;)V
    .locals 1
    .param p1, "addressTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$2;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;->updateUI(Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;)V

    return-void
.end method
