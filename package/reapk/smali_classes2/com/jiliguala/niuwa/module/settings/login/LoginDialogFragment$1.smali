.class Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f01001d

    const v6, 0x7f010013

    const/16 v5, 0x1001

    const/16 v4, 0x1000

    const/4 v3, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->access$200(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;I)V

    .line 90
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->dismissAllowingStateLoss()V

    .line 92
    :goto_1
    return-void

    .line 51
    :sswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-static {v1, v5}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;I)V

    .line 56
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->access$102(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;Z)Z

    goto :goto_0

    .line 59
    :sswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;I)V

    .line 64
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->access$102(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;Z)Z

    goto :goto_0

    .line 67
    :sswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a\u5ba2\u6237\u7aef"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    const/16 v2, 0x1002

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;I)V

    .line 72
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->access$102(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;Z)Z

    goto :goto_0

    .line 75
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_TYPE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 79
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->access$102(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;Z)Z

    goto/16 :goto_0

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "KEY_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 85
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;->access$102(Lcom/jiliguala/niuwa/module/settings/login/LoginDialogFragment;Z)Z

    goto/16 :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x7f0901d7 -> :sswitch_4
        0x7f0901d8 -> :sswitch_3
        0x7f0902f4 -> :sswitch_1
        0x7f0902f5 -> :sswitch_2
        0x7f0902f6 -> :sswitch_0
    .end sparse-switch
.end method
