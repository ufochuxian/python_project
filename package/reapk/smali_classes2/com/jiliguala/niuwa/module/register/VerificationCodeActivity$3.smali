.class Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$3;
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
    .line 96
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$3;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$3;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->setResult(I)V

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$3;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->finish()V

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$3;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    const v1, 0x7f010012

    const v2, 0x7f01001e

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->overridePendingTransition(II)V

    .line 103
    return-void
.end method
