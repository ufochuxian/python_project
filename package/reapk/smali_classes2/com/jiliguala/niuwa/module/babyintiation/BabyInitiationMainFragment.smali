.class public Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;",
        "Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;"
    }
.end annotation


# static fields
.field public static final AGE_TYPE_HIGH_NEW:I = 0x1

.field public static final AGE_TYPE_HIGH_OLD:I = 0x0

.field public static final AGE_TYPE_LOW_NEW:I = 0x3

.field public static final AGE_TYPE_LOW_OLD:I = 0x2

.field public static final BUY:Ljava/lang/String; = "buy"

.field public static final STUDENT:Ljava/lang/String; = "student"

.field private static final TAG:Ljava/lang/String;

.field public static final TEACHER:Ljava/lang/String; = "teacher"

.field public static final UPDATE_TAG:Ljava/lang/String; = "update tag"


# instance fields
.field private isGuideShowing:Z

.field private m1v1Container:Landroid/widget/RelativeLayout;

.field private mAction1v1:Landroid/widget/ImageView;

.field private mActionMore:Landroid/view/View;

.field private mAgeType:I

.field private mApngConfig:Lcom/github/sahasbhop/a/b$a;

.field private mBabyName:Landroid/widget/TextView;

.field private mBigCardBg:Landroid/widget/ImageView;

.field private mCC1:Landroid/view/ViewGroup;

.field private mCC2:Landroid/view/ViewGroup;

.field private mCC3:Landroid/view/ViewGroup;

.field private mClassIcon:Ljava/lang/String;

.field private mClassRedDot:Landroid/widget/ImageView;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mCourseViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mGuavatarComponent:Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;

.field private mGuavatarEntrance:Landroid/view/View;

.field private mGuavatarIcon:Landroid/widget/ImageView;

.field private mGuide:Lcom/blog/www/guideview/f;

.field private mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

.field private mLargeCurrent:Landroid/widget/TextView;

.field private mLargeIcon:Landroid/widget/ImageView;

.field private mLargeLevel:Landroid/widget/TextView;

.field private mLargeShadow:Landroid/view/View;

.field private mLargeTitle:Landroid/widget/TextView;

.field private mLargeTtl:Landroid/widget/TextView;

.field private mListenBg:Landroid/widget/ImageView;

.field private mListenText:Landroid/widget/TextView;

.field private mListenView:Landroid/view/View;

.field private mMcCardBg:Landroid/widget/ImageView;

.field private mMcContainer:Landroid/widget/RelativeLayout;

.field private mMcCourseTtl:Landroid/widget/TextView;

.field private mMcCurrent:Landroid/widget/TextView;

.field private mMcIcon:Landroid/widget/ImageView;

.field private mMcLevel:Landroid/widget/TextView;

.field private mMcTitle:Landroid/widget/TextView;

.field private mMinutes5Container:Landroid/view/View;

.field private mPhCardBg:Landroid/widget/ImageView;

.field private mPhContainer:Landroid/widget/RelativeLayout;

.field private mPhCourseTtl:Landroid/widget/TextView;

.field private mPhCurrent:Landroid/widget/TextView;

.field private mPhIcon:Landroid/widget/ImageView;

.field private mPhLevel:Landroid/widget/TextView;

.field private mPlayBg:Landroid/widget/ImageView;

.field private mPlayText:Landroid/widget/TextView;

.field private mReadingBg:Landroid/widget/ImageView;

.field private mReadingText:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollview:Landroid/widget/ScrollView;

.field private mTreasureImg:Landroid/widget/ImageView;

.field private mWatchBg:Landroid/widget/ImageView;

.field private mWatchText:Landroid/widget/TextView;

.field private redDot:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    .line 110
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCourseViews:Ljava/util/List;

    .line 150
    new-instance v0, Lcom/github/sahasbhop/a/b$a;

    const v1, 0x7fffffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/github/sahasbhop/a/b$a;-><init>(IZZ)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mApngConfig:Lcom/github/sahasbhop/a/b$a;

    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isGuideShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->prepareShowMask()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/blog/www/guideview/f;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goGuavatar()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->reportRecommendBarClick(I)V

    return-void
.end method

.method private checkAnnouncementShare()V
    .locals 2

    .prologue
    .line 1073
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowGuavatarMask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isGuideShowing:Z

    if-nez v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/c/a;->a(Landroid/support/v4/app/ag;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowParentHomeMask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/c/a;->a(Landroid/support/v4/app/ag;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    goto :goto_0

    .line 1086
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowBabyHomeMask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/c/a;->a(Landroid/support/v4/app/ag;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private goByOneVOneCourse()V
    .locals 3

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Home"

    const-string v2, "1v1Home View"

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goByOneVOneCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method private goClass()V
    .locals 3

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JLGL://classlist?role="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method private goGuavatar()V
    .locals 5

    .prologue
    .line 790
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    if-eqz v3, :cond_1

    .line 791
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 792
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "rid"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    const-string v3, "typ"

    const-string v4, "guagua"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jiliguala/niuwa/module/game/GuavatarActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 795
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 797
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 798
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, ""

    .line 799
    .local v2, "state":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->isSatisfy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 800
    const-string v2, "sing"

    .line 808
    :cond_0
    :goto_0
    const-string v3, "State"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Guavatar Entry"

    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 811
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "state":Ljava/lang/String;
    :cond_1
    return-void

    .line 801
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "state":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->isNeed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 802
    const-string v2, "hungry"

    goto :goto_0

    .line 803
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->isNecessary()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 804
    const-string v2, "very hungry"

    goto :goto_0

    .line 805
    :cond_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->isSleep()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    const-string v2, "sleep"

    goto :goto_0
.end method

.method private goMc()V
    .locals 3

    .prologue
    .line 863
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 866
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "MC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v1, "server_lv"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 882
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 870
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 871
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "MC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string v1, "server_lv"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 875
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 876
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 877
    const-string v1, "type"

    const-string v2, "MC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v1, "server_lv"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private goPhonics()V
    .locals 3

    .prologue
    .line 885
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    if-eqz v1, :cond_0

    .line 886
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 887
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "PH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const-string v1, "server_lv"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 891
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private goQuality()V
    .locals 7

    .prologue
    .line 923
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 924
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 925
    .local v2, "ft":Landroid/support/v4/app/an;
    const v3, 0x7f01001f

    const v4, 0x7f010020

    const v5, 0x7f01001f

    const v6, 0x7f010020

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 929
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 930
    const v3, 0x7f090481

    sget-object v4, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 931
    sget-object v3, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 935
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 939
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "ft":Landroid/support/v4/app/an;
    :goto_1
    return-void

    .line 933
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v2    # "ft":Landroid/support/v4/app/an;
    :cond_0
    invoke-virtual {v2, v1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 936
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private goReport()V
    .locals 4

    .prologue
    .line 841
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 842
    .local v0, "audioIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 843
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 844
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 845
    return-void
.end method

.method private goRoadMap()V
    .locals 8

    .prologue
    .line 895
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 896
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 897
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 902
    :goto_0
    const-string v4, "source"

    const-string v5, "Home"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 904
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 905
    .local v3, "ft":Landroid/support/v4/app/an;
    const v4, 0x7f01001f

    const v5, 0x7f010020

    const v6, 0x7f01001f

    const v7, 0x7f010020

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 909
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 910
    const v4, 0x7f090481

    sget-object v5, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 911
    sget-object v4, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 915
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 919
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    :goto_2
    return-void

    .line 900
    .restart local v0    # "arguments":Landroid/os/Bundle;
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "arguments":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "arguments":Landroid/os/Bundle;
    goto :goto_0

    .line 913
    .restart local v3    # "ft":Landroid/support/v4/app/an;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 916
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    .line 917
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private gotoAudioPlay()V
    .locals 4

    .prologue
    .line 848
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 849
    .local v0, "audioIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 850
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 851
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 852
    return-void
.end method

.method private gotoFlashCard()V
    .locals 4

    .prologue
    .line 834
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 835
    .local v0, "flashcardIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 836
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 837
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 838
    return-void
.end method

.method private gotoVideoPlay()V
    .locals 4

    .prologue
    .line 855
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 856
    .local v0, "videoIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 857
    const-string v1, "IS_WATCH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 858
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 859
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 860
    return-void
.end method

.method private hideCheckInNotice()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->redDot:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    return-void
.end method

.method private initCourse(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "vp"    # Landroid/view/ViewGroup;

    .prologue
    .line 630
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 631
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 632
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 633
    .local v1, "convertView":Landroid/view/ViewGroup;
    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;-><init>()V

    .line 634
    .local v3, "viewHolder":Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;
    const v4, 0x7f090278

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->a:Landroid/widget/ImageView;

    .line 635
    const v4, 0x7f0901e4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->b:Landroid/widget/TextView;

    .line 636
    const v4, 0x7f090135

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->c:Landroid/widget/TextView;

    .line 637
    const v4, 0x7f0901be

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->d:Landroid/widget/ImageView;

    .line 638
    const v4, 0x7f09016c

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->e:Landroid/widget/ImageView;

    .line 639
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 640
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCourseViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    .end local v1    # "convertView":Landroid/view/ViewGroup;
    .end local v3    # "viewHolder":Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;
    :cond_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "mRootView"    # Landroid/view/View;

    .prologue
    const v1, 0x7f090028

    .line 546
    const v0, 0x7f09026c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScrollview:Landroid/widget/ScrollView;

    .line 547
    const v0, 0x7f090312

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mBabyName:Landroid/widget/TextView;

    .line 549
    const v0, 0x7f090122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->redDot:Landroid/widget/TextView;

    .line 552
    const v0, 0x7f0900a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mBigCardBg:Landroid/widget/ImageView;

    .line 553
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mBigCardBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    const v0, 0x7f0902b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTitle:Landroid/widget/TextView;

    .line 555
    const v0, 0x7f0902b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeLevel:Landroid/widget/TextView;

    .line 556
    const v0, 0x7f0902b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeCurrent:Landroid/widget/TextView;

    .line 557
    const v0, 0x7f0902b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTtl:Landroid/widget/TextView;

    .line 558
    const v0, 0x7f0902b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeIcon:Landroid/widget/ImageView;

    .line 559
    const v0, 0x7f0905bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    .line 560
    const v0, 0x7f090313

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeShadow:Landroid/view/View;

    .line 561
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeShadow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    const v0, 0x7f09031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    .line 564
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    const v0, 0x7f090326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcTitle:Landroid/widget/TextView;

    .line 566
    const v0, 0x7f090323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcLevel:Landroid/widget/TextView;

    .line 567
    const v0, 0x7f090320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCurrent:Landroid/widget/TextView;

    .line 568
    const v0, 0x7f09031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCourseTtl:Landroid/widget/TextView;

    .line 569
    const v0, 0x7f090321

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcIcon:Landroid/widget/ImageView;

    .line 570
    const v0, 0x7f09031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCardBg:Landroid/widget/ImageView;

    .line 572
    const v0, 0x7f0903d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhContainer:Landroid/widget/RelativeLayout;

    .line 573
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    const v0, 0x7f0903e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCardBg:Landroid/widget/ImageView;

    .line 575
    const v0, 0x7f0903d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhLevel:Landroid/widget/TextView;

    .line 576
    const v0, 0x7f0903d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCurrent:Landroid/widget/TextView;

    .line 577
    const v0, 0x7f0903d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCourseTtl:Landroid/widget/TextView;

    .line 578
    const v0, 0x7f0903d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhIcon:Landroid/widget/ImageView;

    .line 580
    const v0, 0x7f090345

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMinutes5Container:Landroid/view/View;

    .line 582
    const v0, 0x7f0902dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenBg:Landroid/widget/ImageView;

    .line 583
    const v0, 0x7f090610

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mWatchBg:Landroid/widget/ImageView;

    .line 584
    const v0, 0x7f0903f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPlayBg:Landroid/widget/ImageView;

    .line 585
    const v0, 0x7f090433

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mReadingBg:Landroid/widget/ImageView;

    .line 587
    const v0, 0x7f0902de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenText:Landroid/widget/TextView;

    .line 588
    const v0, 0x7f090611

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mWatchText:Landroid/widget/TextView;

    .line 589
    const v0, 0x7f0903f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPlayText:Landroid/widget/TextView;

    .line 590
    const v0, 0x7f090434

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mReadingText:Landroid/widget/TextView;

    .line 592
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenView:Landroid/view/View;

    .line 594
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    const v0, 0x7f090035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    const v0, 0x7f090012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    .line 600
    const v0, 0x7f0903aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    .line 601
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    const v0, 0x7f09002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mActionMore:Landroid/view/View;

    .line 604
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mActionMore:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    const v0, 0x7f09016f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC1:Landroid/view/ViewGroup;

    .line 607
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC1:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->initCourse(Landroid/view/ViewGroup;)V

    .line 608
    const v0, 0x7f090170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC2:Landroid/view/ViewGroup;

    .line 609
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC2:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->initCourse(Landroid/view/ViewGroup;)V

    .line 610
    const v0, 0x7f090171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC3:Landroid/view/ViewGroup;

    .line 611
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC3:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->initCourse(Landroid/view/ViewGroup;)V

    .line 613
    const v0, 0x7f09013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassRedDot:Landroid/widget/ImageView;

    .line 615
    const v0, 0x7f09024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarEntrance:Landroid/view/View;

    .line 616
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarEntrance:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    const v0, 0x7f09024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarIcon:Landroid/widget/ImageView;

    .line 619
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSkin()V

    .line 620
    return-void
.end method

.method private isHighAge()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 732
    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedShowBabyHomeMask()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 425
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->Y()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->cur:I

    if-ne v3, v1, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/n;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 427
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 425
    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 427
    goto :goto_0
.end method

.method private isNeedShowGuavatarMask()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 433
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/n;->h()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 435
    :cond_0
    :goto_0
    return v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isNeedShowParentHomeMask()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->cur:I

    if-ne v3, v1, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/n;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 419
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 417
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 419
    goto :goto_0
.end method

.method private isNewUser()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 727
    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOneVOneShow()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1100
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1101
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    .line 1103
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v1

    .line 1101
    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1104
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1106
    :cond_1
    return-void
.end method

.method private prepareShowMask()V
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isGuideShowing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isAgeOverTwoMC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuideView()V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuavatarMask()V

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    goto :goto_0

    .line 464
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showParentHomeMask()V

    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showBabyHomeMask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private relayoutWidth(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 625
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 626
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    return-void
.end method

.method private reportGuideAmplitude()V
    .locals 3

    .prologue
    .line 187
    const-string v0, "none"

    .line 188
    .local v0, "guideValue":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const-string v0, "1"

    .line 195
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2018s Guide"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 192
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private reportRecommendBarClick(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 1093
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1094
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Recommend Bar Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1097
    return-void
.end method

.method private reportToAmplitude()V
    .locals 3

    .prologue
    .line 539
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->P()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "absoluteAge":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Default Baby Birthday"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private resumeApng()V
    .locals 2

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/github/sahasbhop/a/a;->a(Landroid/view/View;)Lcom/github/sahasbhop/a/a;

    move-result-object v0

    .line 1068
    .local v0, "apngDrawable":Lcom/github/sahasbhop/a/a;
    if-nez v0, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1069
    :cond_0
    invoke-virtual {v0}, Lcom/github/sahasbhop/a/a;->start()V

    goto :goto_0
.end method

.method private scrollToSong()V
    .locals 5

    .prologue
    .line 285
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMinutes5Container:Landroid/view/View;

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 289
    .local v1, "height":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMinutes5Container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 291
    .local v0, "bottom":I
    if-le v0, v1, :cond_0

    .line 292
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScrollview:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method private setBg(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "errResId"    # I

    .prologue
    .line 695
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 700
    invoke-virtual {v0, p4}, Lcom/bumptech/glide/g;->j(I)Lcom/bumptech/glide/f;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v0

    .line 702
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    goto :goto_0
.end method

.method private setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 706
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Lcom/bumptech/glide/g;->j()Lcom/bumptech/glide/c;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Lcom/bumptech/glide/c;->h()Lcom/bumptech/glide/b;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Landroid/widget/TextView;)V

    .line 713
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->b(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/b/m;

    goto :goto_0
.end method

.method private showApng(Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1043
    const/4 v1, 0x0

    .line 1044
    .local v1, "isSame":Z
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarIcon:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/github/sahasbhop/a/a;->a(Landroid/view/View;)Lcom/github/sahasbhop/a/a;

    move-result-object v0

    .line 1045
    .local v0, "apngDrawable":Lcom/github/sahasbhop/a/a;
    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {v0}, Lcom/github/sahasbhop/a/a;->e()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, "resourceUri":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1048
    const/4 v1, 0x1

    .line 1051
    .end local v2    # "resourceUri":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 1052
    invoke-static {}, Lcom/github/sahasbhop/a/b;->a()Lcom/github/sahasbhop/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mApngConfig:Lcom/github/sahasbhop/a/b$a;

    invoke-virtual {v3, p1, v4, v5}, Lcom/github/sahasbhop/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/github/sahasbhop/a/b$a;)V

    .line 1056
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->resumeApng()V

    goto :goto_0
.end method

.method private showGuavatar(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;)V
    .locals 3
    .param p1, "dataBean"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    .prologue
    const/4 v1, 0x0

    .line 1021
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1023
    .local v0, "hasGuavatar":Z
    :goto_0
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isHighAge()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1024
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarEntrance:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->stopApng()V

    .line 1027
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->isNecessary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1028
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->getNecessaryUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showApng(Ljava/lang/String;)V

    .line 1040
    :cond_0
    :goto_1
    return-void

    .end local v0    # "hasGuavatar":Z
    :cond_1
    move v0, v1

    .line 1021
    goto :goto_0

    .line 1029
    .restart local v0    # "hasGuavatar":Z
    :cond_2
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->isNeed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1030
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->getNeedUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showApng(Ljava/lang/String;)V

    goto :goto_1

    .line 1031
    :cond_3
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->isSatisfy()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1032
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->getSatisfyUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showApng(Ljava/lang/String;)V

    goto :goto_1

    .line 1033
    :cond_4
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->isSleep()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Guavatar;->getSleepUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showApng(Ljava/lang/String;)V

    goto :goto_1

    .line 1037
    :cond_5
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->stopApng()V

    .line 1038
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarEntrance:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showGuavatarGuideView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 478
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->scrollToTop()V

    .line 479
    new-instance v0, Lcom/blog/www/guideview/g;

    invoke-direct {v0}, Lcom/blog/www/guideview/g;-><init>()V

    .line 480
    .local v0, "builder":Lcom/blog/www/guideview/g;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarEntrance:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/blog/www/guideview/g;->a(Landroid/view/View;)Lcom/blog/www/guideview/g;

    move-result-object v1

    const v2, 0x7f09024d

    .line 481
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->c(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    const/16 v2, 0xc8

    .line 482
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->a(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 483
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->d(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 484
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->b(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 485
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->e(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 486
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->c(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 487
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->e(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenWidth:I

    .line 488
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->g(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenHeight:I

    .line 489
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->h(I)Lcom/blog/www/guideview/g;

    .line 490
    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$2;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/g$a;)Lcom/blog/www/guideview/g;

    .line 514
    new-instance v1, Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isOneVOneShow()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;-><init>(Z)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarComponent:Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;

    .line 515
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarComponent:Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;->setOnClickListener(Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent$OnClickListener;)V

    .line 525
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarComponent:Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;

    invoke-virtual {v0, v1}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/d;)Lcom/blog/www/guideview/g;

    .line 526
    invoke-virtual {v0}, Lcom/blog/www/guideview/g;->a()Lcom/blog/www/guideview/f;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    .line 527
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/f;->a(Z)V

    .line 528
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isGuideShowing:Z

    if-nez v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;)V

    .line 531
    :cond_0
    return-void
.end method

.method private showGuavatarMask()V
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowGuavatarMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuavatarGuideView()V

    goto :goto_0
.end method

.method private stopApng()V
    .locals 2

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/github/sahasbhop/a/a;->a(Landroid/view/View;)Lcom/github/sahasbhop/a/a;

    move-result-object v0

    .line 1060
    .local v0, "apngDrawable":Lcom/github/sahasbhop/a/a;
    if-nez v0, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    invoke-virtual {v0}, Lcom/github/sahasbhop/a/a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    invoke-virtual {v0}, Lcom/github/sahasbhop/a/a;->stop()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->createPresenter()Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getUi()Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;
    .locals 0

    .prologue
    .line 160
    return-object p0
.end method

.method public isBuy()Z
    .locals 2

    .prologue
    .line 826
    const-string v0, "buy"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isClassRoom()Z
    .locals 2

    .prologue
    .line 830
    const-string v0, "teacher"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "student"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 359
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 737
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 756
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->gotoAudioPlay()V

    .line 757
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 758
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Type"

    const-string v2, "Listen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Home Tool Click"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 742
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->hideCheckInNotice()V

    .line 743
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goReport()V

    goto :goto_0

    .line 747
    :sswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goMc()V

    goto :goto_0

    .line 750
    :sswitch_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goRoadMap()V

    goto :goto_0

    .line 753
    :sswitch_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goPhonics()V

    goto :goto_0

    .line 762
    :sswitch_5
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->gotoVideoPlay()V

    .line 763
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 764
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Type"

    const-string v2, "Watch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Home Tool Click"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 768
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_6
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->gotoFlashCard()V

    goto :goto_0

    .line 771
    :sswitch_7
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->launchStoryShelf(Landroid/content/Context;)V

    goto :goto_0

    .line 774
    :sswitch_8
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isBuy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goByOneVOneCourse()V

    goto :goto_0

    .line 776
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isClassRoom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goClass()V

    goto :goto_0

    .line 781
    :sswitch_9
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goQuality()V

    goto :goto_0

    .line 784
    :sswitch_a
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goGuavatar()V

    goto :goto_0

    .line 740
    :sswitch_data_0
    .sparse-switch
        0x7f090028 -> :sswitch_0
        0x7f09002e -> :sswitch_9
        0x7f090032 -> :sswitch_6
        0x7f090035 -> :sswitch_7
        0x7f09003c -> :sswitch_5
        0x7f09024d -> :sswitch_a
        0x7f09030f -> :sswitch_2
        0x7f090312 -> :sswitch_1
        0x7f090313 -> :sswitch_2
        0x7f09031d -> :sswitch_3
        0x7f0903aa -> :sswitch_8
        0x7f0903d2 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenWidth:I

    .line 167
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenHeight:I

    .line 168
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->onCreate()V

    .line 169
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->reportGuideAmplitude()V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    .line 176
    const v0, 0x7f0b00ac

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->initView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 364
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/c/a;->a()V

    .line 365
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->onDestroy()V

    .line 366
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 442
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onHiddenChanged(Z)V

    .line 443
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->prepareShowMask()V

    .line 445
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 378
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onPause()V

    .line 379
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->stopApng()V

    .line 380
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 371
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->resumeApng()V

    .line 372
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->onResume()V

    .line 373
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->reportToAmplitude()V

    .line 374
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
    .line 183
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public reportToAmplitde()V
    .locals 3

    .prologue
    .line 1109
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Home View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "apk channel"

    sget-object v2, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScrollview:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 282
    :cond_0
    return-void
.end method

.method public setIconByType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f08018a

    .line 1176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1188
    :goto_0
    return-void

    .line 1177
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1179
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1177
    :sswitch_0
    const-string v1, "teacher"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "student"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "buy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 1182
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1185
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1177
    :sswitch_data_0
    .sparse-switch
        -0x70017dc5 -> :sswitch_1
        -0x55ce341e -> :sswitch_0
        0x17e86 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected showBabyHomeMask()V
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowBabyHomeMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuideView()V

    goto :goto_0
.end method

.method public showClassRoom(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "classIcon"    # Ljava/lang/String;
    .param p2, "cls"    # Z

    .prologue
    const v4, 0x7f08039a

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1142
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassIcon:Ljava/lang/String;

    .line 1143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassRedDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassRedDot:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1148
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setIconByType(Ljava/lang/String;)V

    .line 1149
    const-string v0, "teacher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1169
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isGuideShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarComponent:Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuavatarComponent:Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isOneVOneShow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/guideview/GuavatarComponent;->setTeacherVisible(Z)V

    .line 1172
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1144
    goto :goto_0

    .line 1153
    :cond_4
    const-string v0, "student"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1157
    :cond_5
    const-string v0, "buy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1162
    :cond_6
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 1165
    :cond_7
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public showData(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;)V
    .locals 13
    .param p1, "dataBean"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    .prologue
    .line 944
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    .line 947
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->checkAnnouncementShare()V

    .line 949
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuavatar(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;)V

    .line 951
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->redDot:Landroid/widget/TextView;

    iget-boolean v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->clockinnotif:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 953
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->prepareShowMask()V

    .line 955
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->roadmap:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;

    if-eqz v8, :cond_0

    .line 956
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCurrent:Landroid/widget/TextView;

    const v9, 0x7f0f0091

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->roadmap:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;

    iget v12, v12, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;->cur:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCourseTtl:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->roadmap:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;->ttl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v8

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->roadmap:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;->url:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 961
    :cond_0
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    if-eqz v8, :cond_1

    .line 962
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhLevel:Landroid/widget/TextView;

    const v9, 0x7f0f014a

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    iget-object v12, v12, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;->lv:Ljava/lang/String;

    invoke-static {v12}, Lcom/jiliguala/niuwa/common/util/x;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCurrent:Landroid/widget/TextView;

    const v9, 0x7f0f0091

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    iget v12, v12, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;->cur:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCourseTtl:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;->ttl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v8

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;->url:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 968
    :cond_1
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v8, :cond_2

    .line 971
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB1MC(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 972
    const v8, 0x7f0f011d

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, "lvText":Ljava/lang/String;
    const v8, 0x7f0f011f

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 981
    .local v6, "title":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeLevel:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeCurrent:Landroid/widget/TextView;

    const v9, 0x7f0f0091

    invoke-virtual {p0, v9}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget v12, v12, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->cur:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTtl:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->ttl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v8

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->url:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 988
    .end local v3    # "lvText":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->curatedentry:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;

    if-eqz v8, :cond_7

    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->curatedentry:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;->content:Ljava/util/List;

    if-eqz v8, :cond_7

    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->curatedentry:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;->content:Ljava/util/List;

    .line 990
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_7

    .line 991
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC1:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 992
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC2:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 993
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC3:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 994
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCourseViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 995
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCourseViews:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 996
    .local v7, "vp":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;

    .line 997
    .local v1, "holder":Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->curatedentry:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;->content:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;

    .line 998
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;
    iget-object v8, v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->a:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;->thmb:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 999
    iget-object v8, v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->c:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;->desc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;->ttl:Ljava/lang/String;

    .line 1001
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1002
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1003
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1005
    :cond_3
    iget-object v8, v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v8, v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->d:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1007
    move v4, v2

    .line 1008
    .local v4, "pos":I
    new-instance v8, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$5;

    invoke-direct {v8, p0, v4, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$5;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;ILcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 951
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;
    .end local v1    # "holder":Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;
    .end local v2    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "vp":Landroid/view/ViewGroup;
    :cond_4
    const/4 v8, 0x4

    goto/16 :goto_0

    .line 974
    :cond_5
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB2MC(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 975
    const v8, 0x7f0f011e

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 976
    .restart local v3    # "lvText":Ljava/lang/String;
    const v8, 0x7f0f0120

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 978
    .end local v3    # "lvText":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_6
    const v8, 0x7f0f0122

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v11, v11, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/x;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 979
    .restart local v3    # "lvText":Ljava/lang/String;
    const v8, 0x7f0f0121

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 1017
    .end local v3    # "lvText":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public showFree(Ljava/lang/String;)V
    .locals 0
    .param p1, "test"    # Ljava/lang/String;

    .prologue
    .line 1201
    return-void
.end method

.method public showGuideView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->scrollToTop()V

    .line 200
    new-instance v0, Lcom/blog/www/guideview/g;

    invoke-direct {v0}, Lcom/blog/www/guideview/g;-><init>()V

    .line 201
    .local v0, "builder":Lcom/blog/www/guideview/g;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/blog/www/guideview/g;->a(Landroid/view/View;)Lcom/blog/www/guideview/g;

    move-result-object v2

    const v3, 0x7f090313

    .line 202
    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->c(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    const/16 v3, 0xc8

    .line 203
    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->a(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    .line 204
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->d(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 205
    invoke-virtual {v2, v4}, Lcom/blog/www/guideview/g;->k(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 206
    invoke-virtual {v2, v4}, Lcom/blog/www/guideview/g;->d(Z)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 207
    invoke-virtual {v2, v5}, Lcom/blog/www/guideview/g;->b(Z)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 208
    invoke-virtual {v2, v4}, Lcom/blog/www/guideview/g;->c(Z)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 209
    invoke-virtual {v2, v5}, Lcom/blog/www/guideview/g;->e(Z)Lcom/blog/www/guideview/g;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenWidth:I

    .line 210
    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->g(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenHeight:I

    .line 211
    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->h(I)Lcom/blog/www/guideview/g;

    .line 212
    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)V

    invoke-virtual {v0, v2}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/g$a;)Lcom/blog/www/guideview/g;

    .line 264
    const v1, 0x7f0803f4

    .line 265
    .local v1, "icon":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    const v1, 0x7f0803f6

    .line 270
    :cond_0
    :goto_0
    new-instance v2, Lcom/jiliguala/niuwa/module/guideview/HomeImageComponent;

    invoke-direct {v2, v1}, Lcom/jiliguala/niuwa/module/guideview/HomeImageComponent;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/d;)Lcom/blog/www/guideview/g;

    .line 271
    invoke-virtual {v0}, Lcom/blog/www/guideview/g;->a()Lcom/blog/www/guideview/f;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    .line 272
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {v2, v5}, Lcom/blog/www/guideview/f;->a(Z)V

    .line 273
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isGuideShowing:Z

    if-nez v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;)V

    .line 276
    :cond_1
    return-void

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const v1, 0x7f0803f5

    goto :goto_0
.end method

.method public showMask(Z)V
    .locals 2
    .param p1, "isHighAge"    # Z

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1193
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v1, :cond_0

    .line 1194
    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showMask(Z)V

    .line 1196
    :cond_0
    return-void
.end method

.method protected showParentHomeMask()V
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowParentHomeMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuideView()V

    goto :goto_0
.end method

.method public showSkin(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;)V
    .locals 5
    .param p1, "skin"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;

    .prologue
    const v4, 0x7f0600f4

    .line 679
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mBigCardBg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->mcBg:Ljava/lang/String;

    const v3, 0x7f0802cb

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 680
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCardBg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->phBg:Ljava/lang/String;

    const v3, 0x7f08030e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 681
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCardBg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->oldmapBg:Ljava/lang/String;

    const v3, 0x7f080308

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 683
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->listenIcon:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mWatchText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->watchIcon:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPlayText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->flashIcon:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mReadingText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->readingIcon:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenBg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->squareBg:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 689
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mWatchBg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->squareBg:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 690
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPlayBg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->squareBg:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 691
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mReadingBg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->squareBg:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 692
    return-void
.end method

.method public showTreasure(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V
    .locals 4
    .param p1, "treasure"    # Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    .prologue
    .line 1120
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1122
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->img:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->img:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 1124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$6;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showUiOnAge(I)V
    .locals 5
    .param p1, "ageType"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 649
    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    if-ne v1, p1, :cond_0

    .line 674
    :goto_0
    return-void

    .line 652
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    .line 654
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTitle:Landroid/widget/TextView;

    const v2, 0x7f0f0121

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 655
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeCurrent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNewUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    sub-int v0, v1, v2

    .line 661
    .local v0, "size":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->relayoutWidth(Landroid/view/View;I)V

    .line 662
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->relayoutWidth(Landroid/view/View;I)V

    .line 664
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 665
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcTitle:Landroid/widget/TextView;

    const v2, 0x7f0f01a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 666
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCurrent:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 670
    .end local v0    # "size":I
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    sub-int v0, v1, v2

    .line 671
    .restart local v0    # "size":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->relayoutWidth(Landroid/view/View;I)V

    .line 672
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showUserInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mBabyName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    return-void
.end method
