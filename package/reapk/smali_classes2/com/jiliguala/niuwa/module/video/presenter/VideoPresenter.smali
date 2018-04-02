.class public Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/jiliguala/niuwa/logic/g/d;
.implements Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;
.implements Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;
.implements Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;,
        Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/video/presenter/VideoView;",
        ">;",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "Landroid/media/MediaPlayer$OnErrorListener;",
        "Landroid/media/MediaPlayer$OnInfoListener;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Landroid/media/MediaPlayer$OnVideoSizeChangedListener;",
        "Lcom/jiliguala/niuwa/logic/g/d;",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;",
        "Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$IRedirectParseListener;",
        "Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;"
    }
.end annotation


# static fields
.field public static CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final JOB_THREAD_NAME:Ljava/lang/String; = "JOB_THREAD"

.field private static final KEY_LAST_PAUSED:Ljava/lang/String; = "KEY_LAST_PAUSED"

.field private static final KEY_LAST_SOURCE:Ljava/lang/String; = "KEY_LAST_SOURCE"

.field private static final KEY_LAS_POS:Ljava/lang/String; = "KEY_LAS_POS"

.field private static final KEY_PLAY_MODE:Ljava/lang/String; = "KEY_PLAY_MODE"

.field private static final MSG_AIRPLAY_UPDATE_SEEK_BAR:I = 0x1003

.field private static final MSG_GET_AIRPLAY_PLAY_BACK_INFO:I = 0x1002

.field private static final MSG_READY_TO_PLAY:I = 0x1001

.field private static final MSG_UPDATE_SEEK_BAR:I = 0x1000

.field private static final PLAY_MODE_FAV:I = 0x2

.field private static final PLAY_MODE_OFFLINE:I = 0x3

.field private static final PLAY_MODE_ONLINE:I = 0x1

.field private static final PLAY_MODE_RNT_PLAY:I = 0x4

.field private static final RETRY_MAX_TIME:I = 0x3

.field private static final STATE_END:I = 0x10

.field private static final STATE_ERROR:I = 0x9

.field private static final STATE_IDLE:I = 0x1

.field private static final STATE_INITIALIZED:I = 0x2

.field private static final STATE_PAUSED:I = 0x6

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x8

.field private static final STATE_PREPARED:I = 0x3

.field private static final STATE_PREPARING:I = 0x4

.field private static final STATE_STARTED:I = 0x5

.field private static final STATE_STOPPED:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cookies:Ljava/lang/String;

.field private errorCounter:I

.field private isLastPaused:Z

.field private isMcPhCourse:Z

.field private last_pos:J

.field private last_source:Ljava/lang/String;

.field mAirPlayPosRemainsIdle:I

.field private mAriplayProgressOneShotFlag:Z

.field private mChannelId:Ljava/lang/String;

.field private mCurPlayMode:I

.field mCurState:I

.field private mCurVideoLinkIndex:I

.field private mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

.field private mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

.field private mIsWatch:Z

.field private mJobThread:Landroid/os/HandlerThread;

.field private mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastRedirectResult:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

.field private mRenderDur:I

.field private mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

.field private mRenderPos:I

.field private mRid:Ljava/lang/String;

.field private mVideoChannelData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoLinkLen:I

.field parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

.field private playRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

.field private prepared:Z

.field private realUri:Ljava/lang/String;

.field private retryCount:I

.field private singleLoop:Z

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const-class v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 123
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    .line 126
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 131
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    .line 155
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    .line 163
    new-instance v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->performFavVideo()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getDuration()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->savePlayRecord(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/VideoRenderManager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAriplayProgressOneShotFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    return v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->recordTrackerStart()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

    return-object v0
.end method

.method static synthetic access$802(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Lcom/jiliguala/niuwa/logic/db/daometa/e;)Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

    return-object p1
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    return-wide p1
.end method

.method private changePlayMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 801
    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    const/4 v0, 0x3

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    .line 810
    :goto_0
    return-void

    .line 803
    :cond_0
    const-string v0, "1000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    goto :goto_0

    .line 805
    :cond_1
    const-string v0, "-2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    const/4 v0, 0x4

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    goto :goto_0

    .line 808
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    goto :goto_0
.end method

.method private deletePlayRecord()V
    .locals 2

    .prologue
    .line 2095
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isMcPhCourse:Z

    if-eqz v0, :cond_0

    .line 2096
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a;->e(Ljava/lang/String;)V

    .line 2098
    :cond_0
    return-void
.end method

.method private doViralShar()V
    .locals 4

    .prologue
    .line 1303
    invoke-static {}, Lcom/jiliguala/niuwa/logic/u/a;->a()Lcom/jiliguala/niuwa/logic/u/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/u/a;->a(Lcom/jiliguala/niuwa/common/a/i;)V

    .line 1324
    invoke-static {}, Lcom/jiliguala/niuwa/logic/u/a;->a()Lcom/jiliguala/niuwa/logic/u/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$8;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$8;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/u/a;->a(Lcom/jiliguala/niuwa/logic/u/a/a;)V

    .line 1335
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1336
    invoke-static {}, Lcom/jiliguala/niuwa/logic/u/a;->a()Lcom/jiliguala/niuwa/logic/u/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    const/4 v3, 0x2

    .line 1337
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getThisFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1336
    invoke-virtual {v1, v2, v3, v0}, Lcom/jiliguala/niuwa/logic/u/a;->a(Ljava/lang/Object;ILandroid/support/v4/app/ag;)V

    .line 1340
    :cond_0
    return-void
.end method

.method private fetchVideoResAndPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 868
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;->links:[Ljava/lang/String;

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    .line 870
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;->cookie:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->cookies:Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->cookies:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->start(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;
    .locals 3
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "bid"    # Ljava/lang/String;

    .prologue
    .line 1054
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;

    invoke-direct {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    .local v1, "favDataEntity":Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1056
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 1057
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "courseId"    # Ljava/lang/String;
    .param p3, "subTaskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;",
            ">;)",
            "Lokhttp3/ab;"
        }
    .end annotation

    .prologue
    .line 1423
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 1424
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 1425
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 1426
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 1427
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 1429
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1431
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 1432
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private getDuration()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 635
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 642
    :cond_0
    :goto_0
    return v1

    .line 639
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getPosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 648
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v1

    .line 652
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private initJobThreadAndAddListener()V
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/g/e;->a(Lcom/jiliguala/niuwa/logic/g/d;)V

    .line 266
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JOB_THREAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    .line 267
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 268
    new-instance v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;-><init>(Landroid/os/Looper;Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    .line 269
    return-void
.end method

.method private isAirplayComplete(II)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "dur"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 1827
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    if-ne p1, v2, :cond_0

    .line 1828
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    .line 1833
    :goto_0
    if-lt p1, p2, :cond_1

    .line 1834
    iput v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    .line 1835
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    .line 1845
    :goto_1
    return v0

    .line 1830
    :cond_0
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    .line 1831
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    goto :goto_0

    .line 1837
    :cond_1
    add-int/lit16 v2, p2, -0x3e8

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 1841
    iput v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    .line 1842
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1845
    goto :goto_1
.end method

.method private isIqiyiDlnaComplete(II)Z
    .locals 3
    .param p1, "pos"    # I
    .param p2, "dur"    # I

    .prologue
    const/4 v0, 0x0

    .line 1808
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderDur:I

    add-int/lit16 v2, v2, -0x1388

    if-le v1, v2, :cond_0

    .line 1809
    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    .line 1810
    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderDur:I

    .line 1811
    const/4 v0, 0x1

    .line 1815
    :goto_0
    return v0

    .line 1813
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    .line 1814
    iput p2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderDur:I

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 622
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v1

    .line 626
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isRenderComplete(II)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "dur"    # I

    .prologue
    .line 1793
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getPlayingMode()I

    move-result v0

    .line 1794
    .local v0, "playingMode":I
    packed-switch v0, :pswitch_data_0

    .line 1801
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isAirplayComplete(II)Z

    move-result v1

    :goto_0
    return v1

    .line 1797
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isAirplayComplete(II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1799
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isIqiyiDlnaComplete(II)Z

    move-result v1

    goto :goto_0

    .line 1794
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isVideoLimitReached()Z
    .locals 2

    .prologue
    .line 988
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    const/4 v0, 0x0

    .line 993
    :goto_0
    return v0

    .line 992
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/b;->f()Z

    move-result v0

    .line 993
    .local v0, "reached":Z
    goto :goto_0
.end method

.method private onDurationZero()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mLastRedirectResult:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mLastRedirectResult:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->proceedPlay(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V

    .line 438
    :cond_0
    return-void
.end method

.method private onLinksEmpty()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 855
    const-string v0, "\u8d44\u6e90\u5df2\u4e0b\u67b6\uff0c\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 856
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->seekTo(I)V

    .line 857
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 858
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 859
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showSurfaceCover(Z)V

    .line 861
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 862
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 864
    :cond_0
    return-void
.end method

.method private onVideoLimitReachCheck()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 997
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/r/b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1010
    :goto_0
    return v1

    .line 1000
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isVideoLimitReached()Z

    move-result v0

    .line 1002
    .local v0, "reached":Z
    if-eqz v0, :cond_2

    .line 1004
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1005
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 1007
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/g/e;->g()V

    .line 1008
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1010
    goto :goto_0
.end method

.method private parseRedirectUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "redirect_url"    # Ljava/lang/String;
    .param p2, "cookies"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1487
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1496
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->cancel(Z)Z

    .line 1499
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    .line 1500
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1501
    return-void
.end method

.method private pause()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 669
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 671
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 673
    :cond_1
    return-void
.end method

.method private performFavVideo()V
    .locals 4

    .prologue
    .line 1343
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/e;->a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 1344
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 1345
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1346
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onClickFavThisVideo()V

    .line 1347
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1348
    .local v0, "bid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1349
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1350
    invoke-direct {p0, v3, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->f(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 1351
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1352
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1353
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$9;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$9;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    .line 1354
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1348
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 1372
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private play()V
    .locals 1

    .prologue
    .line 819
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 821
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->start()V

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onVideoLimitReachCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 827
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-nez v0, :cond_2

    .line 828
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext()V

    goto :goto_0

    .line 830
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->start()V

    goto :goto_0
.end method

.method private playPrev(Z)V
    .locals 1
    .param p1, "manual"    # Z

    .prologue
    .line 1027
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 1029
    const v0, 0x7f0f0142

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1030
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    if-eqz v0, :cond_2

    .line 1034
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->play()V

    goto :goto_0

    .line 1036
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->realUri:Ljava/lang/String;

    .line 1037
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1038
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->d()I

    move-result v0

    if-nez v0, :cond_3

    .line 1039
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onAlreadySwitchToFirst()V

    goto :goto_0

    .line 1043
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 1044
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1045
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showLoadingProgress()V

    .line 1048
    :cond_4
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->b()V

    goto :goto_0
.end method

.method private prepareAsync(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 614
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 616
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 619
    :cond_1
    return-void
.end method

.method private proceedPlay(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V
    .locals 3
    .param p1, "result"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    .prologue
    .line 1606
    :try_start_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mLastRedirectResult:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    .line 1607
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1608
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1609
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 1610
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1611
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 1613
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getPlayingMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1614
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->startPlay(Ljava/lang/String;)V

    .line 1627
    :cond_0
    :goto_0
    return-void

    .line 1616
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uri:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setDataSource(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    .line 1617
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uri:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->realUri:Ljava/lang/String;

    .line 1619
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepareAsync(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1623
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    goto :goto_0

    .line 1617
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private quitJobThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reCordUserWatchCount(Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;)V
    .locals 10
    .param p1, "dataPart"    # Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    .prologue
    .line 1869
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    .line 1883
    :cond_0
    :goto_0
    return-void

    .line 1872
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1873
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1874
    .local v0, "bid":Ljava/lang/String;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    .line 1875
    .local v1, "channel":Ljava/lang/String;
    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->withTimeAtStartOfDay()Lorg/joda/time/DateTime;

    move-result-object v4

    .line 1876
    .local v4, "dt":Lorg/joda/time/DateTime;
    invoke-virtual {v4}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 1878
    .local v5, "ts":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    move-result-object v3

    .line 1879
    .local v3, "databaseHelper":Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;
    invoke-virtual {v3, v0, v1, v5}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->selectCountByBidAndChannelIDAndTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1881
    .local v2, "count":Ljava/lang/String;
    invoke-virtual {v3, v0, v1, v2, v5}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->updateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recordTrackerStart()V
    .locals 4

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1245
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    const-string v2, "Community"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1246
    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    const-string v2, "Tools"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private release(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 596
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 597
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 598
    return-void
.end method

.method private requestVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 330
    invoke-interface {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 331
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 332
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 333
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$4;

    invoke-direct {v2, p0, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private requestVideoAnonymous(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 370
    invoke-interface {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/d;->e(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 371
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 372
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 373
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 368
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 395
    :cond_0
    return-void
.end method

.method private reset(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 944
    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 945
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 947
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resetProgress()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 937
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 940
    :cond_0
    return-void
.end method

.method private resetRecord()V
    .locals 2

    .prologue
    .line 1526
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    .line 1527
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    .line 1528
    return-void
.end method

.method private resetToInitialState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setRid(Ljava/lang/String;)V

    .line 956
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 958
    return-void
.end method

.method private savePlayRecord(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2081
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isMcPhCourse:Z

    if-eqz v0, :cond_0

    .line 2082
    if-lez p1, :cond_0

    .line 2083
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/db/daometa/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a;->a(Lcom/jiliguala/niuwa/logic/db/daometa/e;)V

    .line 2086
    :cond_0
    return-void
.end method

.method private setCurState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 592
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    .line 593
    return-void
.end method

.method private setDataSource(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 603
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 604
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 605
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 609
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 611
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    return-void

    .line 607
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shouldPlayNextWithCheckState()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 906
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v1

    .line 911
    .local v1, "networkType":I
    const-string v3, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v3, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 912
    .local v0, "enabled":Z
    sget-boolean v3, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->show3GNetStateDialog()V

    .line 916
    const/4 v2, 0x0

    .line 919
    :cond_0
    return v2
.end method

.method private shouldRecordAccordingToChannelId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 1861
    const-string v0, "1000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    .line 1862
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    .line 1863
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    .line 1864
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1861
    :goto_0
    return v0

    .line 1864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 836
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->art:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 842
    iput v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    .line 843
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;->links:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    .line 844
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    if-nez v0, :cond_2

    .line 845
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onLinksEmpty()V

    .line 851
    :cond_1
    :goto_0
    return-void

    .line 848
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    if-ge v0, v1, :cond_1

    .line 849
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->fetchVideoResAndPlay()V

    goto :goto_0
.end method

.method private start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookies"    # Ljava/lang/String;

    .prologue
    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 888
    .local v2, "t":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parseRedirectUrl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startTimerRunnable()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "b67e0d0aadb2400cbe1bba910f06b730"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onStartTimer()V

    .line 431
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 661
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 663
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 666
    :cond_1
    return-void
.end method

.method private stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 576
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 583
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayPause()V

    .line 587
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onNetworkUnavailable()V

    .line 589
    :cond_1
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private strictSeekTo(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 689
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 691
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public actionPlayFromStart()V
    .locals 1

    .prologue
    .line 1922
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->seekTo(I)V

    .line 1923
    return-void
.end method

.method public changeLoopStrategy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1182
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    .line 1192
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateLoopBtn(Z)V

    .line 1195
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    if-eqz v0, :cond_3

    const-string v0, "\u5df2\u5207\u6362\u5230\u5355\u66f2\u5faa\u73af\u6a21\u5f0f"

    :goto_2
    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1196
    return-void

    :cond_1
    move v0, v1

    .line 1182
    goto :goto_0

    .line 1193
    :cond_2
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    goto :goto_1

    .line 1195
    :cond_3
    const-string v0, "\u5df2\u5207\u6362\u5230\u5217\u8868\u5faa\u73af\u6a21\u5f0f"

    goto :goto_2
.end method

.method public clickFavThisVideo()V
    .locals 3

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v1, :cond_2

    .line 1281
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/e;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1283
    .local v0, "isFav":Z
    if-nez v0, :cond_3

    .line 1284
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    .line 1285
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1287
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1288
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showPop(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V

    .line 1291
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->performFavVideo()V

    .line 1300
    .end local v0    # "isFav":Z
    :cond_2
    :goto_0
    return-void

    .line 1293
    .restart local v0    # "isFav":Z
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1295
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onClickUnFavThisVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public confirmUnFavThisVideo(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1062
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/e;->c(Ljava/lang/String;)V

    .line 1063
    const-string v1, "1000"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/g/e;->b(Ljava/lang/String;)V

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 1068
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "bid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1070
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1071
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1072
    invoke-direct {p0, v3, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->e(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 1073
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1074
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1075
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    .line 1076
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1070
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 1093
    :cond_1
    return-void
.end method

.method public destroyMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1221
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->cancel(Z)Z

    .line 1224
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->quitJobThread()V

    .line 1225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1227
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1228
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1229
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1230
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1231
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->release(Landroid/media/MediaPlayer;)V

    .line 1234
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->m()V

    .line 1235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_2

    .line 1236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->stopPlay()V

    .line 1237
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->performExit()V

    .line 1238
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    .line 1240
    :cond_2
    return-void
.end method

.method public doChannelSelect()V
    .locals 1

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->gotoChannelSelect()V

    .line 1202
    :cond_0
    return-void
.end method

.method public doChannelSelectAction(Ljava/lang/String;IZZ)V
    .locals 6
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "expand"    # Z
    .param p4, "singlRes"    # Z

    .prologue
    .line 1436
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZZ)V

    .line 1437
    return-void
.end method

.method public doChannelSelectAction(Ljava/lang/String;IZZZ)V
    .locals 7
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "expand"    # Z
    .param p4, "singlRes"    # Z
    .param p5, "lockSingleLoop"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1449
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetRecord()V

    .line 1450
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    packed-switch v0, :pswitch_data_0

    .line 1479
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mChannelId:Ljava/lang/String;

    move-object v1, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/g/e;->a(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 1481
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1482
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v6

    :goto_1
    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateLoopBtn(Z)V

    .line 1484
    :cond_1
    return-void

    .line 1452
    :pswitch_1
    if-nez p5, :cond_2

    .line 1453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    .line 1461
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1462
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1463
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showLoadingProgress()V

    .line 1465
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stop()V

    goto :goto_0

    .line 1457
    :cond_4
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    goto :goto_2

    .line 1468
    :pswitch_2
    if-nez p5, :cond_5

    .line 1469
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    .line 1471
    :cond_5
    sget-object v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1474
    :pswitch_3
    if-nez p5, :cond_0

    .line 1475
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    goto :goto_0

    .line 1482
    :cond_6
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    goto :goto_1

    .line 1450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public doSearchAction()V
    .locals 1

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onSearchAction()V

    .line 1208
    :cond_0
    return-void
.end method

.method public doShareThisVideo()V
    .locals 6

    .prologue
    .line 1096
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v2, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1098
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1099
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v2, "Title"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Watch Share Dialog"

    .line 1102
    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u548c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    .line 1104
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u770b\u4e86\u300c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300d\u77ed\u7247\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "shareTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->img:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->art:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->doShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "shareTitle":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public fetchFromServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideoResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public getCurrentChannel()Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1886
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1894
    :goto_0
    return-object v0

    .line 1889
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    .line 1890
    .local v0, "dataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->channel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "dataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    :cond_3
    move-object v0, v1

    .line 1894
    goto :goto_0
.end method

.method public getMirrorRenderInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getRenders()Ljava/util/Map;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public handleMalFormedVideo()V
    .locals 3

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, -0x1

    const/16 v2, -0x3ef

    invoke-virtual {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onError(Landroid/media/MediaPlayer;II)Z

    .line 1556
    :cond_0
    return-void
.end method

.method public initRenderManager()V
    .locals 1

    .prologue
    .line 1664
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    .line 1665
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->setIRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V

    .line 1666
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->init()V

    .line 1667
    return-void
.end method

.method public isCurrentItemFavored()Z
    .locals 2

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    .line 1586
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/k/e;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastPaused()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    return v0
.end method

.method public isMediaPlayerReleased()Z
    .locals 2

    .prologue
    .line 1559
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRenderPlaying()Z
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public onClickMirrorRenderBtn()V
    .locals 3

    .prologue
    const/16 v2, 0x1003

    const/16 v1, 0x1002

    .line 712
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->stopPlay()V

    .line 715
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 736
    :cond_1
    :goto_0
    return-void

    .line 729
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showRenderChooser()V

    goto :goto_0
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 1851
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->deletePlayRecord()V

    .line 1853
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getCurrentChannel()Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    move-result-object v0

    .line 1855
    .local v0, "dataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->extend:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->shouldRecordAccordingToChannelId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1856
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reCordUserWatchCount(Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;)V

    .line 1858
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 515
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 516
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    if-nez v1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 522
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->isFromPratise()Z

    move-result v1

    if-nez v1, :cond_3

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v1, "Title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch Play"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 531
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->isFromPratise()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->isNotLesson()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 532
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 533
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 537
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isVideoLimitReached()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->isFromPratise()Z

    move-result v1

    if-nez v1, :cond_6

    .line 538
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onShowVideoLimitDialog()V

    goto/16 :goto_0

    .line 542
    :cond_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendProgressTrackerReport()V

    .line 543
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 547
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 549
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext(Z)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1211
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->n()V

    .line 1212
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 444
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 445
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 449
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 450
    if-eq p2, v1, :cond_3

    if-eq p3, v1, :cond_3

    .line 451
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    if-ge v0, v4, :cond_1

    .line 455
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->cookies:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    .line 490
    :cond_1
    :goto_0
    return v2

    .line 460
    :cond_2
    iput v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    goto :goto_0

    .line 465
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    .line 466
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    if-ge v0, v1, :cond_4

    .line 467
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->fetchVideoResAndPlay()V

    goto :goto_0

    .line 469
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 470
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayError()Z

    .line 472
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 473
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showErrorAlertDialog()V

    .line 476
    :cond_6
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 477
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    .line 478
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    if-lt v0, v4, :cond_7

    .line 479
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    .line 480
    const v0, 0x7f0f0189

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 482
    :cond_7
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext(Z)V

    goto :goto_0

    .line 485
    :cond_8
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public onFail()V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    .line 296
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 496
    packed-switch p2, :pswitch_data_0

    .line 503
    :cond_0
    :goto_0
    const/16 v0, 0x23

    if-ne p3, v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->handleMalFormedVideo()V

    .line 506
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 498
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isRenderPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V

    .line 1143
    :goto_0
    return-void

    .line 1138
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayResume()V

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->pauseOrStart()V

    goto :goto_0
.end method

.method public onPlayFromRender()V
    .locals 0

    .prologue
    .line 1117
    return-void
.end method

.method public onPlayListEmpty()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetToInitialState()V

    .line 301
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 405
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 409
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    .line 410
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 412
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->startTimerRunnable()V

    .line 414
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->pausePlayOnChannelShow()V

    .line 421
    :cond_0
    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .locals 2
    .param p1, "chnName"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->shouldPlayNextWithCheckState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 282
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateChannelName(Ljava/lang/String;)V

    .line 286
    .end local v0    # "index":I
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->play()V

    goto :goto_0
.end method

.method public onRedirectUrlFailed(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V
    .locals 5
    .param p1, "result"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 1632
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    if-nez v0, :cond_0

    .line 1634
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1635
    :goto_0
    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->increaseFirstFailCounter(Ljava/lang/String;)V

    .line 1636
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v0

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uri:Ljava/lang/String;

    iget v3, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->rspCode:I

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->reportPreferedLinkRedirectFail(Ljava/lang/String;I)V

    .line 1638
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    .line 1640
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1641
    :goto_1
    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->increaseAllFailCounter(Ljava/lang/String;)V

    .line 1642
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    :cond_1
    iget v2, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->rspCode:I

    .line 1643
    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->reportFallBackLinkRedirectFail(Ljava/lang/String;I)V

    .line 1646
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v4, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onError(Landroid/media/MediaPlayer;II)Z

    .line 1647
    return-void

    :cond_3
    move-object v0, v1

    .line 1634
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1640
    goto :goto_1
.end method

.method public onRedirectUrlSucceed(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V
    .locals 2
    .param p1, "result"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    .prologue
    .line 1595
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    if-nez v0, :cond_0

    .line 1596
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->resetFirstFailCounter()V

    .line 1598
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 1599
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->resetAllFailCounter()V

    .line 1601
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->proceedPlay(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V

    .line 1602
    return-void
.end method

.method public onRenderClicked(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V
    .locals 2
    .param p1, "renderInfo"    # Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->onSwitchRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->startPlay(Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onRenderPauseOrStart(Z)V
    .locals 1
    .param p1, "isPause"    # Z

    .prologue
    .line 1780
    if-eqz p1, :cond_1

    .line 1781
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1782
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayPauseOnUi()V

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1785
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayResumeOnUi()V

    goto :goto_0
.end method

.method public onRenderPlayConnected()V
    .locals 1

    .prologue
    .line 1699
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1700
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onRenderPlayConntected()V

    .line 1702
    :cond_0
    return-void
.end method

.method public onRenderPlayDisConnected()V
    .locals 2

    .prologue
    .line 1706
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    .line 1707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 1708
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1709
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onRenderPlayDisConntected()V

    .line 1711
    :cond_0
    return-void
.end method

.method public onRenderPlayFailed()V
    .locals 0

    .prologue
    .line 1688
    return-void
.end method

.method public onRenderPlaySeekSucceed()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 1722
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    if-eqz v0, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->sendEmptyMessage(I)Z

    .line 1728
    :cond_1
    return-void
.end method

.method public onRenderPlayStart()V
    .locals 1

    .prologue
    .line 1692
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1693
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onRenderPlayStart()V

    .line 1695
    :cond_0
    return-void
.end method

.method public onRenderPlayStop()V
    .locals 1

    .prologue
    .line 1715
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onRenderPlayStop()V

    .line 1718
    :cond_0
    return-void
.end method

.method public onRenderPlaySucceed()V
    .locals 4

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayResumeOnUi()V

    .line 1674
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1682
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->sendEmptyMessage(I)Z

    .line 1683
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 1544
    const-string v0, "KEY_LAS_POS"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    .line 1545
    const-string v0, "KEY_PLAY_MODE"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    .line 1546
    const-string v0, "KEY_LAST_SOURCE"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    .line 1547
    const-string v0, "KEY_LAST_PAUSED"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    .line 1548
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/g/e;->b(Landroid/os/Bundle;)V

    .line 1549
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1536
    const-string v0, "KEY_LAS_POS"

    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1537
    const-string v0, "KEY_PLAY_MODE"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1538
    const-string v0, "KEY_LAST_SOURCE"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const-string v0, "KEY_LAST_PAUSED"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1540
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/g/e;->a(Landroid/os/Bundle;)V

    .line 1541
    return-void
.end method

.method public onSendProgressFail()V
    .locals 1

    .prologue
    .line 1916
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1917
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onSendProgressFail()V

    .line 1919
    :cond_0
    return-void
.end method

.method public onSendProgressSuccess(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 1
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 1909
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1910
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onSendProgressSuccess(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    .line 1912
    :cond_0
    return-void
.end method

.method public onUpdateMirrorIcon()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1732
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1733
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getMirrorRenderInfo()Ljava/util/Map;

    move-result-object v0

    .line 1734
    .local v0, "renders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    :goto_1
    invoke-interface {v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onUpdateRenderIcon(ZZ)V

    .line 1736
    .end local v0    # "renders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;>;"
    :cond_0
    return-void

    .restart local v0    # "renders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;>;"
    :cond_1
    move v2, v4

    .line 1734
    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public onUpdatePlayProgress(II)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dur"    # I

    .prologue
    const/16 v3, 0x1000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1741
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getPlayingMode()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1743
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1744
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 1747
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1748
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1749
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1750
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1754
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isRenderPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isRenderComplete(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1755
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAriplayProgressOneShotFlag:Z

    if-nez v2, :cond_3

    .line 1757
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopGettingRenderPlayingProgress()V

    .line 1758
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->isFromPratise()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1759
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getCourseIds()[Ljava/lang/String;

    move-result-object v0

    .line 1760
    .local v0, "courseids":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1761
    aget-object v2, v0, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1762
    :cond_1
    aget-object v2, v0, v5

    aget-object v3, v0, v4

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    .end local v0    # "courseids":[Ljava/lang/String;
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAriplayProgressOneShotFlag:Z

    .line 1776
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    return-void

    .line 1767
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_4
    const v2, 0x7f0f0199

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1768
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext()V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 563
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    if-eqz v1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 568
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 569
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public pauseUpdateProgress()V
    .locals 0

    .prologue
    .line 1581
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1582
    return-void
.end method

.method public perform3GContinue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 182
    return-void
.end method

.method public playNext()V
    .locals 2

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendProgressTrackerReport()V

    .line 932
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext(Z)V

    .line 933
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 934
    return-void
.end method

.method public playNext(Z)V
    .locals 2
    .param p1, "manual"    # Z

    .prologue
    .line 961
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 963
    const v0, 0x7f0f0142

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 964
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->realUri:Ljava/lang/String;

    .line 970
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 971
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    if-eqz v0, :cond_2

    .line 972
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->play()V

    goto :goto_0

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getPlayingMode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 978
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showLoadingProgress()V

    .line 980
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 982
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/g/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playPrev()V
    .locals 2

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendProgressTrackerReport()V

    .line 1022
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playPrev(Z)V

    .line 1023
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1024
    return-void
.end method

.method public playResetLink()V
    .locals 1

    .prologue
    .line 1660
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->g()V

    .line 1661
    return-void
.end method

.method public playRightNow(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x5

    .line 677
    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 679
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 680
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :cond_1
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->handleMalFormedVideo()V

    goto :goto_0
.end method

.method public prepareMediaPlayer()V
    .locals 3

    .prologue
    .line 752
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 753
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 754
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 755
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 757
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 758
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 759
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 760
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->initJobThreadAndAddListener()V

    .line 761
    return-void
.end method

.method public reqeustVideoFavData()V
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const-string v3, "1000"

    .line 208
    invoke-interface {v2, v0, v3}, Lcom/jiliguala/niuwa/logic/network/d;->d(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 209
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 210
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 211
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$1;

    invoke-direct {v3, p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public requestVideoChannel()V
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->c()Lrx/e;

    move-result-object v1

    .line 238
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 239
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 240
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 262
    :cond_0
    return-void
.end method

.method public requestVideoResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "bid":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const/4 p1, 0x0

    .line 316
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v0    # "bid":Ljava/lang/String;
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideoAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetMediaPlayerStatus()V
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1218
    :cond_0
    return-void
.end method

.method public resumeUpdateProgress()V
    .locals 3

    .prologue
    .line 1563
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1564
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1565
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1567
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public savePosWhilePause()V
    .locals 4

    .prologue
    .line 1504
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 1505
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1506
    const-wide/16 v0, -0x1

    .line 1508
    .local v0, "cur_pos":J
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v0, v2

    .line 1512
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    .line 1513
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    .line 1515
    :try_start_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1520
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1521
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 1523
    .end local v0    # "cur_pos":J
    :cond_0
    return-void

    .line 1509
    .restart local v0    # "cur_pos":J
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1516
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/16 v1, 0x1002

    .line 1168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->seekToPos(J)V

    .line 1170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1174
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1175
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->recordTrackerStart()V

    .line 1177
    :cond_2
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->strictSeekTo(I)V

    goto :goto_0
.end method

.method public sendMcPcProgress(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;Ljava/lang/String;)V
    .locals 3
    .param p1, "mcPcSubTaskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .param p2, "subId"    # Ljava/lang/String;

    .prologue
    .line 1898
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;-><init>()V

    .line 1899
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->bid:Ljava/lang/String;

    .line 1900
    iget-object v2, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->lid:Ljava/lang/String;

    .line 1901
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->subtaskid:Ljava/lang/String;

    .line 1902
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;-><init>()V

    .line 1903
    .local v1, "progressManager":Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;
    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;)V

    .line 1904
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->sendProgress(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V

    .line 1905
    return-void
.end method

.method public sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 1385
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1386
    .local v0, "bid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 1388
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showLoadingProgress()V

    .line 1389
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1390
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const/4 v3, 0x0

    .line 1391
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 1392
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1393
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1394
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;

    invoke-direct {v3, p0, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1389
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 1419
    :cond_0
    return-void
.end method

.method public sendProgressTrackerReport()V
    .locals 2

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-nez v0, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/i/b;->a(Ljava/lang/String;)V

    .line 1379
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mIsWatch:Z

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V

    goto :goto_0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mChannelId:Ljava/lang/String;

    .line 748
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->changePlayMode(Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public setIsWatch(Z)V
    .locals 0
    .param p1, "isWatch"    # Z

    .prologue
    .line 1656
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mIsWatch:Z

    .line 1657
    return-void
.end method

.method public setLastPaused(Z)V
    .locals 0
    .param p1, "isLastPaused"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    .line 176
    return-void
.end method

.method public setMcPhCourse(Z)V
    .locals 0
    .param p1, "mcPhCourse"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isMcPhCourse:Z

    .line 168
    return-void
.end method

.method public setMediaPlayerDisplay(Landroid/view/SurfaceHolder;Z)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 765
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 769
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->shouldPlayNextWithCheckState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 772
    if-eqz p2, :cond_0

    .line 773
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    .line 775
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    .line 776
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->pause()V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    if-nez v1, :cond_0

    .line 780
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->play()V

    goto :goto_0

    .line 789
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/g/e;->k()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "lstChnId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 792
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 795
    .end local v0    # "lstChnId":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v3, v2, v2, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public setPlayPause()V
    .locals 1

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->pause()V

    .line 1148
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayPause()V

    .line 1151
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/b;->c()V

    .line 1152
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1154
    :cond_1
    return-void
.end method

.method public setPlayRecord()V
    .locals 2

    .prologue
    .line 2089
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isMcPhCourse:Z

    if-eqz v0, :cond_0

    .line 2090
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a;->d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/daometa/e;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .line 2092
    :cond_0
    return-void
.end method

.method public setPlayResume()V
    .locals 2

    .prologue
    .line 1157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    .line 1158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playRightNow(Landroid/media/MediaPlayer;)V

    .line 1159
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayResume()V

    .line 1161
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onStartTimer()V

    .line 1163
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->recordTrackerStart()V

    .line 1164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->sendEmptyMessage(I)Z

    .line 1165
    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    .line 744
    return-void
.end method

.method protected showLimitDialogIfRequestRestVideoFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 358
    const-string v0, "b67e0d0aadb2400cbe1bba910f06b730"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onShowVideoLimitDialog()V

    .line 363
    :cond_0
    return-void
.end method

.method public stopGettingRenderPlayingProgress()V
    .locals 2

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 1653
    :cond_0
    return-void
.end method

.method public updateFavIcon()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-nez v0, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateFavImg(Ljava/lang/String;)V

    goto :goto_0
.end method
