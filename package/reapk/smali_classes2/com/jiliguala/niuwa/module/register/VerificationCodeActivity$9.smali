.class Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$9;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->verifyCodeSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$9;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 295
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 296
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$9;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$9;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 302
    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$9;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$9;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 309
    :cond_0
    const v0, 0x7f0f0262

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 310
    return-void
.end method
