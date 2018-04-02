.class public Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/settings/login/view/MobileLoginView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/settings/login/presenter/MobileLoginPresenter;",
        "Lcom/jiliguala/niuwa/module/settings/login/view/MobileLoginView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/settings/login/view/MobileLoginView;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mConfirmBtn:Landroid/widget/Button;

.field private mForgetPwd:Landroid/widget/TextView;

.field private mLoginChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

.field private mMobilePhoneNumEt:Landroid/widget/EditText;

.field private mPwdEt:Landroid/widget/EditText;

.field private mRootView:Landroid/view/View;

.field private mVerifyCodeLogin:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 58
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->createPresenter()Lcom/jiliguala/niuwa/module/settings/login/presenter/MobileLoginPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/settings/login/presenter/MobileLoginPresenter;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/login/presenter/MobileLoginPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/login/presenter/MobileLoginPresenter;-><init>()V

    return-object v0
.end method

.method public getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    .line 185
    .local v0, "signInActivity":Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getProgressDialog()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    .line 187
    .end local v0    # "signInActivity":Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getUi()Lcom/jiliguala/niuwa/module/settings/login/view/MobileLoginView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/settings/login/view/MobileLoginView;
    .locals 0

    .prologue
    .line 67
    return-object p0
.end method

.method public goToVerifyCodeLogin()V
    .locals 6

    .prologue
    const v5, 0x7f010020

    const v4, 0x7f01001f

    .line 191
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .line 192
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 193
    .local v1, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v1, v4, v5, v4, v5}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 194
    const/16 v2, 0x5009

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->setType(I)V

    .line 195
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    const v2, 0x7f090480

    sget-object v3, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 197
    sget-object v2, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 201
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 202
    return-void

    .line 199
    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 122
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->goToVerifyCodeLogin()V

    goto :goto_0

    .line 125
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->e()Z

    goto :goto_0

    .line 130
    :sswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Forgot Password"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->makeIntentForPasswordForgot(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->signInByMobilePhoneOrEmail()V

    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09002f -> :sswitch_3
        0x7f090096 -> :sswitch_1
        0x7f09021b -> :sswitch_2
        0x7f0905f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 72
    const v1, 0x7f0b00ba

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mRootView:Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0905f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mVerifyCodeLogin:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mVerifyCodeLogin:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09021b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mForgetPwd:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mForgetPwd:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09034b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mMobilePhoneNumEt:Landroid/widget/EditText;

    .line 82
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090426

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mPwdEt:Landroid/widget/EditText;

    .line 84
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mConfirmBtn:Landroid/widget/Button;

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mConfirmBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mConfirmBtn:Landroid/widget/Button;

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 94
    new-instance v1, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mConfirmBtn:Landroid/widget/Button;

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mLoginChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 95
    new-instance v0, Lcom/jiliguala/niuwa/common/helper/a/e;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mConfirmBtn:Landroid/widget/Button;

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/helper/a/e;-><init>(Landroid/view/View;[I)V

    .line 96
    .local v0, "mIconChecker":Lcom/jiliguala/niuwa/common/helper/a/e;
    new-instance v1, Lcom/jiliguala/niuwa/common/helper/c/i;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mLoginChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/common/helper/c/i;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mMobilePhoneNumEt:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/helper/c/i;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 97
    new-instance v1, Lcom/jiliguala/niuwa/common/helper/c/h;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mLoginChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/common/helper/c/h;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mPwdEt:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/helper/c/h;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 99
    new-instance v1, Lcom/jiliguala/niuwa/common/helper/c/i;

    invoke-direct {v1, v0}, Lcom/jiliguala/niuwa/common/helper/c/i;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mMobilePhoneNumEt:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/helper/c/i;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 100
    new-instance v1, Lcom/jiliguala/niuwa/common/helper/c/h;

    invoke-direct {v1, v0}, Lcom/jiliguala/niuwa/common/helper/c/h;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mPwdEt:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/helper/c/h;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 101
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mRootView:Landroid/view/View;

    return-object v1

    .line 94
    nop

    :array_0
    .array-data 4
        0x6c
        0x67
    .end array-data

    .line 95
    :array_1
    .array-data 4
        0x6c
        0x67
    .end array-data
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mMobilePhoneNumEt:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->a(Landroid/widget/EditText;)V

    .line 109
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onStop()V

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mMobilePhoneNumEt:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 115
    return-void
.end method

.method public signInByMobilePhoneOrEmail()V
    .locals 5

    .prologue
    .line 142
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mMobilePhoneNumEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "phoneStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->mPwdEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "pwdStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    .end local v1    # "phoneStr":Ljava/lang/String;
    .end local v2    # "pwdStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v1    # "phoneStr":Ljava/lang/String;
    .restart local v2    # "pwdStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 154
    :cond_2
    const-string v0, "email"

    .line 156
    .local v0, "loginType":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 157
    const-string v0, "email"

    .line 162
    :cond_3
    :goto_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a/a;->a()Lcom/jiliguala/niuwa/logic/login/a/a;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment$1;-><init>(Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;)V

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/jiliguala/niuwa/logic/login/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/login/a/b;)V

    goto :goto_0

    .line 158
    :cond_4
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    const-string v0, "mobile"

    goto :goto_1
.end method
