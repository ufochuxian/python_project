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

.field private mScrollview:Landroid/view/View;

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

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->swBtnReverse:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->wechatCheckedChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;)Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickBaby:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/makeramen/roundedimageview/RoundedImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/makeramen/roundedimageview/RoundedImageView;)Lcom/makeramen/roundedimageview/RoundedImageView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Lcom/makeramen/roundedimageview/RoundedImageView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickNameTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickNameTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickAgeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->clickAgeTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSwitchBabyListener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    return-void
.end method

.method static synthetic access$2700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserCity()V

    return-void
.end method

.method static synthetic access$2800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserGuaId()V

    return-void
.end method

.method static synthetic access$2900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserAvatar()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->gotoAddBaby()V

    return-void
.end method

.method static synthetic access$3000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    return-void
.end method

.method static synthetic access$3200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    return-void
.end method

.method static synthetic access$3300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoinReddot()V

    return-void
.end method

.method static synthetic access$3400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoin()V

    return-void
.end method

.method static synthetic access$3500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateVip()V

    return-void
.end method

.method static synthetic access$3600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->checkIfNeedShowWechatSubscribeIcon()V

    return-void
.end method

.method static synthetic access$3700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->onBindWeChatFail()V

    return-void
.end method

.method static synthetic access$3800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

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

.method static synthetic access$4100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$4300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Lcom/makeramen/roundedimageview/RoundedImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/makeramen/roundedimageview/RoundedImageView;)Lcom/makeramen/roundedimageview/RoundedImageView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Lcom/makeramen/roundedimageview/RoundedImageView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastNameTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastNameTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastAgeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
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
    .line 1196
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 1197
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$13;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$13;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$14;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$14;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1198
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 1196
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1252
    return-void
.end method

.method private addPicEventObserver()V
    .locals 4

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/g;

    .line 390
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$12;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$12;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$18;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$18;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 391
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 389
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 411
    return-void
.end method

.method private bindWechatNow(I)V
    .locals 4
    .param p1, "loginType"    # I

    .prologue
    .line 767
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 769
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 770
    const-string v2, "source"

    const-string v3, "bind_weichat"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 773
    return-void
.end method

.method private checkIfNeedShowWechatSubscribeIcon()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGiftContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGiftContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v0

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1145
    :cond_0
    return-void

    .line 1143
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private copyGuaIdToClipBoard()V
    .locals 5

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 464
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "text":Ljava/lang/String;
    const-string v3, "text"

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/x;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 466
    .local v1, "myClip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 467
    const v3, 0x7f0f008c

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method private doBgAnim(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->b()V

    .line 1615
    :cond_0
    if-eqz p1, :cond_1

    .line 1616
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/a;->g(Landroid/view/View;)Lcom/nineoldandroids/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    .line 1618
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

    .line 886
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

    .line 887
    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/a/l;->a_(J)Lcom/nineoldandroids/a/l;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    .line 888
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    invoke-virtual {v1, v6}, Lcom/nineoldandroids/a/l;->b(I)V

    .line 889
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/a/l;->a(I)V

    .line 890
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 891
    .local v0, "mDecelerateInterpolator":Landroid/view/animation/AccelerateDecelerateInterpolator;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    invoke-virtual {v1, v0}, Lcom/nineoldandroids/a/l;->a(Landroid/view/animation/Interpolator;)V

    .line 892
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$8;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$8;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/a/l;->a(Lcom/nineoldandroids/a/a$a;)V

    .line 914
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    invoke-virtual {v1}, Lcom/nineoldandroids/a/l;->a()V

    .line 915
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 284
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .line 285
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;-><init>()V

    .line 288
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;
    :cond_0
    return-object v0
.end method

.method private goFaq()V
    .locals 4

    .prologue
    .line 814
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 815
    .local v1, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    const-string v3, "feedback"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Setting Action"

    .line 817
    invoke-virtual {v2, v3, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 818
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 819
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 820
    return-void
.end method

.method private goRenewal()V
    .locals 1

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goMemberRenewal(Landroid/content/Context;)V

    .line 811
    return-void
.end method

.method private goScan()V
    .locals 4

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->makeIntentForTvLoginScan(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 778
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 779
    const/16 v1, 0x2002

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 780
    return-void
.end method

.method private goToBuyedGoodsPage()V
    .locals 3

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 525
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private gotoAddBaby()V
    .locals 4

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/register/BabyInfoActivity;->makeIntentForBabyAdd(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1301
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1302
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 1303
    return-void
.end method

.method private gotoEshop()V
    .locals 4

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "-user-"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jiliguala/niuwa/module/order/OrderActivity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 537
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 539
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private gotoForum(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 542
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    .line 548
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    const v1, 0x7f0f013b

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 550
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 551
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 559
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showMyForum(Landroid/app/Activity;I)V

    .line 556
    const/4 v1, -0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    goto :goto_0
.end method

.method private gotoGuaCoin()V
    .locals 6

    .prologue
    const v5, 0x7f0f0152

    .line 414
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->markGuaCoinClicked()V

    .line 415
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v3, :cond_1

    .line 417
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinRedDot:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinRedDot:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isHideRedBot(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    .line 423
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v3

    if-nez v3, :cond_3

    .line 424
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 425
    const v3, 0x7f0f00ec

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 426
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 427
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 460
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 435
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->p()Z

    move-result v3

    if-nez v3, :cond_4

    .line 436
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f016c

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->makeIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 438
    .local v1, "i":Landroid/content/Intent;
    const/16 v3, 0x8fd

    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 441
    .end local v1    # "i":Landroid/content/Intent;
    :cond_4
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v3

    if-nez v3, :cond_6

    .line 443
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 445
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "ONBOARDING"

    invoke-static {v3, v5, v4}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForGuaCoinInfoCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 454
    .restart local v1    # "i":Landroid/content/Intent;
    :goto_1
    const/16 v3, 0x2329

    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 450
    .end local v1    # "i":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "GUA_COIN_ENTER"

    invoke-static {v3, v5, v4}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForGuaCoinInfoCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 457
    .end local v1    # "i":Landroid/content/Intent;
    :cond_6
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showGuaCoin()V

    goto :goto_0
.end method

.method private gotoMessageCenter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 471
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showMessageCenter(Landroid/app/Activity;)V

    .line 475
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 476
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 478
    check-cast v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isHideRedBot(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    .line 481
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    const-string v1, "FIRST_START"

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    :cond_1
    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    iput-boolean v3, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldRecvNotifShowRedDot:Z

    .line 492
    :cond_2
    return-void
.end method

.method private gotoSettingActivity()V
    .locals 4

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SETTING_TYPE"

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    const/16 v1, 0x2001

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 515
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 517
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initUIComponent(Landroid/view/View;)V
    .locals 9
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const v8, 0x7f09056a

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 562
    const v2, 0x7f090509

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSocietyViewBg:Landroid/view/View;

    .line 563
    const v2, 0x7f090044

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAddBabyIv:Landroid/widget/ImageView;

    .line 564
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAddBabyIv:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    const v2, 0x7f090395

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mNoBabyHolder:Landroid/view/View;

    .line 566
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mNoBabyHolder:Landroid/view/View;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    const v2, 0x7f090141

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBabyTv:Landroid/view/View;

    .line 569
    const v2, 0x7f09059b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    const v2, 0x7f0904d1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mForumEntrance:Landroid/view/View;

    .line 571
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mForumEntrance:Landroid/view/View;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$20;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$20;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v6

    invoke-virtual {v2, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 577
    const v2, 0x7f090247

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinContainer:Landroid/view/View;

    .line 578
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinContainer:Landroid/view/View;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$21;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$21;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v6

    invoke-virtual {v2, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 584
    const v2, 0x7f090014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->fromAvaClick:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    const v2, 0x7f0904cc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    .line 590
    const v2, 0x7f090405

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    .line 591
    const v2, 0x7f0905dc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    .line 592
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    const v2, 0x7f0905e6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUsersInfoTv:Landroid/widget/TextView;

    .line 595
    const v2, 0x7f0903d1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    .line 597
    const v2, 0x7f0905e1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCity:Landroid/widget/TextView;

    .line 598
    const v2, 0x7f0905e3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaId:Landroid/widget/TextView;

    .line 599
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaId:Landroid/widget/TextView;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$22;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$22;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v6

    invoke-virtual {v2, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 608
    const v2, 0x7f090283

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mTagContainer:Landroid/widget/LinearLayout;

    .line 610
    const v2, 0x7f09033a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageCenter:Landroid/view/View;

    .line 611
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageCenter:Landroid/view/View;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$23;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$23;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v6

    invoke-virtual {v2, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 618
    const v2, 0x7f0904d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->settingPage:Landroid/widget/RelativeLayout;

    .line 619
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->settingPage:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$24;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$24;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v6

    invoke-virtual {v2, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 626
    const v2, 0x7f09033b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    .line 629
    const v2, 0x7f09024a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinRedDot:Landroid/widget/ImageView;

    .line 630
    const v2, 0x7f090249

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinHint:Landroid/widget/TextView;

    .line 632
    const v2, 0x7f09012d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    .line 633
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 635
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->v()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "ava":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserAvatar()V

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    .line 641
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserTags()V

    .line 644
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserCity()V

    .line 645
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserGuaId()V

    .line 646
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoinReddot()V

    .line 647
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoin()V

    .line 648
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 649
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    const v2, 0x7f090382

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    .line 652
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    const v2, 0x7f0904cf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mEshopEntrance:Landroid/view/View;

    .line 655
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mEshopEntrance:Landroid/view/View;

    new-instance v6, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$2;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$2;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 662
    const v2, 0x7f0904ce

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBuyedGoodsContainer:Landroid/widget/RelativeLayout;

    .line 664
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBuyedGoodsContainer:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$3;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$3;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 671
    const v2, 0x7f0901f6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    .line 674
    const v2, 0x7f0901f4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqContainer:Landroid/widget/RelativeLayout;

    .line 675
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqContainer:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$4;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$4;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 682
    const v2, 0x7f09060a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipContainer:Landroid/widget/RelativeLayout;

    .line 683
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipContainer:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$5;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$5;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 689
    const v2, 0x7f09060b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    .line 690
    const v2, 0x7f09060c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    .line 691
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateVip()V

    .line 693
    const v2, 0x7f090238

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGiftContainer:Landroid/widget/RelativeLayout;

    .line 695
    const v2, 0x7f090010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourse:Landroid/widget/ImageView;

    .line 697
    const v2, 0x7f090058

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 698
    .local v0, "animBg":Landroid/widget/ImageView;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->doBgAnim(Landroid/view/View;)V

    .line 699
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourse:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    const v2, 0x7f090487

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScan:Landroid/widget/ImageView;

    .line 702
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScan:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    const v2, 0x7f0900a6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 705
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v4

    if-nez v4, :cond_1

    move v3, v5

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 706
    const v2, 0x7f0900a7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBindWeChatSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 707
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateBindWeChat()V

    .line 708
    const v2, 0x7f090494

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScrollview:Landroid/view/View;

    .line 709
    return-void

    .end local v0    # "animBg":Landroid/widget/ImageView;
    .end local v1    # "ava":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 584
    goto/16 :goto_0
.end method

.method private isHideRedBot(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 293
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

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    .line 296
    :cond_0
    return-void
.end method

.method private loadUserAvatar()V
    .locals 4

    .prologue
    .line 1424
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1425
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

    .line 1426
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

    .line 1428
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->e()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1429
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1432
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadUserInfoBg()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f080322

    const/16 v2, 0x8

    .line 1435
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1436
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->z()Ljava/lang/String;

    move-result-object v0

    .line 1437
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

    .line 1438
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1439
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

    .line 1441
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/e/a;->o()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$17;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$17;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1439
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 1462
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1476
    .end local v0    # "bgUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1464
    .restart local v0    # "bgUrl":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1465
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1468
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1472
    .end local v0    # "bgUrl":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1473
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mProfileBgMask:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1474
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mPersonalProfileBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private markGuaCoinClicked()V
    .locals 2

    .prologue
    .line 850
    const-string v0, "PREFS_KEY_GUA_COIN_CLICKED_FLAG"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 851
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateGuaCoinReddot()V

    .line 852
    return-void
.end method

.method private needShowAcquireCouseDialog()V
    .locals 4

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v2, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .line 1150
    .local v1, "mainActivity":Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->isCurrentOnMyPage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1151
    const-string v2, "PREFS_KEY_HAS_WECHAT_SUBSCRIBE_DIALOG_SHOW"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 1152
    .local v0, "hasAcquireCourse":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    if-eqz v2, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1157
    .end local v0    # "hasAcquireCourse":Z
    .end local v1    # "mainActivity":Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    :cond_0
    return-void
.end method

.method private onBindWeChatFail()V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateBindWeChat()V

    .line 1256
    return-void
.end method

.method private requestUsers()V
    .locals 6

    .prologue
    .line 1066
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1069
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 1070
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/logic/network/d;->g(Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 1071
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1072
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    const-wide/16 v4, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1073
    invoke-virtual {v2, v4, v5, v3}, Lrx/e;->q(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v2

    .line 1074
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$11;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    .line 1075
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1068
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 1104
    .end local v0    # "uid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendReq()V
    .locals 3

    .prologue
    .line 1549
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v1, :cond_0

    .line 1550
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 1552
    :cond_0
    new-instance v0, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;-><init>()V

    .line 1553
    .local v0, "req":Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/ae;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;->scene:I

    .line 1554
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/ae;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;->templateID:Ljava/lang/String;

    .line 1556
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    .end local v0    # "req":Lcom/tencent/mm/opensdk/modelbiz/SubscribeMessage$Req;
    :goto_0
    return-void

    .line 1557
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setAcquireCourseImg()V
    .locals 3

    .prologue
    .line 783
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

    .line 784
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

    const v2, 0x7f0800e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourse:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 787
    :cond_0
    return-void
.end method

.method private showGuaCoin()V
    .locals 4

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 302
    return-void
.end method

.method private showLoginDialog(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1061
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1063
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showMessageCenter(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1510
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/message/MessageCenterActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1511
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1512
    const v1, 0x7f01001f

    const v2, 0x7f010014

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1513
    return-void
.end method

.method private showMyForum(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "indexToShow"    # I

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/jiliguala/niuwa/module/forum/personalforum/PersonalForumInfoActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const-string v1, "KEY_ME_MYSELF"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    const-string v1, "KEY_INDEX_TO_SHOW"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 310
    const v1, 0x7f01001f

    const v2, 0x7f010014

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 311
    return-void
.end method

.method private showNamingBabyFloatingDlg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 865
    const-string v1, "NAME_BABY_FLOAT_HIDE"

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 866
    .local v0, "hide":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 867
    if-nez v0, :cond_1

    .line 868
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 869
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    invoke-direct {p0, v1, v3, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->executeTransaction(Landroid/view/View;II)V

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->stopAnim()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1036
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f1000b4

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    .line 1037
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1038
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    const v3, 0x7f0b016c

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1040
    const/4 v1, -0x2

    .line 1041
    .local v1, "width":I
    const/4 v0, -0x2

    .line 1042
    .local v0, "height":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1043
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1044
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1047
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showSafeMode()V
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/c;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/c;

    move-result-object v0

    .line 496
    .local v0, "safeModeFragment":Lcom/jiliguala/niuwa/common/widget/c;
    new-instance v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$19;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$19;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/c;->a(Lcom/jiliguala/niuwa/common/widget/c$a;)V

    .line 507
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/c;->b(Landroid/support/v4/app/ag;)V

    .line 508
    return-void
.end method

.method private stopAnim()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mYtransAnimator:Lcom/nineoldandroids/a/l;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/l;->b()V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->nameingBabyFloatingTv:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 883
    :cond_1
    return-void
.end method

.method private updateBindWeChat()V
    .locals 3

    .prologue
    .line 713
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->ac()Z

    move-result v0

    .line 714
    .local v0, "wechatBinded":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->swBtnReverse:Z

    .line 715
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBindWeChatSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 716
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBindWeChatSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$6;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$6;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 724
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->swBtnReverse:Z

    .line 725
    return-void
.end method

.method private updateChildListUI()V
    .locals 22

    .prologue
    .line 919
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->M()Ljava/util/ArrayList;

    move-result-object v13

    .line 920
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 921
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAddBabyIv:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mNoBabyHolder:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBabyTv:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1033
    :cond_1
    return-void

    .line 926
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showNamingBabyFloatingDlg()V

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAddBabyIv:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mNoBabyHolder:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mBabyTv:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastBabyList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastBabyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 937
    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastBabyList:Ljava/util/ArrayList;

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 940
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v14, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 942
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

    .line 944
    if-eqz v13, :cond_1

    .line 945
    const/4 v12, 0x0

    .line 946
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

    .line 947
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

    .line 948
    .local v18, "view":Landroid/view/View;
    const v2, 0x7f090086

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 949
    .local v5, "iv":Lcom/makeramen/roundedimageview/RoundedImageView;
    const v2, 0x7f090573

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 950
    .local v9, "container":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 951
    const v2, 0x7f09037f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 952
    .local v6, "nameTv":Landroid/widget/TextView;
    const v2, 0x7f090046

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 953
    .local v7, "ageTv":Landroid/widget/TextView;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->L()I

    move-result v10

    .line 954
    .local v10, "curIndex":I
    if-ne v10, v12, :cond_4

    .line 955
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 956
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastNameTv:Landroid/widget/TextView;

    .line 957
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastAgeTv:Landroid/widget/TextView;

    .line 958
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setSelected(Z)V

    .line 959
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 960
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 962
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

    .line 966
    :cond_5
    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v15, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    .line 967
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

    .line 995
    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->ava:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTag(Ljava/lang/Object;)V

    .line 997
    .end local v15    # "url":Ljava/lang/String;
    :cond_6
    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->bd:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v16

    .line 998
    .local v16, "time":J
    new-instance v11, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 999
    .local v11, "date":Ljava/util/Date;
    const/4 v8, 0x0

    .line 1000
    .local v8, "age":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 1001
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 1003
    :cond_7
    iget-object v2, v4, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;->nick:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->childListContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1007
    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$10;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$BabyInfoData;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    add-int/lit8 v12, v12, 0x1

    .line 1030
    goto/16 :goto_0

    .line 966
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
    .line 827
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->k()I

    move-result v0

    .line 829
    .local v0, "coinNum":I
    if-lez v0, :cond_1

    .line 830
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

    .line 835
    .end local v0    # "coinNum":I
    :cond_0
    :goto_0
    return-void

    .line 832
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
    .line 844
    return-void
.end method

.method private updateRegisterTv()V
    .locals 3

    .prologue
    .line 1291
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, "nick":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUsersInfoTv:Landroid/widget/TextView;

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1297
    :goto_0
    return-void

    .line 1295
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUsersInfoTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUserCity()V
    .locals 2

    .prologue
    .line 855
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCity:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->u()Ljava/lang/String;

    move-result-object v0

    .line 855
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCity:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    return-void

    .line 855
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUserGuaId()V
    .locals 6

    .prologue
    .line 861
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

    .line 862
    return-void
.end method

.method private updateUserTags()V
    .locals 5

    .prologue
    .line 1516
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    invoke-static {}, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->getInstance()Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->E()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->lastTags:Ljava/util/ArrayList;

    .line 1519
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mTagContainer:Landroid/widget/LinearLayout;

    .line 1517
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->updateUserTags(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 1522
    :cond_0
    return-void
.end method

.method private updateVip()V
    .locals 3

    .prologue
    .line 790
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 791
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "status":Ljava/lang/String;
    const-string v1, "valid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    const v2, 0x7f0f012e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 794
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    :goto_1
    return-void

    .line 790
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 795
    .restart local v0    # "status":Ljava/lang/String;
    :cond_1
    const-string v1, "expired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    const v2, 0x7f0f012a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 797
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 798
    :cond_2
    const-string v1, "empty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 799
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    const v2, 0x7f0f0129

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 800
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 802
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipDesc:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mVipValidity:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private wechatCheckedChange(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 764
    :goto_0
    return-void

    .line 732
    :cond_0
    if-eqz p1, :cond_1

    .line 733
    const/16 v3, 0x1001

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->bindWechatNow(I)V

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    .line 735
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/d;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/d;

    move-result-object v2

    .line 737
    .local v2, "standardExitFragment":Lcom/jiliguala/niuwa/common/widget/d;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 738
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "ALERT_TEXT"

    const-string v4, "\u786e\u5b9a\u8981\u53d6\u6d88\u7ed1\u5b9a\u5fae\u4fe1\uff1f"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v3, "CONFIRM_TEXT"

    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v3, "CANCLE_TEXT"

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/d;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 742
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 743
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 745
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 750
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_2
    :goto_1
    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$7;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$7;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/d;->a(Lcom/jiliguala/niuwa/common/widget/d$a;)V

    .line 761
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/widget/d;->b(Landroid/support/v4/app/ag;)V

    goto :goto_0

    .line 748
    :cond_3
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/common/widget/d;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->b()V

    .line 1625
    :cond_0
    return-void
.end method

.method public changeRedBot()V
    .locals 2

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v0, :cond_0

    .line 1527
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    .line 1530
    :cond_0
    return-void
.end method

.method public changeSettingBot()V
    .locals 2

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1534
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1535
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    .line 1539
    :cond_0
    return-void
.end method

.method public getAcquireCourseDialog()Lcom/jiliguala/niuwa/a/b/h;
    .locals 2

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    if-nez v0, :cond_0

    .line 1588
    new-instance v0, Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    .line 1589
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->b(Z)V

    .line 1590
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/h;->a(Lcom/jiliguala/niuwa/a/b/h$a;)V

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->b(Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    const-string v1, "\u4e00\u952e\u9886\u53d6"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->e(Ljava/lang/String;)V

    .line 1594
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mAcquireCourseDialog:Lcom/jiliguala/niuwa/a/b/h;

    return-object v0
.end method

.method public getConfirmAcquireWechatCourseDialog()Lcom/jiliguala/niuwa/a/b/a;
    .locals 2

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    if-nez v0, :cond_0

    .line 1601
    new-instance v0, Lcom/jiliguala/niuwa/a/b/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    .line 1602
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    const v1, 0x7f080315

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/a;->b(I)V

    .line 1603
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/a;->b(Z)V

    .line 1604
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/a;->a(Lcom/jiliguala/niuwa/a/b/a$a;)V

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    const-string v1, "\u8fd8\u6ca1\u6709\u6536\u5230\u5fae\u4fe1\u670d\u52a1\u901a\u77e5?\n\u53ef\u80fd\u4f1a\u6709\u90e8\u5206\u5ef6\u8fdf\uff0c\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85\u54df"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/a;->b(Ljava/lang/String;)V

    .line 1607
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->confirmAcquireWechatCourseDialog:Lcom/jiliguala/niuwa/a/b/a;

    return-object v0
.end method

.method public obRequireCourseBtnClick()V
    .locals 1

    .prologue
    .line 1564
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getConfirmAcquireWechatCourseDialog()Lcom/jiliguala/niuwa/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/a;->b()V

    .line 1565
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->sendReq()V

    .line 1566
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 340
    sparse-switch p1, :sswitch_data_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 342
    :sswitch_0
    const v1, 0x9331

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 348
    const-string v1, "ARGUMENT_IS_FROM_LOGOUT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 351
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 354
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScrollview:Landroid/view/View;

    invoke-virtual {v1, v4, v4}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    .line 362
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mGuaCoinContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 367
    :sswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScanResult:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/module/settings/ScanResult;->onResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 340
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
    .line 1543
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getAcquireCourseDialog()Lcom/jiliguala/niuwa/a/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/h;->b()V

    .line 1544
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->sendReq()V

    .line 1545
    return-void
.end method

.method public onChildGained()V
    .locals 0

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    .line 1314
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1315
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1570
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1572
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    if-eqz v1, :cond_0

    .line 1573
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Treasure Click"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 1574
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v1

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/ae;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 1575
    .local v0, "hasAuthorized":Z
    if-eqz v0, :cond_1

    .line 1576
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getConfirmAcquireWechatCourseDialog()Lcom/jiliguala/niuwa/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/a/b/a;->a()V

    goto :goto_0

    .line 1578
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/common/util/ae;->a:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1570
    :pswitch_data_0
    .packed-switch 0x7f090010
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 374
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 376
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->addPicEventObserver()V

    .line 377
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->addEventObserver()V

    .line 379
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/ScanResult;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/settings/ScanResult;-><init>(Landroid/support/v4/app/FragmentActivity;Lrx/i/b;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mScanResult:Lcom/jiliguala/niuwa/module/settings/ScanResult;

    .line 380
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSwitchBabyListener:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$b;

    .line 382
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    .line 385
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mRightMarginOfTag:I

    .line 386
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
    .line 316
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 317
    const v1, 0x7f0b0181

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->initUIComponent(Landroid/view/View;)V

    .line 319
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->cancelAnim()V

    .line 1188
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 1193
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 1161
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onHiddenChanged(Z)V

    .line 1163
    if-nez p1, :cond_0

    .line 1164
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->setAcquireCourseImg()V

    .line 1165
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->checkIfNeedShowWechatSubscribeIcon()V

    .line 1166
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->requestUsers()V

    .line 1168
    :cond_0
    return-void
.end method

.method public onLoginFailed()V
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1310
    :cond_0
    return-void
.end method

.method public onLoginSucceed()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1260
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserAvatar()V

    .line 1261
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    .line 1262
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    .line 1263
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1264
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserTags()V

    .line 1265
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserCity()V

    .line 1266
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserGuaId()V

    .line 1267
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateVip()V

    .line 1268
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateBindWeChat()V

    .line 1269
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1273
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    sparse-switch v0, :sswitch_data_0

    .line 1288
    :goto_0
    return-void

    .line 1277
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->gotoAddBaby()V

    .line 1278
    iput v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    goto :goto_0

    .line 1282
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showMyForum(Landroid/app/Activity;I)V

    .line 1285
    :cond_1
    iput v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mCurClickId:I

    goto :goto_0

    .line 1273
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090044 -> :sswitch_0
        0x7f090395 -> :sswitch_0
        0x7f0904d1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLogining()V
    .locals 2

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    .line 1348
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

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 1351
    :cond_1
    return-void
.end method

.method public onLogout()V
    .locals 3

    .prologue
    const v2, 0x7f080324

    .line 1318
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    .line 1320
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1321
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserTags()V

    .line 1322
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserCity()V

    .line 1323
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserGuaId()V

    .line 1324
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    .line 1325
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateVip()V

    .line 1326
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateBindWeChat()V

    .line 1327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mUserAvaIv:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1329
    return-void
.end method

.method public onNormalPicUpdate(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1363
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1364
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$16;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 1421
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1109
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 1110
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->setAcquireCourseImg()V

    .line 1112
    const-string v1, "Other page"

    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->a(Ljava/lang/String;)V

    .line 1114
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->requestUsers()V

    .line 1116
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

    .line 1127
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1128
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 1131
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSocietyViewBg:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1132
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mSocietyViewBg:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1135
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->checkIfNeedShowWechatSubscribeIcon()V

    .line 1137
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->needShowAcquireCouseDialog()V

    .line 1139
    return-void

    .line 1119
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1121
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1122
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

    .line 1123
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 1122
    :goto_1
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showIndicatorRedDot(Z)V

    goto :goto_0

    .line 1123
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1172
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onStart()V

    .line 1174
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showNamingBabyFloatingDlg()V

    .line 1175
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1179
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onStop()V

    .line 1180
    const-string v0, "Other page"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->b(Ljava/lang/String;)V

    .line 1182
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->stopAnim()V

    .line 1183
    return-void
.end method

.method public onSwitchChild()V
    .locals 4

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->progressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$15;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$15;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1340
    :cond_0
    return-void
.end method

.method public onUpdateChildAvatar()V
    .locals 0

    .prologue
    .line 1343
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1344
    return-void
.end method

.method public onUpdateUserInfo()V
    .locals 2

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserAvatar()V

    .line 1355
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->loadUserInfoBg()V

    .line 1356
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateRegisterTv()V

    .line 1357
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateChildListUI()V

    .line 1358
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->updateUserTags()V

    .line 1359
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
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
    .line 324
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 325
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMainActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMainActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldRecvMsgShowRedDot:Z

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->changeRedBot()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMainActivity:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldFeedBackShowRedDot:Z

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->changeSettingBot()V

    .line 334
    :cond_1
    return-void
.end method

.method public showFeedBackRedDot(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 1489
    if-eqz p1, :cond_1

    .line 1490
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    const/16 v2, 0x1002

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->sendEmptyMessageDelayed(IJ)Z

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1493
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mFaqRedDot:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1496
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1498
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v1, :cond_0

    .line 1499
    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->isHideRedBot(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    goto :goto_0
.end method

.method public showRedDot(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 1479
    if-eqz p1, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mHandler:Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;

    const/16 v1, 0x1000

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment$a;->sendEmptyMessageDelayed(IJ)Z

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->mMessageRedDot:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
