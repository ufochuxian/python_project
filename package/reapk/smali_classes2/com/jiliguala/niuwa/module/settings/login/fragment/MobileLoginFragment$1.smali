.class Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/login/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->signInByMobilePhoneOrEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 168
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 176
    return-void
.end method
