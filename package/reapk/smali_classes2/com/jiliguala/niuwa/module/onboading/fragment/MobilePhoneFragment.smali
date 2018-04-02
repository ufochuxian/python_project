.class public Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;
.super Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment",
        "<",
        "Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;",
        "Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;"
    }
.end annotation


# static fields
.field public static final FLAG_IS_BABY_EMPTY:Ljava/lang/String; = "is_baby_empty"

.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final MOBILE_PHONE_SIGN:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mChecker:Lcom/jiliguala/niuwa/common/helper/a/c;

.field private mFlag:Ljava/lang/String;

.field private mGetVerifyCode:Landroid/widget/TextView;

.field private mHintResId:I

.field private mNotify:Landroid/widget/TextView;

.field private mNotifyDialog:Landroid/widget/RelativeLayout;

.field private mPhoneInput:Landroid/widget/EditText;

.field private mPhoneStr:Ljava/lang/String;

.field private mProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

.field private mRoot:Landroid/view/View;

.field private mSkip:Landroid/widget/TextView;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 52
    const-class v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->login()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->performNextAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->performSkipAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotifyDialog:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;

    .prologue
    .line 47
    iget v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    return v0
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$2;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V

    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 126
    return-void
.end method

.method private initSubText()V
    .locals 6

    .prologue
    .line 130
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 131
    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v4, 0x5004

    if-ne v3, v4, :cond_1

    .line 132
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const-string v4, "\u73cd\u8d35\u7684\u5b66\u4e60\u8bb0\u5f55\u4e0d\u4f1a\u4e22\u5931\u54e6"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v4, 0x5005

    if-ne v3, v4, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mHintResId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mHintResId:I

    if-eqz v3, :cond_0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    .line 137
    .local v2, "onBoardingActivity":Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mHintResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v2    # "onBoardingActivity":Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const-string v4, "\u8865\u5145\u624b\u673a\u53f7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v4, 0x5007

    if-ne v3, v4, :cond_3

    .line 143
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0134

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 144
    :cond_3
    iget v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v4, 0x5009

    if-ne v3, v4, :cond_4

    .line 145
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const-string v4, "\u8865\u5145\u624b\u673a\u53f7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "FORUM_POST_APPLOUD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 152
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const-string v4, "\u6ce8\u518c\u624b\u673a\u540e\u624d\u53ef\u4ee5\u8fdb\u884c\u70b9\u8d5e"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 153
    :cond_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "SEND_REPLY_FORUM_POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 154
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0157

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 155
    :cond_7
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "JOIN_CREATE_CLASS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 156
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const-string v4, "\u6ce8\u518c\u624b\u673a\u540e\u624d\u53ef\u4ee5\u52a0\u5165/\u521b\u5efa\u73ed\u7ea7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 157
    :cond_8
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "REGISTER_ADD_PERSONL_INFO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 158
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0155

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 159
    :cond_9
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "ONBOARDING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 160
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 161
    :cond_a
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "GUA_COIN_ENTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 162
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 163
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 164
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const-string v4, "\u6ce8\u518c\u624b\u673a\u540e\u624d\u80fd\u4f7f\u7528\u5471\u5e01\u54e6\uff01"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 166
    :cond_b
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const-string v4, "\u8865\u5145\u624b\u673a\u53f7\u7801\u540e\u624d\u80fd\u4f7f\u7528\u5471\u5e01\u54e6\uff01"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 168
    .end local v0    # "ac":Lcom/jiliguala/niuwa/logic/login/a;
    :cond_c
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "PURCHASE_GET_CHARGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 169
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0183

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 170
    :cond_d
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "CDKEY EXCHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 171
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0191

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 172
    :cond_e
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "PURCHASE_ONE_V_ONE_COURSE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 173
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0182

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 174
    :cond_f
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    const-string v4, "CLOCKING_RECORD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0072

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private initText()V
    .locals 3

    .prologue
    .line 239
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 240
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v2, 0x5003

    if-ne v1, v2, :cond_1

    .line 241
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u6ce8\u518c\u8d26\u53f7"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v2, 0x5009

    if-ne v1, v2, :cond_2

    .line 243
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u9a8c\u8bc1\u7801\u767b\u5f55"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :cond_2
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v2, 0x5004

    if-ne v1, v2, :cond_4

    .line 245
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u6ce8\u518c\u624b\u673a\u53f7\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u8865\u5145\u624b\u673a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 250
    :cond_4
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v2, 0x5006

    if-ne v1, v2, :cond_6

    .line 251
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u6ce8\u518c\u624b\u673a\u53f7\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    :cond_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u8865\u5145\u624b\u673a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_6
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v2, 0x5007

    if-ne v1, v2, :cond_7

    .line 257
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u66f4\u6362\u624b\u673a\u53f7\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_7
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v2, 0x5008

    if-ne v1, v2, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 260
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u6ce8\u518c\u624b\u673a\u53f7\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :cond_8
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u8865\u5145\u624b\u673a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isOnBoardingFlow(Lcom/jiliguala/niuwa/logic/login/a;Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;)Z
    .locals 2
    .param p1, "ac"    # Lcom/jiliguala/niuwa/logic/login/a;
    .param p2, "onBoardingActivity"    # Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    .prologue
    .line 469
    iget v0, p2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;->mOnBoardingType:I

    const/16 v1, 0x5001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private login()V
    .locals 3

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DEFAULT_FLAG"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 388
    return-void
.end method

.method private performNextAction()V
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/c;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/helper/a/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneStr:Ljava/lang/String;

    .line 303
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 305
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v2, 0x5009

    if-eq v1, v2, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->reqeuestVerifyCode()V

    .line 312
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->reqeuestVerifyCodeWithNoAuth()V

    goto :goto_0
.end method

.method private performSkipAction()V
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getCallBack()Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;->exitDirectly(Z)V

    .line 347
    :cond_0
    return-void
.end method

.method private report(ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "canSkip"    # Z
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "isonBoarding"    # Z

    .prologue
    .line 289
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$5;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;ZLjava/lang/String;Z)V

    .line 298
    .local v0, "map":Ljava/util/HashMap;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Mobile Sign Up View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 299
    return-void
.end method

.method private reportAmplitude()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    if-nez v2, :cond_0

    .line 286
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 272
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    .line 273
    .local v1, "onBoardingActivity":Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;
    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->isOnBoardingFlow(Lcom/jiliguala/niuwa/logic/login/a;Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const-string v2, "sign up"

    invoke-direct {p0, v3, v2, v4}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->report(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 277
    :cond_1
    const-string v2, "add"

    invoke-direct {p0, v3, v2, v4}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->report(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    const-string v2, "sign up"

    invoke-direct {p0, v4, v2, v3}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->report(ZLjava/lang/String;Z)V

    goto :goto_0

    .line 283
    :cond_3
    const-string v2, "add"

    invoke-direct {p0, v4, v2, v3}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->report(ZLjava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;-><init>()V

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getUi()Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/onboading/view/IMobileView;
    .locals 0

    .prologue
    .line 85
    return-object p0
.end method

.method public gotoValidateCode()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotify:Landroid/widget/TextView;

    const-string v1, "\u53d1\u9001\u6210\u529f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$6;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mGetVerifyCode:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/b;->b(Landroid/view/View;Z)V

    .line 375
    :cond_0
    return-void
.end method

.method public isLoginType()Z
    .locals 2

    .prologue
    .line 504
    const/16 v0, 0x5009

    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

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
    .line 500
    const/16 v0, 0x5003

    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowSkip()V
    .locals 6

    .prologue
    const v5, 0x7f0802d1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/onboading/OnBoardingActivity;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    if-eqz v1, :cond_2

    .line 411
    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v2, 0x5003

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v2, 0x5009

    if-ne v1, v2, :cond_3

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 417
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    iget v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 460
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    .end local v0    # "ac":Lcom/jiliguala/niuwa/logic/login/a;
    :cond_2
    :goto_1
    return-void

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    const v2, 0x7f0802e0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 420
    .restart local v0    # "ac":Lcom/jiliguala/niuwa/logic/login/a;
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 424
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 430
    :pswitch_2
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v1

    if-nez v1, :cond_4

    .line 431
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 434
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 439
    :pswitch_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v1

    if-nez v1, :cond_5

    .line 440
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 443
    :cond_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 448
    :pswitch_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 452
    :pswitch_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 456
    :pswitch_6
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x5003
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 394
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    if-nez p2, :cond_0

    .line 398
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 399
    const-string v2, "is_baby_empty"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 400
    .local v1, "isBabyEmpty":Z
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 402
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->startActivity(Landroid/content/Intent;)V

    .line 403
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 484
    :pswitch_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v1, 0x5003

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v1, 0x5005

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    const/16 v1, 0x5008

    if-ne v0, v1, :cond_2

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 491
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->e()Z

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x7f090096
        :pswitch_0
    .end packed-switch
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
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00bb

    invoke-virtual {v0, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090584

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mTitle:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090541

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSubTitle:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090502

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0903e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneInput:Landroid/widget/EditText;

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0902ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mProgressBar:Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f09039e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotifyDialog:Landroid/widget/RelativeLayout;

    .line 202
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f09039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotify:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotifyDialog:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mGetVerifyCode:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mGetVerifyCode:Landroid/widget/TextView;

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$3;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->b(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 217
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->isShowSkip()V

    .line 219
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mSkip:Landroid/widget/TextView;

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment$4;-><init>(Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;)V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mGetVerifyCode:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/jiliguala/niuwa/common/util/xutils/b;->b(Landroid/view/View;Z)V

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v0, Lcom/jiliguala/niuwa/common/helper/a/c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mGetVerifyCode:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x6b

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/helper/a/c;-><init>(Landroid/view/View;[I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/c;

    .line 232
    new-instance v0, Lcom/jiliguala/niuwa/common/helper/c/j;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/c;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/helper/c/j;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/helper/c/j;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public onRequestValidateError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mGetVerifyCode:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/b;->b(Landroid/view/View;Z)V

    .line 380
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotify:Landroid/widget/TextView;

    const-string v1, "\u53d1\u9001\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotifyDialog:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 382
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneInput:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->a(Landroid/widget/EditText;)V

    .line 183
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onStop()V

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneInput:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 189
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
    .line 90
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/module/onboading/base/OnBoardBaseMvpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->addEventObserver()V

    .line 92
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->reportAmplitude()V

    .line 93
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->initText()V

    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->initSubText()V

    .line 95
    return-void
.end method

.method public reqeuestVerifyCode()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotifyDialog:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotifyDialog:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotify:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotify:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u53d1\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->askForVerifyCodeRequest(Ljava/lang/String;)V

    .line 324
    :cond_2
    return-void
.end method

.method public reqeuestVerifyCodeWithNoAuth()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotifyDialog:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotifyDialog:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotify:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mNotify:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u53d1\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mPhoneStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/MobilePhonePresenter;->askForVerifyCodeRequestWithNoAuth(Ljava/lang/String;)V

    .line 336
    :cond_2
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFlag"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mFlag:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setHintResId(I)V
    .locals 0
    .param p1, "hintResId"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mHintResId:I

    .line 72
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/jiliguala/niuwa/module/onboading/fragment/MobilePhoneFragment;->mType:I

    .line 76
    return-void
.end method
