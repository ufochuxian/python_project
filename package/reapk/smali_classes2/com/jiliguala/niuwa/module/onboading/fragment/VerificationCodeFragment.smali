.class public Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;
.super Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment",
        "<",
        "Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;",
        "Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final NO_PHONEFULLFILL_TYPE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArtificalVerifyCode:Landroid/widget/TextView;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mCodeStr:Ljava/lang/String;

.field private mContent:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mNotifyDilaog:Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

.field private mPhoneStr:Ljava/lang/String;

.field private mRoot:Landroid/view/View;

.field private mTopBack:Landroid/view/View;

.field private mType:I

.field private mVerifyCodeResendDialogFragment:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 49
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->requestVoiceSms()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->requestVoiceSmsWithNoAuth()V

    return-void
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mCodeStr:Ljava/lang/String;

    return-object p1
.end method

.method private enterPsdPage()V
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    .line 365
    .local v0, "psdCreationFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;
    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;

    .end local v0    # "psdCreationFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;-><init>()V

    .line 368
    .restart local v0    # "psdCreationFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mCodeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->setCode(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mPhoneStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/PsdCreationFragment;->setPhoneNumber(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->switchContent(Landroid/support/v4/app/Fragment;)V

    .line 373
    :cond_1
    return-void
.end method

.method private getNotifyDialog()Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mNotifyDilaog:Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mNotifyDilaog:Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mNotifyDilaog:Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    return-object v0
.end method

.method private gotoPsdCreation()V
    .locals 3

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->reportMobileAmplitude()V

    .line 329
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 346
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->enterPsdPage()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 336
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 337
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->enterPsdPage()V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->exitDirectly(Z)V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x5003
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hideSoftInput()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method private initNextButtonText()V
    .locals 2

    .prologue
    .line 296
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mType:I

    sparse-switch v1, :sswitch_data_0

    .line 315
    :goto_0
    :sswitch_0
    return-void

    .line 304
    :sswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 310
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    goto :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5003 -> :sswitch_1
        0x5004 -> :sswitch_1
        0x5005 -> :sswitch_1
        0x5006 -> :sswitch_1
    .end sparse-switch
.end method

.method private isOnBoarding()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    .line 246
    .local v0, "onBoardingActivity":Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->isOnBoardingFlow()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    .end local v0    # "onBoardingActivity":Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
    :goto_0
    return-object v1

    .line 247
    :catch_0
    move-exception v1

    .line 250
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private reportAmplitude()V
    .locals 2

    .prologue
    .line 213
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 225
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->reportEventSignUp()V

    .line 228
    :goto_0
    return-void

    .line 217
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 218
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->reportEventSignUp()V

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->reportSignAdd()V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x5003
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private reportEventSignUp()V
    .locals 3

    .prologue
    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "onboarding"

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->isOnBoarding()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "Type"

    const-string v2, "Sign Up"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Mobile Verify View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    return-void
.end method

.method private reportMobileAmplitude()V
    .locals 3

    .prologue
    .line 354
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 355
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Mobile Replace"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Mobile Add"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportSignAdd()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    const-string v2, "add"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Mobile Verify View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    return-void
.end method

.method private requestVoiceSms()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mPhoneStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->requestVoiceSms(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private requestVoiceSmsWithNoAuth()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mPhoneStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->requestVoiceSmsWithNoAuth(Ljava/lang/String;)V

    .line 203
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;-><init>()V

    return-object v0
.end method

.method public getActivityRef()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    .line 186
    .local v0, "signInActivity":Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getProgressDialog()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    .line 188
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
    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getUi()Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;
    .locals 0

    .prologue
    .line 86
    return-object p0
.end method

.method public isLoginType()Z
    .locals 2

    .prologue
    .line 81
    const/16 v0, 0x5009

    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegistionType()Z
    .locals 2

    .prologue
    .line 77
    const/16 v0, 0x5003

    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 388
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
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 92
    const v1, 0x7f0b00ca

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mRoot:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f0905e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jkb/vcedittext/VerificationCodeEditText;

    .line 96
    .local v0, "verrifyCodeEt":Lcom/jkb/vcedittext/VerificationCodeEditText;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f09057a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mContent:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f090273

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mIcon:Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f09058f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mTopBack:Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mTopBack:Landroid/view/View;

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;)V

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 112
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mArtificalVerifyCode:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mArtificalVerifyCode:Landroid/widget/TextView;

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$2;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;)V

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 128
    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$3;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;)V

    invoke-virtual {v0, v1}, Lcom/jkb/vcedittext/VerificationCodeEditText;->setOnVerificationCodeChangedListener(Lcom/jkb/vcedittext/c$a;)V

    .line 147
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onDetach()V

    .line 378
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->unRegisterReceiver()V

    .line 381
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 319
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onResume()V

    .line 320
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onStop()V

    .line 325
    return-void
.end method

.method public onVerificationCodeCorrect()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->gotoPsdCreation()V

    .line 270
    return-void
.end method

.method public onVerificationCodeError()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 290
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->reportAmplitude()V

    .line 291
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->initNextButtonText()V

    .line 292
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mPhoneStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mVerifyCodeResendDialogFragment:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    .line 293
    return-void
.end method

.method public requestVerifyCode()V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mPhoneStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mCodeStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->requestVerifyCodeValidate(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public requestVoiceSmsSuccess()V
    .locals 2

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getNotifyDialog()Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->show(Landroid/support/v4/app/ag;)V

    .line 280
    return-void
.end method

.method public requestVoiceSmsWithNoAuthSuccess()V
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getNotifyDialog()Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SimpleNotifyDialgFragment;->show(Landroid/support/v4/app/ag;)V

    .line 285
    return-void
.end method

.method public setPhoneStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneStr"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mPhoneStr:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mType:I

    .line 69
    return-void
.end method

.method public signInByVerifyCode()V
    .locals 5

    .prologue
    .line 152
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mPhoneStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mCodeStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getProgressDialogFragment()Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 160
    :cond_2
    const-string v0, "mobilecode"

    .line 163
    .local v0, "loginType":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a/a;->a()Lcom/jiliguala/niuwa/logic/login/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mPhoneStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->mCodeStr:Ljava/lang/String;

    new-instance v4, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$4;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment$4;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/jiliguala/niuwa/logic/login/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/login/a/b;)V

    .line 179
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/VerificationCodeFragment;->hideSoftInput()V

    goto :goto_0
.end method

.method public updateCodeEditText(Ljava/lang/String;)V
    .locals 0
    .param p1, "codeStr"    # Ljava/lang/String;

    .prologue
    .line 259
    return-void
.end method
