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

.field private mFree:Landroid/view/View;

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
    .line 89
    const-class v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    .line 109
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCourseViews:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isGuideShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->reportRecommendBarClick(I)V

    return-void
.end method

.method private checkAnnouncementShare()V
    .locals 2

    .prologue
    .line 863
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/c/a;->a(Landroid/support/v4/app/ag;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowParentHomeMask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/c/a;->a(Landroid/support/v4/app/ag;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    goto :goto_0

    .line 875
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowBabyHomeMask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
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
    .line 667
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Home"

    const-string v2, "1v1Home View"

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goByOneVOneCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method private goClass()V
    .locals 3

    .prologue
    .line 663
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

    .line 664
    return-void
.end method

.method private goMc()V
    .locals 3

    .prologue
    .line 708
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 711
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "MC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string v1, "server_lv"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 727
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 716
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "MC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const-string v1, "server_lv"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 720
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 721
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 722
    const-string v1, "type"

    const-string v2, "MC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v1, "server_lv"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private goPhonics()V
    .locals 3

    .prologue
    .line 730
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v1, :cond_0

    .line 731
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "PH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v1, "server_lv"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 736
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private goQuality()V
    .locals 7

    .prologue
    .line 768
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 769
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 770
    .local v2, "ft":Landroid/support/v4/app/an;
    const v3, 0x7f01001d

    const v4, 0x7f01001e

    const v5, 0x7f01001d

    const v6, 0x7f01001e

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 774
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 775
    const v3, 0x7f090478

    sget-object v4, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 776
    sget-object v3, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 780
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/an;->i()I

    .line 784
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "ft":Landroid/support/v4/app/an;
    :goto_1
    return-void

    .line 778
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v2    # "ft":Landroid/support/v4/app/an;
    :cond_0
    invoke-virtual {v2, v1}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 781
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private goReport()V
    .locals 4

    .prologue
    .line 686
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 687
    .local v0, "audioIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 689
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 690
    return-void
.end method

.method private goRoadMap()V
    .locals 8

    .prologue
    .line 740
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 741
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 742
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 747
    :goto_0
    const-string v4, "source"

    const-string v5, "Home"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 749
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 750
    .local v3, "ft":Landroid/support/v4/app/an;
    const v4, 0x7f01001d

    const v5, 0x7f01001e

    const v6, 0x7f01001d

    const v7, 0x7f01001e

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 754
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 755
    const v4, 0x7f090478

    sget-object v5, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 756
    sget-object v4, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 760
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 764
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    :goto_2
    return-void

    .line 745
    .restart local v0    # "arguments":Landroid/os/Bundle;
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "arguments":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "arguments":Landroid/os/Bundle;
    goto :goto_0

    .line 758
    .restart local v3    # "ft":Landroid/support/v4/app/an;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 761
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private gotoAudioPlay()V
    .locals 4

    .prologue
    .line 693
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 694
    .local v0, "audioIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 695
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 696
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 697
    return-void
.end method

.method private gotoFlashCard()V
    .locals 4

    .prologue
    .line 679
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 680
    .local v0, "flashcardIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 682
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 683
    return-void
.end method

.method private gotoVideoPlay()V
    .locals 4

    .prologue
    .line 700
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 701
    .local v0, "videoIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 702
    const-string v1, "IS_WATCH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 703
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 704
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001d

    const v3, 0x7f010013

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 705
    return-void
.end method

.method private hideCheckInNotice()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->redDot:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    return-void
.end method

.method private initCourse(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "vp"    # Landroid/view/ViewGroup;

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 510
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 511
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 512
    .local v1, "convertView":Landroid/view/ViewGroup;
    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;-><init>()V

    .line 513
    .local v3, "viewHolder":Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;
    const v4, 0x7f090273

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->a:Landroid/widget/ImageView;

    .line 514
    const v4, 0x7f0901e4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->b:Landroid/widget/TextView;

    .line 515
    const v4, 0x7f090135

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->c:Landroid/widget/TextView;

    .line 516
    const v4, 0x7f0901be

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->d:Landroid/widget/ImageView;

    .line 517
    const v4, 0x7f09016c

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->e:Landroid/widget/ImageView;

    .line 518
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 519
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCourseViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
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

    .line 429
    const v0, 0x7f090267

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScrollview:Landroid/widget/ScrollView;

    .line 430
    const v0, 0x7f09030b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mBabyName:Landroid/widget/TextView;

    .line 432
    const v0, 0x7f090122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->redDot:Landroid/widget/TextView;

    .line 435
    const v0, 0x7f0900a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mBigCardBg:Landroid/widget/ImageView;

    .line 436
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mBigCardBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    const v0, 0x7f0902b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTitle:Landroid/widget/TextView;

    .line 438
    const v0, 0x7f0902b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeLevel:Landroid/widget/TextView;

    .line 439
    const v0, 0x7f0902ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeCurrent:Landroid/widget/TextView;

    .line 440
    const v0, 0x7f0902b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTtl:Landroid/widget/TextView;

    .line 441
    const v0, 0x7f0902af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeIcon:Landroid/widget/ImageView;

    .line 442
    const v0, 0x7f0905b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    .line 443
    const v0, 0x7f09030c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeShadow:Landroid/view/View;

    .line 444
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeShadow:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    const v0, 0x7f090316

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    .line 447
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    const v0, 0x7f09031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcTitle:Landroid/widget/TextView;

    .line 449
    const v0, 0x7f09031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcLevel:Landroid/widget/TextView;

    .line 450
    const v0, 0x7f090319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCurrent:Landroid/widget/TextView;

    .line 451
    const v0, 0x7f090318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCourseTtl:Landroid/widget/TextView;

    .line 452
    const v0, 0x7f09031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcIcon:Landroid/widget/ImageView;

    .line 453
    const v0, 0x7f090315

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCardBg:Landroid/widget/ImageView;

    .line 455
    const v0, 0x7f0903cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhContainer:Landroid/widget/RelativeLayout;

    .line 456
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    const v0, 0x7f0903db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCardBg:Landroid/widget/ImageView;

    .line 458
    const v0, 0x7f0903d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhLevel:Landroid/widget/TextView;

    .line 459
    const v0, 0x7f0903cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCurrent:Landroid/widget/TextView;

    .line 460
    const v0, 0x7f0903ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCourseTtl:Landroid/widget/TextView;

    .line 461
    const v0, 0x7f0903d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhIcon:Landroid/widget/ImageView;

    .line 463
    const v0, 0x7f09033e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMinutes5Container:Landroid/view/View;

    .line 465
    const v0, 0x7f0902d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenBg:Landroid/widget/ImageView;

    .line 466
    const v0, 0x7f090606

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mWatchBg:Landroid/widget/ImageView;

    .line 467
    const v0, 0x7f0903e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPlayBg:Landroid/widget/ImageView;

    .line 468
    const v0, 0x7f09042c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mReadingBg:Landroid/widget/ImageView;

    .line 470
    const v0, 0x7f0902d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenText:Landroid/widget/TextView;

    .line 471
    const v0, 0x7f090607

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mWatchText:Landroid/widget/TextView;

    .line 472
    const v0, 0x7f0903ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPlayText:Landroid/widget/TextView;

    .line 473
    const v0, 0x7f09042d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mReadingText:Landroid/widget/TextView;

    .line 475
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenView:Landroid/view/View;

    .line 477
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    const v0, 0x7f090035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    const v0, 0x7f090012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    .line 483
    const v0, 0x7f0903a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    .line 484
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    const v0, 0x7f09002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mActionMore:Landroid/view/View;

    .line 487
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mActionMore:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    const v0, 0x7f09016f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC1:Landroid/view/ViewGroup;

    .line 490
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC1:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->initCourse(Landroid/view/ViewGroup;)V

    .line 491
    const v0, 0x7f090170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC2:Landroid/view/ViewGroup;

    .line 492
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC2:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->initCourse(Landroid/view/ViewGroup;)V

    .line 493
    const v0, 0x7f090171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC3:Landroid/view/ViewGroup;

    .line 494
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC3:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->initCourse(Landroid/view/ViewGroup;)V

    .line 496
    const v0, 0x7f09013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassRedDot:Landroid/widget/ImageView;

    .line 497
    const v0, 0x7f09022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mFree:Landroid/view/View;

    .line 498
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getSkin(Landroid/content/Context;)V

    .line 499
    return-void
.end method

.method private isHighAge()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 604
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

    .line 383
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

    .line 385
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 383
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 385
    goto :goto_0
.end method

.method private isNeedShowParentHomeMask()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
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

    .line 377
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 375
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 377
    goto :goto_0
.end method

.method private isNewUser()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 599
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

.method private loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 889
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    .line 892
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v1

    .line 890
    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 893
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 895
    :cond_1
    return-void
.end method

.method private prepareShowMask()V
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isGuideShowing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isAgeOverTwoMC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuideView()V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showParentHomeMask()V

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0

    .line 412
    :cond_2
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
    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 504
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 505
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    return-void
.end method

.method private reportGuideAmplitude()V
    .locals 3

    .prologue
    .line 181
    const-string v0, "none"

    .line 182
    .local v0, "guideValue":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const-string v0, "1"

    .line 189
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2018s Guide"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 186
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private reportRecommendBarClick(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 882
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 883
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Recommend Bar Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 886
    return-void
.end method

.method private reportToAmplitude()V
    .locals 3

    .prologue
    .line 422
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->P()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "absoluteAge":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Default Baby Birthday"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private scrollToSong()V
    .locals 5

    .prologue
    .line 257
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMinutes5Container:Landroid/view/View;

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 261
    .local v1, "height":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMinutes5Container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 263
    .local v0, "bottom":I
    if-le v0, v1, :cond_0

    .line 264
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScrollview:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method private setBg(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "errResId"    # I

    .prologue
    .line 574
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object v0

    .line 575
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 576
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/g;->j(I)Lcom/bumptech/glide/f;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v0

    .line 578
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 579
    return-void
.end method

.method private setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object v0

    .line 583
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lcom/bumptech/glide/g;->j()Lcom/bumptech/glide/c;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$2;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Landroid/widget/TextView;)V

    .line 585
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/g/b/m;)Lcom/bumptech/glide/g/b/m;

    .line 596
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->createPresenter()Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getUi()Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;
    .locals 0

    .prologue
    .line 154
    return-object p0
.end method

.method public isBuy()Z
    .locals 2

    .prologue
    .line 671
    const-string v0, "buy"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isClassRoom()Z
    .locals 2

    .prologue
    .line 675
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
    .line 326
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 331
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 609
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 628
    :sswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->gotoAudioPlay()V

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 630
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Type"

    const-string v2, "Listen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Home Tool Click"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 614
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->hideCheckInNotice()V

    .line 615
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goReport()V

    goto :goto_0

    .line 619
    :sswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goMc()V

    goto :goto_0

    .line 622
    :sswitch_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goRoadMap()V

    goto :goto_0

    .line 625
    :sswitch_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goPhonics()V

    goto :goto_0

    .line 634
    :sswitch_5
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->gotoVideoPlay()V

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 636
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Type"

    const-string v2, "Watch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Home Tool Click"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 640
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_6
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->gotoFlashCard()V

    goto :goto_0

    .line 643
    :sswitch_7
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/StoryShelfActivity;->launchStoryShelf(Landroid/content/Context;)V

    goto :goto_0

    .line 646
    :sswitch_8
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isBuy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goByOneVOneCourse()V

    goto :goto_0

    .line 648
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isClassRoom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goClass()V

    goto :goto_0

    .line 653
    :sswitch_9
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->goQuality()V

    goto :goto_0

    .line 612
    :sswitch_data_0
    .sparse-switch
        0x7f090028 -> :sswitch_0
        0x7f09002e -> :sswitch_9
        0x7f090032 -> :sswitch_6
        0x7f090035 -> :sswitch_7
        0x7f09003c -> :sswitch_5
        0x7f090308 -> :sswitch_2
        0x7f09030b -> :sswitch_1
        0x7f09030c -> :sswitch_2
        0x7f090316 -> :sswitch_3
        0x7f0903a3 -> :sswitch_8
        0x7f0903cb -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenWidth:I

    .line 161
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenHeight:I

    .line 162
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->onCreate()V

    .line 163
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->reportGuideAmplitude()V

    .line 164
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
    .line 170
    const v0, 0x7f0b00ac

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->initView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 336
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/c/a;->a()V

    .line 337
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->onDestroy()V

    .line 338
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onHiddenChanged(Z)V

    .line 393
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->prepareShowMask()V

    .line 395
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onResume()V

    .line 343
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->onResume()V

    .line 344
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->reportToAmplitude()V

    .line 345
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
    .line 177
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 178
    return-void
.end method

.method public reportToAmplitde()V
    .locals 3

    .prologue
    .line 898
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Home View"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 900
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "apk channel"

    sget-object v2, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScrollview:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 254
    :cond_0
    return-void
.end method

.method public setIconByType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f080187

    .line 960
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 961
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 963
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 961
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

    .line 966
    :pswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 969
    :pswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 961
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
    .line 362
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowBabyHomeMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuideView()V

    goto :goto_0
.end method

.method public showClassRoom(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "classIcon"    # Ljava/lang/String;
    .param p2, "cls"    # Z

    .prologue
    const v4, 0x7f08038d

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 931
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassIcon:Ljava/lang/String;

    .line 932
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassRedDot:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 933
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mClassRedDot:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 936
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 937
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setIconByType(Ljava/lang/String;)V

    .line 938
    const-string v0, "teacher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 939
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 957
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 933
    goto :goto_0

    .line 942
    :cond_3
    const-string v0, "student"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 943
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 946
    :cond_4
    const-string v0, "buy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 947
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAction1v1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 951
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 954
    :cond_6
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->m1v1Container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public showData(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;)V
    .locals 13
    .param p1, "dataBean"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mHomeData:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    .line 792
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->checkAnnouncementShare()V

    .line 794
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->prepareShowMask()V

    .line 796
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->redDot:Landroid/widget/TextView;

    iget-boolean v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->clockinnotif:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 798
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->roadmap:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;

    if-eqz v8, :cond_0

    .line 799
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

    .line 800
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCourseTtl:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->roadmap:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;->ttl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v8

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->roadmap:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$RoadmapBean;->url:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 804
    :cond_0
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    if-eqz v8, :cond_1

    .line 805
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

    .line 806
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

    .line 807
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCourseTtl:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;->ttl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v8

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->ph:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$PhBean;->url:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 811
    :cond_1
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    if-eqz v8, :cond_2

    .line 814
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB1MC(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 815
    const v8, 0x7f0f011d

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 816
    .local v3, "lvText":Ljava/lang/String;
    const v8, 0x7f0f011f

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 824
    .local v6, "title":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeLevel:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
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

    .line 827
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTtl:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->ttl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v8

    iget-object v9, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->url:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 831
    .end local v3    # "lvText":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->curatedentry:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;

    if-eqz v8, :cond_7

    .line 832
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->curatedentry:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;->content:Ljava/util/List;

    if-eqz v8, :cond_7

    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->curatedentry:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;->content:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_7

    .line 833
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC1:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 834
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC2:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 835
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCC3:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 836
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCourseViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 837
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mCourseViews:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 838
    .local v7, "vp":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;

    .line 839
    .local v1, "holder":Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->curatedentry:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry;->content:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;

    .line 840
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;
    iget-object v8, v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->a:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;->thmb:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 841
    iget-object v8, v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->c:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;->desc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;->ttl:Ljava/lang/String;

    .line 843
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 844
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

    .line 845
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 847
    :cond_3
    iget-object v8, v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v8, v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;->d:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 849
    move v4, v2

    .line 850
    .local v4, "pos":I
    new-instance v8, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;

    invoke-direct {v8, p0, v4, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$3;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;ILcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 796
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Curatedentry$Content;
    .end local v1    # "holder":Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$a;
    .end local v2    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "vp":Landroid/view/ViewGroup;
    :cond_4
    const/4 v8, 0x4

    goto/16 :goto_0

    .line 817
    :cond_5
    iget-object v8, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->mc:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$McBean;->lv:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB2MC(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 818
    const v8, 0x7f0f011e

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 819
    .restart local v3    # "lvText":Ljava/lang/String;
    const v8, 0x7f0f0120

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 821
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

    .line 822
    .restart local v3    # "lvText":Ljava/lang/String;
    const v8, 0x7f0f0121

    invoke-virtual {p0, v8}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto/16 :goto_1

    .line 860
    .end local v3    # "lvText":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public showFree(Ljava/lang/String;)V
    .locals 2
    .param p1, "test"    # Ljava/lang/String;

    .prologue
    .line 984
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mFree:Landroid/view/View;

    const-string v0, "A"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 985
    return-void

    .line 984
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showGuideView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->scrollToTop()V

    .line 194
    new-instance v0, Lcom/blog/www/guideview/g;

    invoke-direct {v0}, Lcom/blog/www/guideview/g;-><init>()V

    .line 195
    .local v0, "builder":Lcom/blog/www/guideview/g;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/blog/www/guideview/g;->a(Landroid/view/View;)Lcom/blog/www/guideview/g;

    move-result-object v2

    const v3, 0x7f09030c

    .line 196
    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->c(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    const/16 v3, 0xc8

    .line 197
    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->a(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    .line 198
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->d(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 199
    invoke-virtual {v2, v4}, Lcom/blog/www/guideview/g;->k(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 200
    invoke-virtual {v2, v4}, Lcom/blog/www/guideview/g;->d(Z)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 201
    invoke-virtual {v2, v5}, Lcom/blog/www/guideview/g;->b(Z)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 202
    invoke-virtual {v2, v4}, Lcom/blog/www/guideview/g;->c(Z)Lcom/blog/www/guideview/g;

    move-result-object v2

    .line 203
    invoke-virtual {v2, v5}, Lcom/blog/www/guideview/g;->e(Z)Lcom/blog/www/guideview/g;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenWidth:I

    .line 204
    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->g(I)Lcom/blog/www/guideview/g;

    move-result-object v2

    iget v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mScreenHeight:I

    .line 205
    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/g;->h(I)Lcom/blog/www/guideview/g;

    .line 206
    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$1;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;)V

    invoke-virtual {v0, v2}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/g$a;)Lcom/blog/www/guideview/g;

    .line 236
    const v1, 0x7f0803e7

    .line 237
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

    .line 238
    const v1, 0x7f0803e9

    .line 242
    :cond_0
    :goto_0
    new-instance v2, Lcom/jiliguala/niuwa/module/guideview/HomeImageComponent;

    invoke-direct {v2, v1}, Lcom/jiliguala/niuwa/module/guideview/HomeImageComponent;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/d;)Lcom/blog/www/guideview/g;

    .line 243
    invoke-virtual {v0}, Lcom/blog/www/guideview/g;->a()Lcom/blog/www/guideview/f;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    .line 244
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {v2, v5}, Lcom/blog/www/guideview/f;->a(Z)V

    .line 245
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isGuideShowing:Z

    if-nez v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;)V

    .line 248
    :cond_1
    return-void

    .line 239
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

    .line 240
    const v1, 0x7f0803e8

    goto :goto_0
.end method

.method public showMask(Z)V
    .locals 2
    .param p1, "isHighAge"    # Z

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 977
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v1, :cond_0

    .line 978
    check-cast v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showMask(Z)V

    .line 980
    :cond_0
    return-void
.end method

.method protected showParentHomeMask()V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNeedShowParentHomeMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->showGuideView()V

    goto :goto_0
.end method

.method public showSkin(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;)V
    .locals 4
    .param p1, "skin"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;

    .prologue
    const v3, 0x7f0600f2

    .line 558
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mBigCardBg:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->mcBg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0802c1

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 559
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhCardBg:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->phBg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080304

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 560
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCardBg:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->oldmapBg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0802fe

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 562
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->listenIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mWatchText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->watchIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPlayText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->flashIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mReadingText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->readingIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setDrawableTop(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mListenBg:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->squareBg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 568
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mWatchBg:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->squareBg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 569
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPlayBg:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->squareBg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 570
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mReadingBg:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->squareBg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->setBg(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 571
    return-void
.end method

.method public showTreasure(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V
    .locals 4
    .param p1, "treasure"    # Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    .prologue
    .line 909
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->img:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->img:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 913
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mTreasureImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment$4;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    :goto_0
    return-void

    .line 925
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

    .line 528
    iget v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    if-ne v1, p1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 531
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mAgeType:I

    .line 533
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeTitle:Landroid/widget/TextView;

    const v2, 0x7f0f0121

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 534
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mLargeCurrent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->isNewUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 538
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    sub-int v0, v1, v2

    .line 539
    .local v0, "size":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->relayoutWidth(Landroid/view/View;I)V

    .line 540
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->relayoutWidth(Landroid/view/View;I)V

    .line 542
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 543
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcTitle:Landroid/widget/TextView;

    const v2, 0x7f0f01a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 544
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcCurrent:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 548
    .end local v0    # "size":I
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    sub-int v0, v1, v2

    .line 549
    .restart local v0    # "size":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mPhContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->relayoutWidth(Landroid/view/View;I)V

    .line 550
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->mMcContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showUserInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 524
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

    .line 525
    return-void
.end method
