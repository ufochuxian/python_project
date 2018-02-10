.class public Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;",
        ">;",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "Landroid/media/MediaPlayer$OnErrorListener;",
        "Landroid/media/MediaPlayer$OnInfoListener;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Landroid/media/MediaPlayer$OnVideoSizeChangedListener;"
    }
.end annotation


# static fields
.field private static final ARG_DATA:Ljava/lang/String; = "ARG_DATA"

.field private static final ARG_DATA_READY:Ljava/lang/String; = "ARG_DATA_READY"

.field private static final KEY_CURRENT_ID:Ljava/lang/String; = "CURRENT_ID"

.field private static final KEY_CURRENT_SOURCE:Ljava/lang/String; = "CURRENT_SOURCE"

.field private static final KEY_INTERACT_RESULT:Ljava/lang/String; = "INTERACT_RESULT"

.field private static final KEY_PLAY_STATE:Ljava/lang/String; = "PLAY_STATE"

.field private static final MSG_DELAY_SEEK_NEXT_WIDGET:I = 0x1007

.field private static final MSG_ON_EXIT:I = 0x1006

.field private static final MSG_ON_GAIN_RESULT:I = 0x1005

.field private static final MSG_PLAY_OPENING:I = 0x1004

.field private static final MSG_READY_TO_PLAY:I = 0x1000

.field private static final MSG_START_PLAY:I = 0x1003

.field private static final MSG_TRANSITION_CHECKER:I = 0x1001

.field private static final MSG_UPDATE_PROGRESS:I = 0x1002

.field public static final PATH_PREFIX:Ljava/lang/String;

.field private static final PROGRESS_MAX:I = 0x3e8

.field private static STEP_MAX_RETRY_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_MAX_RETRY_COUNT:I = 0x3


# instance fields
.field private counter:I

.field private hasGainResult:Z

.field private isDataReady:Z

.field private isForeGround:Z

.field private isPaused:Z

.field private isPrepared:Z

.field private isReplay:Z

.field private mCurPlayingState:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

.field private mCurSource:Ljava/lang/String;

.field private mCurWidgetId:Ljava/lang/String;

.field private mCurrentJumpId:Ljava/lang/String;

.field private mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

.field private mFolderName:Ljava/lang/String;

.field private mInteractDur:J

.field private mInteractResult:Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

.field private mJumpDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastPos:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

.field private mPlayRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

.field private maxInteractDuration:J

.field private widgetDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "-",
            "Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->j(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    .line 56
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->TAG:Ljava/lang/String;

    .line 73
    const/4 v0, 0x2

    sput v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->STEP_MAX_RETRY_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 81
    sget-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->OPENING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurPlayingState:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    .line 83
    iput v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->counter:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isForeGround:Z

    .line 89
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isDataReady:Z

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->maxInteractDuration:J

    .line 97
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->hasGainResult:Z

    .line 105
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;-><init>(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isDataReady:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isDataReady:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractDur:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->maxInteractDuration:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getInteractDur()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->gainResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->seekNextWidget()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;)Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    return-object p1
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->widgetDict:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mJumpDict:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

    return-object v0
.end method

.method static synthetic access$602(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;Lcom/jiliguala/niuwa/logic/db/daometa/e;)Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

    return-object p1
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPrepared:Z

    return v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isForeGround:Z

    return v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onPlayPrepared()V

    return-void
.end method

.method private deletePlayRecord()V
    .locals 2

    .prologue
    .line 1068
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isReplay:Z

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->getCourseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/db/a;->e(Ljava/lang/String;)V

    .line 1073
    :cond_0
    return-void
.end method

.method private gainResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurrentJumpId:Ljava/lang/String;

    .line 870
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onInteractSuccess(Ljava/lang/String;)V

    .line 871
    const-string v0, "timeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->removeTransition()V

    .line 877
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->notifyInteractLayerTimeOut()V

    .line 880
    :cond_0
    return-void
.end method

.method private getInteractDur()J
    .locals 4

    .prologue
    .line 538
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractDur:J

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractDur:J

    .line 539
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractDur:J

    return-wide v0
.end method

.method private getSubscriber()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;)V

    return-object v0
.end method

.method private getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isValidBoundary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->widgetDict:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ifTimeOut()Z
    .locals 4

    .prologue
    .line 544
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractDur:J

    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->maxInteractDuration:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLessonEnding()Z
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractResult:Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getCurPlayingState()Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->ENDING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->seekNextWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMpPlaying()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 664
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 666
    :cond_0
    :goto_0
    return v1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isValidBoundary()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->widgetDict:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->widgetDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->widgetDict:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onInteractResult(Lcom/jiliguala/niuwa/module/interact/course/InteractResult;)V
    .locals 4
    .param p1, "result"    # Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    .prologue
    .line 340
    sget-object v2, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->INTERACT_RESULT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setCurPlayingState(Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;)V

    .line 341
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    .line 342
    .local v0, "base":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    if-eqz v0, :cond_1

    .line 343
    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->resultSrc:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/interact/course/InteractResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 344
    .local v1, "videoToPlay":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setVideoSource(Ljava/lang/String;)V

    .line 352
    .end local v1    # "videoToPlay":Ljava/lang/String;
    :goto_0
    return-void

    .line 347
    .restart local v1    # "videoToPlay":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 350
    .end local v1    # "videoToPlay":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method private onPlayPrepared()V
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startMp()V

    .line 602
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPaused:Z

    if-eqz v0, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->pauseMp()V

    .line 605
    :cond_0
    return-void
.end method

.method private pauseMp()V
    .locals 1

    .prologue
    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private pauseProgressWhileBackGround()V
    .locals 3

    .prologue
    const/16 v2, 0x1002

    .line 449
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractDur:J

    .line 450
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeMessages(I)V

    .line 455
    :cond_0
    return-void
.end method

.method private releaseMp()V
    .locals 1

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reportInteractionSituation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 851
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 852
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->getCourseId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string v1, "Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string v1, "block"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getCurWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string v1, "Result"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Interaction-situation"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 857
    return-void
.end method

.method private reportResultAmplitude(Ljava/lang/String;)V
    .locals 10
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 800
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v2

    .line 801
    .local v2, "mCurWidget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    if-nez v2, :cond_0

    .line 838
    :goto_0
    return-void

    .line 803
    :cond_0
    const/4 v5, 0x0

    .line 804
    .local v5, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 806
    .local v3, "result":Ljava/lang/String;
    iget-object v8, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->widgetType:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 833
    :cond_2
    :goto_2
    const-string v6, "timeout"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 834
    const-string v3, "time-out"

    .line 837
    :cond_3
    invoke-direct {p0, v5, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->reportInteractionSituation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :sswitch_0
    const-string v9, "drag"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    goto :goto_1

    :sswitch_1
    const-string v9, "tap"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "speak"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    .line 808
    :pswitch_0
    const-string v5, "drag"

    .line 809
    const-string v3, "success"

    .line 810
    goto :goto_2

    .line 812
    :pswitch_1
    const-string v5, "tap"

    .line 813
    const-string v3, "success"

    .line 814
    instance-of v6, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;

    if-eqz v6, :cond_2

    move-object v1, v2

    .line 815
    check-cast v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;

    .line 816
    .local v1, "interactWidget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;
    iget-object v6, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;->correctAnswers:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;->correctAnswers:Ljava/util/ArrayList;

    .line 817
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 820
    iget-object v6, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;->correctAnswers:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 821
    .local v0, "correct":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 822
    const-string v3, "wrong-option"

    goto :goto_2

    .line 827
    .end local v0    # "correct":Ljava/lang/String;
    .end local v1    # "interactWidget":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidget;
    :pswitch_2
    const-string v5, "speak"

    .line 828
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v6}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->getScoreNum()I

    move-result v6

    div-int/lit8 v4, v6, 0xa

    .line 829
    .local v4, "score":I
    mul-int/lit8 v6, v4, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 806
    nop

    :sswitch_data_0
    .sparse-switch
        0x1bfa3 -> :sswitch_1
        0x2f2d34 -> :sswitch_0
        0x688ffd2 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetMp()V
    .locals 1

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resumeProgress()V
    .locals 3

    .prologue
    const/16 v2, 0x1002

    .line 436
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeMessages(I)V

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getCurPlayingState()Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    move-result-object v0

    .line 441
    .local v0, "state":Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->VIDEO_INTERACT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    if-ne v0, v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessage(I)Z

    .line 445
    .end local v0    # "state":Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    :cond_1
    return-void
.end method

.method private savePlayRecord(Ljava/lang/String;)V
    .locals 4
    .param p1, "pos"    # Ljava/lang/String;

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isReplay:Z

    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->getCourseId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/jiliguala/niuwa/logic/db/daometa/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/db/a;->a(Lcom/jiliguala/niuwa/logic/db/daometa/e;)V

    .line 1065
    :cond_0
    return-void
.end method

.method private savePos()V
    .locals 1

    .prologue
    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mLastPos:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private seekNextWidget()V
    .locals 4

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->seekNextWidgetId()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "nextWidgetId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->savePlayRecord(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayOpening()V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mJumpDict:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 323
    .local v0, "jumpDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "timeout"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    .line 324
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayOpening()V

    goto :goto_0
.end method

.method private seekNextWidgetId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 291
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mJumpDict:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 292
    .local v0, "jumpDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractResult:Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/InteractResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    .local v1, "nextWidgetId":Ljava/lang/String;
    return-object v1
.end method

.method private seekTo(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private seekToPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendGainResultMsg(Ljava/lang/String;)V
    .locals 4
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    .line 794
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    const/16 v2, 0x1005

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 795
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 797
    return-void
.end method

.method private setInteractResult(Lcom/jiliguala/niuwa/module/interact/course/InteractResult;)V
    .locals 0
    .param p1, "result"    # Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractResult:Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    .line 288
    return-void
.end method

.method private startMp()V
    .locals 1

    .prologue
    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private stopMp()V
    .locals 1

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public actionPlayFromRecord()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/daometa/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    .line 908
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isDataReady:Z

    .line 909
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->toastReplay()V

    .line 910
    return-void
.end method

.method public actionPlayFromStart()V
    .locals 1

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->deletePlayRecord()V

    .line 903
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetEntryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isDataReady:Z

    .line 905
    return-void
.end method

.method public actionStartOrPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPaused:Z

    if-nez v0, :cond_1

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPaused:Z

    .line 388
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPaused:Z

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->setBtnPlay(Z)V

    .line 389
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->pauseMp()V

    .line 390
    iput v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mLastPos:I

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPaused:Z

    .line 393
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPaused:Z

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->setBtnPlay(Z)V

    .line 394
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startMp()V

    .line 395
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mLastPos:I

    if-lez v0, :cond_0

    .line 396
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mLastPos:I

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->seekTo(I)V

    .line 397
    iput v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mLastPos:I

    goto :goto_0
.end method

.method public debugJump()V
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->restPause()V

    .line 459
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 460
    return-void
.end method

.method public destoryMediaPlayer()V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 895
    :cond_0
    return-void
.end method

.method public getCurPlayingState()Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurPlayingState:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    return-object v0
.end method

.method public getCurWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWidgetModel()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    .line 266
    .local v0, "base":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    return-object v0
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentSpeak()Z
    .locals 1

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 790
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    instance-of v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    goto :goto_0
.end method

.method public isTimeOut()Z
    .locals 2

    .prologue
    .line 860
    const-string v0, "timeout"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurrentJumpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 469
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPrepared:Z

    .line 472
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isValidBoundary()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isForeGround:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isLessonEnding()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->deletePlayRecord()V

    .line 474
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->onEndOfLesson()V

    .line 527
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getCurPlayingState()Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    move-result-object v0

    .line 479
    .local v0, "state":Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$2;->a:[I

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 481
    :pswitch_0
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->hasGainResult:Z

    .line 482
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayVideoAndShowLayer()V

    goto :goto_0

    .line 492
    :pswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->ifTimeOut()Z

    move-result v1

    if-nez v1, :cond_3

    .line 494
    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->seekToPos(I)V

    .line 495
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startMp()V

    goto :goto_0

    .line 497
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    const-string v2, "timeout"

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->onGainResult(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :pswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 504
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->removeMaskAllView()V

    .line 512
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayTransition()V

    goto :goto_0

    .line 516
    :pswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 517
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->hideTransition()V

    .line 519
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayEnding()V

    goto :goto_0

    .line 522
    :pswitch_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    const/16 v2, 0x1007

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x1

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPrepared:Z

    .line 551
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->counter:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurSource:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setVideoSource(Ljava/lang/String;)V

    .line 556
    :cond_0
    return v2
.end method

.method public onGainResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    if-nez v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->reportResultAmplitude(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isCurrentSpeak()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->sendGainResultMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_2
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->hasGainResult:Z

    if-nez v0, :cond_0

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->hasGainResult:Z

    .line 783
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->sendGainResultMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public onInteractSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/InteractResult;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "result":Lcom/jiliguala/niuwa/module/interact/course/InteractResult;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setInteractResult(Lcom/jiliguala/niuwa/module/interact/course/InteractResult;)V

    .line 283
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onInteractResult(Lcom/jiliguala/niuwa/module/interact/course/InteractResult;)V

    .line 284
    return-void
.end method

.method public onInteractTimeOut()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/InteractResult;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "result":Lcom/jiliguala/niuwa/module/interact/course/InteractResult;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setInteractResult(Lcom/jiliguala/niuwa/module/interact/course/InteractResult;)V

    .line 336
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onInteractResult(Lcom/jiliguala/niuwa/module/interact/course/InteractResult;)V

    .line 337
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPrepared:Z

    .line 570
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->counter:I

    .line 571
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 753
    if-eqz p1, :cond_1

    .line 754
    const-string v0, "ARG_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    .line 755
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->releaseResAndExit()V

    .line 768
    :cond_1
    :goto_0
    return-void

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetDict:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->widgetDict:Ljava/util/HashMap;

    .line 760
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->jumpDict:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mJumpDict:Ljava/util/HashMap;

    .line 761
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->widgetEntryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    .line 762
    const-string v0, "ARG_DATA_READY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isDataReady:Z

    .line 763
    const-string v0, "PLAY_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurPlayingState:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    .line 764
    const-string v0, "CURRENT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    .line 765
    const-string v0, "CURRENT_SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurSource:Ljava/lang/String;

    .line 766
    const-string v0, "INTERACT_RESULT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractResult:Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    goto :goto_0
.end method

.method public onRetrySpeakBtnClick()V
    .locals 1

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->isSpeakWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayVideoAndShowLayer()V

    .line 887
    :cond_0
    return-void
.end method

.method public onRquestInteractScripitError()V
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->onRequestIteractLessonScriptError()V

    .line 739
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 742
    if-eqz p1, :cond_0

    .line 743
    const-string v0, "ARG_DATA"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mData:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 744
    const-string v0, "ARG_DATA_READY"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isDataReady:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 745
    const-string v0, "PLAY_STATE"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurPlayingState:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 746
    const-string v0, "CURRENT_ID"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurWidgetId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "CURRENT_SOURCE"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v0, "INTERACT_RESULT"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mInteractResult:Lcom/jiliguala/niuwa/module/interact/course/InteractResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 750
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/16 v2, 0x1000

    .line 579
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeMessages(I)V

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 583
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 584
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 585
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 586
    return-void
.end method

.method public pausePlay()V
    .locals 1

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isMpPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->pauseMp()V

    .line 629
    :cond_0
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->releaseMp()V

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    :cond_0
    return-void
.end method

.method public removeTransitionHideWatcher()V
    .locals 2

    .prologue
    const/16 v1, 0x1001

    .line 620
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->removeMessages(I)V

    .line 623
    :cond_0
    return-void
.end method

.method public reportInteractionLeaveAmplitude()V
    .locals 3

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 843
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 844
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->getCourseId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v1, "leave-block"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getCurWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Interaction-leave"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 848
    .end local v0    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public requestLessonContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 676
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getSubscription()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 682
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    .line 683
    invoke-interface {v2, p1, v0}, Lcom/jiliguala/niuwa/logic/network/d;->h(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 684
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 685
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 686
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 687
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getSubscriber()Lrx/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 681
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public restPause()V
    .locals 2

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPaused:Z

    .line 404
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPaused:Z

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->setBtnPlay(Z)V

    .line 405
    return-void
.end method

.method public saveStateWhileDestroy()V
    .locals 0

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->pausePlay()V

    .line 673
    return-void
.end method

.method public setAsBackGround()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isForeGround:Z

    .line 419
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->pauseMp()V

    .line 420
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->pauseProgressWhileBackGround()V

    .line 421
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->savePos()V

    .line 422
    return-void
.end method

.method public setAsForeGround()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isForeGround:Z

    .line 410
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isPaused:Z

    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startMp()V

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->resumeProgress()V

    .line 414
    return-void
.end method

.method public setCurPlayingState(Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;)V
    .locals 0
    .param p1, "curPlayingState"    # Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurPlayingState:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    .line 613
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mFolderName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setHasGainResult(Z)V
    .locals 0
    .param p1, "hasResult"    # Z

    .prologue
    .line 1054
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->hasGainResult:Z

    .line 1055
    return-void
.end method

.method public setMediaPlayer(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 167
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 174
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->stopAndResetMp()V

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessage(I)Z

    .line 177
    return-void
.end method

.method public setReplay(Z)V
    .locals 0
    .param p1, "replay"    # Z

    .prologue
    .line 898
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isReplay:Z

    .line 899
    return-void
.end method

.method public setVideoSource(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurSource:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->stopAndResetMp()V

    .line 365
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mFolderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 368
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    .line 369
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 371
    .local v0, "fd":Ljava/io/FileDescriptor;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 372
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 381
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 383
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v4

    .line 381
    :goto_1
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 376
    :catch_1
    move-exception v4

    .line 381
    :goto_2
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 378
    :catch_2
    move-exception v4

    .line 381
    :goto_3
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_4
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 378
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 376
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 374
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public showInteractLayer(Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;)V
    .locals 1
    .param p1, "widgetBase"    # Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/view/InteractView;->showInteractView(Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;)V

    .line 359
    :cond_0
    return-void
.end method

.method public startPlayEnding()V
    .locals 2

    .prologue
    .line 255
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->ENDING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setCurPlayingState(Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;)V

    .line 256
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    .line 257
    .local v0, "base":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->endingSrc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->endingSrc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setVideoSource(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public startPlayInLstState()V
    .locals 2

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->isDataReady:Z

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurPlayingState:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->VIDEO_INTERACT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    if-ne v0, v1, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->startPlayVideoAndShowLayer()V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mCurSource:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setVideoSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPlayOpening()V
    .locals 2

    .prologue
    .line 206
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->OPENING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setCurPlayingState(Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;)V

    .line 207
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    .line 208
    .local v0, "base":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->openingSrc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->openingSrc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setVideoSource(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public startPlayTransition()V
    .locals 2

    .prologue
    .line 237
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->TRANSITION:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setCurPlayingState(Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;)V

    .line 241
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    .line 242
    .local v0, "base":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->transition:Z

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public startPlayVideoAndShowLayer()V
    .locals 4

    .prologue
    .line 217
    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->VIDEO_INTERACT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setCurPlayingState(Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;)V

    .line 218
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->getWidgetItem()Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;

    move-result-object v0

    .line 219
    .local v0, "base":Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;
    if-eqz v0, :cond_1

    .line 220
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->maxInteractDuration:J

    .line 221
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->videoSrc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-wide v2, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->interactMaxDur:J

    iput-wide v2, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->maxInteractDuration:J

    .line 224
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetBase;->videoSrc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->setVideoSource(Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public startTransitionHideWatcher()V
    .locals 4

    .prologue
    .line 616
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;

    const/16 v1, 0x1001

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    .line 617
    return-void
.end method

.method public stopAndResetMp()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->stopMp()V

    .line 182
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/presenter/InteractLessonPresenter;->resetMp()V

    .line 183
    return-void
.end method
