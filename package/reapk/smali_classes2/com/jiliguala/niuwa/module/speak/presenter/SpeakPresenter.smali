.class public Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;
.implements Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;


# static fields
.field public static final ESTIMATED_VALUE:I = -0x6e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioCompleteListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

.field private audioErrorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

.field private audioLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

.field private audioPreparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

.field private audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

.field private autoPlay:Z

.field private cur_rid:Ljava/lang/String;

.field private currentIndex:I

.field private hasSurfaceDestroyed:Z

.field private index_id_map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastPath:Ljava/lang/String;

.field private lastPos:I

.field private listener:Lcom/jiliguala/niuwa/recorder/audio/d;

.field private mCourseId:Ljava/lang/String;

.field private mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

.field private mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mScores:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

.field private mSubTaskid:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private playerNeedsPrepare:Z

.field private playerPosition:I

.field private posA:I

.field private posB:I

.field private qiniuUrls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field recordDone:Z

.field private totalSentencs:I

.field private upload_tot:I

.field private videoCompleteListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

.field private videoErrorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

.field private videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

.field private videoPreparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

.field private videoSizeChangedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V
    .locals 5
    .param p1, "mSpeechView"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoPreparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    .line 75
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoCompleteListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    .line 83
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$5;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoErrorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    .line 91
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$6;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoSizeChangedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mScores:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->autoPlay:Z

    .line 188
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$7;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioPreparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    .line 196
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$8;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$8;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioCompleteListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    .line 204
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$9;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$9;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioErrorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    .line 263
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$10;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$10;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->listener:Lcom/jiliguala/niuwa/recorder/audio/d;

    .line 296
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mHandler:Landroid/os/Handler;

    .line 302
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->configRecordSetting(I)V

    .line 304
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 305
    new-instance v0, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    .line 306
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V

    .line 307
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->listener:Lcom/jiliguala/niuwa/recorder/audio/d;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Lcom/jiliguala/niuwa/recorder/audio/d;)V

    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioPreparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioCompleteListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioErrorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 310
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->initDownloadReceiver()V

    .line 313
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 314
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoPreparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoCompleteListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoErrorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoSizeChangedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;)V

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->hasSurfaceDestroyed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->hasSurfaceDestroyed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 57
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->currentIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->cancelSubCourse()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->exitSubCourse()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->showCourseFinishAnimDialog(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->onSentenceEnd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 57
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->posA:I

    return v0
.end method

.method private cancelDownload()V
    .locals 4

    .prologue
    .line 693
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 694
    .local v1, "videoDownloadIntent":Landroid/content/Intent;
    sget-object v2, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v2, "type"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private cancelSubCourse()V
    .locals 3

    .prologue
    .line 918
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 919
    return-void
.end method

.method private checkContinueUpload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uploadIndex"    # I
    .param p2, "courseid"    # Ljava/lang/String;
    .param p3, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 936
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 937
    .local v3, "size":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 939
    .local v4, "toUploadTotal":I
    if-nez v4, :cond_3

    .line 940
    if-lez v3, :cond_1

    .line 941
    invoke-direct {p0, p2, p3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->requestServerIfUploadComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->exitSubCourse()V

    .line 960
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v6, :cond_0

    .line 961
    int-to-float v6, p1

    int-to-float v7, v4

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 962
    .local v2, "progress":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v6, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadProgress(I)V

    .line 963
    const/16 v6, 0x64

    if-ne v2, v6, :cond_0

    .line 964
    invoke-direct {p0, p2, p3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->requestServerIfUploadComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 946
    .end local v2    # "progress":I
    :cond_3
    if-ge p1, v4, :cond_2

    .line 947
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 949
    .local v5, "uploadKey":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 952
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 953
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/i;->b(Ljava/lang/String;)Z

    move-result v0

    .line 954
    .local v0, "exist":Z
    if-eqz v0, :cond_2

    .line 955
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->doUploadAudio(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private configRecordSetting(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 363
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "uid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "timeStamp":Ljava/lang/String;
    new-instance v2, Lcom/jiliguala/niuwa/recorder/audio/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/recorder/audio/c;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    .line 366
    return-void
.end method

.method private doUploadAudio(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "audioPath"    # Ljava/lang/String;
    .param p3, "courseid"    # Ljava/lang/String;
    .param p4, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 970
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mIndex:I

    .line 971
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mCourseId:Ljava/lang/String;

    .line 972
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSubTaskid:Ljava/lang/String;

    .line 973
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2, p0}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 974
    return-void
.end method

.method private exitSubCourse()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadSucceed()V

    .line 864
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onFinishSubTask()V

    .line 866
    :cond_0
    return-void
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
    .line 923
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 924
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 925
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 926
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 927
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 929
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 932
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private initDownloadReceiver()V
    .locals 3

    .prologue
    .line 348
    new-instance v1, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    return-void
.end method

.method private onSentenceEnd()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1072
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-nez v2, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return v1

    .line 1075
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getCurrentPos()I

    move-result v0

    .line 1077
    .local v0, "pos":I
    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->posB:I

    add-int/lit8 v2, v2, -0x6e

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private requestServerIfUploadComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 869
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "bid":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 871
    .local v4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 872
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;-><init>()V

    .line 873
    .local v3, "model":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 874
    .local v2, "key":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;->_id:Ljava/lang/String;

    .line 875
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;->url:Ljava/lang/String;

    .line 876
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mScores:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;->score:Ljava/lang/String;

    .line 877
    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 880
    .end local v2    # "key":I
    .end local v3    # "model":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v5, :cond_1

    .line 881
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v5}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->getSubscriptions()Lrx/i/b;

    move-result-object v5

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v6

    .line 882
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v6

    .line 883
    invoke-direct {p0, v0, p1, p2, v4}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v6

    .line 884
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 885
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 886
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v6

    new-instance v7, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;

    invoke-direct {v7, p0, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;Ljava/lang/String;)V

    .line 887
    invoke-virtual {v6, v7}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v6

    .line 881
    invoke-virtual {v5, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 915
    :cond_1
    return-void
.end method

.method private resetRecordTS()V
    .locals 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/recorder/audio/c;->a(J)V

    .line 502
    return-void
.end method

.method private showCourseFinishAnimDialog(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V
    .locals 4
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;
    .param p2, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1039
    return-void
.end method

.method private startDownloadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 327
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/d/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "dstFile":Ljava/io/File;
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 333
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .local v3, "videoDownloadIntent":Landroid/content/Intent;
    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v4, "_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v4, "url"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v4, "download_type"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v4, "path"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startRecord(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->recordDone:Z

    .line 470
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->configRecordSetting(I)V

    .line 471
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Lcom/jiliguala/niuwa/recorder/audio/b;)V

    .line 472
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->b()V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 474
    .local v0, "start":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/recorder/audio/c;->a(J)V

    .line 476
    .end local v0    # "start":J
    :cond_0
    return-void
.end method

.method private startRepeatTimer()V
    .locals 6

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1043
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimer:Ljava/util/Timer;

    .line 1045
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimerTask:Ljava/util/TimerTask;

    .line 1068
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x37

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1069
    return-void
.end method

.method private stopRecord(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 479
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 480
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->recordDone:Z

    .line 481
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 482
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/recorder/audio/c;->b()J

    move-result-wide v2

    .line 483
    .local v2, "start":J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 485
    .local v0, "end":J
    sub-long v4, v0, v2

    .line 486
    .local v4, "totalRecordTime":J
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v6, v4, v5}, Lcom/jiliguala/niuwa/recorder/audio/c;->b(J)V

    .line 489
    .end local v0    # "end":J
    .end local v4    # "totalRecordTime":J
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v6, :cond_1

    .line 490
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v6}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onAudioRecordStop()V

    .line 493
    .end local v2    # "start":J
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->resetRecordTS()V

    .line 494
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1081
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1083
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimer:Ljava/util/Timer;

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1087
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mTimerTask:Ljava/util/TimerTask;

    .line 1089
    :cond_1
    return-void
.end method

.method private unregisterDownloadReceiver()V
    .locals 3

    .prologue
    .line 356
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addToAudioList(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    return-void
.end method

.method public cancelAudioRecord(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onAudioRecordCancel(I)V

    .line 509
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->recordDone:Z

    .line 510
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 512
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->resetRecordTS()V

    .line 513
    return-void
.end method

.method public checkVideoPlay()V
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->pause()V

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onVideoCheckPause()V

    .line 1123
    :cond_1
    return-void
.end method

.method public downloadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->cur_rid:Ljava/lang/String;

    .line 726
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->startDownloadVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public getRecordCurrentPos()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getCurrentPos()I

    move-result v0

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordDuration()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getDuration()I

    move-result v0

    .line 385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMalFormedVideo()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public hasLocalAudioSavePath(I)Z
    .locals 4
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 516
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v2

    .line 518
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 519
    .local v1, "localAudioSavePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 520
    const/4 v2, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "localAudioSavePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public initContainer(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, "sentences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->totalSentencs:I

    .line 766
    const/4 v1, 0x0

    .line 767
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;

    .line 768
    .local v2, "sentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    iget-object v0, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->audiourl:Ljava/lang/String;

    .line 769
    .local v0, "audiourl":Ljava/lang/String;
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->_id:Ljava/lang/String;

    .line 770
    .local v3, "sentenceid":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 772
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 774
    :cond_0
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->score:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 775
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->score:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->putScores(Ljava/lang/String;I)V

    .line 777
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 778
    goto :goto_0

    .line 779
    .end local v0    # "audiourl":Ljava/lang/String;
    .end local v2    # "sentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    .end local v3    # "sentenceid":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public isAudioRecording()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v0

    .line 721
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalAudioReadyToUpload()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 830
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 832
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iget v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->totalSentencs:I

    if-ne v4, v5, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 832
    goto :goto_0

    .line 835
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iget v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->totalSentencs:I

    if-eq v4, v5, :cond_0

    .line 838
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->totalSentencs:I

    if-ge v0, v4, :cond_0

    .line 839
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 840
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 841
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 842
    .restart local v1    # "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 838
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isRecordPlaying()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoPlaying()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->stopTimer()V

    .line 660
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->cancelDownload()V

    .line 661
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->g()V

    .line 662
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onDestroy()V

    .line 673
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onDestroy()V

    .line 677
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->unregisterDownloadReceiver()V

    .line 678
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 685
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mScores:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 688
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mScores:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 690
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .line 710
    :cond_0
    return-void
.end method

.method public onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 978
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onStartDownloadVideo()V

    .line 983
    :cond_0
    return-void
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "full_path"    # Ljava/lang/String;
    .param p4, "download_type"    # I

    .prologue
    .line 987
    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 989
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0, p3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onDownloadVideoSuccess(Ljava/lang/String;)V

    .line 993
    :cond_0
    return-void
.end method

.method public onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 1006
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onDownloadVideoFailed()V

    .line 1011
    :cond_0
    return-void
.end method

.method public onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "progress"    # J

    .prologue
    .line 997
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onDownloadVideoProgress(I)V

    .line 1002
    :cond_0
    return-void
.end method

.method public onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 1016
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 1101
    const-string v0, "\u5f55\u97f3\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadFailed()V

    .line 1105
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 793
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 1109
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 789
    return-void
.end method

.method public onResumePlayVideo()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->resume()V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onVideoPlayResume()V

    .line 653
    :cond_1
    return-void
.end method

.method public onStartAudioRecord(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 455
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->startRecord(I)V

    .line 456
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onAudioRecordStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 463
    :cond_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartPlayRecord(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 539
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    .local v0, "path":Ljava/lang/String;
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->currentIndex:I

    .line 543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 545
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v2, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStart(I)V

    .line 560
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 550
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v2, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStart(I)V

    goto :goto_0
.end method

.method public onStartPlayRecord(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 567
    iput p2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->currentIndex:I

    .line 568
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v1, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStart(I)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v1, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStart(I)V

    goto :goto_0
.end method

.method public onStartPlayVideo(II)V
    .locals 2
    .param p1, "posA"    # I
    .param p2, "posB"    # I

    .prologue
    .line 601
    :try_start_0
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->posA:I

    .line 602
    iput p2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->posB:I

    .line 608
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->seekTo(I)V

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->startRepeatTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStopAudioRecord(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->stopRecord(I)V

    .line 533
    return-void
.end method

.method public onStopPlayRecord(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 590
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStop(I)V

    .line 593
    :cond_0
    return-void
.end method

.method public onStopPlayVideo(Z)V
    .locals 1
    .param p1, "isNeedShowReplyBtn"    # Z

    .prologue
    .line 633
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->pause()V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onVideoPlayPaused()V

    .line 639
    :cond_1
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1093
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1094
    .local v0, "uploadKey":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1095
    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mCourseId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSubTaskid:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->checkContinueUpload(ILjava/lang/String;Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 1114
    return-void
.end method

.method public putScores(Ljava/lang/String;I)V
    .locals 1
    .param p1, "score"    # Ljava/lang/String;
    .param p2, "currentIndex"    # I

    .prologue
    .line 782
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mScores:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 783
    return-void
.end method

.method public setVideoSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "full_path"    # Ljava/lang/String;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 736
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->lastPath:Ljava/lang/String;

    .line 739
    :cond_0
    return-void
.end method

.method public startAndPauseWhilePrepared(Ljava/lang/String;)V
    .locals 1
    .param p1, "full_path"    # Ljava/lang/String;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->startAndPauseWhilePrepared(Ljava/lang/String;)V

    .line 744
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->lastPath:Ljava/lang/String;

    .line 746
    :cond_0
    return-void
.end method

.method public startAndPauseWhilePrepared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "full_path"    # Ljava/lang/String;
    .param p2, "lastPos"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->startAndPauseWhilePrepared(Ljava/lang/String;I)V

    .line 751
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->lastPath:Ljava/lang/String;

    .line 753
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 445
    :cond_0
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->hasSurfaceDestroyed:Z

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->lastPath:Ljava/lang/String;

    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->lastPos:I

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->startAndPauseWhilePrepared(Ljava/lang/String;I)V

    .line 448
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->lastPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_1

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onVideoPlayPaused()V

    .line 819
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->hasSurfaceDestroyed:Z

    .line 820
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->videoMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getCurrentPos()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->lastPos:I

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateMergeAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadStart()V

    .line 760
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->checkContinueUpload(ILjava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_1
    return-void
.end method

.method public validAudioExist(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 851
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 852
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    const/4 v2, 0x0

    .line 858
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
