.class public Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/a/b/h$a;
.implements Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;
.implements Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;
.implements Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;
.implements Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$b;,
        Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;,
        Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;,
        Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final KEY_UNIT_OBJ:Ljava/lang/String; = "UNIT_OBJ"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field bid:Ljava/lang/String;

.field private courseFinishedBeforeRefresh:Z

.field courseId:Ljava/lang/String;

.field private hasRefresh:Z

.field private homeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

.field private isAddCourseFinishWatcher:Z

.field private final isInflating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

.field private mConinueStudyPop:Lcom/jiliguala/niuwa/a/b/c;

.field private mCourseChineseTitle:Landroid/widget/TextView;

.field private mCourseContainer:Landroid/widget/FrameLayout;

.field private mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

.field mCourseFinishState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

.field private mCourseProgress:Landroid/widget/TextView;

.field private mCourseTitle:Landroid/widget/TextView;

.field private mCurClickId:I

.field private mCurIndicatorIndex:I

.field private mCurServerIndex:I

.field private mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

.field private mDelayRunnable:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;

.field private mDoneUsers:Landroid/widget/TextView;

.field private mFakeVPAdapter:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;

.field private mFakeVp:Landroid/support/v4/view/ViewPager;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoCourseReport:Z

.field mJumpInfoSubCourseContent:Z

.field private mLastUnitTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

.field private mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

.field private mRootView:Landroid/view/View;

.field private mSendCourseReportReceiver:Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;

.field private mShare:Landroid/widget/TextView;

.field private mUnBindDescPopDialog:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

.field private mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

.field private mUnitDesc:Landroid/widget/TextView;

.field private mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

.field private mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

.field private mUnitTitle:Landroid/widget/TextView;

.field unitId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 90
    const-class v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isInflating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFinishState:Landroid/util/SparseArray;

    .line 97
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mJumpInfoSubCourseContent:Z

    .line 126
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->courseFinishedBeforeRefresh:Z

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurIndicatorIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->fetchCourseInfoAndReport(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->handleUnLoginAndNoBabyThenShareCourseReport(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unlockWeChatCourse(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getCourseSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isCurrentNextItemCourseCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doDirectlyShareH5Report()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mIsAutoCourseReport:Z

    return v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mIsAutoCourseReport:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isOnLastDay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showRecommendPop()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isNextCourseLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Lcom/jiliguala/niuwa/a/b/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getContinueStudyDialog()Lcom/jiliguala/niuwa/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareCourseShare()V

    return-void
.end method

.method private addOrReplaceSubCourse()V
    .locals 5

    .prologue
    .line 538
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 539
    .local v0, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 541
    .local v1, "ft":Landroid/support/v4/app/an;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    if-eqz v2, :cond_0

    .line 542
    const v2, 0x7f0905cd

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    sget-object v4, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 544
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v0    # "fm":Landroid/support/v4/app/ag;
    .end local v1    # "ft":Landroid/support/v4/app/an;
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private bindWechatNow(I)V
    .locals 4
    .param p1, "loginType"    # I

    .prologue
    .line 1619
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1620
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1621
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1622
    const-string v2, "source"

    const-string v3, "bind_weichat"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1624
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1625
    return-void
.end method

.method private checkWeChatUnBindDescDialog()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->dismissUnBindDescDialog()V

    .line 828
    :cond_0
    return-void
.end method

.method private doDirectlyShareH5Report()V
    .locals 3

    .prologue
    .line 938
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mIsAutoCourseReport:Z

    .line 939
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->requestRecommendCourse()V

    .line 940
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isSingle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 942
    .local v0, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isInteractCourse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareInteractLessonCourseReport(Ljava/lang/String;)V

    .line 968
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_0
    :goto_0
    return-void

    .line 948
    .restart local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareCourseReport()V

    goto :goto_0

    .line 965
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 950
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isRoadMap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isInteractCourse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 953
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareInteractLessonCourseReport(Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isUnitCompleted()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isSingle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 959
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareUnitReport()V

    goto :goto_0

    .line 961
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareCourseReport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private doShareCourseReport()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1176
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isAdded()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v8, :cond_0

    .line 1180
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 1181
    .local v2, "currentPosition":I
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 1182
    .local v4, "mCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isCompleted()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1183
    const-string v8, "\u62b1\u6b49\uff0c\u8bfe\u7a0b\u8fd8\u672a\u5b8c\u6210\uff01"

    invoke-static {v8}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1186
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v6

    .line 1187
    .local v6, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "bid":Ljava/lang/String;
    const-string v7, ""

    .line 1191
    .local v7, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isSingle()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1192
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->hasCourse()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1193
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 1194
    .local v1, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isInteractCourse()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1195
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hasWeiKe()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1196
    iget-object v8, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v7, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    .line 1209
    .end local v1    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_3
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1210
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "key_url"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    const-string v8, "NEED_OUTER_BROWSER"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1213
    const-string v8, "SHARE_THUMB"

    iget-object v9, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->thmb:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    const-string v8, "SHARE_TTL"

    iget-object v9, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->ttl:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    const-string v8, "SHARE_DESC"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const-string v8, "SHARE_RID"

    iget-object v9, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    const-string v8, "SHOW_DEFALUT_BACK"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1218
    if-eqz v4, :cond_7

    .line 1219
    const-string v8, "SHARE_TYPE"

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1225
    :goto_2
    invoke-virtual {p0, v3, v10}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1226
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f01001f

    const v10, 0x7f010014

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 1228
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1229
    .local v5, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "ID"

    iget-object v9, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v8

    const-string v9, "Lesson Report View"

    invoke-virtual {v8, v9, v5}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1199
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_4
    iget-object v8, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-static {v8, v6, v0, v9}, Lcom/jiliguala/niuwa/logic/m/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1203
    .end local v1    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_5
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isLastSubCourseFragmetnOfUnit(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1204
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v8, v8, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->_id:Ljava/lang/String;

    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/m/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1206
    :cond_6
    iget-object v8, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-static {v8, v6, v0, v9}, Lcom/jiliguala/niuwa/logic/m/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1221
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v8, "SHARE_TYPE"

    const/4 v9, 0x7

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method private doShareCourseShare()V
    .locals 9

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v1, :cond_1

    .line 1109
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    .line 1110
    .local v6, "fm":Landroid/support/v4/app/ag;
    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 1111
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courseindex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 1112
    .local v7, "mCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1114
    :cond_0
    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->thmb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cttl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1116
    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->thmb:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->desc:Ljava/lang/String;

    iget-object v4, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1121
    const-string v1, "lesson"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setSource(Ljava/lang/String;)V

    .line 1122
    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setClassData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 1124
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1125
    .local v8, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Wei Lesson Share Dialog"

    invoke-virtual {v1, v2, v8}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1130
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    .end local v6    # "fm":Landroid/support/v4/app/ag;
    .end local v7    # "mCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v8    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private doShareInteractLessonCourseReport(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 971
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v4, :cond_0

    .line 972
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 973
    .local v0, "currentPosition":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 974
    .local v2, "mCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 975
    const-string v4, "\u62b1\u6b49\uff0c\u8bfe\u7a0b\u8fd8\u672a\u5b8c\u6210\uff01"

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1001
    .end local v0    # "currentPosition":I
    .end local v2    # "mCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_0
    :goto_0
    return-void

    .line 978
    .restart local v0    # "currentPosition":I
    .restart local v2    # "mCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 979
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "key_url"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    const-string v4, "NEED_OUTER_BROWSER"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 982
    const-string v4, "SHARE_THUMB"

    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->thmb:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string v4, "SHARE_TTL"

    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const-string v4, "SHARE_DESC"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    const-string v4, "SHARE_RID"

    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    const-string v4, "SHOW_DEFALUT_BACK"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 987
    if-eqz v2, :cond_2

    .line 988
    const-string v4, "SHARE_TYPE"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    :goto_1
    invoke-virtual {p0, v1, v6}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 995
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f01001f

    const v6, 0x7f010014

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 997
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 998
    .local v3, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ID"

    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "Lesson Report View"

    invoke-virtual {v4, v5, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 990
    .end local v3    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v4, "SHARE_TYPE"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private doShareUnitReport()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1286
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v7, :cond_0

    .line 1287
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 1288
    .local v1, "currentPosition":I
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 1289
    .local v3, "mCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isCompleted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1290
    const-string v7, "\u62b1\u6b49\uff0c\u5355\u5143\u8fd8\u672a\u5b8c\u6210\uff01"

    invoke-static {v7}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1318
    .end local v1    # "currentPosition":I
    .end local v3    # "mCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_0
    :goto_0
    return-void

    .line 1293
    .restart local v1    # "currentPosition":I
    .restart local v3    # "mCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v5

    .line 1294
    .local v5, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "bid":Ljava/lang/String;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->_id:Ljava/lang/String;

    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/m/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1296
    .local v6, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1297
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "key_url"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    const-string v7, "NEED_OUTER_BROWSER"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1300
    const-string v7, "SHARE_THUMB"

    iget-object v8, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    const-string v7, "SHARE_TTL"

    iget-object v8, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const-string v7, "SHARE_DESC"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    const-string v7, "SHARE_RID"

    iget-object v8, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    if-eqz v3, :cond_2

    .line 1305
    const-string v7, "SHARE_TYPE"

    const/4 v8, 0x5

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1311
    :goto_1
    invoke-virtual {p0, v2, v9}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1312
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f01001f

    const v9, 0x7f010014

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 1314
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1315
    .local v4, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "ID"

    iget-object v8, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v7

    const-string v8, "Lesson Report View"

    invoke-virtual {v7, v8, v4}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1307
    .end local v4    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v7, "SHARE_TYPE"

    const/4 v8, 0x7

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private fetchCourseInfoAndReport(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;Ljava/lang/String;I)V
    .locals 3
    .param p1, "course"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .param p2, "subtaskid"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, "pos":I
    const-string v1, ""

    .line 1081
    .local v1, "subType":Ljava/lang/String;
    const/4 p3, 0x0

    :goto_0
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 1082
    if-eqz p2, :cond_1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1083
    move v0, p3

    .line 1084
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    .line 1085
    invoke-direct {p0, p2, v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->sendReport(Ljava/lang/String;ILjava/lang/String;)V

    .line 1089
    :cond_0
    return-void

    .line 1081
    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private generateCourseState(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 8
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 725
    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v3, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->coursecount:I

    .line 726
    .local v3, "size":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFinishState:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 727
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 728
    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 729
    .local v0, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    if-nez v0, :cond_0

    .line 727
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    :cond_0
    new-instance v4, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;

    invoke-direct {v4}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;-><init>()V

    .line 735
    .local v4, "state":Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;
    const-string v6, "completed"

    iget-object v7, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;->a:Z

    .line 738
    iget-object v6, v4, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 739
    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 740
    .local v5, "subSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v5, :cond_1

    .line 741
    iget-object v7, v4, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;->b:Landroid/util/SparseArray;

    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->isCompleted()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 744
    :cond_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFinishState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 746
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v2    # "j":I
    .end local v4    # "state":Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;
    .end local v5    # "subSize":I
    :cond_2
    return-void
.end method

.method private getContinueStudyDialog()Lcom/jiliguala/niuwa/a/b/c;
    .locals 5

    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mConinueStudyPop:Lcom/jiliguala/niuwa/a/b/c;

    if-nez v1, :cond_0

    .line 333
    new-instance v1, Lcom/jiliguala/niuwa/a/b/c;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;->target:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;->uuid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/a/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mConinueStudyPop:Lcom/jiliguala/niuwa/a/b/c;

    .line 334
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mConinueStudyPop:Lcom/jiliguala/niuwa/a/b/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/a/b/c;->a(Z)V

    .line 335
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mConinueStudyPop:Lcom/jiliguala/niuwa/a/b/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/a/b/c;->b(Z)V

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mConinueStudyPop:Lcom/jiliguala/niuwa/a/b/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-object v1

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCourseFinishState(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFinishState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFinishState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;->a:Z

    goto :goto_0
.end method

.method private getCourseSize()I
    .locals 2

    .prologue
    .line 1254
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1257
    :goto_0
    return v1

    .line 1255
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getShareIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getShareTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->ctitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getShowCourseShare()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 693
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isSingle()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 696
    :goto_0
    return v1

    .line 693
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getSubCourseFinishState(II)Z
    .locals 4
    .param p1, "courseIndex"    # I
    .param p2, "subCourseIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 753
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFinishState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;

    .line 754
    .local v1, "state":Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;->b:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 761
    :goto_0
    return v2

    .line 758
    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 761
    goto :goto_0
.end method

.method private handleUnLoginAndNoBabyThenShareCourseReport(Z)V
    .locals 4
    .param p1, "unitShareReport"    # Z

    .prologue
    .line 1133
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1136
    iget v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurClickId:I

    const v2, 0x7f0904df

    if-ne v1, v2, :cond_0

    .line 1139
    const v1, 0x7f0f0097

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1141
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->startActivity(Landroid/content/Intent;)V

    .line 1173
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1144
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1145
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->startActivity(Landroid/content/Intent;)V

    .line 1146
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 1148
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isSingle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1149
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isInteractCourse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1151
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareInteractLessonCourseReport(Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareCourseReport()V

    goto :goto_0

    .line 1157
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isRoadMap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isInteractCourse()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1160
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareInteractLessonCourseReport(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1165
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isUnitCompleted()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isSingle()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1166
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareUnitReport()V

    goto/16 :goto_0

    .line 1168
    :cond_6
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareCourseReport()V

    goto/16 :goto_0
.end method

.method private initUIComponent(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const v3, 0x7f06005a

    .line 460
    const v0, 0x7f090599

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    const v0, 0x7f0905cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDesc:Landroid/widget/TextView;

    .line 462
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    const v0, 0x7f0905d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitTitle:Landroid/widget/TextView;

    .line 465
    const v0, 0x7f0901c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDoneUsers:Landroid/widget/TextView;

    .line 466
    const v0, 0x7f090407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseProgress:Landroid/widget/TextView;

    .line 467
    const v0, 0x7f0904ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mShare:Landroid/widget/TextView;

    .line 468
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mShare:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mShare:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    const v0, 0x7f0901a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    .line 472
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setTextColor(I)V

    .line 473
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setSelectedColor(I)V

    .line 474
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setFooterLineHeight(F)V

    .line 475
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setFooterIndicatorHeight(F)V

    .line 476
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setFooterColor(I)V

    .line 478
    const v0, 0x7f09017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseTitle:Landroid/widget/TextView;

    .line 479
    const v0, 0x7f09017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseChineseTitle:Landroid/widget/TextView;

    .line 481
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->typ:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->typ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->updateVisibilityAccordingToType(Ljava/lang/String;)V

    .line 485
    :cond_0
    const v0, 0x7f0901f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    .line 486
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 488
    new-instance v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVPAdapter:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;

    .line 489
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVPAdapter:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 491
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setScrollEnable(Z)V

    .line 492
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 494
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->addOrReplaceSubCourse()V

    .line 495
    return-void
.end method

.method private isCurrentNextItemCourseCompleted()Z
    .locals 4

    .prologue
    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 322
    .local v0, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isCompleted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 325
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :goto_0
    return v2

    .line 323
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isFromRoadMap()Z
    .locals 1

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1102
    const/4 v0, 0x0

    .line 1104
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    goto :goto_0
.end method

.method private isLastSubCourseFragmetnOfUnit(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)Z
    .locals 3
    .param p1, "mUnitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    const/4 v0, 0x0

    .line 1012
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v1, :cond_0

    .line 1013
    iget v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurIndicatorIndex:I

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1015
    :cond_0
    return v0
.end method

.method private isNextCourseLocked()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 311
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getNextCourseIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 312
    .local v0, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isLocked()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isUnAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 315
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_1
    :goto_0
    return v2

    .line 313
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isOnLastDay()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 704
    :cond_0
    :goto_0
    return v1

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 169
    new-instance v1, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mSendCourseReportReceiver:Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mSendCourseReportReceiver:Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    new-instance v1, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->homeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    .line 175
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->homeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    new-instance v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$1;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->a(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;)V

    .line 186
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->homeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->c()V

    .line 187
    return-void
.end method

.method private reportUbBindDescDialogAmplitude()V
    .locals 3

    .prologue
    .line 1610
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-nez v1, :cond_0

    .line 1616
    :goto_0
    return-void

    .line 1613
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1614
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Unlock Instruction Dialog"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private reportUnitComplete()V
    .locals 3

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isLastSubCourseFragmetnOfUnit(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1006
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Unit ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->unit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Unit Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1009
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private reportWeiShareDialog()V
    .locals 3

    .prologue
    .line 1365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1366
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Wei Lesson Share Dialog"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1368
    return-void
.end method

.method private reportWeiXinConnectedDialog()V
    .locals 3

    .prologue
    .line 1542
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-nez v1, :cond_0

    .line 1548
    :goto_0
    return-void

    .line 1545
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1546
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Wei Xin Connected Dialog"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private sendReport(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "subtaskid"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "subType"    # Ljava/lang/String;

    .prologue
    .line 1092
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1093
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    const-string v1, "Position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    const-string v1, "Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    const-string v1, "Lesson Type"

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isFromRoadMap()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Sub Lesson Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1098
    return-void
.end method

.method private showDialogFragment()V
    .locals 22

    .prologue
    .line 1333
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 1334
    .local v18, "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    move-object/from16 v21, v0

    .line 1336
    .local v21, "weiKe":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 1335
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->icon:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->ttl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    const/16 v7, 0xa

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "0"

    const/4 v13, 0x0

    const v14, 0x7f080378

    const v15, 0x7f0f027d

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0f027c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    const v17, 0x3f266666    # 0.65f

    .line 1336
    invoke-virtual/range {v2 .. v17}, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ILjava/lang/String;Ljava/lang/String;F)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    move-result-object v19

    check-cast v19, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;

    .line 1347
    .local v19, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;
    const v2, 0x7f0801fb

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->setTopIconRes(I)V

    .line 1348
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->setDirectShareUrl(Ljava/lang/String;)V

    .line 1349
    const-string v2, "wei lesson"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->setSource(Ljava/lang/String;)V

    .line 1350
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->setShareSuccessListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 1351
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;->show(Landroid/support/v4/app/ag;)V

    .line 1352
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->reportWeiShareDialog()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    .end local v18    # "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v19    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/WeiKeShareFragment;
    .end local v21    # "weiKe":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;
    :goto_0
    return-void

    .line 1353
    :catch_0
    move-exception v20

    .line 1355
    .local v20, "ise":Ljava/lang/IllegalStateException;
    invoke-static/range {v20 .. v20}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showRecommendPop()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getContinueStudyDialog()Lcom/jiliguala/niuwa/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getContinueStudyDialog()Lcom/jiliguala/niuwa/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/c;->c(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getContinueStudyDialog()Lcom/jiliguala/niuwa/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/c;->d(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getContinueStudyDialog()Lcom/jiliguala/niuwa/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete$Data;->button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/c;->a(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getContinueStudyDialog()Lcom/jiliguala/niuwa/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$4;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/c;->a(Lcom/jiliguala/niuwa/a/b/c$a;)V

    .line 305
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getContinueStudyDialog()Lcom/jiliguala/niuwa/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/c;->a()V

    .line 307
    :cond_0
    return-void
.end method

.method private showShare()V
    .locals 4

    .prologue
    .line 843
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$b;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$b;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 844
    return-void
.end method

.method private showWeiKeDialog(I)V
    .locals 2
    .param p1, "currentIndex"    # I

    .prologue
    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 433
    .local v0, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->isUnAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showCourseShareDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_0
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private switchCourse(IZ)V
    .locals 8
    .param p1, "courseIndex"    # I
    .param p2, "ignoreLastPos"    # Z

    .prologue
    const/4 v0, 0x0

    .line 884
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 887
    .local v1, "courseDataAfterReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->updateTextAndBtn(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V

    .line 889
    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v5, "completed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 891
    .local v3, "finishState":Z
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getCourseFinishState(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->courseFinishedBeforeRefresh:Z

    .line 894
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isInteractCourse()Z

    move-result v4

    if-nez v4, :cond_0

    .line 896
    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->courseFinishedBeforeRefresh:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showShare()V

    .line 900
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->reportLessonCompleteAmplitude(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 904
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    if-eqz v4, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    move v2, v0

    .line 906
    .local v2, "lastSubCourseIndex":I
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_4

    .line 907
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mJumpInfoSubCourseContent:Z

    .line 920
    :goto_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v4, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    .line 922
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->setShareDialogListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareDialogListener;)V

    .line 925
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mJumpInfoSubCourseContent:Z

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mLastUnitTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->setCourseData(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;IZZZLcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V

    .line 928
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->addOrReplaceSubCourse()V

    .line 934
    .end local v1    # "courseDataAfterReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v2    # "lastSubCourseIndex":I
    .end local v3    # "finishState":Z
    :goto_2
    return-void

    .line 904
    .restart local v1    # "courseDataAfterReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .restart local v3    # "finishState":Z
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->getLastSubCourseIndex()I

    move-result v2

    goto :goto_0

    .line 910
    .restart local v2    # "lastSubCourseIndex":I
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getSubCourseFinishState(II)Z

    move-result v7

    .line 913
    .local v7, "isSubCourseFinished":Z
    if-eqz v7, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mJumpInfoSubCourseContent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 930
    .end local v1    # "courseDataAfterReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v2    # "lastSubCourseIndex":I
    .end local v3    # "finishState":Z
    .end local v7    # "isSubCourseFinished":Z
    :catch_0
    move-exception v0

    goto :goto_2

    .line 913
    .restart local v1    # "courseDataAfterReq":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .restart local v2    # "lastSubCourseIndex":I
    .restart local v3    # "finishState":Z
    .restart local v7    # "isSubCourseFinished":Z
    :cond_5
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private unRegisterReceiver()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mSendCourseReportReceiver:Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mSendCourseReportReceiver:Lcom/jiliguala/niuwa/receivers/SendCourseReportReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->homeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->homeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->d()V

    .line 197
    :cond_1
    return-void
.end method

.method private unlockWeChatCourse(Z)V
    .locals 8
    .param p1, "isFromClick"    # Z

    .prologue
    const/4 v5, 0x1

    .line 450
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mLastUnitTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mLastUnitTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->hasCourse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurIndicatorIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 452
    .local v7, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isWeiChatUnlockCourse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->wechatget:Z

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->hasRefresh:Z

    .line 454
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unitId:Ljava/lang/String;

    iget-object v3, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    const/4 v4, 0x0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->refreshUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 457
    .end local v7    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_1
    return-void
.end method

.method private updateTextAndBtn(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;)V
    .locals 4
    .param p1, "courseData"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .prologue
    const/16 v0, 0x8

    .line 709
    if-eqz p1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDoneUsers:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->doneusers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba\u5b8c\u6210"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseProgress:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->progress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isWeiKe()Z

    move-result v1

    if-nez v1, :cond_3

    .line 715
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mShare:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v3, "locked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v3, "unavailable"

    .line 716
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 722
    :cond_1
    :goto_1
    return-void

    .line 716
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 718
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mShare:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateTitle(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 3
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    const/4 v2, 0x0

    .line 584
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->typ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "single"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseTitle:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseChineseTitle:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->cttl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->ctitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    return-void
.end method

.method private updateVisibilityAccordingToType(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 568
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "roadmap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseChineseTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "single"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseChineseTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDaysIndicator:Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/common/widget/viewpagerindicator/TitlePageIndicator;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addCourseFinishWatcher()V
    .locals 4

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isAddCourseFinishWatcher:Z

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/d;

    .line 204
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$2;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$3;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    .line 205
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isAddCourseFinishWatcher:Z

    goto :goto_0
.end method

.method public disMissUnBindWetChatDescPop()V
    .locals 0

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->dismissUnBindDescDialog()V

    .line 1395
    return-void
.end method

.method public disMissWeChatBindPop()V
    .locals 0

    .prologue
    .line 1389
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->dismissWeChatBindDialog()V

    .line 1390
    return-void
.end method

.method public dismissUnBindDescDialog()V
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnBindDescPopDialog:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnBindDescPopDialog:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->dismiss()V

    .line 1560
    :cond_0
    return-void
.end method

.method public dismissWeChatBindDialog()V
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/h;->b()V

    .line 1554
    :cond_0
    return-void
.end method

.method public exitUnit()V
    .locals 4

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->relay:Z

    if-eqz v3, :cond_1

    .line 676
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 679
    .local v2, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 680
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 682
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v1

    .line 684
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCurrentIndicatorIndex()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurIndicatorIndex:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextCourseIndex()I
    .locals 4

    .prologue
    .line 1263
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1264
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 1265
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isCurrent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1281
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 1263
    .restart local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1278
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getCurrentItem()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 1279
    :catch_0
    move-exception v1

    .line 1281
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getCurrentItem()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto :goto_1
.end method

.method public isFromRoadMapUnit()Z
    .locals 1

    .prologue
    .line 1026
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isFromRoadMap()Z

    move-result v0

    return v0
.end method

.method public isUnitCompleted()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1481
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isOnLastDay()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1492
    :goto_0
    return v6

    .line 1484
    :cond_0
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 1485
    .local v2, "lastCourseIndex":I
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 1486
    .local v0, "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    .line 1487
    .local v5, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 1488
    .local v3, "lastSubIndex":I
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 1489
    .local v4, "subCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->isCompleted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 1490
    .end local v0    # "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    .end local v2    # "lastCourseIndex":I
    .end local v3    # "lastSubIndex":I
    .end local v4    # "subCourse":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    .end local v5    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;>;"
    :catch_0
    move-exception v1

    .line 1492
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public notifyData(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 1
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseFragment:Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/CourseFragment;->updateData(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 1329
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1236
    if-nez p1, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v0, :cond_0

    .line 1238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mJumpInfoSubCourseContent:Z

    .line 1240
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isInteractCourse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDelayRunnable:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1245
    :cond_0
    return-void
.end method

.method public onBtnClick()V
    .locals 1

    .prologue
    .line 1521
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    const-string v0, "\u62b1\u6b49\uff0c\u60a8\u7684\u8bbe\u5907\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\u54e6"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1526
    :goto_0
    return-void

    .line 1525
    :cond_0
    const/16 v0, 0x1001

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->bindWechatNow(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 596
    .local v3, "id":I
    sparse-switch v3, :sswitch_data_0

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 598
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->exitUnit()V

    goto :goto_0

    .line 602
    :sswitch_1
    const-string v6, ""

    .line 603
    .local v6, "shareText":Ljava/lang/String;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isOnLastDay()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    instance-of v9, v9, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    if-eqz v9, :cond_4

    .line 605
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v9, :cond_1

    .line 606
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isSingle()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 607
    const-string v6, "\u5206\u4eab\u8bfe\u7a0b\u62a5\u544a"

    .line 623
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getShowCourseShare()Z

    move-result v7

    .line 624
    .local v7, "showCourseShare":Z
    if-nez v7, :cond_6

    .line 625
    const-string v9, "\u5206\u4eab\u5355\u5143\u62a5\u544a"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 626
    .local v8, "unitShareReport":Z
    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->handleUnLoginAndNoBabyThenShareCourseReport(Z)V

    goto :goto_0

    .line 609
    .end local v7    # "showCourseShare":Z
    .end local v8    # "unitShareReport":Z
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isUnitCompleted()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isSingle()Z

    move-result v9

    if-nez v9, :cond_3

    .line 610
    const-string v6, "\u5206\u4eab\u5355\u5143\u62a5\u544a"

    goto :goto_1

    .line 612
    :cond_3
    const-string v6, "\u5206\u4eab\u8bfe\u7a0b\u62a5\u544a"

    goto :goto_1

    .line 616
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    instance-of v9, v9, Lcom/jiliguala/niuwa/module/course/main/CourseActivity;

    if-eqz v9, :cond_5

    .line 617
    const-string v6, "\u5206\u4eab\u8bfe\u7a0b\u62a5\u544a"

    goto :goto_1

    .line 618
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    instance-of v9, v9, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;

    if-eqz v9, :cond_1

    .line 619
    const-string v6, "\u5206\u4eab\u8bfe\u7a0b\u62a5\u544a"

    goto :goto_1

    .line 630
    .restart local v7    # "showCourseShare":Z
    :cond_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v9

    invoke-static {v9}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;

    move-result-object v2

    .line 632
    .local v2, "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 633
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "COURSE_SHARE"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 634
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->isAdded()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 635
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 636
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_7

    .line 637
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 638
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 644
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_7
    :goto_2
    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->setShareText(Ljava/lang/String;)V

    .line 646
    new-instance v9, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$6;

    invoke-direct {v9, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$6;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    invoke-virtual {v2, v9}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->setOptionChoiceInterface(Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment$OptionChoiceInterface;)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;

    .line 657
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->show(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 641
    :cond_8
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_2

    .line 660
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "courseShareOptionsFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/CourseShareOptionsFragment;
    .end local v6    # "shareText":Ljava/lang/String;
    .end local v7    # "showCourseShare":Z
    :sswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isAdded()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v9, :cond_0

    .line 661
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v5, v9, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->intro:Ljava/lang/String;

    .line 662
    .local v5, "intro":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-class v10, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "key_url"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v9, "key_need_more"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 665
    const-string v9, "key_disscuss_link"

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->discuss:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->startActivity(Landroid/content/Intent;)V

    .line 667
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v9

    const-string v10, "Unit Instruction View"

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0904ee -> :sswitch_1
        0x7f090599 -> :sswitch_0
        0x7f0905cf -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 160
    new-instance v1, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;-><init>(Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    .line 161
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 163
    const-string v1, "UNIT_OBJ"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->registerReceiver()V

    .line 166
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 501
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 503
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 507
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 512
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 513
    new-instance v1, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$5;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$5;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 533
    :cond_1
    return-object v0

    .line 508
    :catch_0
    move-exception v1

    goto :goto_0
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
    .line 404
    const v0, 0x7f0b0196

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRootView:Landroid/view/View;

    .line 405
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 359
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unRegisterReceiver()V

    .line 360
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 353
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroyView()V

    .line 354
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 552
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDetach()V

    .line 565
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1076
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 1041
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1050
    iput p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurIndicatorIndex:I

    .line 1057
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isInflating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurIndicatorIndex:I

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->report(I)V

    .line 1061
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurIndicatorIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->switchCourse(IZ)V

    .line 1062
    return-void
.end method

.method public onRecommendCourseSuccess(Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;)V
    .locals 0
    .param p1, "recommendCoursePopTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRecommendCoursePopTemplete:Lcom/jiliguala/niuwa/logic/network/json/RecommendCoursePopTemplete;

    .line 874
    return-void
.end method

.method public onRequestDataFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isInflating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1022
    return-void
.end method

.method public onRequestDataSuccess(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 5
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 767
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 768
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->updateTitle(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 771
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 772
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->generateCourseState(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-nez v0, :cond_6

    .line 775
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mLastUnitTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .line 780
    :goto_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .line 782
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v0, :cond_4

    .line 785
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courseindex:I

    iput v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurServerIndex:I

    .line 788
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->typ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->typ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->updateVisibilityAccordingToType(Ljava/lang/String;)V

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVPAdapter:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;->updateData(I)V

    .line 794
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVPAdapter:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$FakeVPAdapter;->notifyDataSetChanged()V

    .line 797
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mFakeVp:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurServerIndex:I

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 800
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurServerIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 802
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurServerIndex:I

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->switchCourse(IZ)V

    .line 804
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->generateCourseState(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 806
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isWeiKe()Z

    move-result v0

    if-nez v0, :cond_8

    .line 807
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 808
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mShare:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v4, "locked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->status:Ljava/lang/String;

    const-string v4, "unavailable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 816
    :cond_3
    :goto_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurServerIndex:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showWeiKeDialog(I)V

    .line 818
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->checkWeChatUnBindDescDialog()V

    .line 820
    :cond_4
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isInflating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 822
    :cond_5
    return-void

    .line 777
    :cond_6
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mLastUnitTemplete:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 808
    goto :goto_1

    .line 811
    :cond_8
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v0, :cond_3

    .line 812
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mShare:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->isUnAvailable()Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_9
    move v2, v1

    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 443
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 444
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f08040e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 447
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 365
    if-eqz p1, :cond_0

    .line 366
    const-string v0, "UNIT_OBJ"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 368
    :cond_0
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
    const/4 v1, 0x0

    .line 419
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->initUIComponent(Landroid/view/View;)V

    .line 421
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->bid:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unitId:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->courseId:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDelayRunnable:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;

    if-nez v0, :cond_1

    .line 426
    new-instance v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mDelayRunnable:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$DelayRunnable;

    .line 428
    :cond_1
    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->_id:Ljava/lang/String;

    goto :goto_0

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitObj:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;->_id:Ljava/lang/String;

    goto :goto_1
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 381
    if-eqz p1, :cond_0

    .line 382
    const-string v0, "UNIT_OBJ"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .line 384
    :cond_0
    return-void
.end method

.method public refreshUnitData()V
    .locals 4

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->bid:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unitId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->courseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->requestUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    :cond_0
    return-void
.end method

.method public refreshUnitDataAfterCourseReport(Z)V
    .locals 7
    .param p1, "openCourseReport"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->bid:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unitId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->courseId:Ljava/lang/String;

    move v4, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->refreshUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1517
    :cond_0
    return-void
.end method

.method public refreshUnitDataSuccess()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->isInteractCourse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mIsAutoCourseReport:Z

    .line 859
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->requestRecommendCourse()V

    .line 860
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->weike:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$WeiKe;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->doShareInteractLessonCourseReport(Ljava/lang/String;)V

    .line 863
    :cond_0
    return-void
.end method

.method public refreshUnitUnlockSuccess()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 281
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isRoadMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCurIndicatorIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 283
    .local v7, "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    .line 284
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->bid:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unitId:Ljava/lang/String;

    iget-object v3, v7, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->refreshUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 287
    .end local v7    # "course":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_0
    return-void
.end method

.method public report(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 848
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {v0, v1, p1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->reportLessonViewAmplitude(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;I)V

    .line 851
    :cond_0
    return-void
.end method

.method public sendCourseReportSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1499
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->hasSub()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->isSingle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->subs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;

    .line 1501
    .local v0, "subData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;->typ:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v2}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->sendReport(Ljava/lang/String;ILjava/lang/String;)V

    .line 1502
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->reportLessonCompleteAmplitude(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 1504
    .end local v0    # "subData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$SubData;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->refreshUnitDataAfterCourseReport(Z)V

    .line 1505
    return-void
.end method

.method public shareCancel()V
    .locals 0

    .prologue
    .line 1477
    return-void
.end method

.method public shareComplete()V
    .locals 5

    .prologue
    .line 1438
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1439
    .local v0, "babyId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1467
    :goto_0
    return-void

    .line 1442
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mShare:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1443
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1444
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/logic/network/http/entity/WeiKeEntity;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mCourseData:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;->_id:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/jiliguala/niuwa/logic/network/http/entity/WeiKeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->a(Lcom/jiliguala/niuwa/logic/network/http/entity/WeiKeEntity;)Lrx/e;

    move-result-object v2

    .line 1446
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1447
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1448
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$7;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$7;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    .line 1449
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1443
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public shareError()V
    .locals 0

    .prologue
    .line 1472
    return-void
.end method

.method public showCourseShareDialog()V
    .locals 0

    .prologue
    .line 1372
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showDialogFragment()V

    .line 1373
    return-void
.end method

.method public showUnBindDescPopDialog(Z)V
    .locals 3
    .param p1, "isInteract"    # Z

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->reportUbBindDescDialogAmplitude()V

    .line 1590
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnBindDescPopDialog:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    if-nez v1, :cond_0

    .line 1591
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnBindDescPopDialog:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    .line 1592
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnBindDescPopDialog:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    new-instance v2, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$8;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment$8;-><init>(Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->setOnActionListener(Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg$OnActionListener;)V

    .line 1603
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitDataTemplate:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;

    .line 1604
    .local v0, "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnBindDescPopDialog:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    invoke-virtual {v1, v0, p1}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->setData(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;Z)V

    .line 1606
    .end local v0    # "courseData":Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$CourseData;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnBindDescPopDialog:Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/unit/fragment/WxUnlockDlg;->show(Landroid/support/v4/app/ag;)V

    .line 1607
    return-void
.end method

.method public showUnitShareDialog()V
    .locals 20

    .prologue
    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mUnitPresenter:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->reportUnitShareDialogAmplitude(Ljava/lang/String;)V

    .line 1402
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 1401
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;

    move-result-object v2

    .line 1402
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getShareIconUrl()Ljava/lang/String;

    move-result-object v3

    .line 1403
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getShareTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    const/16 v7, 0xc

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->unitId:Ljava/lang/String;

    const/4 v13, 0x0

    const v14, 0x7f080378

    const v15, 0x7f0f00b6

    .line 1412
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0f0087

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    const v17, 0x3f266666    # 0.65f

    .line 1402
    invoke-virtual/range {v2 .. v17}, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ILjava/lang/String;Ljava/lang/String;F)Lcom/jiliguala/niuwa/module/course/main/fragment/CourseCompleteShareFragment;

    move-result-object v18

    check-cast v18, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;

    .line 1413
    .local v18, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;
    const v2, 0x7f0801fb

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->setTopIconRes(I)V

    .line 1414
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->setShareSuccessListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;->show(Landroid/support/v4/app/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    .end local v18    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/UnitShareFragment;
    :goto_0
    return-void

    .line 1416
    :catch_0
    move-exception v19

    .line 1418
    .local v19, "ise":Ljava/lang/IllegalStateException;
    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showWeChatBindDialog()V
    .locals 2

    .prologue
    .line 1529
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->reportWeiXinConnectedDialog()V

    .line 1530
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    if-nez v0, :cond_0

    .line 1531
    new-instance v0, Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    .line 1532
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const v1, 0x7f080320

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->c(I)V

    .line 1533
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const v1, 0x7f0f0253

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->b(Ljava/lang/String;)V

    .line 1534
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const-string v1, "\u7ed1\u5b9a\u5fae\u4fe1"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->e(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->b(Z)V

    .line 1536
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/h;->a(Lcom/jiliguala/niuwa/a/b/h$a;)V

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->mBindWeChatPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/h;->a()V

    .line 1539
    return-void
.end method

.method public showWetChatBindPop()V
    .locals 0

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showWeChatBindDialog()V

    .line 1378
    return-void
.end method

.method public showWetChatUnBindDescPop(ZZ)V
    .locals 1
    .param p1, "isClick"    # Z
    .param p2, "isInteract"    # Z

    .prologue
    .line 1382
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->hasRefresh:Z

    if-nez v0, :cond_1

    .line 1383
    :cond_0
    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->showUnBindDescPopDialog(Z)V

    .line 1385
    :cond_1
    return-void
.end method
