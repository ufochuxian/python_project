.class Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->verifyCodeSub()Lrx/l;
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget v2, v2, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mMode:I

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->makeIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 297
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 280
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 281
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_0

    .line 282
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a:Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->access$000(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 287
    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;->a(Ljava/lang/Void;)V

    return-void
.end method
