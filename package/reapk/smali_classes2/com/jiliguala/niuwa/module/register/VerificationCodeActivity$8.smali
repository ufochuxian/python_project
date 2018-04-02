.class Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->verifySubscriber()Lrx/l;
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 4
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    const v3, 0x7f0f014c

    .line 252
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget v1, v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 276
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->setResult(I)V

    .line 277
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->finish()V

    .line 278
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    const v2, 0x7f010013

    const v3, 0x7f010020

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->overridePendingTransition(II)V

    .line 279
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 282
    :cond_0
    return-void

    .line 256
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 257
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    const-string v2, "Mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sign Up"

    .line 259
    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 260
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Mobile Add"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 261
    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 264
    .end local v0    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Mobile Replace"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 265
    const v1, 0x7f0f014e

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 268
    :pswitch_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Password Reset"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 269
    const v1, 0x7f0f0149

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 272
    :pswitch_4
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Mobile Add"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 273
    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 241
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 242
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_0

    .line 243
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 248
    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
