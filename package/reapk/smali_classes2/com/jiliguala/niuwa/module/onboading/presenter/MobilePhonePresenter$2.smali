.class Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->askForVerifyCodeRequestWithNoAuth(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;->gotoValidateCode()V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 75
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-nez v1, :cond_1

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;->onRequestValidateError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter$2;->a(Ljava/lang/Void;)V

    return-void
.end method
