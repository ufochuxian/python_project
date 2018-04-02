.class Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 70
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->onBackPressed()V

    goto :goto_0

    .line 73
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const-string v0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;I)V

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$200(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;I)V

    goto :goto_0

    .line 83
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/util/xutils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    const-string v0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    const/16 v1, 0x1002

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$100(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;I)V

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;->a:Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->access$200(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;I)V

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f0902fb -> :sswitch_1
        0x7f0902fc -> :sswitch_2
    .end sparse-switch
.end method
