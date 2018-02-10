.class Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->mResendInterface:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$HandleVerifyCodeResend;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$HandleVerifyCodeResend;->resend()V

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->dismissAllowingStateLoss()V

    .line 100
    :cond_0
    return-void
.end method
