.class Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->requestAddBaby(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;)V
    .locals 8
    .param p1, "babyInfoDataTmp"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;

    .prologue
    .line 119
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->checkBabyParent(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->prt:Ljava/lang/String;

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->gender:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Lcom/jiliguala/niuwa/logic/login/a;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;Z)V

    .line 124
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1007

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;->generateGuestSucceed()V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "\u6dfb\u52a0\u5b9d\u8d1d\u5931\u8d25\u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;->generateGuestFailed()V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 109
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;->a:Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;->generateGuestFailed()V

    .line 115
    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;)V

    return-void
.end method
