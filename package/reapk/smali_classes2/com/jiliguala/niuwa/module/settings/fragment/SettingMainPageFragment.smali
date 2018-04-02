.class public Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final REQUEST_CODE_MOBILE_REQUIRED_FOR_MODIFY_USER_INFO:I = 0x2009

.field public static final REQUEST_CODE_MOBILE_REQUIRED_FOR_REGISTER:I = 0x200a

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private clickId:I

.field private dailyDurationTv:Landroid/widget/TextView;

.field private downloadIntentFilter:Landroid/content/IntentFilter;

.field private dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

.field private mAboutUsTv:Landroid/widget/TextView;

.field private mCdKeyContainer:Landroid/widget/RelativeLayout;

.field private mCheckNewContainer:Landroid/view/View;

.field private mCheckNewTv:Landroid/widget/TextView;

.field private mCleanCache:Landroid/widget/TextView;

.field private mCleanCacheTv:Landroid/widget/TextView;

.field private mDownloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

.field private mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

.field private mFeedBackTv:Landroid/widget/TextView;

.field private mGuestLogoutDialogInterface:Lcom/jiliguala/niuwa/common/util/h$a;

.field private mJlGLCacheFileManager:Lcom/jiliguala/niuwa/common/util/xutils/util/g;

.field private mLoadingProgress:Lcom/jiliguala/niuwa/a/b/e;

.field private mNoneWifiSwBtn:Lcom/kyleduo/switchbutton/SwitchButton;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPushEnableSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

.field private mPushEnableTv:Landroid/widget/TextView;

.field private mRegisterTv:Landroid/widget/TextView;

.field private mShareUs:Landroid/widget/TextView;

.field private mTotalSize:Ljava/lang/String;

.field private mTvLogin:Landroid/widget/TextView;

.field private mTvLoginContainer:Landroid/widget/RelativeLayout;

.field private mVersionTv:Landroid/widget/TextView;

.field private networkDlg:Lcom/jiliguala/niuwa/common/a/a;

.field private progressDlg:Lcom/jiliguala/niuwa/common/a/g;

.field private swBtnReverse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->TAG:Ljava/lang/String;

    .line 98
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 119
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mDownloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    .line 169
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$9;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$9;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mGuestLogoutDialogInterface:Lcom/jiliguala/niuwa/common/util/h$a;

    .line 191
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->swBtnReverse:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mFeedBackTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->dailyDurationTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->goToTvLogin()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/a/b/e;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mLoadingProgress:Lcom/jiliguala/niuwa/a/b/e;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->reportCleanCacheAmplitude()V

    return-void
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->deleteCacheFile()V

    return-void
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->testLoginOut()V

    return-void
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->goCdKey()V

    return-void
.end method

.method static synthetic access$1700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->showUpdateDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->download(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->logout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->checkNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    iget v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->clickId:I

    return v0
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->clickId:I

    return p1
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->goFaqActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->showSafeMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->doCheckNew()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->doShareAction()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->showLoginDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->goToPersonalInfoSetting()V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 834
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$7;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$7;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$8;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$8;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    .line 835
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 833
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 857
    return-void
.end method

.method private calCacheSize()V
    .locals 2

    .prologue
    .line 596
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mJlGLCacheFileManager:Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    .line 597
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mJlGLCacheFileManager:Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a(Lcom/jiliguala/niuwa/common/util/xutils/util/g$b;)V

    .line 598
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mJlGLCacheFileManager:Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->a()V

    .line 599
    return-void
.end method

.method private checkNetwork(Ljava/lang/String;)V
    .locals 3
    .param p1, "downloadLink"    # Ljava/lang/String;

    .prologue
    .line 745
    sget-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->ApkResNoneWifiDownloadEnable:Z

    if-nez v1, :cond_1

    .line 746
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v0

    .line 747
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/c;->b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    .line 749
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/support/v4/app/ag;)V

    .line 750
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->networkDlg:Lcom/jiliguala/niuwa/common/a/a;

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 775
    .end local v0    # "type":I
    :goto_0
    return-void

    .line 770
    .restart local v0    # "type":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->download(Ljava/lang/String;)V

    goto :goto_0

    .line 773
    .end local v0    # "type":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->download(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteCacheFile()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mJlGLCacheFileManager:Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->b()V

    .line 431
    return-void
.end method

.method private doCheckNew()V
    .locals 5

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    .line 700
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/a/g;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 705
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->g()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;I)Lrx/e;

    move-result-object v2

    .line 706
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 707
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 708
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$3;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Lcom/jiliguala/niuwa/common/a/g;)V

    .line 709
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 704
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 742
    return-void
.end method

.method private doShareAction()V
    .locals 7

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v6

    .line 677
    .local v6, "fm":Landroid/support/v4/app/ag;
    invoke-static {v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;

    move-result-object v0

    .line 679
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    :cond_0
    const-string v2, "\u63a8\u8350\u4e00\u4e2a\u82f1\u8bed\u542f\u8499\u5e94\u7528!"

    .line 681
    .local v2, "title":Ljava/lang/String;
    const-string v3, "\u968f\u65f6\u968f\u5730\u521b\u9020\u82f1\u8bed\u6c1b\u56f4\uff0c\u5e2e\u52a9\u4e0d\u540c\u7a0b\u5ea6\u7684\u7238\u5988\u4eec\u8f7b\u677e\u5b8c\u6210\u5b9d\u8d1d\u7684\u82f1\u8bed\u542f\u8499\u3002"

    .line 682
    .local v3, "desc":Ljava/lang/String;
    const-string v4, "http://a.app.qq.com/o/simple.jsp?pkgname=com.jiliguala.niuwa"

    .line 683
    .local v4, "url":Ljava/lang/String;
    const-string v1, ""

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 684
    invoke-virtual {v0, v6}, Lcom/jiliguala/niuwa/module/share/ShareDialogFragment;->show(Landroid/support/v4/app/ag;)V

    .line 686
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "desc":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private download(Ljava/lang/String;)V
    .locals 6
    .param p1, "downloadLink"    # Ljava/lang/String;

    .prologue
    .line 811
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/d/a;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 814
    .local v3, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    .local v1, "dstFile":Ljava/io/File;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 818
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 819
    .local v0, "apkDownIntent":Landroid/content/Intent;
    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    const-string v4, "_id"

    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string v4, "url"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v4, "download_type"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    const-string v4, "path"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 827
    :catch_0
    move-exception v2

    .line 828
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 370
    sget-object v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .line 371
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;-><init>()V

    .line 374
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
    :cond_0
    return-object v0
.end method

.method private goCdKey()V
    .locals 3

    .prologue
    .line 589
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 591
    return-void
.end method

.method private goFaqActivity()V
    .locals 4

    .prologue
    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 401
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 402
    return-void
.end method

.method private goToPersonalInfoSetting()V
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;

    move-result-object v0

    .line 441
    .local v0, "settingPersonalFragment":Lcom/jiliguala/niuwa/module/settings/fragment/SettingPersonalFragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/settings/SettingsActivity;->switchContent(Landroid/support/v4/app/Fragment;)V

    .line 442
    return-void
.end method

.method private goToTvLogin()V
    .locals 4

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->makeIntentForTvLoginScan(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 436
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 437
    return-void
.end method

.method private initDownloadReceiver()V
    .locals 3

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    new-instance v0, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mDownloadInterface:Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    .line 604
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->downloadIntentFilter:Landroid/content/IntentFilter;

    .line 605
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->downloadIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->downloadIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 608
    :cond_0
    return-void
.end method

.method private initUI(Landroid/view/View;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    .line 503
    const v1, 0x7f090191

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    const v1, 0x7f090193

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->dailyDurationTv:Landroid/widget/TextView;

    .line 505
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->dailyDurationTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/r/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    const v1, 0x7f090421

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mPushEnableTv:Landroid/widget/TextView;

    .line 508
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mPushEnableTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    const v1, 0x7f090398

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mNoneWifiSwBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 510
    const-string v1, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 511
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mNoneWifiSwBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 512
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mNoneWifiSwBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$12;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$12;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    invoke-virtual {v1, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 522
    const v1, 0x7f090422

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mPushEnableSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 523
    const-string v1, "PUSH_ENABLE"

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 524
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mPushEnableSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 525
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mPushEnableSwbtn:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$13;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$13;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    invoke-virtual {v1, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 543
    const v1, 0x7f09000f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mAboutUsTv:Landroid/widget/TextView;

    .line 544
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mAboutUsTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    const v1, 0x7f090593

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mAboutUsTv:Landroid/widget/TextView;

    .line 546
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mAboutUsTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    const v1, 0x7f090445

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mRegisterTv:Landroid/widget/TextView;

    .line 548
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mRegisterTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    const v1, 0x7f090124

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCheckNewContainer:Landroid/view/View;

    .line 555
    sget-object v1, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;

    const-string v3, "GPM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCheckNewContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_0
    const v1, 0x7f090125

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCheckNewTv:Landroid/widget/TextView;

    .line 559
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCheckNewTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    const v1, 0x7f0905f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mVersionTv:Landroid/widget/TextView;

    .line 561
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mVersionTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7248\u672c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    const v1, 0x7f0904f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mShareUs:Landroid/widget/TextView;

    .line 563
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mShareUs:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    const v1, 0x7f090014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    const v1, 0x7f090356

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    const v1, 0x7f0905c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mTvLoginContainer:Landroid/widget/RelativeLayout;

    .line 567
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mTvLoginContainer:Landroid/widget/RelativeLayout;

    sget-boolean v1, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->mIsShowTvLogin:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 568
    const v1, 0x7f0905c3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mTvLogin:Landroid/widget/TextView;

    .line 569
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mTvLogin:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/a/d;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->dpdlgFragment:Lcom/jiliguala/niuwa/common/a/d;

    .line 574
    const v1, 0x7f090142

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCleanCache:Landroid/widget/TextView;

    .line 575
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCleanCache:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    const v1, 0x7f090145

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCleanCacheTv:Landroid/widget/TextView;

    .line 578
    const v1, 0x7f090111

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCdKeyContainer:Landroid/widget/RelativeLayout;

    .line 579
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCdKeyContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$14;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$14;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(Landroid/view/View;Lrx/c/c;)Lrx/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 586
    return-void

    :cond_1
    move v1, v2

    .line 567
    goto :goto_0
.end method

.method private logout()V
    .locals 4

    .prologue
    .line 648
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/login/a;->a(Landroid/content/Context;)V

    .line 649
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x9331

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 650
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 651
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mRegisterTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mRegisterTv:Landroid/widget/TextView;

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$2;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 661
    :cond_0
    return-void
.end method

.method private removeCallBack()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mJlGLCacheFileManager:Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mJlGLCacheFileManager:Lcom/jiliguala/niuwa/common/util/xutils/util/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/g;->c()V

    .line 500
    :cond_0
    return-void
.end method

.method private reportCleanCacheAmplitude()V
    .locals 3

    .prologue
    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v0, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Size"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mTotalSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Memory Clean"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 427
    return-void
.end method

.method private showLoginDialog(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 670
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 671
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 673
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showLogoutDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 621
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f1000b4

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 622
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 623
    const v3, 0x7f0b009c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 625
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v2, v3, 0xa

    .line 626
    .local v2, "width":I
    const/4 v1, -0x2

    .line 627
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 628
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 629
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 630
    const v3, 0x7f09004c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u786e\u5b9a\u8981\u9000\u51fa\u767b\u5f55\u5417?"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const v3, 0x7f0900fa

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$15;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$15;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    const v3, 0x7f090156

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$16;

    invoke-direct {v4, p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$16;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 645
    return-void
.end method

.method private showSafeMode()V
    .locals 3

    .prologue
    .line 378
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 379
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/widget/c;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/c;

    move-result-object v1

    .line 381
    .local v1, "safeModeFragment":Lcom/jiliguala/niuwa/common/widget/c;
    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$11;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$11;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/c;->a(Lcom/jiliguala/niuwa/common/widget/c$a;)V

    .line 392
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/c;->b(Landroid/support/v4/app/ag;)V

    .line 396
    .end local v1    # "safeModeFragment":Lcom/jiliguala/niuwa/common/widget/c;
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->testLoginOut()V

    goto :goto_0
.end method

.method private showUpdateDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "downloadLink"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 778
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f1000b4

    invoke-direct {v0, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 779
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 780
    const v4, 0x7f0b0197

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 782
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v3, v4, 0xa

    .line 783
    .local v3, "width":I
    const/4 v2, -0x2

    .line 784
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/view/Window;->setLayout(II)V

    .line 785
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 786
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 788
    const v4, 0x7f0900fa

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$5;

    invoke-direct {v5, p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$5;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    const v4, 0x7f090156

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$6;

    invoke-direct {v5, p0, v0, p1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$6;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private testLoginOut()V
    .locals 6

    .prologue
    .line 405
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 406
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f00ee

    const v3, 0x7f0f0195

    const v4, 0x7f0f011b

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mGuestLogoutDialogInterface:Lcom/jiliguala/niuwa/common/util/h$a;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/jiliguala/niuwa/common/util/h;->a(Landroid/content/Context;IIILcom/jiliguala/niuwa/common/util/h$a;)Landroid/app/Dialog;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->showLogoutDialog()V

    goto :goto_0

    .line 418
    :cond_2
    const v1, 0x7f0f0119

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->showLoginDialog(I)V

    goto :goto_0
.end method

.method private unRegisterReceiver()V
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateRegisterTv()V
    .locals 4

    .prologue
    .line 611
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    .line 612
    .local v0, "hasLogin":Z
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->J()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "registerType":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mRegisterTv:Landroid/widget/TextView;

    const-string v3, "\u9000\u51fa\u767b\u5f55"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    return-void
.end method


# virtual methods
.method public endOfDeleteCacheFile()V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mLoadingProgress:Lcom/jiliguala/niuwa/a/b/e;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/e;->b()V

    .line 908
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCleanCacheTv:Landroid/widget/TextView;

    const-string v1, "0 MB"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u6e05\u7406\u6210\u529f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 910
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 446
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 447
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 448
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    packed-switch p1, :pswitch_data_0

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 450
    :pswitch_0
    if-eq p2, v1, :cond_1

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->goToPersonalInfoSetting()V

    goto :goto_0

    .line 455
    :pswitch_1
    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x2009
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 465
    const v1, 0x7f0b0180

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 466
    .local v0, "content":Landroid/view/View;
    new-instance v1, Lcom/jiliguala/niuwa/a/b/e;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/a/b/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mLoadingProgress:Lcom/jiliguala/niuwa/a/b/e;

    .line 467
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Setting View"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->initUI(Landroid/view/View;)V

    .line 469
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->calCacheSize()V

    .line 470
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 492
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 493
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->removeCallBack()V

    .line 494
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 486
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDetach()V

    .line 487
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->unRegisterReceiver()V

    .line 488
    return-void
.end method

.method public onLoginFailed()V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 874
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->clickId:I

    .line 875
    return-void
.end method

.method public onLoginSucceed()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 867
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->clickId:I

    .line 868
    return-void
.end method

.method public onLogining()V
    .locals 2

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    .line 880
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 883
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 893
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 894
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->progressDlg:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 897
    :cond_0
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
    .line 475
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 476
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->initDownloadReceiver()V

    .line 477
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->addEventObserver()V

    .line 478
    return-void
.end method

.method public updateTotalSizeTextView(Ljava/lang/String;)V
    .locals 1
    .param p1, "totalSize"    # Ljava/lang/String;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mTotalSize:Ljava/lang/String;

    .line 902
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->mCleanCacheTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    return-void
.end method
