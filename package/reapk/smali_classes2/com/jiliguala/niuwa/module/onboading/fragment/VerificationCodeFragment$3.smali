.class Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jkb/vcedittext/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 128
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$3;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$3;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->access$202(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$3;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->isLoginType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$3;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->requestVerifyCode()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$3;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->signInByVerifyCode()V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 132
    return-void
.end method
