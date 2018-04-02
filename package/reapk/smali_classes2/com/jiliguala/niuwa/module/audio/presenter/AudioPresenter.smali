.class public Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/g/d;
.implements Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;
.implements Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;
.implements Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;
    }
.end annotation


# static fields
.field public static CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final DEFAULT_BG_COLOR:Ljava/lang/String; = "#FF2FCA89"

.field private static final JOB_THREAD_NAME:Ljava/lang/String; = "JOB_THREAD"

.field private static final KEY_PLAY_MODE:Ljava/lang/String; = "KEY_PLAY_MODE"

.field private static final LRC_SUFFIX:Ljava/lang/String; = "lrc"

.field private static final MSG_LOAD_LYRIC:I = 0x1002

.field private static final MSG_RESET_PROGRESS:I = 0x1001

.field private static final MSG_UPDATE_PROGRESS:I = 0x1000

.field private static final PLAY_MODE_FAV:I = 0x2

.field private static final PLAY_MODE_OFFLINE:I = 0x3

.field private static final PLAY_MODE_ONLINE:I = 0x1

.field private static final PLAY_MODE_RNT_PLAYLIST:I = 0x4

.field private static final RETRY_MAX_TIME:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TXT_SUFFIX:Ljava/lang/String; = "txt"


# instance fields
.field private errorCounter:I

.field private mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

.field private mChannel:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurPlayMode:I

.field private mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

.field private mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

.field private mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

.field private mIsFirstPlay:Z

.field private mJobThread:Landroid/os/HandlerThread;

.field private mNextPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

.field private mPlayBackReceiver:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;

.field private mPlayCount:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

.field private mRid:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private singleLoop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-class v0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->TAG:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioView"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    .line 113
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    .line 119
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mIsFirstPlay:Z

    .line 139
    iput v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->errorCounter:I

    .line 142
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    .line 143
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "JOB_THREAD"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mJobThread:Landroid/os/HandlerThread;

    .line 144
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 145
    new-instance v1, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;-><init>(Landroid/os/Looper;Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    .line 146
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->initDownloadReceiver()V

    .line 148
    new-instance v1, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;-><init>(Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPlayBackReceiver:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPlayBackReceiver:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->performDownload()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->loadLrc(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    return-void
.end method

.method private changePlayMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 327
    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x3

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    .line 336
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v0, "1000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    goto :goto_0

    .line 331
    :cond_1
    const-string v0, "-2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    const/4 v0, 0x4

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    goto :goto_0

    .line 334
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    goto :goto_0
.end method

.method private downloadLrc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "lrcUrl"    # Ljava/lang/String;

    .prologue
    .line 1380
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1381
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/d/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1383
    .local v2, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v0, "dstFile":Ljava/io/File;
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 1387
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1388
    .local v3, "lrcDownloadIntent":Landroid/content/Intent;
    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1390
    const-string v4, "_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1391
    const-string v4, "url"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1392
    const-string v4, "download_type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1393
    const-string v4, "path"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1395
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :goto_0
    return-void

    .line 1396
    :catch_0
    move-exception v1

    .line 1397
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private downloadMusic(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 3
    .param p1, "audioItem"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 1514
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1515
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1520
    :goto_0
    return-void

    .line 1517
    :cond_0
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 1518
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->link:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->downloadMusic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private downloadMusic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "songUrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1491
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1493
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/d/a;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1495
    .local v2, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v0, "dstFile":Ljava/io/File;
    invoke-static {v0, v6}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 1499
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1500
    .local v3, "lrcDownloadIntent":Landroid/content/Intent;
    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1502
    const-string v4, "_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    const-string v4, "url"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    const-string v4, "path"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    const-string v4, "download_type"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    :goto_0
    return-void

    .line 1508
    :catch_0
    move-exception v1

    .line 1509
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;
    .locals 3
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "bid"    # Ljava/lang/String;

    .prologue
    .line 1188
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;

    invoke-direct {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    .local v1, "favDataEntity":Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1190
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 1191
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
    .line 803
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 804
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 805
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 806
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 807
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 809
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 812
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private initDownloadReceiver()V
    .locals 3

    .prologue
    .line 1402
    new-instance v1, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    .line 1403
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1404
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1405
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1406
    return-void
.end method

.method private isLrcFile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 851
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v3

    .line 854
    :cond_1
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 855
    .local v0, "dot_index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 856
    .local v1, "size":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_0

    .line 857
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "suffix":Ljava/lang/String;
    const-string v4, "lrc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 859
    const/4 v3, 0x1

    goto :goto_0

    .line 860
    :cond_2
    const-string v4, "txt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method private loadLrc(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 1
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "lrcUrl"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 1365
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onLyricLoadFailed()V

    .line 1375
    :goto_0
    return-void

    .line 1370
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    invoke-direct {p0, p2, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->notifyDownloadLyricSucceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1373
    :cond_1
    iget-object v0, p3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->downloadLrc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyDownloadLyricFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onLyricLoadFailed()V

    .line 1485
    :cond_0
    return-void
.end method

.method private notifyDownloadLyricSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "full_path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    if-ne v1, v3, :cond_3

    .line 1465
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/DefaultLrcParser;->getInstance()Lcom/jiliguala/niuwa/module/audio/DefaultLrcParser;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jiliguala/niuwa/module/audio/DefaultLrcParser;->getLrcRows(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1469
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 1471
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v1

    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;)V

    .line 1479
    :cond_2
    :goto_1
    return-void

    .line 1466
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    if-ne v1, v4, :cond_0

    .line 1467
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;->getInstance()Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;->getLrcRows(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1473
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    if-ne v1, v3, :cond_5

    .line 1474
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onLyricLoadComplete(Ljava/util/List;)V

    goto :goto_1

    .line 1475
    :cond_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    if-ne v1, v4, :cond_2

    .line 1476
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onLyricTxtLoadComplete(Ljava/util/List;)V

    goto :goto_1
.end method

.method private onErrorLogic(Ljava/lang/String;)Z
    .locals 3
    .param p1, "errorSource"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 268
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/a;->b()V

    .line 270
    const-string v0, "INVALID_LOCAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    if-ne v0, v2, :cond_1

    .line 275
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    const/4 v2, 0x4

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->tryPlayOnline(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 314
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_3

    .line 283
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/g/a;->b(Ljava/lang/String;)V

    .line 287
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    if-ne v0, v2, :cond_5

    .line 290
    :cond_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext()V

    .line 312
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayError()Z

    goto :goto_0

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->stop()V

    .line 298
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_6

    .line 301
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 303
    :cond_6
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 304
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_7

    .line 307
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->enableButtons(Z)V

    .line 309
    :cond_7
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onNetworkUnavailable()V

    goto :goto_1
.end method

.method private performDownload()V
    .locals 3

    .prologue
    .line 1055
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/c;->b(Ljava/lang/String;)I

    move-result v0

    .line 1056
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1058
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showDownloadDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    const/4 v2, 0x1

    iput v2, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->downloadStatus:I

    .line 1067
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/c;->b(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 1068
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->downloadMusic(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 1069
    const-string v1, "\u5df2\u52a0\u5165\u4e0b\u8f7d\u961f\u5217"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :pswitch_2
    const-string v1, "\u5df2\u52a0\u5165\u4e0b\u8f7d\u961f\u5217"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performFavAudio()V
    .locals 5

    .prologue
    .line 1154
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/k/a;->a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 1155
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 1156
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v2, :cond_0

    .line 1158
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onClickFavThisSong()V

    .line 1160
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 1161
    .local v1, "rid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "bid":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 1163
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    .line 1164
    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->d(Lokhttp3/ab;)Lrx/e;

    move-result-object v3

    .line 1165
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 1166
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 1167
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$10;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$10;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 1168
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 1162
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    .line 1185
    .end local v0    # "bid":Ljava/lang/String;
    .end local v1    # "rid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private play()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 656
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v6, :cond_0

    .line 657
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showLoadingProgress()V

    .line 661
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/g/a;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 662
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v6, :cond_2

    .line 663
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {p0, v9, v8, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 723
    :goto_1
    return-void

    :cond_1
    move v6, v8

    .line 663
    goto :goto_0

    .line 666
    :cond_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v9

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/logic/k/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mAudioPath:Ljava/lang/String;

    .line 668
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v4, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mAudioPath:Ljava/lang/String;

    .line 669
    .local v4, "source":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 670
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v4, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->link:Ljava/lang/String;

    .line 672
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 674
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    .line 675
    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onErrorLogic(Ljava/lang/String;)Z

    goto :goto_1

    .line 679
    :cond_4
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/g/a;->g()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mNextPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 681
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v6, :cond_8

    const-string v3, ""

    .line 683
    .local v3, "nextColorStr":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v6, :cond_5

    .line 684
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v6, v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateBackGround(Ljava/lang/String;)V

    .line 687
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->art:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v6, :cond_9

    const-string v6, ""

    :goto_3
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mNextPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v9, :cond_a

    const-string v9, ""

    :goto_4
    invoke-interface {v10, v6, v9}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateCdCover(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 693
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIcon()V

    .line 695
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v2, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrc:Ljava/lang/String;

    .line 696
    .local v2, "lrcLink":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 697
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v9

    .line 698
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/logic/k/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mLrcPath:Ljava/lang/String;

    .line 701
    :cond_6
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->isLrcFile(Ljava/lang/String;)Z

    move-result v1

    .line 702
    .local v1, "isLrcFile":Z
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrc:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 703
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iput v8, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    .line 709
    :goto_5
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v6, :cond_7

    .line 710
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    invoke-interface {v7, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateMoreLyricBtn(I)V

    .line 713
    :cond_7
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v7, 0x1002

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 715
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendMobEvent(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 717
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v5, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    .line 718
    .local v5, "ttl":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v0, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->art:Ljava/lang/String;

    .line 721
    .local v0, "art":Ljava/lang/String;
    invoke-direct {p0, v4, v5, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 681
    .end local v0    # "art":Ljava/lang/String;
    .end local v1    # "isLrcFile":Z
    .end local v2    # "lrcLink":Ljava/lang/String;
    .end local v3    # "nextColorStr":Ljava/lang/String;
    .end local v5    # "ttl":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v3, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->clr:Ljava/lang/String;

    goto/16 :goto_2

    .line 689
    .restart local v3    # "nextColorStr":Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mNextPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    goto/16 :goto_4

    .line 704
    .restart local v1    # "isLrcFile":Z
    .restart local v2    # "lrcLink":Ljava/lang/String;
    :cond_b
    if-eqz v1, :cond_c

    .line 705
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iput v7, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    goto :goto_5

    .line 707
    :cond_c
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    const/4 v7, 0x2

    iput v7, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    goto :goto_5
.end method

.method private play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "ttl"    # Ljava/lang/String;
    .param p3, "art"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v2, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setAudioPlayDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->isFromPractise()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 730
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mIsFirstPlay:Z

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->start(Z)V

    .line 735
    :goto_1
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mIsFirstPlay:Z

    .line 736
    return-void

    :cond_0
    move v0, v1

    .line 730
    goto :goto_0

    .line 732
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->start(Z)V

    goto :goto_1
.end method

.method private playPrev(Z)V
    .locals 2
    .param p1, "manual"    # Z

    .prologue
    .line 915
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 916
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 918
    const v0, 0x7f0f0142

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 919
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    if-eqz v0, :cond_2

    .line 923
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 924
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->play()V

    .line 925
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    goto :goto_0

    .line 927
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->d()I

    move-result v0

    if-nez v0, :cond_3

    .line 928
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onAlreadySwitchToFirst()V

    goto :goto_0

    .line 932
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 933
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    .line 935
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->b()V

    .line 936
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onResetLyricView()V

    goto :goto_0
.end method

.method private quitJobThread()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private recordTrackerStart()V
    .locals 4

    .prologue
    .line 962
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 964
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    const-string v2, "Community"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    const-string v2, "Tool"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "rid"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 446
    invoke-interface {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 447
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 448
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 449
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 450
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private requestAudioAnonymous(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 478
    invoke-interface {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/d;->c(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 479
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 480
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 481
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 482
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 476
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 504
    :cond_0
    return-void
.end method

.method private requestAudioResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "bid":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-direct {p0, v0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudios(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v0    # "bid":Ljava/lang/String;
    :goto_0
    return-void

    .line 427
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    .end local v0    # "bid":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudiosAnonymous(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestAudios(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 513
    invoke-interface {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/d;->b(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 514
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 515
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 516
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 517
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private requestAudiosAnonymous(Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 545
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 546
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 547
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 548
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$6;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 549
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 543
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 571
    :cond_0
    return-void
.end method

.method private resetProgress()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeMessages(I)V

    .line 906
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 907
    return-void
.end method

.method private resetToInitialState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setRid(Ljava/lang/String;)V

    .line 877
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 879
    return-void
.end method

.method private sendMobEvent(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 3
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 739
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 740
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Source"

    const-string v2, "Audio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v1, "Media_name"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    const-string v2, "Skip"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 743
    return-void
.end method

.method private shouldPlayNextWithCheckState()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 603
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v1

    .line 610
    .local v1, "networkType":I
    sget-boolean v5, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayChangeToOfflineCancelled:Z

    if-nez v5, :cond_0

    if-eq v1, v4, :cond_0

    .line 611
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->k()I

    move-result v2

    .line 612
    .local v2, "offlineSize":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    const-string v6, "-1"

    if-eq v5, v6, :cond_0

    if-lez v2, :cond_0

    .line 613
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v5, :cond_0

    .line 614
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showChangeToOfflineDialog()V

    .line 631
    .end local v2    # "offlineSize":I
    :goto_0
    return v3

    .line 623
    :cond_0
    const-string v5, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v5, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 624
    .local v0, "enabled":Z
    sget-boolean v5, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayNoneWifiEnable:Z

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    const-string v6, "-1"

    if-eq v5, v6, :cond_1

    .line 626
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v5, :cond_1

    .line 627
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->show3GNetStateDialog()V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 631
    goto :goto_0
.end method

.method private tryPlayOnline(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 4
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 251
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "NPE_AUDIO_ITEM"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->link:Ljava/lang/String;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->art:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 256
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->errorCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->errorCounter:I

    .line 257
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->errorCounter:I

    if-lt v0, v3, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->pausePlay()V

    .line 259
    const v0, 0x7f0f0189

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext()V

    goto :goto_0
.end method

.method private unRegisterMediaPlayService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;)V

    .line 406
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setConnectionListener(Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;)V

    .line 407
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->stopService()V

    .line 408
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 575
    return-void
.end method

.method private updateDownloadIconById(Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateDownloadIcon(I)V

    .line 1277
    :cond_0
    return-void
.end method

.method private updateFavIconById(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 1258
    :cond_0
    return-void
.end method


# virtual methods
.method public acquirePowerLock()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 344
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000000a

    sget-object v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 345
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 346
    return-void
.end method

.method public changeLoopStrategy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 816
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    .line 817
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setLooping(Z)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateLoopBtn(Z)V

    .line 823
    :cond_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    if-eqz v0, :cond_4

    const-string v0, "\u5df2\u5207\u6362\u5230\u5355\u66f2\u5faa\u73af\u6a21\u5f0f"

    :goto_2
    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 824
    return-void

    :cond_2
    move v0, v1

    .line 816
    goto :goto_0

    .line 821
    :cond_3
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_1

    .line 823
    :cond_4
    const-string v0, "\u5df2\u5207\u6362\u5230\u5217\u8868\u5faa\u73af\u6a21\u5f0f"

    goto :goto_2
.end method

.method public changeOfflineStatus()V
    .locals 0

    .prologue
    .line 827
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->m()V

    .line 828
    return-void
.end method

.method public clickDownloadThisSong()V
    .locals 3

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1007
    invoke-static {}, Lcom/jiliguala/niuwa/logic/u/a;->a()Lcom/jiliguala/niuwa/logic/u/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$8;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$8;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/u/a;->a(Lcom/jiliguala/niuwa/logic/u/a/a;)V

    .line 1018
    invoke-static {}, Lcom/jiliguala/niuwa/logic/u/a;->a()Lcom/jiliguala/niuwa/logic/u/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/u/a;->a(Lcom/jiliguala/niuwa/common/a/i;)V

    .line 1043
    invoke-static {}, Lcom/jiliguala/niuwa/logic/u/a;->a()Lcom/jiliguala/niuwa/logic/u/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    .line 1044
    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getThisFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/u/a;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;Landroid/support/v4/app/ag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->performDownload()V

    .line 1052
    :cond_0
    return-void
.end method

.method public clickFavThisSong()V
    .locals 3

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_2

    .line 1095
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1096
    .local v0, "isFav":Z
    if-nez v0, :cond_3

    .line 1097
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    .line 1098
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showPopFragment(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 1141
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->performFavAudio()V

    .line 1150
    .end local v0    # "isFav":Z
    :cond_2
    :goto_0
    return-void

    .line 1143
    .restart local v0    # "isFav":Z
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_2

    .line 1146
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onClickUnFavThisSong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public confirmUnFavThisSong(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1195
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/logic/k/a;->c(Ljava/lang/String;)V

    .line 1196
    const-string v2, "1000"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/logic/g/a;->b(Ljava/lang/String;)V

    .line 1199
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 1201
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v2, :cond_1

    .line 1202
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 1203
    .local v1, "rid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, "bid":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 1205
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    .line 1206
    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->c(Lokhttp3/ab;)Lrx/e;

    move-result-object v3

    .line 1207
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 1208
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 1209
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$11;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$11;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 1210
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 1204
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    .line 1227
    .end local v0    # "bid":Ljava/lang/String;
    .end local v1    # "rid":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public doChannelSelect()V
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v0, :cond_1

    const-string v0, "#FF2FCA89"

    :goto_0
    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->gotoChannelSelect(Ljava/lang/String;)V

    .line 1299
    :cond_0
    return-void

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->clr:Ljava/lang/String;

    goto :goto_0
.end method

.method public doChannelSelectAction(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "singleRes"    # Z

    .prologue
    .line 1309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 1310
    return-void
.end method

.method public doChannelSelectAction(Ljava/lang/String;IZZ)V
    .locals 3
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "singleRes"    # Z
    .param p4, "lockSingleLoop"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1321
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    packed-switch v1, :pswitch_data_0

    .line 1354
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/jiliguala/niuwa/logic/g/a;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1357
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_1

    .line 1359
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateLoopBtn(Z)V

    .line 1361
    :cond_1
    return-void

    .line 1323
    :pswitch_0
    if-nez p4, :cond_2

    .line 1324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    .line 1331
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1328
    :cond_3
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_2

    .line 1338
    :pswitch_1
    if-nez p4, :cond_0

    .line 1339
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_0

    .line 1343
    :pswitch_2
    if-nez p4, :cond_4

    .line 1344
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    .line 1346
    :cond_4
    sget-object v1, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1349
    :pswitch_3
    if-nez p4, :cond_0

    .line 1350
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_0

    .line 1359
    :cond_5
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_1

    .line 1321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public doSearch()V
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v0, :cond_1

    const-string v0, "#FF2FCA89"

    :goto_0
    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onSearchAction(Ljava/lang/String;)V

    .line 1306
    :cond_0
    return-void

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->clr:Ljava/lang/String;

    goto :goto_0
.end method

.method public doShareThisSong()V
    .locals 6

    .prologue
    .line 1280
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v2, :cond_0

    .line 1281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1282
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string v2, "Title"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Listen Share Dialog"

    .line 1285
    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1286
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v2, :cond_0

    .line 1287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u548c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    .line 1288
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5728\u300c\u53fd\u91cc\u5471\u5566\u300d\u542c\u4e86\u300c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300d\u6b4c\u66f2!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "shareTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->img:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->art:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->doShareAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    .end local v0    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "shareTitle":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public fetchFromServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public isCurPLayModeOffline()Z
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentItemFavored()Z
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    .line 1248
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/k/a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchOfflineMode()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->launchOfflineMode()V

    .line 642
    return-void
.end method

.method public onComplete()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 199
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 200
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->isFromPractise()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "Title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Listen Play"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->isFromRoadMap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 208
    const-string v1, "Channel"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "Name"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Song Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 214
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayComplete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext(Z)V

    .line 217
    :cond_1
    return-void
.end method

.method public onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    const/4 v1, 0x1

    .line 1410
    packed-switch p3, :pswitch_data_0

    .line 1417
    :goto_0
    return-void

    .line 1413
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    .line 1414
    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIconById(Ljava/lang/String;I)V

    goto :goto_0

    .line 1410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "full_path"    # Ljava/lang/String;
    .param p4, "download_type"    # I

    .prologue
    const/4 v1, 0x3

    .line 1421
    packed-switch p4, :pswitch_data_0

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1424
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    .line 1425
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIconById(Ljava/lang/String;I)V

    goto :goto_0

    .line 1430
    :pswitch_1
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/x;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1431
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v0

    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    invoke-direct {p0, p2, p3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->notifyDownloadLyricSucceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "errorCode"    # I

    .prologue
    const/4 v1, 0x4

    .line 1446
    packed-switch p3, :pswitch_data_0

    .line 1455
    :goto_0
    return-void

    .line 1448
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    .line 1449
    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIconById(Ljava/lang/String;I)V

    goto :goto_0

    .line 1452
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->notifyDownloadLyricFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 1446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "progress"    # J

    .prologue
    .line 1442
    return-void
.end method

.method public onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 1460
    return-void
.end method

.method public onError(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "errorSource"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    .line 164
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onErrorLogic(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onFail()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->enableButtons(Z)V

    .line 237
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 944
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->resume()V

    .line 947
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->recordTrackerStart()V

    .line 948
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayResume()V

    .line 949
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->pause()V

    .line 953
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/a;->c()V

    .line 954
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 955
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeMessages(I)V

    goto :goto_0
.end method

.method public onPlayListEmpty()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetToInitialState()V

    .line 242
    return-void
.end method

.method public onPrepared()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->playRightNow()V

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayResume()V

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->enableButtons(Z)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPrepared(J)V

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 186
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->recordTrackerStart()V

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->pausePlayOnChannelShow()V

    .line 192
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPlayCount:I

    .line 193
    return-void
.end method

.method public onProgressChangedUpdateLyric(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 841
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateLyricView(I)V

    .line 848
    :cond_0
    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .locals 1
    .param p1, "chnName"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateChannelName(Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->shouldPlayNextWithCheckState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->play()V

    .line 229
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 836
    const-string v0, "KEY_PLAY_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    .line 837
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/g/a;->b(Landroid/os/Bundle;)V

    .line 838
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 831
    const-string v0, "KEY_PLAY_MODE"

    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 832
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/g/a;->a(Landroid/os/Bundle;)V

    .line 833
    return-void
.end method

.method public onServiceConnected()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 580
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/logic/g/a;->a(Lcom/jiliguala/niuwa/logic/g/d;)V

    .line 583
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->isFromRoadMap()Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/g/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "channelId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 590
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 596
    .end local v0    # "channelId":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->shouldPlayNextWithCheckState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v3, v2, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 599
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 597
    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method public pausePlay()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 983
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->pause()V

    .line 986
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/a;->c()V

    .line 987
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 988
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeMessages(I)V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 993
    return-void
.end method

.method public perform3GContinue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->reset()V

    .line 637
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 638
    return-void
.end method

.method public playNext()V
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 872
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext(Z)V

    .line 873
    return-void
.end method

.method public playNext(Z)V
    .locals 2
    .param p1, "manual"    # Z

    .prologue
    .line 883
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 884
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 886
    const v0, 0x7f0f0142

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 887
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    .line 892
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    if-eqz v0, :cond_2

    .line 893
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->play()V

    goto :goto_0

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->enableButtons(Z)V

    .line 899
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/g/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playPrev()V
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playPrev(Z)V

    .line 911
    return-void
.end method

.method public registerMediaPlayService()V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;)V

    .line 383
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setConnectionListener(Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;)V

    .line 384
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->startAndBindService()V

    .line 385
    return-void
.end method

.method public releasePowerLock()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 352
    :cond_0
    return-void
.end method

.method public requestAudioChannel()V
    .locals 3

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 1525
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 1526
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->b()Lrx/e;

    move-result-object v1

    .line 1527
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 1528
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 1529
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 1530
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 1524
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1549
    :cond_0
    return-void
.end method

.method public requestAudioFav()V
    .locals 4

    .prologue
    .line 1553
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1554
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1555
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1583
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1558
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1559
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const-string v3, "1000"

    .line 1560
    invoke-interface {v2, v0, v3}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 1561
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1562
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1563
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$3;

    invoke-direct {v3, p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;Ljava/lang/String;)V

    .line 1564
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1558
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public resumePlay()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->resume()V

    .line 975
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->recordTrackerStart()V

    .line 976
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayResume()V

    .line 977
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 979
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->seek(J)J

    .line 377
    :cond_0
    return-void
.end method

.method public sendPlayerExit()V
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->isFromRoadMap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 749
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Count"

    iget v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPlayCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string v1, "Channel"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Player Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 753
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 766
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "bid":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 769
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showLoadingProgress()V

    .line 771
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 772
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const/4 v3, 0x0

    .line 773
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 774
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 775
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 776
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;

    invoke-direct {v3, p0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;Ljava/lang/String;)V

    .line 777
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 771
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 799
    :cond_0
    return-void
.end method

.method public sendProgressTrackerReport()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->isFromPractise()Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 761
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/i/a;->a(Ljava/lang/String;)V

    .line 763
    :cond_1
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    .line 323
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->changePlayMode(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->stop()V

    .line 997
    return-void
.end method

.method public toggleLyricFullScreen()V
    .locals 3

    .prologue
    .line 355
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_0

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Channel"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lyrics View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 361
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public unRegisterAll()V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->quitJobThread()V

    .line 391
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->unregisterReceiver()V

    .line 392
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->m()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    .line 395
    return-void
.end method

.method public unRegisterService()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPlayBackReceiver:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 399
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->unRegisterMediaPlayService()V

    .line 400
    return-void
.end method

.method public updateDownloadIcon()V
    .locals 3

    .prologue
    .line 1261
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_0

    .line 1262
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/c;->b(Ljava/lang/String;)I

    move-result v0

    .line 1263
    .local v0, "status":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1265
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateDownloadIcon(I)V

    .line 1268
    .end local v0    # "status":I
    :cond_0
    return-void
.end method

.method public updateFavIcon()V
    .locals 3

    .prologue
    .line 1230
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_0

    .line 1231
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1232
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1233
    .local v0, "isFav":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateFavIcon(Z)V

    .line 1244
    .end local v0    # "isFav":Z
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateFavIcon(Z)V

    goto :goto_0
.end method
