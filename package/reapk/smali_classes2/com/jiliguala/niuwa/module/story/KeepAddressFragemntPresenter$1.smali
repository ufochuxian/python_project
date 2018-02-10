.class Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->reportUserAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Void;",
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
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;->onReportUserAddressSuccess()V

    .line 48
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter$1;->a(Ljava/lang/Void;)V

    return-void
.end method
