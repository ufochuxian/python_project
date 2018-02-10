.class Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/login/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->signInByVerifyCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 169
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$4;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 176
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 177
    return-void
.end method
