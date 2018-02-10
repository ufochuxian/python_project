.class Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7$1;->b:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7$1;->b:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->b:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mCodeInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method
