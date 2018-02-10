.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 1
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$500(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 182
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 174
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$6$1;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
