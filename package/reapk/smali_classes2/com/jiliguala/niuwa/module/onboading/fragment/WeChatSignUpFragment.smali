.class public Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;
.super Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/onboading/view/WechatSignUpView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment",
        "<",
        "Lcom/jiliguala/niuwa/module/onboading/presenter/WechatSignUpPresenter;",
        "Lcom/jiliguala/niuwa/module/onboading/view/WechatSignUpView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/onboading/view/WechatSignUpView;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final MOBILE_PHONE_SIGN:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFlag:Ljava/lang/String;

.field private mMobilePhoneRegister:Landroid/widget/TextView;

.field private mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private mRoot:Landroid/view/View;

.field private mSkip:Landroid/widget/TextView;

.field private mWeChatContainer:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->goToWeChatRegister()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->gotoMobilePhone()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->performSkipAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->onLoginSucceed()V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 136
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$4;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$5;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$5;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V

    .line 137
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 184
    return-void
.end method

.method private goToWeChatRegister()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    const/16 v0, 0x1001

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->loginNow(I)V

    goto :goto_0
.end method

.method private gotoMobilePhone()V
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .line 100
    .local v0, "mMobilePhoneFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .end local v0    # "mMobilePhoneFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;-><init>()V

    .line 103
    .restart local v0    # "mMobilePhoneFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    .line 104
    .local v1, "onBoardingActivity":Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
    iget v2, v1, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mSubType:I

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->setType(I)V

    .line 105
    const-string v2, "ONBOARDING"

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->setFlag(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->switchContent(Landroid/support/v4/app/Fragment;)V

    .line 109
    :cond_1
    return-void
.end method

.method private login()V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DEFAULT_FLAG"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 216
    return-void
.end method

.method private loginNow(I)V
    .locals 4
    .param p1, "loginType"    # I

    .prologue
    .line 120
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v2, "source"

    const-string v3, "guest_upgrade_weichat_with_login"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method private onLoginSucceed()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 188
    return-void
.end method

.method private performSkipAction()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->exitDirectly(Z)V

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/WechatSignUpPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/WechatSignUpPresenter;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/presenter/WechatSignUpPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/WechatSignUpPresenter;-><init>()V

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mFlag:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getUi()Lcom/jiliguala/niuwa/module/onboading/view/WechatSignUpView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/onboading/view/WechatSignUpView;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 249
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Wechat Sign Up View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 67
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mRoot:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mSkip:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090617

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mWeChatContainer:Landroid/widget/RelativeLayout;

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mWeChatContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f09034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mMobilePhoneRegister:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mMobilePhoneRegister:Landroid/widget/TextView;

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$2;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mSkip:Landroid/widget/TextView;

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment$3;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 94
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onResume()V

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onStop()V

    .line 199
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->addEventObserver()V

    .line 132
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFlag"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mFlag:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 236
    :cond_0
    return-void
.end method
