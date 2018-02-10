.class Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->isRegistionType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$1;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->e()Z

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$1;->a(Ljava/lang/Void;)V

    return-void
.end method
