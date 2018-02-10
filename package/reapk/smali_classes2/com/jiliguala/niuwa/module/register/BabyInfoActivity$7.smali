.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->babyActionSub()Lrx/l;
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;)V
    .locals 8
    .param p1, "babyInfoDataTmp"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 332
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

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/jiliguala/niuwa/logic/login/a;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;Z)V

    .line 333
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1007

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$1200(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->setResult(I)V

    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->finish()V

    .line 343
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$100(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)V

    .line 316
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 320
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 322
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 323
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_1

    .line 324
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 326
    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$7;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoDataTmp;)V

    return-void
.end method
