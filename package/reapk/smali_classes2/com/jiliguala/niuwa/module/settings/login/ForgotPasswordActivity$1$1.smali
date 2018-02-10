.class Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 80
    :cond_0
    const-string v0, "\u91cd\u7f6e\u5bc6\u7801\u90ae\u4ef6\u5df2\u53d1\u9001\u5230\u60a8\u7684\u90ae\u7bb1"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->finish()V

    .line 82
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 70
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/logic/network/g;->a(Ljava/lang/Throwable;)Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;

    move-result-object v0

    .line 71
    .local v0, "rsp":Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;
    if-eqz v0, :cond_1

    .line 72
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/ServerErrorEntity;->msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 74
    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;->a(Ljava/lang/Void;)V

    return-void
.end method
