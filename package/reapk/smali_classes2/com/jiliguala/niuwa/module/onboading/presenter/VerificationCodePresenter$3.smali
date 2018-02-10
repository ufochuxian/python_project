.class Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->requestVerifyCodeValidate(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$3;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 3
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 185
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1032

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$3;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$3;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->onVerificationCodeCorrect()V

    .line 189
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 175
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$3;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$3;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->onVerificationCodeError()V

    .line 181
    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$3;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
