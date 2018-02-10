.class public Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/a/b/h$a;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;
.implements Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;
.implements Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;,
        Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;
    }
.end annotation


# static fields
.field public static final ARGUMENT_IS_FROM_LOGOUT:Ljava/lang/String; = "ARGUMENT_IS_FROM_LOGOUT"

.field private static final MAX_SHARE_DLG_COUNT:I = 0x2

.field private static final MAX_WAIT_TIME:I = 0x7d0

.field private static final MSG_HIDE_H5_SHARE_DLG:I = 0x1005

.field private static final MSG_HIDE_MIGRATION_DLG:I = 0x1003

.field private static final MSG_SHOW_H5_SHARE_DLG:I = 0x1004

.field private static final MSG_SHOW_MIGRATION_DLG:I = 0x1002

.field private static final MSG_SHOW_RATE_DLG:I = 0x1006

.field private static final MSG_SHOW_RECOMMEND_RED_DOT:I = 0x1008

.field private static final MSG_SHOW_RED_DOT:I = 0x1001

.field private static final MSG_SHOW_SETTING_FEEDBACK_RED_DOT:I = 0x1009

.field private static final MSG_SHOW_SETTING_MSG_DOT:I = 0x1007

.field private static final MSG_SHOW_TREASURE:I = 0x100a

.field private static final MSG_SHOW_UPDATE_DLG:I = 0x1000

.field private static final REPORT_DELAY_TIME:I = 0x1f4

.field public static final REQUEST_CODE_ADD_BABY:I = 0x2101

.field public static final REQUEST_CODE_FULLFILL_PHONE:I = 0x2103

.field public static final REQUEST_CODE_LOGIN:I = 0x2102

.field public static S_IS_SUB_COURSE_VISIBLE:Z

.field private static final TAB_ICONS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private clickAddBaby:Z

.field private dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

.field private firstStart:Z

.field private hasShowThisSession:Z

.field private isAddBabyDlgShowing:Z

.field killed:Z

.field lastTime:J

.field private mAngryModeHelper:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentPos:I

.field private mFragmentManager:Landroid/support/v4/app/ag;

.field private mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

.field private mHomeKeyEventReceiver:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;

.field private final mHomeKeyFilter:Landroid/content/IntentFilter;

.field private mHomeViewStub:Landroid/view/ViewStub;

.field private mMaskContainer:Landroid/widget/FrameLayout;

.field private mNetworkFilter:Landroid/content/IntentFilter;

.field private mNotifUrl:Ljava/lang/String;

.field private mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

.field private mReceiver:Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

.field private mRootContainer:Landroid/view/View;

.field private mService:Landroid/content/Intent;

.field private mShowAcquireCourse:Ljava/lang/String;

.field private mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

.field mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

.field mUnreadCount:I

.field private migrationDlg:Landroid/app/Dialog;

.field private networkDlg:Lcom/jiliguala/niuwa/common/a/a;

.field private onCreateFinish:Z

.field public shouldFeedBackShowRedDot:Z

.field public shouldRecvMsgShowRedDot:Z

.field public shouldRecvNotifShowRedDot:Z

.field private updateDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->TAG:Ljava/lang/String;

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->TAB_ICONS:[I

    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->S_IS_SUB_COURSE_VISIBLE:Z

    return-void

    .line 125
    :array_0
    .array-data 4
        0x7f08008c
        0x7f08008b
        0x7f08008f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeKeyFilter:Landroid/content/IntentFilter;

    .line 134
    iput v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mUnreadCount:I

    .line 137
    iput v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mCurrentPos:I

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->firstStart:Z

    .line 142
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->isAddBabyDlgShowing:Z

    .line 149
    new-instance v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$1;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->clickAddBaby:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->reportToAmplitude(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->isAddBabyDlgShowing:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showUpdateDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->migrationDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showRateDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showRealTreasure(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->checkNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showSettingMessageRedDot()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showSettingTabRedDot()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showSettingFeedBackRedDot()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->hideSettingFeedBackRedDot()V

    return-void
.end method

.method static synthetic access$902(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mCurrentPos:I

    return p1
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 1281
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$5;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$6;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    .line 1282
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 1280
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1301
    return-void
.end method

.method private changeTabToHome()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1028
    iput v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mCurrentPos:I

    .line 1029
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->setCurrentTab(I)V

    .line 1030
    return-void
.end method

.method private checkFeedBack()V
    .locals 1

    .prologue
    .line 594
    new-instance v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->getFeedbackUnreadCount(Lcom/alibaba/sdk/android/feedback/util/IUnreadCountCallback;)V

    .line 612
    return-void
.end method

.method private checkGuaCoinShowRedDot()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method private checkNetwork(Ljava/lang/String;)V
    .locals 3
    .param p1, "downloadLink"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->ApkResNoneWifiDownloadEnable:Z

    if-nez v1, :cond_1

    .line 419
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 420
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/c;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    .line 422
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 423
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$10;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 449
    .end local v0    # "type":I
    :goto_0
    return-void

    .line 444
    .restart local v0    # "type":I
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->doAppUpGrade(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    .end local v0    # "type":I
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->doAppUpGrade(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkOnBoarding()V
    .locals 4

    .prologue
    const/16 v3, 0x2101

    .line 969
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 970
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 974
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v2

    if-nez v2, :cond_1

    .line 975
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 976
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 995
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->H()Z

    move-result v2

    if-nez v2, :cond_0

    .line 986
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForWxRegistration(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 989
    .restart local v1    # "intent":Landroid/content/Intent;
    const/16 v2, 0x2103

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 992
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 993
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private doAfterWechatPushSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 942
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "wechatAuthorizationAction"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mShowAcquireCourse:Ljava/lang/String;

    .line 944
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mShowAcquireCourse:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 945
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mShowAcquireCourse:Ljava/lang/String;

    const-string v3, "confirm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 946
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "openid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "openid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sceneid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, "sceneid":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-eqz v2, :cond_2

    .line 949
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->setCurrentTab(I)V

    .line 953
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    if-eqz v2, :cond_0

    .line 954
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->postDataToServer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    .end local v0    # "openid":Ljava/lang/String;
    .end local v1    # "sceneid":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mShowAcquireCourse:Ljava/lang/String;

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-eqz v2, :cond_0

    .line 958
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method private generateBottomBarItem()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x2

    const/high16 v8, 0x40800000    # 4.0f

    const v7, 0x7f0900b9

    .line 654
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 656
    .local v4, "size":I
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 657
    .local v1, "parent":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 659
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 662
    .local v3, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 663
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 664
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 665
    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 666
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 667
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 668
    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 672
    .restart local v3    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 673
    .local v2, "redDot":Landroid/widget/ImageView;
    const v5, 0x7f0900ba

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 674
    const v5, 0x7f0802c5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 675
    const/4 v5, 0x7

    invoke-virtual {v3, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 676
    const/4 v5, 0x6

    invoke-virtual {v3, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 677
    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v6

    invoke-virtual {v3, v10, v5, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 678
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    return-object v1
.end method

.method private getTabView(II)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I
    .param p2, "iconResId"    # I

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->generateBottomBarItem()Landroid/view/View;

    move-result-object v2

    .line 685
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0900b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 686
    .local v0, "icon":Landroid/widget/ImageView;
    const v3, 0x7f0900ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 687
    .local v1, "red_dot":Landroid/widget/ImageView;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 689
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 690
    return-object v2
.end method

.method private hideSettingFeedBackRedDot()V
    .locals 3

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v2, 0x1009

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1136
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1137
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1138
    return-void
.end method

.method private initHomeUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 694
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mFragmentManager:Landroid/support/v4/app/ag;

    .line 696
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mFragmentManager:Landroid/support/v4/app/ag;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/a/d;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    .line 697
    const v3, 0x1020012

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    .line 698
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    const v5, 0x1020011

    invoke-virtual {v3, p0, v4, v5}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/content/Context;Landroid/support/v4/app/ag;I)V

    .line 699
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 701
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 702
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->clearAllTabs()V

    .line 705
    :cond_0
    sget-object v3, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->TAB_ICONS:[I

    array-length v1, v3

    .line 706
    .local v1, "length":I
    const/4 v2, 0x0

    .line 707
    .local v2, "tabSpec":Landroid/widget/TabHost$TabSpec;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 709
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    sget-object v4, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->TAB_ICONS:[I

    aget v4, v4, v0

    invoke-direct {p0, v0, v4}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getTabView(II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 710
    packed-switch v0, :pswitch_data_0

    .line 726
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080086

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    const-class v4, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    invoke-virtual {v3, v2, v4, v6}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 717
    :pswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    const-class v4, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    invoke-virtual {v3, v2, v4, v6}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 721
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    const-class v4, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    invoke-virtual {v3, v2, v4, v6}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 728
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    new-instance v4, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 747
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/n;->c()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/n;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/n;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 748
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->checkOppoPermission()V

    .line 750
    :cond_3
    return-void

    .line 710
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private oneMoreClickExit()V
    .locals 6

    .prologue
    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 860
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->lastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 861
    const-string v2, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u53fd\u91cc\u5471\u5566"

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 862
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->lastTime:J

    .line 876
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeKeyEventReceiver:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;

    if-eqz v2, :cond_1

    .line 866
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeKeyEventReceiver:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 873
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->getInstance()Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->shutDown()V

    .line 874
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->finish()V

    goto :goto_0

    .line 867
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private reportToAmplitude(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 789
    .local v1, "fragmentManager":Landroid/support/v4/app/ag;
    const/4 v0, 0x0

    .line 791
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 793
    instance-of v3, v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    if-eqz v3, :cond_1

    .line 795
    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainFragment;->reportToAmplitde()V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 796
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    instance-of v3, v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    if-eqz v3, :cond_2

    .line 798
    check-cast v0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryFragment;->reportToAmplitde()V

    goto :goto_0

    .line 799
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    instance-of v3, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    if-eqz v3, :cond_3

    .line 801
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 802
    .local v2, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "View"

    const-string v4, "Self"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Profile View"

    invoke-virtual {v3, v4, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 805
    .end local v2    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private showHomeView()V
    .locals 3

    .prologue
    const/16 v2, 0x1006

    .line 889
    const v0, 0x7f090269

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeViewStub:Landroid/view/ViewStub;

    .line 890
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeViewStub:Landroid/view/ViewStub;

    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 892
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 893
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->initHomeUI()V

    .line 909
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 911
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendEmptyMessage(I)Z

    .line 930
    :cond_1
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FIRST_START"

    const/4 v1, 0x1

    .line 931
    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showSettingTabRedDot()V

    .line 936
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->addEventObserver()V

    .line 938
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->doAfterWechatPushSuccess()V

    .line 939
    return-void

    .line 914
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 915
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 919
    :cond_4
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showRateDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getCurrentPos()I

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/a;->a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/j/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/j/a;->a(Z)Lcom/jiliguala/niuwa/logic/j/a;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/j/a;->c(Z)Lcom/jiliguala/niuwa/logic/j/a;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/j/a;->b(Z)Lcom/jiliguala/niuwa/logic/j/a;

    .line 279
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/a;->a(Landroid/app/Activity;)Z

    .line 281
    :cond_0
    return-void
.end method

.method private showRealTreasure(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V
    .locals 3
    .param p1, "treasure"    # Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    .prologue
    .line 1045
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/j;

    const/16 v2, 0x1021

    invoke-direct {v1, p1, v2}, Lcom/jiliguala/niuwa/logic/b/a/j;-><init>(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 1046
    return-void
.end method

.method private showSettingFeedBackRedDot()V
    .locals 3

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v2, 0x1009

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1130
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1131
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1132
    return-void
.end method

.method private showSettingMessageRedDot()V
    .locals 3

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v2, 0x1007

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1143
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1144
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1145
    return-void
.end method

.method private showSettingTabRedDot()V
    .locals 3

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1149
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1150
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1151
    return-void
.end method

.method private showUpdateDialog(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 359
    iget-boolean v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->hasShowThisSession:Z

    if-eqz v9, :cond_0

    .line 415
    :goto_0
    return-void

    .line 362
    :cond_0
    iput-boolean v11, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->hasShowThisSession:Z

    .line 363
    const-string v9, "UPGRADE_LINK"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "downloadLink":Ljava/lang/String;
    const-string v9, "UPGRADE_WHATSNEW"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 365
    .local v7, "whatsNews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/app/Dialog;

    const v10, 0x7f1000b4

    invoke-direct {v9, p0, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    .line 366
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 367
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    const v10, 0x7f0b0193

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(I)V

    .line 369
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070120

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    .line 370
    .local v8, "width":I
    const/4 v3, -0x2

    .line 371
    .local v3, "height":I
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v8, v3}, Landroid/view/Window;->setLayout(II)V

    .line 372
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v9, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 373
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    invoke-virtual {v9, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 375
    if-eqz v7, :cond_2

    .line 376
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    const v10, 0x7f09057a

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 377
    .local v5, "title":Landroid/widget/TextView;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    const v10, 0x7f090160

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 379
    .local v1, "content":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 382
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 383
    .local v6, "whatsNew":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u3001"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 385
    .end local v6    # "whatsNew":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "content":Landroid/widget/TextView;
    .end local v4    # "i":I
    .end local v5    # "title":Landroid/widget/TextView;
    :cond_2
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    const v10, 0x7f09014b

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$7;

    invoke-direct {v10, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$7;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    const v10, 0x7f090156

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$8;

    invoke-direct {v10, p0, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$8;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    :try_start_0
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    new-instance v10, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$9;

    invoke-direct {v10, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$9;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 411
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateDialog:Landroid/app/Dialog;

    const-string v10, "UPDATE_DIALOG"

    invoke-static {v9, v10}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->addDialogToChain(Landroid/app/Dialog;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method private smoothSwitchScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 284
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 285
    .local v1, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "resourceId":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 287
    .local v2, "statusBarHeight":I
    invoke-virtual {v1, v7, v2, v7, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 288
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 289
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 290
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mReceiver:Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mReceiver:Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->unRegister()V

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public apkDownloadComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mRootContainer:Landroid/view/View;

    new-instance v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$4;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1199
    return-void
.end method

.method public apkDownloadFailed()V
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->dismissAllowingStateLoss()V

    .line 1204
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public checkOppoPermission()V
    .locals 8

    .prologue
    .line 753
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->H()Z

    move-result v4

    if-nez v4, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-static {p0}, Landroid/support/v4/app/bj;->a(Landroid/content/Context;)Landroid/support/v4/app/bj;

    move-result-object v1

    .line 757
    .local v1, "nmc":Landroid/support/v4/app/bj;
    invoke-virtual {v1}, Landroid/support/v4/app/bj;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 760
    const-string v4, "SHOW_OPPO_PERMISSION_DIALOG_TIME"

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;J)J

    move-result-wide v2

    .line 762
    .local v2, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0xf731400

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/a/h;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/h;

    move-result-object v0

    .line 764
    .local v0, "dialog":Lcom/jiliguala/niuwa/common/a/h;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jiliguala/niuwa/common/a/h;->b(Landroid/support/v4/app/ag;)V

    .line 765
    const-string v4, "SHOW_OPPO_PERMISSION_DIALOG_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public enableInnerContainer()V
    .locals 0

    .prologue
    .line 1331
    return-void
.end method

.method public exitCurrentSubCourse()V
    .locals 0

    .prologue
    .line 1326
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 234
    return-object p0
.end method

.method public getCurrentPos()I
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mCurrentPos:I

    return v0
.end method

.method public handleUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1165
    .local p2, "whatsNews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/jiliguala/niuwa/c;->a(Ljava/lang/String;)V

    .line 1166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1167
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "UPGRADE_LINK"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v2, "UPGRADE_WHATSNEW"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1169
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1170
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1171
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1172
    return-void
.end method

.method public hasCoursePay()Z
    .locals 1

    .prologue
    .line 1335
    const/4 v0, 0x1

    return v0
.end method

.method public hasStop()Z
    .locals 1

    .prologue
    .line 1340
    const/4 v0, 0x0

    return v0
.end method

.method public hideRedDot()V
    .locals 1

    .prologue
    .line 1157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldRecvNotifShowRedDot:Z

    .line 1161
    return-void
.end method

.method public isCurrentOnMyPage()Z
    .locals 2

    .prologue
    .line 883
    iget v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mCurrentPos:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInteractCourseFragmentVisible()Z
    .locals 1

    .prologue
    .line 1320
    const/4 v0, 0x1

    return v0
.end method

.method public newStart()V
    .locals 0

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->checkOnBoarding()V

    .line 1210
    return-void
.end method

.method public normalStart()V
    .locals 5

    .prologue
    const/16 v4, 0x2101

    .line 1254
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 1255
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1256
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1257
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1258
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1259
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2, v4}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1277
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1263
    :cond_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1264
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1265
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2, v4}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1269
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showHomeView()V

    goto :goto_0

    .line 1274
    :cond_2
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1275
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 999
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1000
    packed-switch p1, :pswitch_data_0

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1002
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_2

    .line 1006
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showHomeView()V

    .line 1010
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->changeTabToHome()V

    goto :goto_0

    .line 1011
    :cond_2
    const v0, 0x8888

    if-ne p2, v0, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->onBackPressed()V

    goto :goto_0

    .line 1019
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->updateStart()V

    goto :goto_0

    .line 1022
    :pswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showHomeView()V

    goto :goto_0

    .line 1000
    :pswitch_data_0
    .packed-switch 0x2101
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBtnClick()V
    .locals 3

    .prologue
    .line 1345
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    if-eqz v1, :cond_0

    .line 1346
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/a/b/h;->b()V

    .line 1348
    :cond_0
    sget-object v1, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    .line 1349
    .local v0, "api":Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1350
    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->openWXApp()Z

    .line 1354
    :goto_0
    return-void

    .line 1352
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 297
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/y;->a()Lcom/jiliguala/niuwa/common/util/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/y;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->onCreateFinish:Z

    .line 300
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/d/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/d/a;->a(Ljava/lang/String;)V

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/jiliguala/niuwa/logic/d/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/support/v4/app/ag;)V

    .line 305
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->finish()V

    .line 348
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/y;->a()Lcom/jiliguala/niuwa/common/util/y;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/common/util/y;->a(Landroid/app/Activity;)V

    .line 316
    invoke-static {}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->getInstance()Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/videofav/VideoFavClient;->checkReportVideoFavToServer()V

    .line 318
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "App Open"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "apk channel"

    sget-object v3, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Money Sign"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->finish()V

    goto :goto_0

    .line 327
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->init()V

    .line 328
    sget-boolean v1, Lcom/jiliguala/niuwa/common/util/b/a;->b:Z

    if-eqz v1, :cond_3

    .line 329
    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mAngryModeHelper:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    .line 331
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/p/a;->a()Lcom/jiliguala/niuwa/logic/p/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/p/a;->b()V

    .line 332
    new-instance v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeKeyEventReceiver:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;

    .line 333
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeKeyEventReceiver:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeKeyFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    new-instance v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    .line 335
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mNetworkFilter:Landroid/content/IntentFilter;

    .line 336
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mConnReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mNetworkFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    new-instance v1, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .line 339
    const-string v1, "Start View"

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->smoothSwitchScreen()V

    .line 341
    const v1, 0x7f0b0034

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->setContentView(I)V

    .line 342
    const v1, 0x7f090478

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mRootContainer:Landroid/view/View;

    .line 344
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 346
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->resiterLocalServer()V

    goto/16 :goto_0
.end method

.method public onDataMigration()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendEmptyMessage(I)Z

    .line 1051
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->onCreateFinish:Z

    if-eqz v0, :cond_0

    .line 540
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 566
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "App Close"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/y;->a()Lcom/jiliguala/niuwa/common/util/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/y;->d()V

    .line 545
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 546
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->e()V

    .line 547
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->e()V

    .line 548
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeKeyEventReceiver:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;

    if-eqz v0, :cond_1

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHomeKeyEventReceiver:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$b;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->unRegisterAll()V

    .line 555
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->unRegisterReceiver()V

    .line 559
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->releaseRef()V

    .line 564
    :cond_2
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/j/a;->a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/j/a;->g()V

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onFinishMigration()V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendEmptyMessage(I)Z

    .line 1056
    return-void
.end method

.method public onFinishUserMigration()V
    .locals 4

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->sendEmptyMessage(I)Z

    .line 1061
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    new-instance v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$2;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->post(Ljava/lang/Runnable;)Z

    .line 1067
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    new-instance v1, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$3;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1080
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 835
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 836
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    .line 837
    .local v3, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v3}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 838
    .local v0, "backEntryCount":I
    if-lez v0, :cond_1

    .line 840
    add-int/lit8 v4, v0, -0x1

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/support/v4/app/ag;->b(I)Landroid/support/v4/app/ag$a;

    move-result-object v2

    .line 841
    .local v2, "entry":Landroid/support/v4/app/ag$a;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/support/v4/app/ag$a;->n()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UnitFragment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    const/4 v4, 0x0

    sput-boolean v4, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->S_IS_SUB_COURSE_VISIBLE:Z

    .line 845
    :cond_0
    invoke-virtual {v3}, Landroid/support/v4/app/ag;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .end local v2    # "entry":Landroid/support/v4/app/ag$a;
    :goto_0
    const/4 v4, 0x1

    .line 855
    .end local v0    # "backEntryCount":I
    .end local v3    # "fm":Landroid/support/v4/app/ag;
    :goto_1
    return v4

    .line 846
    .restart local v0    # "backEntryCount":I
    .restart local v3    # "fm":Landroid/support/v4/app/ag;
    :catch_0
    move-exception v1

    .line 848
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 851
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->oneMoreClickExit()V

    goto :goto_0

    .line 855
    .end local v0    # "backEntryCount":I
    .end local v3    # "fm":Landroid/support/v4/app/ag;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_1
.end method

.method public onLoginSucceed()V
    .locals 1

    .prologue
    .line 1305
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->clickAddBaby:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showAddBabyPage()V

    .line 1307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->clickAddBaby:Z

    .line 1309
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 631
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->checkVersion()V

    .line 632
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->registerAll()V

    .line 634
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->checkGuaCoinShowRedDot()V

    .line 636
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/d/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/d/a;->a(Ljava/lang/String;)V

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/jiliguala/niuwa/logic/d/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/support/v4/app/ag;)V

    .line 641
    return-void
.end method

.method public onNotifyReceived()V
    .locals 1

    .prologue
    .line 825
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showRedDot()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 527
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 530
    invoke-static {p0}, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->b(Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;)V

    .line 531
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 532
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mAngryModeHelper:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mAngryModeHelper:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->stopMonitoring()V

    .line 535
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 268
    const-string v0, "killed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->killed:Z

    .line 269
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 270
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 574
    invoke-static {p0}, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->a(Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;)V

    .line 575
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 579
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mPresenter:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->requestGlobe()V

    .line 586
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mAngryModeHelper:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mAngryModeHelper:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->startMonitoring()V

    .line 591
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    const-string v0, "killed"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 645
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onStart()V

    .line 646
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 650
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onStop()V

    .line 651
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 813
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onWindowFocusChanged(Z)V

    .line 814
    if-eqz p1, :cond_0

    .line 818
    iget v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mCurrentPos:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->reportToAmplitude(I)V

    .line 820
    :cond_0
    return-void
.end method

.method public reportSubscribeDataToServerSuccess()V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showSubscribeSuccessDialog()V

    .line 240
    return-void
.end method

.method public resiterLocalServer()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mReceiver:Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mReceiver:Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/LocalServer/ServerStatusReceiver;->register()V

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/LocalServer/CoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mService:Landroid/content/Intent;

    .line 196
    const-string v0, "[MainActivity],mainactivity"

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startServer(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setYouzanSharePrefix(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "sharePrefix":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    const/4 v2, 0x0

    .line 218
    .local v2, "youzanFragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 219
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 220
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v4, v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    if-eqz v4, :cond_0

    .line 221
    move-object v2, v0

    goto :goto_0

    .line 225
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .end local v2    # "youzanFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->setShareprefix(Ljava/util/ArrayList;)V

    .line 230
    :cond_2
    return-void
.end method

.method public showAddBabyPage()V
    .locals 3

    .prologue
    .line 1313
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1314
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1315
    const v1, 0x7f01001d

    const v2, 0x7f010013

    invoke-virtual {p0, v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->overridePendingTransition(II)V

    .line 1316
    return-void
.end method

.method public showApkDownloadProgress()V
    .locals 2

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mFragmentManager:Landroid/support/v4/app/ag;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/d;->b(Landroid/support/v4/app/ag;)V

    .line 1186
    :cond_0
    return-void
.end method

.method public showFragmentFeedBackDot(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 517
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mFragmentManager:Landroid/support/v4/app/ag;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mFragmentManager:Landroid/support/v4/app/ag;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 519
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    if-eqz v1, :cond_0

    .line 520
    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showFeedBackRedDot(Z)V

    .line 523
    :cond_0
    return-void
.end method

.method public showFragmentMessageDot(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 498
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mFragmentManager:Landroid/support/v4/app/ag;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mFragmentManager:Landroid/support/v4/app/ag;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 500
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    if-eqz v1, :cond_1

    .line 501
    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPageFragment;->showRedDot(Z)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 503
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    new-instance v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$11;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showIndicatorRecRedDot(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 495
    return-void
.end method

.method public showIndicatorRedDot(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 462
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-eqz v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    .line 464
    .local v1, "tabWidget":Landroid/widget/TabWidget;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 465
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0900ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 466
    .local v0, "redDot":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 467
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    .end local v0    # "redDot":Landroid/widget/ImageView;
    .end local v1    # "tabWidget":Landroid/widget/TabWidget;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 467
    .restart local v0    # "redDot":Landroid/widget/ImageView;
    .restart local v1    # "tabWidget":Landroid/widget/TabWidget;
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    const/16 v3, 0x8

    goto :goto_0
.end method

.method public showMask(Z)V
    .locals 5
    .param p1, "isHighAge"    # Z

    .prologue
    const/4 v4, -0x1

    .line 771
    const-string v2, "SHOW_MASK_VIEW"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 772
    .local v1, "show":Z
    if-nez v1, :cond_0

    .line 773
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/MainMaskView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;-><init>(Landroid/content/Context;Z)V

    .line 774
    .local v0, "maskView":Lcom/jiliguala/niuwa/common/widget/MainMaskView;
    new-instance v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$14;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$14;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/MainMaskView;->setOnDismissListener(Lcom/jiliguala/niuwa/common/widget/MainMaskView$a;)V

    .line 780
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    if-eqz v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mTabHost:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    .end local v0    # "maskView":Lcom/jiliguala/niuwa/common/widget/MainMaskView;
    :cond_0
    return-void
.end method

.method public showMigrationBlockDlg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1083
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->migrationDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->migrationDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->migrationDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1085
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b4

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->migrationDlg:Landroid/app/Dialog;

    .line 1086
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->migrationDlg:Landroid/app/Dialog;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1088
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->migrationDlg:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1089
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->migrationDlg:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->migrationDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_0
    return-void

    .line 1106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showRecommendRedDot(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 1121
    if-eqz p1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v2, 0x1008

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1123
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1124
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1126
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public showRedDot()V
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldRecvNotifShowRedDot:Z

    .line 1114
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showSettingTabRedDot()V

    .line 1116
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showSettingMessageRedDot()V

    .line 1117
    return-void
.end method

.method public showSubscribeSuccessDialog()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/jiliguala/niuwa/a/b/h;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/a/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    .line 245
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const v1, 0x7f08030b

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->c(I)V

    .line 246
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const-string v1, "\u8bf7\u6ce8\u610f\u67e5\u770b\u5fae\u4fe1\u670d\u52a1\u901a\u77e5\uff0c\u8010\u5fc3\u7b49\u5019\uff01"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->b(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const-string v1, "\u8df3\u8f6c\u81f3\u5fae\u4fe1"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->e(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/h;->b(Z)V

    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/h;->a(Lcom/jiliguala/niuwa/a/b/h$a;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mStandPopDialog:Lcom/jiliguala/niuwa/a/b/h;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/h;->a()V

    .line 252
    return-void
.end method

.method public showTreasure(Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;)V
    .locals 3
    .param p1, "treasure"    # Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mHandler:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    const/16 v2, 0x100a

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1035
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1036
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1037
    return-void
.end method

.method public startServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mService:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->initLocalServer:Z

    goto :goto_0
.end method

.method public stopServer()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->mService:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 189
    return-void
.end method

.method public updateApkDownloadProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/a/d;->a(I)V

    .line 1179
    :cond_0
    return-void
.end method

.method public updateStart()V
    .locals 5

    .prologue
    const/16 v4, 0x2103

    const/16 v3, 0x2101

    .line 1214
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 1215
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1216
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1218
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1219
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1220
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForWxRegistration(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1223
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1249
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1227
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1231
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1232
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1233
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1235
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->H()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1237
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForWxRegistration(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1239
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1241
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showHomeView()V

    goto :goto_0

    .line 1246
    :cond_5
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->newBabyOnBoardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1247
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
