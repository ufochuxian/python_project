.class Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V
    .locals 3
    .param p1, "userInfoTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    .prologue
    .line 676
    if-eqz p1, :cond_0

    .line 678
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/login/a;->b(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    .line 679
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/login/a;->b(Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1006

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 689
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onBackPressed()V

    .line 691
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 685
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 689
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onBackPressed()V

    goto :goto_0

    .line 685
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 686
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 688
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 689
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onBackPressed()V

    .line 690
    throw v0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->access$400(Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 670
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2;->c:Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->onBackPressed()V

    .line 671
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 658
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity$2$1;->a(Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;)V

    return-void
.end method
