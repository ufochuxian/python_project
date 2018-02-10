.class Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;
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
    .line 105
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    const/16 v3, 0x6d

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, "code":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    const/16 v3, 0x67

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/common/helper/a/b;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget v2, v2, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 129
    return-void

    .line 115
    :pswitch_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->access$000(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->access$100(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPhoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->access$000(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
