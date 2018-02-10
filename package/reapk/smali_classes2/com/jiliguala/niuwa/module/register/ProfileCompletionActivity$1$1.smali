.class Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 3
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/login/a;->b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 127
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1006

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Save Personal Info"

    .line 129
    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->setResult(I)V

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->finish()V

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    const v1, 0x7f010012

    const v2, 0x7f01001e

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->overridePendingTransition(II)V

    .line 136
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1;->a:Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 120
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity$1$1;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
