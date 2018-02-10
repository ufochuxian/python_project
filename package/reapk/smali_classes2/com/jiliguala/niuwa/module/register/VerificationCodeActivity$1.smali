.class Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$1;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$1;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mVerifyCodeResendDialogFragment:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$1;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mVerifyCodeResendDialogFragment:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$1;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->show(Landroid/support/v4/app/ag;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
