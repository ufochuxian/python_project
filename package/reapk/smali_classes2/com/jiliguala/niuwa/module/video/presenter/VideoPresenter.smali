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
    .line 90
    const-class v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->TAG:Ljava/lang/String;

    .line 115
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

    .line 161
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 122
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    .line 125
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 130
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    .line 154
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    .line 162
    new-instance v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->performFavVideo()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getDuration()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->savePlayRecord(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/VideoRenderManager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAriplayProgressOneShotFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    return v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->recordTrackerStart()V

    return-void
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

    return-object v0
.end method

.method static synthetic access$802(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Lcom/jiliguala/niuwa/logic/db/daometa/e;)Lcom/jiliguala/niuwa/logic/db/daometa/e;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

    return-object p1
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
    .param p1, "x1"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    return-wide p1
.end method

.method private changePlayMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 793
    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const/4 v0, 0x3

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    .line 802
    :goto_0
    return-void

    .line 795
    :cond_0
    const-string v0, "1000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    goto :goto_0

    .line 797
    :cond_1
    const-string v0, "-2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    const/4 v0, 0x4

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    goto :goto_0

    .line 800
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    goto :goto_0
.end method

.method private deletePlayRecord()V
    .locals 2

    .prologue
    .line 2087
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isMcPhCourse:Z

    if-eqz v0, :cond_0

    .line 2088
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a;->e(Ljava/lang/String;)V

    .line 2090
    :cond_0
    return-void
.end method

.method private doViralShar()V
    .locals 4

    .prologue
    .line 1295
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/common/a/i;)V

    .line 1316
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$8;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$8;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/logic/t/a/a;)V

    .line 1327
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    const/4 v3, 0x2

    .line 1329
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getThisFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 1328
    invoke-virtual {v1, v2, v3, v0}, Lcom/jiliguala/niuwa/logic/t/a;->a(Ljava/lang/Object;ILandroid/support/v4/app/ag;)V

    .line 1332
    :cond_0
    return-void
.end method

.method private fetchVideoResAndPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;->links:[Ljava/lang/String;

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;->cookie:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->cookies:Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 872
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
    .line 1046
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;

    invoke-direct {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    .local v1, "favDataEntity":Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1048
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 1049
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
    .line 1415
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 1416
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 1417
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 1418
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 1419
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 1421
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 1424
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private getDuration()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 627
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

    .line 634
    :cond_0
    :goto_0
    return v1

    .line 631
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getPosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 640
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v1

    .line 644
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private initJobThreadAndAddListener()V
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/g/e;->a(Lcom/jiliguala/niuwa/logic/g/d;)V

    .line 265
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JOB_THREAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    .line 266
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 267
    new-instance v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;-><init>(Landroid/os/Looper;Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    .line 268
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

    .line 1819
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    if-ne p1, v2, :cond_0

    .line 1820
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    .line 1825
    :goto_0
    if-lt p1, p2, :cond_1

    .line 1826
    iput v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    .line 1827
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    .line 1837
    :goto_1
    return v0

    .line 1822
    :cond_0
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    .line 1823
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    goto :goto_0

    .line 1829
    :cond_1
    add-int/lit16 v2, p2, -0x3e8

    if-lt p1, v2, :cond_2

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 1833
    iput v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    .line 1834
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAirPlayPosRemainsIdle:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1837
    goto :goto_1
.end method

.method private isIqiyiDlnaComplete(II)Z
    .locals 3
    .param p1, "pos"    # I
    .param p2, "dur"    # I

    .prologue
    const/4 v0, 0x0

    .line 1800
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderDur:I

    add-int/lit16 v2, v2, -0x1388

    if-le v1, v2, :cond_0

    .line 1801
    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    .line 1802
    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderDur:I

    .line 1803
    const/4 v0, 0x1

    .line 1807
    :goto_0
    return v0

    .line 1805
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    .line 1806
    iput p2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderDur:I

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 614
    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v1

    .line 618
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isRenderComplete(II)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "dur"    # I

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getPlayingMode()I

    move-result v0

    .line 1786
    .local v0, "playingMode":I
    packed-switch v0, :pswitch_data_0

    .line 1793
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isAirplayComplete(II)Z

    move-result v1

    :goto_0
    return v1

    .line 1789
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

    .line 1791
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isIqiyiDlnaComplete(II)Z

    move-result v1

    goto :goto_0

    .line 1786
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
    .line 980
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    const/4 v0, 0x0

    .line 985
    :goto_0
    return v0

    .line 984
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/b;->f()Z

    move-result v0

    .line 985
    .local v0, "reached":Z
    goto :goto_0
.end method

.method private onDurationZero()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mLastRedirectResult:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mLastRedirectResult:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->proceedPlay(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V

    .line 437
    :cond_0
    return-void
.end method

.method private onLinksEmpty()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 847
    const-string v0, "\u8d44\u6e90\u5df2\u4e0b\u67b6\uff0c\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->seekTo(I)V

    .line 849
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 850
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 851
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showSurfaceCover(Z)V

    .line 853
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 854
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 856
    :cond_0
    return-void
.end method

.method private onVideoLimitReachCheck()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 989
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/b;->a()Lcom/jiliguala/niuwa/logic/q/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/q/b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1002
    :goto_0
    return v1

    .line 992
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isVideoLimitReached()Z

    move-result v0

    .line 994
    .local v0, "reached":Z
    if-eqz v0, :cond_2

    .line 996
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 997
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 999
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/g/e;->g()V

    .line 1000
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1002
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

    .line 1479
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1488
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->cancel(Z)Z

    .line 1491
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;II)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    .line 1492
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1493
    return-void
.end method

.method private pause()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 661
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 663
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 665
    :cond_1
    return-void
.end method

.method private performFavVideo()V
    .locals 4

    .prologue
    .line 1335
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/e;->a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 1336
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 1337
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onClickFavThisVideo()V

    .line 1339
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1340
    .local v0, "bid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1341
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1342
    invoke-direct {p0, v3, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->f(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 1343
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1344
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1345
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$9;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$9;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    .line 1346
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1340
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 1364
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private play()V
    .locals 1

    .prologue
    .line 811
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 813
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->start()V

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onVideoLimitReachCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .line 819
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-nez v0, :cond_2

    .line 820
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext()V

    goto :goto_0

    .line 822
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->start()V

    goto :goto_0
.end method

.method private playPrev(Z)V
    .locals 1
    .param p1, "manual"    # Z

    .prologue
    .line 1019
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    const v0, 0x7f0f0142

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1022
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    if-eqz v0, :cond_2

    .line 1026
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->play()V

    goto :goto_0

    .line 1028
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->realUri:Ljava/lang/String;

    .line 1029
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1030
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->d()I

    move-result v0

    if-nez v0, :cond_3

    .line 1031
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onAlreadySwitchToFirst()V

    goto :goto_0

    .line 1035
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 1036
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1037
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showLoadingProgress()V

    .line 1040
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
    .line 606
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 608
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 611
    :cond_1
    return-void
.end method

.method private proceedPlay(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V
    .locals 3
    .param p1, "result"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    .prologue
    .line 1598
    :try_start_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mLastRedirectResult:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    .line 1599
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1600
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1601
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 1602
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1603
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 1605
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getPlayingMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1606
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->startPlay(Ljava/lang/String;)V

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uri:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setDataSource(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    .line 1609
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uri:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->realUri:Ljava/lang/String;

    .line 1611
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepareAsync(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1615
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    goto :goto_0

    .line 1609
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

    .line 691
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJobThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reCordUserWatchCount(Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;)V
    .locals 10
    .param p1, "dataPart"    # Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    .prologue
    .line 1861
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1865
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1866
    .local v0, "bid":Ljava/lang/String;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    .line 1867
    .local v1, "channel":Ljava/lang/String;
    new-instance v6, Lorg/joda/time/DateTime;

    invoke-direct {v6}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->withTimeAtStartOfDay()Lorg/joda/time/DateTime;

    move-result-object v4

    .line 1868
    .local v4, "dt":Lorg/joda/time/DateTime;
    invoke-virtual {v4}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 1870
    .local v5, "ts":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v6}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getContext()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;

    move-result-object v3

    .line 1871
    .local v3, "databaseHelper":Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;
    invoke-virtual {v3, v0, v1, v5}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->selectCountByBidAndChannelIDAndTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1873
    .local v2, "count":Ljava/lang/String;
    invoke-virtual {v3, v0, v1, v2, v5}, Lcom/jiliguala/niuwa/module/videofav/VideoFavDataBaseHelper;->updateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private recordTrackerStart()V
    .locals 4

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1237
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    const-string v2, "Community"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1238
    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1240
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
    .line 588
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 589
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 590
    return-void
.end method

.method private requestVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 329
    invoke-interface {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 330
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 331
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 332
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$4;

    invoke-direct {v2, p0, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private requestVideoAnonymous(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 369
    invoke-interface {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/d;->e(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 370
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 371
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 372
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 394
    :cond_0
    return-void
.end method

.method private reset(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 936
    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 937
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 939
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resetProgress()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 929
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 932
    :cond_0
    return-void
.end method

.method private resetRecord()V
    .locals 2

    .prologue
    .line 1518
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    .line 1519
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    .line 1520
    return-void
.end method

.method private resetToInitialState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setRid(Ljava/lang/String;)V

    .line 948
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 950
    return-void
.end method

.method private savePlayRecord(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2073
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isMcPhCourse:Z

    if-eqz v0, :cond_0

    .line 2074
    if-lez p1, :cond_0

    .line 2075
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/db/daometa/e;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/db/daometa/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a;->a(Lcom/jiliguala/niuwa/logic/db/daometa/e;)V

    .line 2078
    :cond_0
    return-void
.end method

.method private setCurState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 584
    iput p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    .line 585
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
    .line 593
    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 595
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 596
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

    .line 597
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 601
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 603
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    return-void

    .line 599
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shouldPlayNextWithCheckState()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 898
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v1

    .line 903
    .local v1, "networkType":I
    const-string v3, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v3, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 904
    .local v0, "enabled":Z
    sget-boolean v3, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 907
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->show3GNetStateDialog()V

    .line 908
    const/4 v2, 0x0

    .line 911
    :cond_0
    return v2
.end method

.method private shouldRecordAccordingToChannelId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 1853
    const-string v0, "1000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    .line 1854
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    .line 1855
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    .line 1856
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1853
    :goto_0
    return v0

    .line 1856
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 828
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
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

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 834
    iput v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    .line 835
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$ResPart;->links:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    .line 836
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    if-nez v0, :cond_2

    .line 837
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onLinksEmpty()V

    .line 843
    :cond_1
    :goto_0
    return-void

    .line 840
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    if-ge v0, v1, :cond_1

    .line 841
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->fetchVideoResAndPlay()V

    goto :goto_0
.end method

.method private start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookies"    # Ljava/lang/String;

    .prologue
    .line 878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 880
    .local v2, "t":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parseRedirectUrl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startTimerRunnable()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "b67e0d0aadb2400cbe1bba910f06b730"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onStartTimer()V

    .line 430
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 653
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

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 655
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 658
    :cond_1
    return-void
.end method

.method private stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 568
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 575
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayPause()V

    .line 579
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onNetworkUnavailable()V

    .line 581
    :cond_1
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private strictSeekTo(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 681
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

    .line 683
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public actionPlayFromStart()V
    .locals 1

    .prologue
    .line 1914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->seekTo(I)V

    .line 1915
    return-void
.end method

.method public changeLoopStrategy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1174
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    .line 1184
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateLoopBtn(Z)V

    .line 1187
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    if-eqz v0, :cond_3

    const-string v0, "\u5df2\u5207\u6362\u5230\u5355\u66f2\u5faa\u73af\u6a21\u5f0f"

    :goto_2
    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1188
    return-void

    :cond_1
    move v0, v1

    .line 1174
    goto :goto_0

    .line 1185
    :cond_2
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    goto :goto_1

    .line 1187
    :cond_3
    const-string v0, "\u5df2\u5207\u6362\u5230\u5217\u8868\u5faa\u73af\u6a21\u5f0f"

    goto :goto_2
.end method

.method public clickFavThisVideo()V
    .locals 3

    .prologue
    .line 1263
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v1, :cond_2

    .line 1273
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/e;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1275
    .local v0, "isFav":Z
    if-nez v0, :cond_3

    .line 1276
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    .line 1277
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1279
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1280
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showPop(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V

    .line 1283
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->performFavVideo()V

    .line 1292
    .end local v0    # "isFav":Z
    :cond_2
    :goto_0
    return-void

    .line 1285
    .restart local v0    # "isFav":Z
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1287
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
    .line 1054
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/e;->c(Ljava/lang/String;)V

    .line 1055
    const-string v1, "1000"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/g/e;->b(Ljava/lang/String;)V

    .line 1058
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->updateFavIcon()V

    .line 1060
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "bid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1062
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1063
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1064
    invoke-direct {p0, v3, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->e(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 1065
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1066
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1067
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$6;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    .line 1068
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1062
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 1085
    :cond_1
    return-void
.end method

.method public destroyMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1213
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->parser:Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser;->cancel(Z)Z

    .line 1216
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->quitJobThread()V

    .line 1217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1219
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1221
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1222
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->release(Landroid/media/MediaPlayer;)V

    .line 1226
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->m()V

    .line 1227
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->stopPlay()V

    .line 1229
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->performExit()V

    .line 1230
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    .line 1232
    :cond_2
    return-void
.end method

.method public doChannelSelect()V
    .locals 1

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->gotoChannelSelect()V

    .line 1194
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
    .line 1428
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZZ)V

    .line 1429
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

    .line 1441
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetRecord()V

    .line 1442
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    packed-switch v0, :pswitch_data_0

    .line 1471
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

    .line 1473
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1474
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v6

    :goto_1
    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateLoopBtn(Z)V

    .line 1476
    :cond_1
    return-void

    .line 1444
    :pswitch_1
    if-nez p5, :cond_2

    .line 1445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    .line 1453
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1454
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1455
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showLoadingProgress()V

    .line 1457
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stop()V

    goto :goto_0

    .line 1449
    :cond_4
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    goto :goto_2

    .line 1460
    :pswitch_2
    if-nez p5, :cond_5

    .line 1461
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    .line 1463
    :cond_5
    sget-object v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1466
    :pswitch_3
    if-nez p5, :cond_0

    .line 1467
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    goto :goto_0

    .line 1474
    :cond_6
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    goto :goto_1

    .line 1442
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
    .line 1197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onSearchAction()V

    .line 1200
    :cond_0
    return-void
.end method

.method public doShareThisVideo()V
    .locals 6

    .prologue
    .line 1088
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v2, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1090
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1091
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    const-string v2, "Title"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Watch Share Dialog"

    .line 1094
    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u548c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    .line 1096
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

    .line 1097
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

    .line 1101
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
    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideoResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public getCurrentChannel()Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1878
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoChannelData:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1886
    :goto_0
    return-object v0

    .line 1881
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

    .line 1882
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

    .line 1886
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
    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getRenders()Ljava/util/Map;

    move-result-object v0

    .line 187
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
    .line 1545
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, -0x1

    const/16 v2, -0x3ef

    invoke-virtual {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onError(Landroid/media/MediaPlayer;II)Z

    .line 1548
    :cond_0
    return-void
.end method

.method public initRenderManager()V
    .locals 1

    .prologue
    .line 1656
    new-instance v0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    .line 1657
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->setIRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V

    .line 1658
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->init()V

    .line 1659
    return-void
.end method

.method public isCurrentItemFavored()Z
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    .line 1578
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/e;->a()Lcom/jiliguala/niuwa/logic/k/e;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/k/e;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 1

    .prologue
    .line 1523
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
    .line 170
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    return v0
.end method

.method public isMediaPlayerReleased()Z
    .locals 2

    .prologue
    .line 1551
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
    .line 731
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

    .line 704
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->stopPlay()V

    .line 707
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 728
    :cond_1
    :goto_0
    return-void

    .line 721
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showRenderChooser()V

    goto :goto_0
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 1843
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->deletePlayRecord()V

    .line 1845
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getCurrentChannel()Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;

    move-result-object v0

    .line 1847
    .local v0, "dataPart":Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->extend:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;->channel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->shouldRecordAccordingToChannelId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1848
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reCordUserWatchCount(Lcom/jiliguala/niuwa/logic/network/json/VideoChannelTemplate$DataPart;)V

    .line 1850
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 514
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 515
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    if-nez v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 521
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 523
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

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 525
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

    .line 526
    const-string v1, "Title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData$MetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Watch Play"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 529
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isVideoLimitReached()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->isFromPratise()Z

    move-result v1

    if-nez v1, :cond_4

    .line 530
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onShowVideoLimitDialog()V

    goto/16 :goto_0

    .line 534
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendProgressTrackerReport()V

    .line 535
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 539
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 541
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext(Z)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1203
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->n()V

    .line 1204
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

    .line 443
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 444
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->setControllerEnable(Z)V

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 448
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 449
    if-eq p2, v1, :cond_3

    if-eq p3, v1, :cond_3

    .line 450
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    if-ge v0, v4, :cond_1

    .line 454
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->cookies:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    .line 489
    :cond_1
    :goto_0
    return v2

    .line 459
    :cond_2
    iput v3, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    goto :goto_0

    .line 464
    :cond_3
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    .line 465
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    if-ge v0, v1, :cond_4

    .line 466
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->fetchVideoResAndPlay()V

    goto :goto_0

    .line 468
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 469
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayError()Z

    .line 471
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 472
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showErrorAlertDialog()V

    .line 475
    :cond_6
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 476
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    .line 477
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    if-lt v0, v4, :cond_7

    .line 478
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    .line 479
    const v0, 0x7f0f0189

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 481
    :cond_7
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext(Z)V

    goto :goto_0

    .line 484
    :cond_8
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method

.method public onFail()V
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    .line 295
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 495
    packed-switch p2, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    const/16 v0, 0x23

    if-ne p3, v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->handleMalFormedVideo()V

    .line 505
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 497
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isRenderPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1113
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V

    .line 1135
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayResume()V

    goto :goto_0

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->pauseOrStart()V

    goto :goto_0
.end method

.method public onPlayFromRender()V
    .locals 0

    .prologue
    .line 1109
    return-void
.end method

.method public onPlayListEmpty()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetToInitialState()V

    .line 300
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 404
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V

    .line 408
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->retryCount:I

    .line 409
    iput v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->errorCounter:I

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 411
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->startTimerRunnable()V

    .line 413
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->pausePlayOnChannelShow()V

    .line 420
    :cond_0
    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .locals 2
    .param p1, "chnName"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->shouldPlayNextWithCheckState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopPlayWhileNoNetworkConnection(Landroid/media/MediaPlayer;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 277
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

    .line 279
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 281
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateChannelName(Ljava/lang/String;)V

    .line 285
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

    .line 1624
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    if-nez v0, :cond_0

    .line 1626
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1627
    :goto_0
    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->increaseFirstFailCounter(Ljava/lang/String;)V

    .line 1628
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v0

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->uri:Ljava/lang/String;

    iget v3, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->rspCode:I

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->reportPreferedLinkRedirectFail(Ljava/lang/String;I)V

    .line 1630
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    .line 1632
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    .line 1633
    :goto_1
    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->increaseAllFailCounter(Ljava/lang/String;)V

    .line 1634
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    :cond_1
    iget v2, p1, Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;->rspCode:I

    .line 1635
    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->reportFallBackLinkRedirectFail(Ljava/lang/String;I)V

    .line 1638
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v4, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onError(Landroid/media/MediaPlayer;II)Z

    .line 1639
    return-void

    :cond_3
    move-object v0, v1

    .line 1626
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1632
    goto :goto_1
.end method

.method public onRedirectUrlSucceed(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V
    .locals 2
    .param p1, "result"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;

    .prologue
    .line 1587
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    if-nez v0, :cond_0

    .line 1588
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->resetFirstFailCounter()V

    .line 1590
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurVideoLinkIndex:I

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mVideoLinkLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 1591
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->resetAllFailCounter()V

    .line 1593
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->proceedPlay(Lcom/jiliguala/niuwa/module/video/presenter/VideoRedirectParser$RedirectResult;)V

    .line 1594
    return-void
.end method

.method public onRenderClicked(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V
    .locals 2
    .param p1, "renderInfo"    # Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->onSwitchRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V

    .line 193
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->startPlay(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onRenderPauseOrStart(Z)V
    .locals 1
    .param p1, "isPause"    # Z

    .prologue
    .line 1772
    if-eqz p1, :cond_1

    .line 1773
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayPauseOnUi()V

    .line 1781
    :cond_0
    :goto_0
    return-void

    .line 1777
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1778
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayResumeOnUi()V

    goto :goto_0
.end method

.method public onRenderPlayConnected()V
    .locals 1

    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1692
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onRenderPlayConntected()V

    .line 1694
    :cond_0
    return-void
.end method

.method public onRenderPlayDisConnected()V
    .locals 2

    .prologue
    .line 1698
    iget v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderPos:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    .line 1699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 1700
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1701
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onRenderPlayDisConntected()V

    .line 1703
    :cond_0
    return-void
.end method

.method public onRenderPlayFailed()V
    .locals 0

    .prologue
    .line 1680
    return-void
.end method

.method public onRenderPlaySeekSucceed()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 1714
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 1717
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    if-eqz v0, :cond_1

    .line 1718
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->sendEmptyMessage(I)Z

    .line 1720
    :cond_1
    return-void
.end method

.method public onRenderPlayStart()V
    .locals 1

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1685
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onRenderPlayStart()V

    .line 1687
    :cond_0
    return-void
.end method

.method public onRenderPlayStop()V
    .locals 1

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1708
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onRenderPlayStop()V

    .line 1710
    :cond_0
    return-void
.end method

.method public onRenderPlaySucceed()V
    .locals 4

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayResumeOnUi()V

    .line 1666
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1674
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->sendEmptyMessage(I)Z

    .line 1675
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 1536
    const-string v0, "KEY_LAS_POS"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    .line 1537
    const-string v0, "KEY_PLAY_MODE"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    .line 1538
    const-string v0, "KEY_LAST_SOURCE"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    .line 1539
    const-string v0, "KEY_LAST_PAUSED"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    .line 1540
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/g/e;->b(Landroid/os/Bundle;)V

    .line 1541
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1528
    const-string v0, "KEY_LAS_POS"

    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1529
    const-string v0, "KEY_PLAY_MODE"

    iget v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurPlayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1530
    const-string v0, "KEY_LAST_SOURCE"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v0, "KEY_LAST_PAUSED"

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1532
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/g/e;->a(Landroid/os/Bundle;)V

    .line 1533
    return-void
.end method

.method public onSendProgressFail()V
    .locals 1

    .prologue
    .line 1908
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1909
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onSendProgressFail()V

    .line 1911
    :cond_0
    return-void
.end method

.method public onSendProgressSuccess()V
    .locals 1

    .prologue
    .line 1901
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1902
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onSendProgressSuccess()V

    .line 1904
    :cond_0
    return-void
.end method

.method public onUpdateMirrorIcon()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1724
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1725
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getMirrorRenderInfo()Ljava/util/Map;

    move-result-object v0

    .line 1726
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

    .line 1728
    .end local v0    # "renders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;>;"
    :cond_0
    return-void

    .restart local v0    # "renders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;>;"
    :cond_1
    move v2, v4

    .line 1726
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

    .line 1733
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getPlayingMode()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1735
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1736
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 1739
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1740
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1741
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1742
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1746
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isRenderPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isRenderComplete(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1747
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAriplayProgressOneShotFlag:Z

    if-nez v2, :cond_3

    .line 1749
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->stopGettingRenderPlayingProgress()V

    .line 1750
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->isFromPratise()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1751
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getCourseIds()[Ljava/lang/String;

    move-result-object v0

    .line 1752
    .local v0, "courseids":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1753
    aget-object v2, v0, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1754
    :cond_1
    aget-object v2, v0, v5

    aget-object v3, v0, v4

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    .end local v0    # "courseids":[Ljava/lang/String;
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mAriplayProgressOneShotFlag:Z

    .line 1768
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    return-void

    .line 1759
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_4
    const v2, 0x7f0f0199

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 1760
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext()V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 555
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    if-eqz v1, :cond_0

    .line 563
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 560
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 561
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public pauseUpdateProgress()V
    .locals 0

    .prologue
    .line 1573
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1574
    return-void
.end method

.method public perform3GContinue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 181
    return-void
.end method

.method public playNext()V
    .locals 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendProgressTrackerReport()V

    .line 924
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playNext(Z)V

    .line 925
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 926
    return-void
.end method

.method public playNext(Z)V
    .locals 2
    .param p1, "manual"    # Z

    .prologue
    .line 953
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 955
    const v0, 0x7f0f0142

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 956
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->realUri:Ljava/lang/String;

    .line 962
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 963
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->singleLoop:Z

    if-eqz v0, :cond_2

    .line 964
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->play()V

    goto :goto_0

    .line 969
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

    .line 970
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showLoadingProgress()V

    .line 972
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->reset(Landroid/media/MediaPlayer;)V

    .line 974
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/g/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playPrev()V
    .locals 2

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendProgressTrackerReport()V

    .line 1014
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playPrev(Z)V

    .line 1015
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mPlayHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1016
    return-void
.end method

.method public playResetLink()V
    .locals 1

    .prologue
    .line 1652
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/e;->g()V

    .line 1653
    return-void
.end method

.method public playRightNow(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x5

    .line 669
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

    .line 671
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 672
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setCurState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->handleMalFormedVideo()V

    goto :goto_0
.end method

.method public prepareMediaPlayer()V
    .locals 3

    .prologue
    .line 744
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 745
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 746
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 747
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 748
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 749
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 750
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 751
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 752
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->initJobThreadAndAddListener()V

    .line 753
    return-void
.end method

.method public reqeustVideoFavData()V
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const-string v3, "1000"

    .line 207
    invoke-interface {v2, v0, v3}, Lcom/jiliguala/niuwa/logic/network/d;->d(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 208
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 209
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 210
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$1;

    invoke-direct {v3, p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public requestVideoChannel()V
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->c()Lrx/e;

    move-result-object v1

    .line 237
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 238
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 239
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 261
    :cond_0
    return-void
.end method

.method public requestVideoResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "bid":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 p1, 0x0

    .line 315
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .end local v0    # "bid":Ljava/lang/String;
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->requestVideoAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetMediaPlayerStatus()V
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1210
    :cond_0
    return-void
.end method

.method public resumeUpdateProgress()V
    .locals 3

    .prologue
    .line 1555
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1556
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1557
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1559
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public savePosWhilePause()V
    .locals 4

    .prologue
    .line 1496
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 1497
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1498
    const-wide/16 v0, -0x1

    .line 1500
    .local v0, "cur_pos":J
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v0, v2

    .line 1504
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    .line 1505
    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_pos:J

    .line 1507
    :try_start_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setPlayPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1512
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mJumpBackFromHome:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1513
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->prepared:Z

    .line 1515
    .end local v0    # "cur_pos":J
    :cond_0
    return-void

    .line 1501
    .restart local v0    # "cur_pos":J
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1508
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/16 v1, 0x1002

    .line 1160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRenderManager:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->seekToPos(J)V

    .line 1162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1167
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->recordTrackerStart()V

    .line 1169
    :cond_2
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->strictSeekTo(I)V

    goto :goto_0
.end method

.method public sendMcPcProgress(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;Ljava/lang/String;)V
    .locals 3
    .param p1, "mcPcSubTaskTicket"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .param p2, "subId"    # Ljava/lang/String;

    .prologue
    .line 1890
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;-><init>()V

    .line 1891
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->bid:Ljava/lang/String;

    .line 1892
    iget-object v2, p1, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/Lessons;->_id:Ljava/lang/String;

    iput-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->lid:Ljava/lang/String;

    .line 1893
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->subtaskid:Ljava/lang/String;

    .line 1894
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;-><init>()V

    .line 1895
    .local v1, "progressManager":Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;
    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager$CallBack;)V

    .line 1896
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/SendLessonProgressManager;->sendProgress(Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;)V

    .line 1897
    return-void
.end method

.method public sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 1377
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "bid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1379
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 1380
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->showLoadingProgress()V

    .line 1381
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1382
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const/4 v3, 0x0

    .line 1383
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 1384
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1385
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1386
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;

    invoke-direct {v3, p0, p2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;-><init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1381
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 1411
    :cond_0
    return-void
.end method

.method public sendProgressTrackerReport()V
    .locals 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-nez v0, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/i/b;->a(Ljava/lang/String;)V

    .line 1371
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mIsWatch:Z

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V

    goto :goto_0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mChannelId:Ljava/lang/String;

    .line 740
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->changePlayMode(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public setIsWatch(Z)V
    .locals 0
    .param p1, "isWatch"    # Z

    .prologue
    .line 1648
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mIsWatch:Z

    .line 1649
    return-void
.end method

.method public setLastPaused(Z)V
    .locals 0
    .param p1, "isLastPaused"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    .line 175
    return-void
.end method

.method public setMcPhCourse(Z)V
    .locals 0
    .param p1, "mcPhCourse"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isMcPhCourse:Z

    .line 167
    return-void
.end method

.method public setMediaPlayerDisplay(Landroid/view/SurfaceHolder;Z)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 757
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 761
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->shouldPlayNextWithCheckState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 764
    if-eqz p2, :cond_0

    .line 765
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->source:Ljava/lang/String;

    .line 767
    const-string v1, ""

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->last_source:Ljava/lang/String;

    .line 768
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->pause()V

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    if-nez v1, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->play()V

    goto :goto_0

    .line 781
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 782
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/e;->a()Lcom/jiliguala/niuwa/logic/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/g/e;->k()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "lstChnId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 784
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->setChannelId(Ljava/lang/String;)V

    .line 787
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
    .line 1138
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->pause()V

    .line 1140
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayPause()V

    .line 1143
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/b;->a()Lcom/jiliguala/niuwa/logic/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/b;->c()V

    .line 1144
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->resetProgress()V

    .line 1146
    :cond_1
    return-void
.end method

.method public setPlayRecord()V
    .locals 2

    .prologue
    .line 2081
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isMcPhCourse:Z

    if-eqz v0, :cond_0

    .line 2082
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a;->d(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/daometa/e;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playRecord:Lcom/jiliguala/niuwa/logic/db/daometa/e;

    .line 2084
    :cond_0
    return-void
.end method

.method public setPlayResume()V
    .locals 2

    .prologue
    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->isLastPaused:Z

    .line 1150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->playRightNow(Landroid/media/MediaPlayer;)V

    .line 1151
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onPlayResume()V

    .line 1153
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onStartTimer()V

    .line 1155
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->recordTrackerStart()V

    .line 1156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->sendEmptyMessage(I)Z

    .line 1157
    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mRid:Ljava/lang/String;

    .line 736
    return-void
.end method

.method protected showLimitDialogIfRequestRestVideoFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string v0, "b67e0d0aadb2400cbe1bba910f06b730"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onShowVideoLimitDialog()V

    .line 362
    :cond_0
    return-void
.end method

.method public stopGettingRenderPlayingProgress()V
    .locals 2

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mHandler:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->removeMessages(I)V

    .line 1645
    :cond_0
    return-void
.end method

.method public updateFavIcon()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-nez v0, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->updateFavImg(Ljava/lang/String;)V

    goto :goto_0
.end method
