.class Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$2;
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
    .line 102
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$2;->a:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$2;->a:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$2;->a:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->dismissAllowingStateLoss()V

    .line 108
    :cond_0
    return-void
.end method
