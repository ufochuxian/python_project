.class Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->gotoValidateCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    .line 362
    .local v0, "verificationCodeFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;
    if-nez v0, :cond_2

    .line 363
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    .end local v0    # "verificationCodeFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;-><init>()V

    .line 365
    .restart local v0    # "verificationCodeFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->access$400(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->setPhoneStr(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->access$500(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->setType(I)V

    .line 367
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;->a:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->switchContent(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method
