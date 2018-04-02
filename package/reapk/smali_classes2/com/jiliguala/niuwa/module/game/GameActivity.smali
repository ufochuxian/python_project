.class public Lcom/jiliguala/niuwa/module/game/GameActivity;
.super Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/a/b/d$a;
.implements Lcom/jiliguala/niuwa/a/b/f$a;
.implements Lcom/jiliguala/niuwa/logic/network/f$b;
.implements Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;
.implements Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;
.implements Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;
.implements Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;
.implements Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/game/GameActivity$a;
    }
.end annotation


# static fields
.field private static final MSG_EVLUATE_FAILED:I = 0x1001

.field private static final MSG_PORCRESS_CHISHEN_RESULT:I = 0x1000

.field public static final PATH_PREFIX:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mActionBack:Landroid/widget/ImageView;

.field private mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

.field private mChishenHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

.field private mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

.field private mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

.field private mGameLoading:Landroid/widget/ImageView;

.field private mHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

.field private mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

.field protected mId:Ljava/lang/String;

.field private mIsCourseFinished:Z

.field private mLessonID:Ljava/lang/String;

.field private mRecordFilePath:Ljava/lang/String;

.field private mScoreOffest:I

.field private mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

.field private mSectionID:Ljava/lang/String;

.field private mSectionScoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

.field private packageName:Ljava/lang/String;

.field recordPermissionPopDialog:Lcom/jiliguala/niuwa/a/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/jiliguala/niuwa/module/game/GameActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/game/GameActivity;->TAG:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/game/GameActivity;->PATH_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;-><init>()V

    .line 85
    new-instance v0, Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$a;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    .line 89
    const-string v0, "http://d5.jiliguala.com/dragdev/?id=testPHSpeak"

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$a;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChishenHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionScoreMap:Ljava/util/Map;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->packageName:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/game/GameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->tryLoadUrl()V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/game/GameActivity;)Lcom/jiliguala/niuwa/module/game/GameActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/game/GameActivity;Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->showReward(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/game/GameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->postAndBack()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/game/GameActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->processChiShenResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/game/GameActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/game/GameActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->processFailedRecord()V

    return-void
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/e;

    .line 179
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/game/GameActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$1;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/game/GameActivity$2;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$2;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    .line 180
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 198
    return-void
.end method

.method private addScreenStateWatcher()V
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    .line 383
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;)V

    .line 384
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->c()V

    .line 385
    return-void
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 553
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 554
    return-void
.end method

.method private checkPackageIfUpdate(Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;)V
    .locals 5
    .param p1, "gameTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;

    .prologue
    .line 320
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GameTemplete$DataBean;

    iget-object v1, v4, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete$DataBean;->key:Ljava/lang/String;

    .line 321
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const-string v4, ""

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "lastDownloadUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 326
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getDownloadPopDialog()Lcom/jiliguala/niuwa/a/b/d;

    move-result-object v4

    iget-object v4, v4, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    if-eqz v4, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getDownloadPopDialog()Lcom/jiliguala/niuwa/a/b/d;

    move-result-object v4

    iget-object v4, v4, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->getDownloadSaveFile()Ljava/io/File;

    move-result-object v0

    .line 328
    .local v0, "downloadSaveFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getDownloadPopDialog()Lcom/jiliguala/niuwa/a/b/d;

    move-result-object v4

    iget-object v4, v4, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->getSaveFileDir()Ljava/io/File;

    move-result-object v3

    .line 329
    .local v3, "saveFileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/i;->f(Ljava/lang/String;)V

    .line 332
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/i;->c(Ljava/io/File;)Z

    .line 340
    .end local v0    # "downloadSaveFile":Ljava/io/File;
    .end local v3    # "saveFileDir":Ljava/io/File;
    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createPron(Lcom/jiliguala/niuwa/logic/network/json/GameSpeakSectionJsonTemplete;)Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;
    .locals 4
    .param p1, "gameSpeakSectionJsonTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/GameSpeakSectionJsonTemplete;

    .prologue
    .line 478
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;-><init>()V

    .line 479
    .local v0, "pronunciation":Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;->wordlist:Ljava/util/List;

    .line 481
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation$WordList;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation$WordList;-><init>()V

    .line 483
    .local v1, "wordList":Lcom/jiliguala/niuwa/logic/network/json/Pronunciation$WordList;
    const-string v2, "pron"

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation$WordList;->word:Ljava/lang/String;

    .line 485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation$WordList;->pron:Ljava/util/List;

    .line 487
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation$WordList;->pron:Ljava/util/List;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/GameSpeakSectionJsonTemplete;->pron:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;->wordlist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    return-object v0
.end method

.method private doOnLeft()V
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-nez v0, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->stopRecording()V

    goto :goto_0

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    const-string v1, "javascript:onRecordFailed()"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/xwalk/core/XWalkView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method private getGameProgressTemplete()Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;
    .locals 7

    .prologue
    .line 533
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;-><init>()V

    .line 534
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->bid:Ljava/lang/String;

    .line 535
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mLessonID:Ljava/lang/String;

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->lid:Ljava/lang/String;

    .line 536
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 537
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v5

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    iput-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->subtaskid:Ljava/lang/String;

    .line 539
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionScoreMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 540
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;

    .line 542
    .local v4, "value":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;-><init>()V

    .line 543
    .local v1, "detailBean":Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;
    iget-object v6, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    iput-object v6, v1, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;->sectionid:Ljava/lang/String;

    .line 544
    iget v6, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    iput v6, v1, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;->score:I

    .line 545
    iget v6, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->realScore:I

    iput v6, v1, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;->realscore:I

    .line 546
    iget-object v6, v4, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->url:Ljava/lang/String;

    iput-object v6, v1, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;->url:Ljava/lang/String;

    .line 547
    iget-object v6, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->detail:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    .end local v1    # "detailBean":Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    :cond_1
    return-object v0
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 346
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "rid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mId:Ljava/lang/String;

    .line 347
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mLessonID:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mc_pc_sub_task_ticket"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    .line 349
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "typ"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mType:Ljava/lang/String;

    goto :goto_0
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 268
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mActionBack:Landroid/widget/ImageView;

    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mActionBack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getBackResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mActionBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method

.method private postAndBack()V
    .locals 4

    .prologue
    .line 843
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1023

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 844
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->onBackPressed()V

    .line 845
    return-void
.end method

.method private processChiShenResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 650
    :try_start_0
    const-class v3, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    invoke-static {p1, v3}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;

    .line 651
    .local v1, "recordTemplete":Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->isVolumeCallBack()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    .end local v1    # "recordTemplete":Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
    :goto_0
    return-void

    .line 653
    .restart local v1    # "recordTemplete":Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
    :cond_0
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->isErrorResult()Z

    move-result v3

    if-nez v3, :cond_2

    .line 655
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->result:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;

    iget v2, v3, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;->overall:I

    .line 657
    .local v2, "score":I
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->processScore(I)I

    move-result v2

    .line 660
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->result:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;->overall:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mScoreOffest:I

    .line 665
    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->result:Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;

    iget v3, v3, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete$Result;->wavetime:I

    if-eqz v3, :cond_1

    .line 666
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:onRecordResult("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jiliguala/niuwa/module/game/GameActivity$4;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$4;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    invoke-virtual {v3, v4, v5}, Lorg/xwalk/core/XWalkView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 684
    .end local v1    # "recordTemplete":Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
    .end local v2    # "score":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 674
    .restart local v1    # "recordTemplete":Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;
    .restart local v2    # "score":I
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->pauseGame()V

    .line 675
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getRecordPermissionDialog()Lcom/jiliguala/niuwa/a/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/a/b/f;->a()V

    goto :goto_0

    .line 679
    .end local v2    # "score":I
    :cond_2
    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/RecordTemplete;->error:Ljava/lang/String;

    .line 681
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:onRecordFailed(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/xwalk/core/XWalkView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private processFailedRecord()V
    .locals 4

    .prologue
    .line 941
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->pauseGame()V

    .line 943
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getRecordPermissionDialog()Lcom/jiliguala/niuwa/a/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/a/b/f;->a()V

    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, "score":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:onRecordResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/game/GameActivity$7;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$7;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/XWalkView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 952
    .end local v0    # "score":I
    :cond_0
    return-void
.end method

.method private showExitCourseDialog()V
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    move-result-object v0

    .line 396
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->setCallback(Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment$OnExitCallback;)V

    .line 397
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 399
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :cond_0
    return-void
.end method

.method private showReward(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 3
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 823
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/Guavatar;

    if-eqz v2, :cond_1

    .line 824
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;

    move-result-object v0

    .line 825
    .local v0, "grd":Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;
    const-string v1, ""

    .line 826
    .local v1, "subLessonId":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v2

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->_id:Ljava/lang/String;

    .line 829
    :cond_0
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate$Data;->guavatar:Lcom/jiliguala/niuwa/logic/network/json/Guavatar;

    invoke-virtual {v0, v2, v1}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->setGuavatar(Lcom/jiliguala/niuwa/logic/network/json/Guavatar;Ljava/lang/String;)V

    .line 830
    new-instance v2, Lcom/jiliguala/niuwa/module/game/GameActivity$6;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$6;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->setDismissListener(Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog$DismissListener;)V

    .line 836
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;->show(Landroid/support/v4/app/ag;)V

    .line 840
    .end local v0    # "grd":Lcom/jiliguala/niuwa/module/game/GuavatarRewardDialog;
    .end local v1    # "subLessonId":Ljava/lang/String;
    :goto_0
    return-void

    .line 838
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->postAndBack()V

    goto :goto_0
.end method

.method private startCourse()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->loadUrl(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private stopScreenStateWatcher()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mScreenStateWatcher:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->d()V

    .line 391
    :cond_0
    return-void
.end method

.method private tryLoadUrl()V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    sget-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->initLocalServer:Z

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/a/b/d;->b()V

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->startCourse()V

    .line 154
    new-instance v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .line 155
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->setCallBack(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 159
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/y;->a()Lcom/jiliguala/niuwa/common/util/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/y;->c()Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    move-result-object v0

    .line 160
    .local v0, "activity":Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
    if-eqz v0, :cond_1

    .line 161
    const-string v1, "[GameActivity],tryLoadUrl"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->startServer(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addHomeKeyWatcher()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    .line 257
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->a(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;)V

    .line 258
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->c()V

    .line 259
    return-void
.end method

.method public brideGoBack()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method public confirmExit()V
    .locals 0

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->sendCourseTaskExitReport()V

    .line 592
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->finish()V

    .line 593
    return-void
.end method

.method public dealWriteResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonResult"    # Ljava/lang/String;

    .prologue
    .line 439
    return-void
.end method

.method protected doRequest()V
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mId:Ljava/lang/String;

    .line 280
    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->e(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 281
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 282
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 283
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/game/GameActivity$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/game/GameActivity$3;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity;)V

    .line 284
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 300
    return-void
.end method

.method public doShare(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareJson"    # Ljava/lang/String;

    .prologue
    .line 434
    return-void
.end method

.method public enableInnerContainer()V
    .locals 0

    .prologue
    .line 867
    return-void
.end method

.method public exitCurrentSubCourse()V
    .locals 0

    .prologue
    .line 862
    return-void
.end method

.method protected getBackResId()I
    .locals 1

    .prologue
    .line 274
    const v0, 0x7f08040f

    return v0
.end method

.method public getDownloadPopDialog()Lcom/jiliguala/niuwa/a/b/d;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/jiliguala/niuwa/a/b/d;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getDownloadPopDialogStyle()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/a/b/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/a/b/d;->a(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/d;->a(Lcom/jiliguala/niuwa/a/b/d$a;)V

    .line 206
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    return-object v0
.end method

.method public getDownloadPopDialogStyle()I
    .locals 1

    .prologue
    .line 210
    const/16 v0, 0x3e9

    return v0
.end method

.method protected getPackageSuccess(Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;)V
    .locals 5
    .param p1, "gameTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;

    .prologue
    .line 303
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GameTemplete$DataBean;

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getDownloadPopDialog()Lcom/jiliguala/niuwa/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/a/b/d;->a()V

    .line 305
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/GameTemplete$DataBean;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/GameTemplete$DataBean;->packages:Ljava/util/ArrayList;

    .line 306
    .local v0, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 310
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->packageName:Ljava/lang/String;

    .line 312
    :cond_3
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->checkPackageIfUpdate(Lcom/jiliguala/niuwa/logic/network/json/GameTemplete;)V

    .line 314
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->startDownload()V

    goto :goto_0
.end method

.method public getRecordPermissionDialog()Lcom/jiliguala/niuwa/a/b/f;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->recordPermissionPopDialog:Lcom/jiliguala/niuwa/a/b/f;

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Lcom/jiliguala/niuwa/a/b/f;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/a/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->recordPermissionPopDialog:Lcom/jiliguala/niuwa/a/b/f;

    .line 693
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->recordPermissionPopDialog:Lcom/jiliguala/niuwa/a/b/f;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/a/b/f;->a(Lcom/jiliguala/niuwa/a/b/f$a;)V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->recordPermissionPopDialog:Lcom/jiliguala/niuwa/a/b/f;

    return-object v0
.end method

.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-boolean v1, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 172
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&debug=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public goToLesson(Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    :cond_0
    return-void
.end method

.method public hasCoursePay()Z
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public hasStop()Z
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x0

    return v0
.end method

.method public isInteractCourseFragmentVisible()Z
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x1

    return v0
.end method

.method public onBackBtnPress()V
    .locals 0

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->onBackPressed()V

    .line 882
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mIsCourseFinished:Z

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->goBack()V

    .line 372
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->finish()V

    .line 379
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->pressBack()V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->showExitGameDialog()V

    goto :goto_0
.end method

.method public onBtnClick()V
    .locals 1

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getRecordPermissionDialog()Lcom/jiliguala/niuwa/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/f;->b()V

    .line 905
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->resumeGame()V

    .line 906
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->resumeGame()V

    .line 900
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 360
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->showExitGameDialog()V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x7f090014
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->setRequestedOrientation(I)V

    .line 119
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->addEventObserver()V

    .line 123
    const-string v1, "Niuwa"

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->setBridgeName(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->setUsingCrossWalk(Z)V

    .line 126
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->addScreenStateWatcher()V

    .line 128
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->addHomeKeyWatcher()V

    .line 130
    const v1, 0x7f0b002e

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->setContentView(I)V

    .line 131
    const v1, 0x7f090630

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 133
    .local v0, "parent":Landroid/widget/FrameLayout;
    const v1, 0x7f090233

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameLoading:Landroid/widget/ImageView;

    .line 135
    invoke-super {p0, v0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initWebView(Landroid/view/View;)V

    .line 136
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->initUI()V

    .line 138
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->handleIntent()V

    .line 140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->doRequest()V

    .line 142
    return-void
.end method

.method public onData([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 701
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->stopScreenStateWatcher()V

    .line 743
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->stopHomeKeyWatcher()V

    .line 744
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onDestroy()V

    .line 745
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->releaseRes()V

    .line 749
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->removeCallBack()V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChishenHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChishenHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/d;->c()V

    .line 757
    :cond_2
    return-void
.end method

.method public onError()V
    .locals 3

    .prologue
    .line 634
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChishenHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChishenHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 636
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChishenHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->sendMessage(Landroid/os/Message;)Z

    .line 638
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onExitClick()V
    .locals 0

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->finish()V

    .line 887
    return-void
.end method

.method public onFailed()V
    .locals 0

    .prologue
    .line 732
    return-void
.end method

.method public onGameCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "gameID"    # Ljava/lang/String;

    .prologue
    .line 524
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionScoreMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->setSectionScoreMap(Ljava/util/Map;)V

    .line 527
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;-><init>()V

    .line 528
    .local v0, "sendLessonProgressManager":Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;
    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;)V

    .line 529
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getGameProgressTemplete()Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->sendProgress(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V

    .line 530
    return-void
.end method

.method public onHomeLongPressed()V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method public onHomePressed()V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->doOnLeft()V

    .line 795
    return-void
.end method

.method public onInitFailed()V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameLoading:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameLoading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    :cond_0
    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 560
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 738
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 2
    .param p1, "progressInPercent"    # I

    .prologue
    .line 582
    const/16 v0, 0x46

    if-lt p1, v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameLoading:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameLoading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 573
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->dismiss()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->resumeGame()V

    .line 247
    return-void
.end method

.method public onResumeClick()V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->dismiss()V

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->resumeGame()V

    .line 895
    return-void
.end method

.method public onRun(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChishenHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 644
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 645
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChishenHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onScreenOff()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->doOnLeft()V

    .line 776
    return-void
.end method

.method public onScreenOn()V
    .locals 0

    .prologue
    .line 763
    return-void
.end method

.method public onSectionCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 504
    const-class v2, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;

    invoke-static {p1, v2}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;

    .line 505
    .local v1, "sectionCompleteTemplete":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    if-nez v1, :cond_0

    .line 519
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    .line 507
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionScoreMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;

    .line 509
    .local v0, "scTemp":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    if-nez v0, :cond_2

    .line 510
    iget v2, v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    iget v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mScoreOffest:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->realScore:I

    .line 511
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionScoreMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .end local v0    # "scTemp":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mScoreOffest:I

    goto :goto_0

    .line 513
    .restart local v0    # "scTemp":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    :cond_2
    iget v2, v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    iget v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mScoreOffest:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->realScore:I

    .line 514
    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    .line 515
    iget v2, v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    iput v2, v0, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    goto :goto_1
.end method

.method public onSendProgressFail()V
    .locals 4

    .prologue
    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mIsCourseFinished:Z

    .line 850
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/f;

    const/16 v2, 0x1025

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/f;-><init>(ILcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 851
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->onBackPressed()V

    .line 852
    return-void
.end method

.method public onSendProgressSuccess(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 4
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mIsCourseFinished:Z

    .line 806
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mHandler:Lcom/jiliguala/niuwa/module/game/GameActivity$a;

    new-instance v1, Lcom/jiliguala/niuwa/module/game/GameActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/game/GameActivity$5;-><init>(Lcom/jiliguala/niuwa/module/game/GameActivity;Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/game/GameActivity$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onStart()V

    .line 231
    return-void
.end method

.method public onStarted()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onStop()V

    .line 253
    return-void
.end method

.method public onStopped()V
    .locals 4

    .prologue
    .line 627
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mRecordFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mRecordFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 630
    :cond_0
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 712
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 717
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionScoreMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;

    .line 718
    .local v0, "scTemp":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    if-nez v0, :cond_0

    .line 719
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;-><init>()V

    .line 720
    .local v1, "sectionCompleteTemplete":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    .line 721
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->url:Ljava/lang/String;

    .line 722
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionScoreMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    .end local v1    # "sectionCompleteTemplete":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    :goto_0
    return-void

    .line 724
    :cond_0
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    .line 725
    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 236
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->e(Landroid/app/Activity;)V

    .line 237
    return-void
.end method

.method protected pauseGame()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    const-string v1, "javascript:pauseCocosGame()"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/xwalk/core/XWalkView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 419
    :cond_0
    return-void
.end method

.method protected resumeGame()V
    .locals 3

    .prologue
    .line 766
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getRecordPermissionDialog()Lcom/jiliguala/niuwa/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    const-string v1, "javascript:resumeCocosGame()"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/xwalk/core/XWalkView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 769
    :cond_0
    return-void
.end method

.method public sendCourseTaskExitReport()V
    .locals 4

    .prologue
    .line 596
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    if-nez v2, :cond_0

    .line 611
    :goto_0
    return-void

    .line 597
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    const-string v2, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_1
    const-string v2, "Position"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->getSub()Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;

    move-result-object v1

    .line 603
    .local v1, "sub":Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 604
    const-string v2, "Type"

    iget-object v3, v1, Lcom/jiliguala/niuwa/logic/network/json/Lessons$SubsBean;->typ:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 607
    const-string v2, "Step"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_3
    const-string v2, "Time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Sub Lesson Exit"

    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected showExitGameDialog()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->clickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->pauseGame()V

    .line 406
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    .line 407
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->setCallBack(Lcom/jiliguala/niuwa/module/game/GameExitFragment$CallBack;)V

    .line 408
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mGameExitFragment:Lcom/jiliguala/niuwa/module/game/GameExitFragment;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/game/GameExitFragment;->show(Landroid/support/v4/app/ag;)V

    .line 413
    :cond_0
    return-void
.end method

.method public showRightTopBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "show"    # Ljava/lang/String;

    .prologue
    .line 429
    return-void
.end method

.method public showRightTopBtn(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 424
    return-void
.end method

.method public startDownload()V
    .locals 6

    .prologue
    .line 214
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mDownloadPopDialog:Lcom/jiliguala/niuwa/a/b/d;

    iget-object v0, v3, Lcom/jiliguala/niuwa/a/b/d;->c:Lcom/jiliguala/niuwa/module/game/DownloadGameResView;

    .line 215
    .local v0, "downloadGameResView":Lcom/jiliguala/niuwa/module/game/DownloadGameResView;
    sget-object v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->MC_PHONICS:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;

    iget v3, v3, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractLessonTypeEnum;->code:I

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->setType(I)V

    .line 216
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->updateUIOnlyShowProgress()V

    .line 217
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v2, "url":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mUrl:Ljava/lang/String;

    .line 220
    .local v1, "gamePackageUrl":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->setData(Ljava/util/ArrayList;)V

    .line 222
    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->setCallBack(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;)V

    .line 223
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mcPcSubTaskTicket:Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->setMcPcSubTaskTicket(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;)V

    .line 224
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/game/DownloadGameResView;->startDownload()V

    .line 225
    return-void
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 444
    const-class v1, Lcom/jiliguala/niuwa/logic/network/json/GameSectionJsonTemplete;

    invoke-static {p1, v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GameSectionJsonTemplete;

    .line 445
    .local v0, "gameSectionJsonTemplete":Lcom/jiliguala/niuwa/logic/network/json/GameSectionJsonTemplete;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/GameSectionJsonTemplete;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/GameSectionJsonTemplete;->sectionID:Ljava/lang/String;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->DEFAULT_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mRecordFilePath:Ljava/lang/String;

    .line 450
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/GameSectionJsonTemplete;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->startRecordByChiShen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRecordingPron(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 456
    const-class v1, Lcom/jiliguala/niuwa/logic/network/json/GameSpeakSectionJsonTemplete;

    invoke-static {p1, v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GameSpeakSectionJsonTemplete;

    .line 457
    .local v0, "gameSpeakSectionJsonTemplete":Lcom/jiliguala/niuwa/logic/network/json/GameSpeakSectionJsonTemplete;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/GameSpeakSectionJsonTemplete;->pron:Ljava/util/List;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/GameSpeakSectionJsonTemplete;->sectionID:Ljava/lang/String;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->DEFAULT_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mRecordFilePath:Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    const-string v2, ""

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mSectionID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/game/GameActivity;->createPron(Lcom/jiliguala/niuwa/logic/network/json/GameSpeakSectionJsonTemplete;)Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->startRecordByChiShen(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;)V

    goto :goto_0
.end method

.method public stopHomeKeyWatcher()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mHomeKeyWatcher:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->d()V

    .line 265
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/game/GameActivity;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->stopRecordByChiShen()V

    .line 499
    return-void
.end method
