.class Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 38
    :sswitch_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->onBackPressed()V

    goto :goto_0

    .line 41
    :sswitch_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "email":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    const-string v4, "\u90ae\u7bb1\u5730\u5740\u4e0d\u5408\u6cd5"

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v4

    if-nez v4, :cond_2

    .line 48
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 51
    :cond_2
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/http/entity/ForgetPwdEntity;

    invoke-direct {v2, v1}, Lcom/jiliguala/niuwa/logic/network/http/entity/ForgetPwdEntity;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "entity":Lcom/jiliguala/niuwa/logic/network/http/entity/ForgetPwdEntity;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "json":Ljava/lang/String;
    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 55
    .local v0, "body":Lokhttp3/ab;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v4

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v5

    .line 56
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/jiliguala/niuwa/logic/network/d;->m(Lokhttp3/ab;)Lrx/e;

    move-result-object v5

    .line 57
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v5

    .line 58
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v5

    .line 59
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v5

    new-instance v6, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1$1;-><init>(Lcom/jiliguala/niuwa/module/settings/login/ForgotPasswordActivity$1;)V

    .line 60
    invoke-virtual {v5, v6}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Lrx/i/b;->a(Lrx/m;)V

    goto/16 :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090031 -> :sswitch_1
    .end sparse-switch
.end method
