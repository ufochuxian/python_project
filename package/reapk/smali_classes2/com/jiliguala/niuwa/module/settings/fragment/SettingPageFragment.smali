.class public Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/a/b/a$a;
.implements Lcom/jiliguala/niuwa/a/b/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;,
        Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;,
        Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$SwitchBabyClickedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x258

.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final HIDE_RED_DOT:I = 0x1001

.field private static final HIDE_SETTING_RED_DOT:I = 0x1003

.field public static final KEY_BABY_AVA:Ljava/lang/String; = "ava"

.field public static final KEY_BABY_BD:Ljava/lang/String; = "bd"

.field public static final KEY_BABY_ID:Ljava/lang/String; = "id"

.field public static final KEY_BABY_NICK:Ljava/lang/String; = "nick"

.field public static final KEY_PIC_CROP_TYPE:Ljava/lang/String; = "key_avatar_type"

.field public static final REQUEST_CODE_SCAN:I = 0x2002

.field public static final REQUEST_CODE_SETTING_COMMAND:I = 0x2001

.field private static final SHOW_RED_DOT:I = 0x1000

.field private static final SHOW_SETTING_RED_DOT:I = 0x1002

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private childListContainer:Landroid/widget/LinearLayout;

.field private clickAgeTv:Landroid/widget/TextView;

.field private clickBaby:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

.field private clickIv:Lcom/makeramen/roundedimageview/RoundedImageView;

.field private clickNameTv:Landroid/widget/TextView;

.field private confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

.field private counter:I

.field private fromAvaClick:Z

.field private lastAgeTv:Landroid/widget/TextView;

.field private lastBabyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private lastIv:Lcom/makeramen/roundedimageview/RoundedImageView;

.field private lastNameTv:Landroid/widget/TextView;

.field private lastTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAcquireCourse:Landroid/widget/ImageView;

.field private mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

.field private mAddBabyIv:Landroid/widget/ImageView;

.field private mAnimationSet:Lcom/nineoldandroids/a/d;

.field private mApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private mBabyTv:Landroid/view/View;

.field private mBindWeChatSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

.field private mBuyedGoodsContainer:Landroid/widget/RelativeLayout;

.field private mCity:Landroid/widget/TextView;

.field private mCurClickId:I

.field private mDesc:Landroid/widget/TextView;

.field private mEshopEntrance:Landroid/view/View;

.field private mFaqContainer:Landroid/widget/RelativeLayout;

.field private mFaqRedDot:Landroid/widget/ImageView;

.field private mForumEntrance:Landroid/view/View;

.field private mGiftContainer:Landroid/widget/RelativeLayout;

.field private mGuaCoinContainer:Landroid/view/View;

.field private mGuaCoinHint:Landroid/widget/TextView;

.field private mGuaCoinRedDot:Landroid/widget/ImageView;

.field private mGuaId:Landroid/widget/TextView;

.field private mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMainActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

.field private mMessageCenter:Landroid/view/View;

.field private mMessageRedDot:Landroid/widget/ImageView;

.field private mNoBabyHolder:Landroid/view/View;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPersonalProfileBg:Landroid/widget/ImageView;

.field private mProfileBgMask:Landroid/widget/FrameLayout;

.field private mRightMarginOfTag:I

.field private mScan:Landroid/widget/ImageView;

.field private mScanResult:Lcom/jiliguala/niuwa/module/settings/ScanResult;

.field private mSocietyViewBg:Landroid/view/View;

.field private mSwitchBabyListener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

.field private mTagContainer:Landroid/widget/LinearLayout;

.field private mUnreadCount:I

.field private mUserAvaIv:Landroid/widget/ImageView;

.field private mUsersInfoTv:Landroid/widget/TextView;

.field private mVipContainer:Landroid/widget/RelativeLayout;

.field private mVipDesc:Landroid/widget/TextView;

.field private mVipValidity:Landroid/widget/TextView;

.field private mYtransAnimator:Lcom/nineoldandroids/a/l;

.field private nameingBabyFloatingTv:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/Dialog;

.field private progressDlg:Lcom/jiliguala/niuwa/common/a/g;

.field private settingPage:Landroid/widget/RelativeLayout;

.field private swBtnReverse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->TAG:Ljava/lang/String;

    .line 136
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 148
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->fromAvaClick:Z

    .line 160
    iput v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUnreadCount:I

    .line 161
    iput v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->counter:I

    .line 162
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastTags:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showLoginDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->counter:I

    return v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->counter:I

    return p1
.end method

.method static synthetic access$108(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->counter:I

    return v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->copyGuaIdToClipBoard()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->gotoMessageCenter()V

    return-void
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showSafeMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->gotoEshop()V

    return-void
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->goToBuyedGoodsPage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->goFaq()V

    return-void
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->goRenewal()V

    return-void
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->wechatCheckedChange(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;)Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickBaby:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/makeramen/roundedimageview/RoundedImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/makeramen/roundedimageview/RoundedImageView;)Lcom/makeramen/roundedimageview/RoundedImageView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Lcom/makeramen/roundedimageview/RoundedImageView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickNameTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickNameTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickAgeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickAgeTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSwitchBabyListener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    return-void
.end method

.method static synthetic access$2600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserCity()V

    return-void
.end method

.method static synthetic access$2700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserGuaId()V

    return-void
.end method

.method static synthetic access$2800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserAvatar()V

    return-void
.end method

.method static synthetic access$2900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->gotoAddBaby()V

    return-void
.end method

.method static synthetic access$3000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    return-void
.end method

.method static synthetic access$3100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    return-void
.end method

.method static synthetic access$3200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoinReddot()V

    return-void
.end method

.method static synthetic access$3300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoin()V

    return-void
.end method

.method static synthetic access$3400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateVip()V

    return-void
.end method

.method static synthetic access$3500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->checkIfNeedShowWechatSubscribeIcon()V

    return-void
.end method

.method static synthetic access$3600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->onBindWeChatFail()V

    return-void
.end method

.method static synthetic access$3700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    return p1
.end method

.method static synthetic access$4100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$4200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/makeramen/roundedimageview/RoundedImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/makeramen/roundedimageview/RoundedImageView;)Lcom/makeramen/roundedimageview/RoundedImageView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Lcom/makeramen/roundedimageview/RoundedImageView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastNameTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastNameTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastAgeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastAgeTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->goScan()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->gotoSettingActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mForumEntrance:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->gotoForum(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->gotoGuaCoin()V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 1188
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$13;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$13;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$14;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$14;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1189
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 1187
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1243
    return-void
.end method

.method private addPicEventObserver()V
    .locals 4

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/g;

    .line 386
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$12;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$12;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$18;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$18;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 387
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 407
    return-void
.end method

.method private bindWechatNow(I)V
    .locals 4
    .param p1, "loginType"    # I

    .prologue
    .line 758
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 759
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 760
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 761
    const-string v2, "source"

    const-string v3, "bind_weichat"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 763
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 764
    return-void
.end method

.method private checkIfNeedShowWechatSubscribeIcon()V
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGiftContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGiftContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1136
    :cond_0
    return-void

    .line 1134
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private copyGuaIdToClipBoard()V
    .locals 5

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 460
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "text":Ljava/lang/String;
    const-string v3, "text"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/x;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 462
    .local v1, "myClip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 463
    const v3, 0x7f0f008c

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private doBgAnim(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->b()V

    .line 1605
    :cond_0
    if-eqz p1, :cond_1

    .line 1606
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/a;->g(Landroid/view/View;)Lcom/nineoldandroids/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    .line 1608
    :cond_1
    return-void
.end method

.method private executeTransaction(Landroid/view/View;II)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x2

    .line 877
    const-string v1, "translationY"

    new-array v2, v6, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, p3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/l;

    move-result-object v1

    const-wide/16 v2, 0x258

    .line 878
    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    .line 879
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    invoke-virtual {v1, v6}, Lcom/nineoldandroids/a/l;->b(I)V

    .line 880
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 881
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 882
    .local v0, "mDecelerateInterpolator":Landroid/view/animation/AccelerateDecelerateInterpolator;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    invoke-virtual {v1, v0}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 883
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$8;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$8;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 905
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 906
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 283
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .line 284
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;-><init>()V

    .line 287
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    :cond_0
    return-object v0
.end method

.method private goFaq()V
    .locals 4

    .prologue
    .line 805
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 806
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    const-string v3, "feedback"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Setting Action"

    .line 808
    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 809
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 810
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 811
    return-void
.end method

.method private goRenewal()V
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goMemberRenewal(Landroid/content/Context;)V

    .line 802
    return-void
.end method

.method private goScan()V
    .locals 4

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->makeIntentForTvLoginScan(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 769
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 770
    const/16 v1, 0x2002

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 771
    return-void
.end method

.method private goToBuyedGoodsPage()V
    .locals 3

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 521
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private gotoAddBaby()V
    .locals 4

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->makeIntentForBabyAdd(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1295
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1296
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 1297
    return-void
.end method

.method private gotoEshop()V
    .locals 4

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "-user-"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 533
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 535
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private gotoForum(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 538
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    .line 544
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    const v1, 0x7f0f013b

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 546
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 547
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 555
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showMyForum(Landroid/app/Activity;I)V

    .line 552
    const/4 v1, -0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    goto :goto_0
.end method

.method private gotoGuaCoin()V
    .locals 6

    .prologue
    const v5, 0x7f0f0152

    .line 410
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->markGuaCoinClicked()V

    .line 411
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v3, :cond_1

    .line 413
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinRedDot:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinRedDot:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isHideRedBot(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    .line 419
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v3

    if-nez v3, :cond_3

    .line 420
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    const v3, 0x7f0f00ec

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 422
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 423
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 456
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 426
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 431
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->p()Z

    move-result v3

    if-nez v3, :cond_4

    .line 432
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f016c

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->makeIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 434
    .local v1, "i":Landroid/content/Intent;
    const/16 v3, 0x8fd

    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 437
    .end local v1    # "i":Landroid/content/Intent;
    :cond_4
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v3

    if-nez v3, :cond_6

    .line 439
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 441
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "ONBOARDING"

    invoke-static {v3, v5, v4}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForGuaCoinInfoCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 450
    .restart local v1    # "i":Landroid/content/Intent;
    :goto_1
    const/16 v3, 0x2329

    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 446
    .end local v1    # "i":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "GUA_COIN_ENTER"

    invoke-static {v3, v5, v4}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForGuaCoinInfoCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 453
    .end local v1    # "i":Landroid/content/Intent;
    :cond_6
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showGuaCoin()V

    goto :goto_0
.end method

.method private gotoMessageCenter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 469
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showMessageCenter(Landroid/app/Activity;)V

    .line 471
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 472
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 474
    check-cast v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isHideRedBot(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    .line 477
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    const-string v1, "FIRST_START"

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    :cond_1
    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    iput-boolean v3, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldRecvNotifShowRedDot:Z

    .line 488
    :cond_2
    return-void
.end method

.method private gotoSettingActivity()V
    .locals 4

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SETTING_TYPE"

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    const/16 v1, 0x2001

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 511
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 513
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initUIComponent(Landroid/view/View;)V
    .locals 10
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const v9, 0x7f090560

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 558
    const v3, 0x7f0904ff

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSocietyViewBg:Landroid/view/View;

    .line 559
    const v3, 0x7f090044

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAddBabyIv:Landroid/widget/ImageView;

    .line 560
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAddBabyIv:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    const v3, 0x7f09038e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mNoBabyHolder:Landroid/view/View;

    .line 562
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mNoBabyHolder:Landroid/view/View;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    const v3, 0x7f090141

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBabyTv:Landroid/view/View;

    .line 565
    const v3, 0x7f090591

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    const v3, 0x7f0904c7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mForumEntrance:Landroid/view/View;

    .line 567
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mForumEntrance:Landroid/view/View;

    new-instance v8, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$20;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$20;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v7

    invoke-virtual {v3, v7}, Lrx/i/b;->a(Lrx/m;)V

    .line 573
    const v3, 0x7f090246

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinContainer:Landroid/view/View;

    .line 574
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinContainer:Landroid/view/View;

    new-instance v8, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$21;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$21;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v7

    invoke-virtual {v3, v7}, Lrx/i/b;->a(Lrx/m;)V

    .line 580
    const v3, 0x7f090014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->fromAvaClick:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 585
    const v3, 0x7f0904c2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    .line 586
    const v3, 0x7f0903fe

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    .line 587
    const v3, 0x7f0905d2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    .line 588
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    const v3, 0x7f0905dc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUsersInfoTv:Landroid/widget/TextView;

    .line 591
    const v3, 0x7f0903ca

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    .line 593
    const v3, 0x7f0905d7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCity:Landroid/widget/TextView;

    .line 594
    const v3, 0x7f0905d9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaId:Landroid/widget/TextView;

    .line 595
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaId:Landroid/widget/TextView;

    new-instance v8, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$22;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$22;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v7

    invoke-virtual {v3, v7}, Lrx/i/b;->a(Lrx/m;)V

    .line 604
    const v3, 0x7f09027e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mTagContainer:Landroid/widget/LinearLayout;

    .line 606
    const v3, 0x7f090333

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageCenter:Landroid/view/View;

    .line 607
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageCenter:Landroid/view/View;

    new-instance v8, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$23;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$23;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v7

    invoke-virtual {v3, v7}, Lrx/i/b;->a(Lrx/m;)V

    .line 614
    const v3, 0x7f0904c9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->settingPage:Landroid/widget/RelativeLayout;

    .line 615
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->settingPage:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$24;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$24;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v7

    invoke-virtual {v3, v7}, Lrx/i/b;->a(Lrx/m;)V

    .line 622
    const v3, 0x7f090334

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    .line 625
    const v3, 0x7f090249

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinRedDot:Landroid/widget/ImageView;

    .line 626
    const v3, 0x7f090248

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinHint:Landroid/widget/TextView;

    .line 628
    const v3, 0x7f09012d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    .line 629
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 631
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->v()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "ava":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserAvatar()V

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    .line 637
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserTags()V

    .line 640
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserCity()V

    .line 641
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserGuaId()V

    .line 642
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoinReddot()V

    .line 643
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoin()V

    .line 644
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 645
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    const v3, 0x7f09037b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    .line 648
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    const v3, 0x7f0904c5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mEshopEntrance:Landroid/view/View;

    .line 651
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mEshopEntrance:Landroid/view/View;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$2;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$2;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v5

    invoke-virtual {v3, v5}, Lrx/i/b;->a(Lrx/m;)V

    .line 658
    const v3, 0x7f0904c4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBuyedGoodsContainer:Landroid/widget/RelativeLayout;

    .line 660
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBuyedGoodsContainer:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$3;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$3;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v5

    invoke-virtual {v3, v5}, Lrx/i/b;->a(Lrx/m;)V

    .line 667
    const v3, 0x7f0901f6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    .line 670
    const v3, 0x7f0901f4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqContainer:Landroid/widget/RelativeLayout;

    .line 671
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqContainer:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$4;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$4;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v5

    invoke-virtual {v3, v5}, Lrx/i/b;->a(Lrx/m;)V

    .line 678
    const v3, 0x7f090600

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipContainer:Landroid/widget/RelativeLayout;

    .line 679
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v3

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipContainer:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$5;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$5;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v5

    invoke-virtual {v3, v5}, Lrx/i/b;->a(Lrx/m;)V

    .line 685
    const v3, 0x7f090601

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    .line 686
    const v3, 0x7f090602

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    .line 687
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateVip()V

    .line 689
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v5, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 691
    const v3, 0x7f090238

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGiftContainer:Landroid/widget/RelativeLayout;

    .line 693
    const v3, 0x7f090010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourse:Landroid/widget/ImageView;

    .line 695
    const v3, 0x7f090058

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 696
    .local v0, "animBg":Landroid/widget/ImageView;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->doBgAnim(Landroid/view/View;)V

    .line 697
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourse:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    const v3, 0x7f09047e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScan:Landroid/widget/ImageView;

    .line 700
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScan:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    const v3, 0x7f0900a6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 703
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v6

    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 704
    const v3, 0x7f0900a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBindWeChatSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 705
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->ac()Z

    move-result v2

    .line 706
    .local v2, "wechatBinded":Z
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBindWeChatSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v3, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 707
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBindWeChatSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v4, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$6;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$6;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v3, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 714
    return-void

    .end local v0    # "animBg":Landroid/widget/ImageView;
    .end local v1    # "ava":Ljava/lang/String;
    .end local v2    # "wechatBinded":Z
    :cond_2
    move v3, v5

    .line 580
    goto/16 :goto_0
.end method

.method private isHideRedBot(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinRedDot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    .line 295
    :cond_0
    return-void
.end method

.method private loadUserAvatar()V
    .locals 4

    .prologue
    .line 1417
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageMogr2/thumbnail/200x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1419
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1421
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->e()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1422
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1425
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadUserInfoBg()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f080318

    const/16 v2, 0x8

    .line 1428
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1429
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->z()Ljava/lang/String;

    move-result-object v0

    .line 1430
    .local v0, "bgUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1431
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1432
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?imageMogr2/thumbnail/600x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    .line 1434
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/e/a;->o()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$17;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$17;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1432
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 1455
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1469
    .end local v0    # "bgUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1457
    .restart local v0    # "bgUrl":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1458
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1461
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1465
    .end local v0    # "bgUrl":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1466
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1467
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private markGuaCoinClicked()V
    .locals 2

    .prologue
    .line 841
    const-string v0, "PREFS_KEY_GUA_COIN_CLICKED_FLAG"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 842
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoinReddot()V

    .line 843
    return-void
.end method

.method private needShowAcquireCouseDialog()V
    .locals 4

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v2, :cond_0

    .line 1140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .line 1141
    .local v1, "mainActivity":Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->isCurrentOnMyPage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1142
    const-string v2, "PREFS_KEY_HAS_WECHAT_SUBSCRIBE_DIALOG_SHOW"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 1143
    .local v0, "hasAcquireCourse":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    if-eqz v2, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1148
    .end local v0    # "hasAcquireCourse":Z
    .end local v1    # "mainActivity":Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    :cond_0
    return-void
.end method

.method private onBindWeChatFail()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1246
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->swBtnReverse:Z

    .line 1249
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBindWeChatSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBindWeChatSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v2}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 1251
    :cond_0
    return-void

    .line 1249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestUsers()V
    .locals 6

    .prologue
    .line 1057
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1060
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 1061
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->g(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 1062
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1063
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    const-wide/16 v4, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1064
    invoke-virtual {v2, v4, v5, v3}, Lrx/e;->q(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v2

    .line 1065
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1066
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1059
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 1095
    .end local v0    # "uid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendReq()V
    .locals 2

    .prologue
    .line 1542
    :try_start_0
    new-instance v0, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;-><init>()V

    .line 1543
    .local v0, "req":Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/ae;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;->scene:I

    .line 1544
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/ae;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;->templateID:Ljava/lang/String;

    .line 1546
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    .end local v0    # "req":Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;
    :goto_0
    return-void

    .line 1547
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setAcquireCourseImg()V
    .locals 3

    .prologue
    .line 774
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;->img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourse:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 778
    :cond_0
    return-void
.end method

.method private showGuaCoin()V
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 300
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 301
    return-void
.end method

.method private showLoginDialog(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1051
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1052
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1054
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showMessageCenter(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1503
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1504
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1505
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1506
    return-void
.end method

.method private showMyForum(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "indexToShow"    # I

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 306
    const-string v1, "KEY_ME_MYSELF"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v1, "KEY_INDEX_TO_SHOW"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 309
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 310
    return-void
.end method

.method private showNamingBabyFloatingDlg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 856
    const-string v1, "NAME_BABY_FLOAT_HIDE"

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 857
    .local v0, "hide":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 858
    if-nez v0, :cond_1

    .line 859
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    invoke-direct {p0, v1, v3, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->executeTransaction(Landroid/view/View;II)V

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->stopAnim()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1027
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f1000b4

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    .line 1028
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1029
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    const v3, 0x7f0b0167

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1031
    const/4 v1, -0x2

    .line 1032
    .local v1, "width":I
    const/4 v0, -0x2

    .line 1033
    .local v0, "height":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1034
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1035
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1038
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :goto_0
    return-void

    .line 1039
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showSafeMode()V
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/c;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/c;

    move-result-object v0

    .line 492
    .local v0, "safeModeFragment":Lcom/jiliguala/niuwa/common/widget/c;
    new-instance v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$19;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$19;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/c;->a(Lcom/jiliguala/niuwa/common/widget/c$a;)V

    .line 503
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/c;->b(Landroid/support/v4/app/ag;)V

    .line 504
    return-void
.end method

.method private stopAnim()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->b()V

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    :cond_1
    return-void
.end method

.method private updateChildListUI()V
    .locals 22

    .prologue
    .line 910
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->M()Ljava/util/ArrayList;

    move-result-object v13

    .line 911
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 912
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAddBabyIv:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mNoBabyHolder:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBabyTv:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1024
    :cond_1
    return-void

    .line 917
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showNamingBabyFloatingDlg()V

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAddBabyIv:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mNoBabyHolder:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBabyTv:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastBabyList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastBabyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 928
    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastBabyList:Ljava/util/ArrayList;

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 931
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v14, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 933
    .local v14, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v19, 0x41a00000    # 20.0f

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v2, v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 935
    if-eqz v13, :cond_1

    .line 936
    const/4 v12, 0x0

    .line 937
    .local v12, "index":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .line 938
    .local v4, "item":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0073

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 939
    .local v18, "view":Landroid/view/View;
    const v2, 0x7f090086

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 940
    .local v5, "iv":Lcom/makeramen/roundedimageview/RoundedImageView;
    const v2, 0x7f090569

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 941
    .local v9, "container":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 942
    const v2, 0x7f090378

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 943
    .local v6, "nameTv":Landroid/widget/TextView;
    const v2, 0x7f090046

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 944
    .local v7, "ageTv":Landroid/widget/TextView;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->L()I

    move-result v10

    .line 945
    .local v10, "curIndex":I
    if-ne v10, v12, :cond_4

    .line 946
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 947
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastNameTv:Landroid/widget/TextView;

    .line 948
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastAgeTv:Landroid/widget/TextView;

    .line 949
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setSelected(Z)V

    .line 950
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 951
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 953
    :cond_4
    invoke-virtual {v5}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Lcom/makeramen/roundedimageview/RoundedImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 957
    :cond_5
    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v15, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    .line 958
    .local v15, "url":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->f()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    new-instance v20, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$9;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/makeramen/roundedimageview/RoundedImageView;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v15, v5, v3, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 986
    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 988
    .end local v15    # "url":Ljava/lang/String;
    :cond_6
    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v16

    .line 989
    .local v16, "time":J
    new-instance v11, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 990
    .local v11, "date":Ljava/util/Date;
    const/4 v8, 0x0

    .line 991
    .local v8, "age":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 992
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 994
    :cond_7
    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 998
    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1020
    add-int/lit8 v12, v12, 0x1

    .line 1021
    goto/16 :goto_0

    .line 957
    .end local v8    # "age":Ljava/lang/String;
    .end local v11    # "date":Ljava/util/Date;
    .end local v16    # "time":J
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?imageMogr2/thumbnail/200x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_1
.end method

.method private updateGuaCoin()V
    .locals 6

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->k()I

    move-result v0

    .line 820
    .local v0, "coinNum":I
    if-lez v0, :cond_1

    .line 821
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinHint:Landroid/widget/TextView;

    const v2, 0x7f0f00eb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->k()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    .end local v0    # "coinNum":I
    :cond_0
    :goto_0
    return-void

    .line 823
    .restart local v0    # "coinNum":I
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinHint:Landroid/widget/TextView;

    const v2, 0x7f0f00ff

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateGuaCoinReddot()V
    .locals 0

    .prologue
    .line 835
    return-void
.end method

.method private updateRegisterTv()V
    .locals 3

    .prologue
    .line 1285
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, "nick":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUsersInfoTv:Landroid/widget/TextView;

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1291
    :goto_0
    return-void

    .line 1289
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUsersInfoTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUserCity()V
    .locals 2

    .prologue
    .line 846
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCity:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->u()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCity:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    return-void

    .line 846
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUserGuaId()V
    .locals 6

    .prologue
    .line 852
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaId:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00ed

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->j()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    return-void
.end method

.method private updateUserTags()V
    .locals 5

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    invoke-static {}, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->getInstance()Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->E()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastTags:Ljava/util/ArrayList;

    .line 1512
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mTagContainer:Landroid/widget/LinearLayout;

    .line 1510
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->updateUserTags(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 1515
    :cond_0
    return-void
.end method

.method private updateVip()V
    .locals 3

    .prologue
    .line 781
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 782
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "status":Ljava/lang/String;
    const-string v1, "valid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    const v2, 0x7f0f012e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 785
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :goto_1
    return-void

    .line 781
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 786
    .restart local v0    # "status":Ljava/lang/String;
    :cond_1
    const-string v1, "expired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 787
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    const v2, 0x7f0f012a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 788
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 789
    :cond_2
    const-string v1, "empty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    const v2, 0x7f0f0129

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 791
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 793
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private wechatCheckedChange(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 755
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->swBtnReverse:Z

    if-nez v3, :cond_1

    .line 721
    if-eqz p1, :cond_2

    .line 722
    const/16 v3, 0x1001

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->bindWechatNow(I)V

    .line 754
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->swBtnReverse:Z

    goto :goto_0

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    .line 724
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/d;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/d;

    move-result-object v2

    .line 726
    .local v2, "standardExitFragment":Lcom/jiliguala/niuwa/common/widget/d;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 727
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "ALERT_TEXT"

    const-string v4, "\u786e\u5b9a\u8981\u53d6\u6d88\u7ed1\u5b9a\u5fae\u4fe1\uff1f"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v3, "CONFIRM_TEXT"

    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v3, "CANCLE_TEXT"

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/d;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 731
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 732
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 733
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 734
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 739
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_3
    :goto_2
    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$7;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$7;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/d;->a(Lcom/jiliguala/niuwa/common/widget/d$a;)V

    .line 750
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/d;->b(Landroid/support/v4/app/ag;)V

    goto :goto_1

    .line 737
    :cond_4
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/common/widget/d;->setArguments(Landroid/os/Bundle;)V

    goto :goto_2
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->b()V

    .line 1615
    :cond_0
    return-void
.end method

.method public changeRedBot()V
    .locals 2

    .prologue
    .line 1518
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v0, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    .line 1523
    :cond_0
    return-void
.end method

.method public changeSettingBot()V
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1527
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v0, :cond_0

    .line 1529
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    .line 1532
    :cond_0
    return-void
.end method

.method public getAcquireCourseDialog()Lcom/jiliguala/niuwa/a/b/h;
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    if-nez v0, :cond_0

    .line 1578
    new-instance v0, Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    .line 1579
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->b(Z)V

    .line 1580
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/h;->a(Lcom/jiliguala/niuwa/a/b/h$a;)V

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->b(Ljava/lang/String;)V

    .line 1583
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    const-string v1, "\u4e00\u952e\u9886\u53d6"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->e(Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    return-object v0
.end method

.method public getConfirmAcquireWechatCourseDialog()Lcom/jiliguala/niuwa/a/b/a;
    .locals 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    if-nez v0, :cond_0

    .line 1591
    new-instance v0, Lcom/jiliguala/niuwa/a/b/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    .line 1592
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    const v1, 0x7f08030b

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/a;->b(I)V

    .line 1593
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/a;->b(Z)V

    .line 1594
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/a;->a(Lcom/jiliguala/niuwa/a/b/a$a;)V

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    const-string v1, "\u8fd8\u6ca1\u6709\u6536\u5230\u5fae\u4fe1\u670d\u52a1\u901a\u77e5?\n\u53ef\u80fd\u4f1a\u6709\u90e8\u5206\u5ef6\u8fdf\uff0c\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85\u54df"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/a;->b(Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    return-object v0
.end method

.method public obRequireCourseBtnClick()V
    .locals 1

    .prologue
    .line 1554
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getConfirmAcquireWechatCourseDialog()Lcom/jiliguala/niuwa/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/a;->b()V

    .line 1555
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->sendReq()V

    .line 1556
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 337
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 339
    sparse-switch p1, :sswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 341
    :sswitch_0
    const v1, 0x9331

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    const-string v1, "ARGUMENT_IS_FROM_LOGOUT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 358
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 363
    :sswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScanResult:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/module/settings/ScanResult;->onResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    :sswitch_data_0
    .sparse-switch
        0x8fd -> :sswitch_1
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_2
        0x2329 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBtnClick()V
    .locals 1

    .prologue
    .line 1536
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getAcquireCourseDialog()Lcom/jiliguala/niuwa/a/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/h;->b()V

    .line 1537
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->sendReq()V

    .line 1538
    return-void
.end method

.method public onChildGained()V
    .locals 0

    .prologue
    .line 1307
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    .line 1308
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1309
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1560
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1562
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    if-eqz v1, :cond_0

    .line 1563
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Treasure Click"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 1564
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/ae;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 1565
    .local v0, "hasAuthorized":Z
    if-eqz v0, :cond_1

    .line 1566
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getConfirmAcquireWechatCourseDialog()Lcom/jiliguala/niuwa/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/a/b/a;->a()V

    goto :goto_0

    .line 1568
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1560
    :pswitch_data_0
    .packed-switch 0x7f090010
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 372
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->addPicEventObserver()V

    .line 373
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->addEventObserver()V

    .line 375
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/settings/ScanResult;-><init>(Landroid/support/v4/app/FragmentActivity;Lrx/i/b;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScanResult:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    .line 376
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSwitchBabyListener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    .line 378
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    .line 381
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mRightMarginOfTag:I

    .line 382
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
    .line 315
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 316
    const v1, 0x7f0b017c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->initUIComponent(Landroid/view/View;)V

    .line 318
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->cancelAnim()V

    .line 1179
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 1184
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 1152
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onHiddenChanged(Z)V

    .line 1154
    if-nez p1, :cond_0

    .line 1155
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->setAcquireCourseImg()V

    .line 1156
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->checkIfNeedShowWechatSubscribeIcon()V

    .line 1157
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->requestUsers()V

    .line 1159
    :cond_0
    return-void
.end method

.method public onLoginFailed()V
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1304
    :cond_0
    return-void
.end method

.method public onLoginSucceed()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1255
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserAvatar()V

    .line 1256
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    .line 1257
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    .line 1258
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1259
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserTags()V

    .line 1260
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserCity()V

    .line 1261
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserGuaId()V

    .line 1262
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateVip()V

    .line 1263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1267
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    sparse-switch v0, :sswitch_data_0

    .line 1282
    :goto_0
    return-void

    .line 1271
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->gotoAddBaby()V

    .line 1272
    iput v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    goto :goto_0

    .line 1276
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showMyForum(Landroid/app/Activity;I)V

    .line 1279
    :cond_1
    iput v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    goto :goto_0

    .line 1267
    :sswitch_data_0
    .sparse-switch
        0x7f090044 -> :sswitch_0
        0x7f09038e -> :sswitch_0
        0x7f0904c7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLogining()V
    .locals 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    .line 1341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 1344
    :cond_1
    return-void
.end method

.method public onLogout()V
    .locals 3

    .prologue
    const v2, 0x7f08031a

    .line 1312
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    .line 1314
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1315
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserTags()V

    .line 1316
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserCity()V

    .line 1317
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserGuaId()V

    .line 1318
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    .line 1319
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateVip()V

    .line 1320
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1322
    return-void
.end method

.method public onNormalPicUpdate(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1356
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1357
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 1414
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1100
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 1101
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->setAcquireCourseImg()V

    .line 1103
    const-string v1, "Other page"

    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->a(Ljava/lang/String;)V

    .line 1105
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->requestUsers()V

    .line 1107
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->aa()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1118
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1122
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSocietyViewBg:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1123
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSocietyViewBg:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1126
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->checkIfNeedShowWechatSubscribeIcon()V

    .line 1128
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->needShowAcquireCouseDialog()V

    .line 1130
    return-void

    .line 1110
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1112
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1113
    check-cast v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    move-object v2, v0

    check-cast v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-boolean v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldRecvMsgShowRedDot:Z

    if-nez v2, :cond_4

    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    iget-boolean v2, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldRecvNotifShowRedDot:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinRedDot:Landroid/widget/ImageView;

    .line 1114
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 1113
    :goto_1
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    goto :goto_0

    .line 1114
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1163
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onStart()V

    .line 1165
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showNamingBabyFloatingDlg()V

    .line 1166
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1170
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onStop()V

    .line 1171
    const-string v0, "Other page"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->b(Ljava/lang/String;)V

    .line 1173
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->stopAnim()V

    .line 1174
    return-void
.end method

.method public onSwitchChild()V
    .locals 4

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$15;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$15;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1333
    :cond_0
    return-void
.end method

.method public onUpdateChildAvatar()V
    .locals 0

    .prologue
    .line 1336
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1337
    return-void
.end method

.method public onUpdateUserInfo()V
    .locals 2

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserAvatar()V

    .line 1348
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    .line 1349
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    .line 1350
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1351
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserTags()V

    .line 1352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 323
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 324
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMainActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .line 326
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMainActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldRecvMsgShowRedDot:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->changeRedBot()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMainActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldFeedBackShowRedDot:Z

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->changeSettingBot()V

    .line 333
    :cond_1
    return-void
.end method

.method public showFeedBackRedDot(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 1482
    if-eqz p1, :cond_1

    .line 1483
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    const/16 v2, 0x1002

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->sendEmptyMessageDelayed(IJ)Z

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1489
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1491
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v1, :cond_0

    .line 1492
    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isHideRedBot(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    goto :goto_0
.end method

.method public showRedDot(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 1472
    if-eqz p1, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    const/16 v1, 0x1000

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->sendEmptyMessageDelayed(IJ)Z

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
