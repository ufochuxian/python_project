.class public Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;


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

.field private currentIndex:I

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

.field private listener:Lcom/jiliguala/niuwa/recorder/audio/d;

.field private mCourseId:Ljava/lang/String;

.field private mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mRealScores:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V
    .locals 4
    .param p1, "mSpeechView"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mScores:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mRealScores:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioPreparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    .line 71
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioCompleteListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    .line 79
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioErrorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    .line 88
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->listener:Lcom/jiliguala/niuwa/recorder/audio/d;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mHandler:Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->configRecordSetting(I)V

    .line 126
    new-instance v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .line 127
    new-instance v0, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V

    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->listener:Lcom/jiliguala/niuwa/recorder/audio/d;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Lcom/jiliguala/niuwa/recorder/audio/d;)V

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioPreparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioCompleteListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioErrorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .prologue
    .line 45
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->currentIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->cancelSubCourse()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->exitSubCourse()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->showCourseFinishAnimDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelDownload()V
    .locals 4

    .prologue
    .line 346
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v1, "videoDownloadIntent":Landroid/content/Intent;
    sget-object v2, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v2, "type"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private cancelSubCourse()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method private checkContinueUpload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uploadIndex"    # I
    .param p2, "courseid"    # Ljava/lang/String;
    .param p3, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 522
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 523
    .local v3, "size":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 525
    .local v4, "toUploadTotal":I
    if-nez v4, :cond_3

    .line 526
    if-lez v3, :cond_1

    .line 527
    invoke-direct {p0, p2, p3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->requestServerIfUploadComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->exitSubCourse()V

    .line 546
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v6, :cond_0

    .line 547
    int-to-float v6, p1

    int-to-float v7, v4

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 548
    .local v2, "progress":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v6, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadProgress(I)V

    .line 549
    const/16 v6, 0x64

    if-ne v2, v6, :cond_0

    .line 550
    invoke-direct {p0, p2, p3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->requestServerIfUploadComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    .end local v2    # "progress":I
    :cond_3
    if-ge p1, v4, :cond_2

    .line 533
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 535
    .local v5, "uploadKey":I
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 538
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 539
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/i;->b(Ljava/lang/String;)Z

    move-result v0

    .line 540
    .local v0, "exist":Z
    if-eqz v0, :cond_2

    .line 541
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->doUploadAudio(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private configRecordSetting(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 134
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    .line 135
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

    .line 136
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

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    .line 137
    return-void
.end method

.method private doUploadAudio(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "audioPath"    # Ljava/lang/String;
    .param p3, "courseid"    # Ljava/lang/String;
    .param p4, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 556
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mIndex:I

    .line 557
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mCourseId:Ljava/lang/String;

    .line 558
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSubTaskid:Ljava/lang/String;

    .line 559
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2, p0}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 560
    return-void
.end method

.method private exitSubCourse()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadSucceed()V

    .line 433
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onFinishSubTask()V

    .line 435
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
            "Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;",
            ">;)",
            "Lokhttp3/ab;"
        }
    .end annotation

    .prologue
    .line 509
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;-><init>()V

    .line 510
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->bid:Ljava/lang/String;

    .line 511
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->lid:Ljava/lang/String;

    .line 512
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->subtaskid:Ljava/lang/String;

    .line 513
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/ProgressTemplete;->detail:Ljava/util/List;

    .line 515
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 518
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private requestServerIfUploadComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "subtaskid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 454
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "bid":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 456
    .local v4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 457
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;-><init>()V

    .line 458
    .local v3, "model":Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 459
    .local v2, "key":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;->sectionid:Ljava/lang/String;

    .line 460
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;->url:Ljava/lang/String;

    .line 461
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mScores:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_1
    iput v5, v3, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;->score:I

    .line 462
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mRealScores:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_2
    iput v5, v3, Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;->realscore:I

    .line 463
    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mScores:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 462
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mRealScores:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 466
    .end local v2    # "key":I
    .end local v3    # "model":Lcom/jiliguala/niuwa/logic/network/json/DetailBeanTemplete;
    :cond_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v5, :cond_3

    .line 467
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v5}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->getSubscriptions()Lrx/i/b;

    move-result-object v5

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v6

    .line 468
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v6

    .line 469
    invoke-direct {p0, v0, p1, p2, v4}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/jiliguala/niuwa/logic/network/d;->B(Lokhttp3/ab;)Lrx/e;

    move-result-object v6

    .line 470
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 471
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v6

    .line 472
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v6

    new-instance v7, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    .line 473
    invoke-virtual {v6, v7}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v6

    .line 467
    invoke-virtual {v5, v6}, Lrx/i/b;->a(Lrx/m;)V

    .line 501
    :cond_3
    return-void
.end method

.method private resetRecordTS()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/recorder/audio/c;->a(J)V

    .line 212
    return-void
.end method

.method private showCourseFinishAnimDialog()V
    .locals 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 580
    return-void
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
    .line 178
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->recordDone:Z

    .line 180
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->configRecordSetting(I)V

    .line 181
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Lcom/jiliguala/niuwa/recorder/audio/b;)V

    .line 182
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/a;->b()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    .local v0, "start":J
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/recorder/audio/c;->a(J)V

    .line 186
    .end local v0    # "start":J
    :cond_0
    return-void
.end method

.method private stopRecord(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 189
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->recordDone:Z

    .line 191
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 192
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/recorder/audio/c;->b()J

    move-result-wide v2

    .line 193
    .local v2, "start":J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    .local v0, "end":J
    sub-long v4, v0, v2

    .line 196
    .local v4, "totalRecordTime":J
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    invoke-virtual {v6, v4, v5}, Lcom/jiliguala/niuwa/recorder/audio/c;->b(J)V

    .line 199
    .end local v0    # "end":J
    .end local v4    # "totalRecordTime":J
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v6, :cond_1

    .line 200
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v6}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onAudioRecordStop()V

    .line 203
    .end local v2    # "start":J
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->resetRecordTS()V

    .line 204
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 583
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 585
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mTimer:Ljava/util/Timer;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 589
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mTimerTask:Ljava/util/TimerTask;

    .line 591
    :cond_1
    return-void
.end method


# virtual methods
.method public addToAudioList(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    return-void
.end method

.method public cancelAudioRecord(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onAudioRecordCancel(I)V

    .line 219
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->recordDone:Z

    .line 220
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->resetRecordTS()V

    .line 223
    return-void
.end method

.method public getRecordCurrentPos()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getCurrentPos()I

    move-result v0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordDuration()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->getDuration()I

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScores()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mScores:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSectionCompleteTemplete()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 439
    .local v2, "mSectionScoreMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 440
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;-><init>()V

    .line 441
    .local v3, "sectionCompleteTemplete":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 442
    .local v1, "key":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 443
    .local v4, "sectionID":Ljava/lang/String;
    iput-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->sectionID:Ljava/lang/String;

    .line 444
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->url:Ljava/lang/String;

    .line 445
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mScores:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->result:I

    .line 446
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mRealScores:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    iput v5, v3, Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;->realScore:I

    .line 447
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mRealScores:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 449
    .end local v1    # "key":I
    .end local v3    # "sectionCompleteTemplete":Lcom/jiliguala/niuwa/logic/network/json/SectionCompleteTemplete;
    .end local v4    # "sectionID":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public hasLocalAudioSavePath(I)Z
    .locals 4
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 228
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "localAudioSavePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 230
    const/4 v2, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "localAudioSavePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 234
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
    .line 387
    .local p1, "sentences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->totalSentencs:I

    .line 388
    const/4 v1, 0x0

    .line 389
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

    .line 390
    .local v2, "sentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    iget-object v0, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->audiourl:Ljava/lang/String;

    .line 391
    .local v0, "audiourl":Ljava/lang/String;
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->_id:Ljava/lang/String;

    .line 392
    .local v3, "sentenceid":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 394
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    :cond_0
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->score:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 397
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->score:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->putScores(Ljava/lang/String;I)V

    .line 398
    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;->score:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->putRealScores(Ljava/lang/String;I)V

    .line 400
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 401
    goto :goto_0

    .line 402
    .end local v0    # "audiourl":Ljava/lang/String;
    .end local v2    # "sentence":Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate$VideoSentence;
    .end local v3    # "sentenceid":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public isAudioRecording()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v0

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordPlaying()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->stopTimer()V

    .line 325
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->cancelDownload()V

    .line 326
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->g()V

    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onDestroy()V

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->index_id_map:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mScores:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mScores:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mRealScores:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mRealScores:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 343
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .line 363
    :cond_0
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 603
    const-string v0, "\u5f55\u97f3\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadFailed()V

    .line 607
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 611
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public onResumePlayVideo()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onVideoPlayResume()V

    .line 318
    :cond_0
    return-void
.end method

.method public onStartAudioRecord(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->startRecord(I)V

    .line 166
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onAudioRecordStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioRecorder:Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 173
    :cond_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartPlayRecord(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 249
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mDefaultRecorderConfig:Lcom/jiliguala/niuwa/recorder/audio/c;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, "path":Ljava/lang/String;
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->currentIndex:I

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v2, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStart(I)V

    .line 270
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 260
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v2, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStart(I)V

    goto :goto_0
.end method

.method public onStartPlayRecord(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 277
    iput p2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->currentIndex:I

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v1, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStart(I)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v1, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStart(I)V

    goto :goto_0
.end method

.method public onStopAudioRecord(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->stopRecord(I)V

    .line 243
    return-void
.end method

.method public onStopPlayRecord(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioMediaPlayer:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->stop()V

    .line 300
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayStop(I)V

    .line 303
    :cond_0
    return-void
.end method

.method public onStopPlayVideo(Z)V
    .locals 1
    .param p1, "isNeedShowReplyBtn"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onVideoPlayPaused()V

    .line 312
    :cond_0
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 595
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    iget v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 596
    .local v0, "uploadKey":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->qiniuUrls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    iget v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mCourseId:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSubTaskid:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->checkContinueUpload(ILjava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 616
    return-void
.end method

.method public putRealScores(Ljava/lang/String;I)V
    .locals 1
    .param p1, "score"    # Ljava/lang/String;
    .param p2, "currentIndex"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mRealScores:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    return-void
.end method

.method public putScores(Ljava/lang/String;I)V
    .locals 1
    .param p1, "score"    # Ljava/lang/String;
    .param p2, "currentIndex"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mScores:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    return-void
.end method

.method public updateMergeAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->audioLists:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->mSpeechView:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadStart()V

    .line 382
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->checkContinueUpload(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_1
    return-void
.end method

.method public validAudioExist(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method
