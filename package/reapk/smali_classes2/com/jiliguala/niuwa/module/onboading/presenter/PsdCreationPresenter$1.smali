.class Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;->createPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter$1;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 3
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 58
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter$1;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter$1;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IPsdCreationView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IPsdCreationView;->onCreateSucceed()V

    .line 63
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1006

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->userInfoSegP:Ljava/lang/String;

    .line 67
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/login/a;->b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 69
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x999

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter$1;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 49
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_0

    .line 50
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter$1;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/view/IPsdCreationView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/onboading/view/IPsdCreationView;->onCreateFailed()V

    .line 54
    .end local v0    # "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/presenter/PsdCreationPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
