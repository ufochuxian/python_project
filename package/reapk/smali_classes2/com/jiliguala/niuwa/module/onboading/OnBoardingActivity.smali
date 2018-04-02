.class public Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;
.implements Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$HandleVerifyCodeResend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity$PhoneFullFillType;,
        Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity$OnBoardingType;
    }
.end annotation


# static fields
.field public static final FLAG:Ljava/lang/String; = "DEFAULT_FLAG"

.field static final KEY_ONBOARDING_TYPE:Ljava/lang/String; = "ONBOARDING_TYPE"

.field static final KEY_STEP_HINT:Ljava/lang/String; = "STEP_HINT"

.field static final KEY_SUB_TYPE:Ljava/lang/String; = "PHONE_SUB_TYPE"

.field public static final RESULT_CODE_CLOSE_APP:I = 0x8888

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_SEGMENT:I = 0x5000


# instance fields
.field private mBirthdayFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mFlag:Ljava/lang/String;

.field public mHintResId:I

.field private mManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mMobilePhoneFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

.field public mOnBoardingType:I

.field public mSubType:I

.field private mWeChatSignUpFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 42
    const/16 v0, 0x5001

    iput v0, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mOnBoardingType:I

    return-void
.end method

.method private getBirthdayFragment()Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 90
    .local v0, "manager":Landroid/support/v4/app/ag;
    const-string v1, "birthday_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mBirthdayFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    .line 91
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mBirthdayFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mBirthdayFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mBirthdayFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    iget v2, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mSubType:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;->setType(I)V

    .line 95
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mBirthdayFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    return-object v1
.end method

.method private getMobilePhoneFragment()Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 100
    .local v0, "manager":Landroid/support/v4/app/ag;
    sget-object v1, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mMobilePhoneFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .line 101
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mMobilePhoneFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mMobilePhoneFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mMobilePhoneFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    iget v2, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mSubType:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->setType(I)V

    .line 105
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mMobilePhoneFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    iget v2, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mHintResId:I

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->setHintResId(I)V

    .line 106
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mMobilePhoneFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->setFlag(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mMobilePhoneFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    return-object v1
.end method

.method private getWeChatSignFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 112
    .local v0, "manager":Landroid/support/v4/app/ag;
    sget-object v1, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mWeChatSignUpFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .line 113
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mWeChatSignUpFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mWeChatSignUpFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mWeChatSignUpFragment:Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    return-object v1
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 146
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 147
    return-void
.end method

.method private isBabyBirthdayFragment(Landroid/support/v4/app/ag;)Z
    .locals 2
    .param p1, "manager"    # Landroid/support/v4/app/ag;

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyBirthdayFragment;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private parseOnBoardingType()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ONBOARDING_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mOnBoardingType:I

    .line 56
    const-string v1, "PHONE_SUB_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mSubType:I

    .line 57
    const-string v1, "STEP_HINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mHintResId:I

    .line 58
    const-string v1, "DEFAULT_FLAG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mFlag:Ljava/lang/String;

    .line 60
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private process()V
    .locals 5

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mOnBoardingType:I

    packed-switch v3, :pswitch_data_0

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 136
    .local v1, "manager":Landroid/support/v4/app/ag;
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 137
    .local v2, "transaction":Landroid/support/v4/app/an;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    const v3, 0x7f090158

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 142
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 143
    return-void

    .line 125
    .end local v1    # "manager":Landroid/support/v4/app/ag;
    .end local v2    # "transaction":Landroid/support/v4/app/an;
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getBirthdayFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 126
    goto :goto_0

    .line 128
    :pswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getMobilePhoneFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 129
    goto :goto_0

    .line 131
    :pswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getWeChatSignFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 140
    .restart local v1    # "manager":Landroid/support/v4/app/ag;
    .restart local v2    # "transaction":Landroid/support/v4/app/an;
    :cond_0
    invoke-virtual {v2, v0}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x5001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewListener()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method


# virtual methods
.method public exitDirectly(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->setResult(I)V

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->finish()V

    .line 201
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->overridePendingTransition(II)V

    .line 202
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->setResult(I)V

    goto :goto_0
.end method

.method public getContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public isOnBoardingFlow()Z
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mOnBoardingType:I

    const/16 v1, 0x5001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 237
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 238
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    .line 156
    .local v3, "manager":Landroid/support/v4/app/ag;
    invoke-virtual {v3}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v2

    .line 157
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 160
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v5, v1, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    if-eqz v5, :cond_0

    .line 161
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 168
    .local v0, "entryCount":I
    if-lez v0, :cond_2

    .line 169
    invoke-virtual {v3}, Landroid/support/v4/app/ag;->d()V

    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->isBabyBirthdayFragment(Landroid/support/v4/app/ag;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 172
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/xutils/c;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    const-string v4, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u53fd\u91cc\u5471\u5566"

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->finish()V

    .line 176
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/y;->a()Lcom/jiliguala/niuwa/common/util/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/y;->d()V

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 67
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->parseOnBoardingType()V

    .line 75
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->initView()V

    .line 77
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->process()V

    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->setViewListener()V

    .line 81
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 191
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/q;->a()Lcom/jiliguala/niuwa/common/util/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/q;->b()V

    .line 192
    return-void
.end method

.method public resend()V
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .line 229
    .local v0, "mobilePhoneFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;
    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->reqeuestVerifyCode()V

    goto :goto_0
.end method

.method public switchContent(Landroid/support/v4/app/Fragment;)V
    .locals 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 206
    .local v1, "manager":Landroid/support/v4/app/ag;
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 207
    .local v2, "transaction":Landroid/support/v4/app/an;
    const v3, 0x7f01001f

    const v4, 0x7f010014

    const v5, 0x7f010013

    const v6, 0x7f010020

    .line 208
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 209
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    const v3, 0x7f090158

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 213
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/an;->h()I

    .line 214
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
