.class public Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;
.super Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment",
        "<",
        "Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;",
        "Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/onboading/view/IBabyNickView;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private mActionNext:Landroid/widget/Button;

.field private mAge:I

.field private mBabyNickNameIcon:Landroid/widget/ImageView;

.field private mBackIcon:Landroid/widget/ImageView;

.field private mBirthday:Ljava/lang/String;

.field private mClear:Landroid/widget/ImageView;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mEditText:Landroid/widget/EditText;

.field private mRootView:Landroid/view/View;

.field private mScrollview:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mClear:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mActionNext:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mScrollview:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private gotoMobilePhone()V
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .line 216
    .local v0, "mMobilePhoneFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .end local v0    # "mMobilePhoneFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;-><init>()V

    .line 219
    .restart local v0    # "mMobilePhoneFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    .line 220
    .local v1, "onBoardingActivity":Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
    iget v2, v1, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mSubType:I

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->setType(I)V

    .line 221
    const-string v2, "ONBOARDING"

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->setFlag(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->switchContent(Landroid/support/v4/app/Fragment;)V

    .line 225
    :cond_1
    return-void
.end method

.method private gotoWechatSignUpPage()V
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .line 205
    .local v0, "weChatSignUpFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;
    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;

    .end local v0    # "weChatSignUpFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;-><init>()V

    .line 208
    .restart local v0    # "weChatSignUpFragment":Lcom/jiliguala/niuwa/module/onboading/fragment/WeChatSignUpFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->switchContent(Landroid/support/v4/app/Fragment;)V

    .line 211
    :cond_1
    return-void
.end method

.method private handleArguments()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SOURCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mAge:I

    .line 79
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mActionNext:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mBackIcon:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mClear:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mEditText:Landroid/widget/EditText;

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mBabyNickNameIcon:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mActionNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09048b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mScrollview:Landroid/widget/ScrollView;

    .line 169
    return-void
.end method

.method private setIcon()V
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mAge:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mBabyNickNameIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/BabyInfoUtil;->showBabyIcon(ILandroid/widget/ImageView;)V

    .line 94
    return-void
.end method

.method private setViewListener()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mClear:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment$2;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;-><init>()V

    return-object v0
.end method

.method public generateGuestFailed()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mActionNext:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 231
    return-void
.end method

.method public generateGuestSucceed()V
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Add Baby"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mActionNext:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 200
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->gotoWechatSignUpPage()V

    .line 201
    return-void
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getUi()Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;
    .locals 0

    .prologue
    .line 65
    return-object p0
.end method

.method public goHome()V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Add Baby"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mActionNext:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 246
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->exitDirectly(Z)V

    .line 249
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 175
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "nick":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 178
    const-string v1, "\u5b9d\u5b9d\u6635\u79f0\u4e0d\u80fd\u8d85\u8fc720\u4e2a\u5b57\u7b26"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mBirthday:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/jiliguala/niuwa/module/onboading/presenter/BabyNickNamePresenter;->generateUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mActionNext:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 187
    .end local v0    # "nick":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 191
    :sswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x7f09002f -> :sswitch_0
        0x7f090092 -> :sswitch_1
        0x7f090146 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->handleArguments()V

    .line 73
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
    const/4 v2, 0x0

    .line 83
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Baby Nickname View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mRootView:Landroid/view/View;

    .line 85
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->initView()V

    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->setViewListener()V

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mActionNext:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 88
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->setIcon()V

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onFailed()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mActionNext:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/b;->a(Landroid/view/View;Z)V

    .line 237
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->a(Landroid/widget/EditText;)V

    .line 100
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onStop()V

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 106
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/BabyNickNameFragment;->mBirthday:Ljava/lang/String;

    .line 56
    return-void
.end method
