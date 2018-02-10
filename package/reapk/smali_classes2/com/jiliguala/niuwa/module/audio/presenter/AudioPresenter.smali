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

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    .line 113
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    .line 118
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mIsFirstPlay:Z

    .line 138
    iput v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->errorCounter:I

    .line 141
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    .line 142
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "JOB_THREAD"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mJobThread:Landroid/os/HandlerThread;

    .line 143
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 144
    new-instance v1, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;-><init>(Landroid/os/Looper;Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    .line 145
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->initDownloadReceiver()V

    .line 147
    new-instance v1, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;-><init>(Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPlayBackReceiver:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPlayBackReceiver:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    .line 153
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
    .line 317
    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x3

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v0, "1000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    goto :goto_0

    .line 321
    :cond_1
    const-string v0, "-2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    const/4 v0, 0x4

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    goto :goto_0

    .line 324
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
    .line 1351
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1352
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/d/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1354
    .local v2, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v0, "dstFile":Ljava/io/File;
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 1358
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1359
    .local v3, "lrcDownloadIntent":Landroid/content/Intent;
    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    const-string v4, "_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1362
    const-string v4, "url"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    const-string v4, "download_type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1364
    const-string v4, "path"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    :goto_0
    return-void

    .line 1367
    :catch_0
    move-exception v1

    .line 1368
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private downloadMusic(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 3
    .param p1, "audioItem"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 1485
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1486
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1491
    :goto_0
    return-void

    .line 1488
    :cond_0
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 1489
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

    .line 1462
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1464
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/d/a;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1466
    .local v2, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1467
    .local v0, "dstFile":Ljava/io/File;
    invoke-static {v0, v6}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    .line 1470
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1471
    .local v3, "lrcDownloadIntent":Landroid/content/Intent;
    sget-object v4, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    const-string v4, "type"

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1473
    const-string v4, "_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1474
    const-string v4, "url"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1475
    const-string v4, "path"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1476
    const-string v4, "download_type"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1478
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    :goto_0
    return-void

    .line 1479
    :catch_0
    move-exception v1

    .line 1480
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;
    .locals 3
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "bid"    # Ljava/lang/String;

    .prologue
    .line 1159
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;

    invoke-direct {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    .local v1, "favDataEntity":Lcom/jiliguala/niuwa/logic/network/http/entity/FavDataEntity;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1161
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 1162
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
    .line 774
    .local p4, "speakUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate$SpeakModel;>;"
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;-><init>()V

    .line 775
    .local v1, "data":Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->bid:Ljava/lang/String;

    .line 776
    iput-object p2, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->courseid:Ljava/lang/String;

    .line 777
    iput-object p3, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->subtaskid:Ljava/lang/String;

    .line 778
    iput-object p4, v1, Lcom/jiliguala/niuwa/logic/network/json/CourseProgressTemplate;->speakurl:Ljava/util/ArrayList;

    .line 780
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 783
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private initDownloadReceiver()V
    .locals 3

    .prologue
    .line 1373
    new-instance v1, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    .line 1374
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1375
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1376
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1377
    return-void
.end method

.method private isLrcFile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 822
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 837
    :cond_0
    :goto_0
    return v3

    .line 825
    :cond_1
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 826
    .local v0, "dot_index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 827
    .local v1, "size":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_0

    .line 828
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "suffix":Ljava/lang/String;
    const-string v4, "lrc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 830
    const/4 v3, 0x1

    goto :goto_0

    .line 831
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
    .line 1336
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onLyricLoadFailed()V

    .line 1346
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1342
    invoke-direct {p0, p2, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->notifyDownloadLyricSucceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->downloadLrc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyDownloadLyricFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onLyricLoadFailed()V

    .line 1456
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

    .line 1434
    const/4 v0, 0x0

    .line 1435
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    if-ne v1, v3, :cond_3

    .line 1436
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/DefaultLrcParser;->getInstance()Lcom/jiliguala/niuwa/module/audio/DefaultLrcParser;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jiliguala/niuwa/module/audio/DefaultLrcParser;->getLrcRows(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1440
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 1442
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v1

    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;)V

    .line 1450
    :cond_2
    :goto_1
    return-void

    .line 1437
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    if-ne v1, v4, :cond_0

    .line 1438
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;->getInstance()Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;->getLrcRows(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1444
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    if-ne v1, v3, :cond_5

    .line 1445
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onLyricLoadComplete(Ljava/util/List;)V

    goto :goto_1

    .line 1446
    :cond_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    if-ne v1, v4, :cond_2

    .line 1447
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onLyricTxtLoadComplete(Ljava/util/List;)V

    goto :goto_1
.end method

.method private onErrorLogic(Ljava/lang/String;)Z
    .locals 3
    .param p1, "errorSource"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 258
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/a;->b()V

    .line 260
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

    .line 262
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    if-ne v0, v2, :cond_1

    .line 265
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    const/4 v2, 0x4

    .line 266
    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->tryPlayOnline(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 304
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v0, :cond_4

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    :cond_4
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/g/a;->b(Ljava/lang/String;)V

    .line 277
    :cond_5
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    if-ne v0, v2, :cond_7

    .line 280
    :cond_6
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext()V

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayError()Z

    goto :goto_0

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->stop()V

    .line 288
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_8

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 293
    :cond_8
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 294
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_9

    .line 297
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->enableButtons(Z)V

    .line 299
    :cond_9
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onNetworkUnavailable()V

    goto :goto_1
.end method

.method private performDownload()V
    .locals 3

    .prologue
    .line 1026
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/c;->b(Ljava/lang/String;)I

    move-result v0

    .line 1027
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1029
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showDownloadDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :pswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    const/4 v2, 0x1

    iput v2, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->downloadStatus:I

    .line 1038
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/c;->b(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 1039
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->downloadMusic(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 1040
    const-string v1, "\u5df2\u52a0\u5165\u4e0b\u8f7d\u961f\u5217"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :pswitch_2
    const-string v1, "\u5df2\u52a0\u5165\u4e0b\u8f7d\u961f\u5217"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1027
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
    .line 1125
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/k/a;->a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 1126
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 1127
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v2, :cond_0

    .line 1129
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onClickFavThisSong()V

    .line 1131
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 1132
    .local v1, "rid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "bid":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 1134
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    .line 1135
    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->d(Lokhttp3/ab;)Lrx/e;

    move-result-object v3

    .line 1136
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 1137
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 1138
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$10;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$10;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 1139
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 1133
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    .line 1156
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

    .line 637
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v6, :cond_0

    .line 638
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showLoadingProgress()V

    .line 642
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/g/a;->f()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 643
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v6, :cond_2

    .line 644
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {p0, v9, v8, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 704
    :goto_1
    return-void

    :cond_1
    move v6, v8

    .line 644
    goto :goto_0

    .line 647
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

    .line 649
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v4, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mAudioPath:Ljava/lang/String;

    .line 650
    .local v4, "source":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 651
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v4, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->link:Ljava/lang/String;

    .line 653
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 655
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    .line 656
    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onErrorLogic(Ljava/lang/String;)Z

    goto :goto_1

    .line 660
    :cond_4
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/g/a;->g()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v6

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mNextPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 662
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v6, :cond_8

    const-string v3, ""

    .line 664
    .local v3, "nextColorStr":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v6, :cond_5

    .line 665
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v6, v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateBackGround(Ljava/lang/String;)V

    .line 668
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v10, v10, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->art:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateTitleAndArtist(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
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

    .line 673
    :cond_5
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 674
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIcon()V

    .line 676
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v2, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrc:Ljava/lang/String;

    .line 677
    .local v2, "lrcLink":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 678
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v9

    .line 679
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jiliguala/niuwa/logic/k/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mLrcPath:Ljava/lang/String;

    .line 682
    :cond_6
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrc:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->isLrcFile(Ljava/lang/String;)Z

    move-result v1

    .line 683
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

    .line 684
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iput v8, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    .line 690
    :goto_5
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v6, :cond_7

    .line 691
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    invoke-interface {v7, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateMoreLyricBtn(I)V

    .line 694
    :cond_7
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v7, 0x1002

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 696
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendMobEvent(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 698
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v5, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    .line 699
    .local v5, "ttl":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v0, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->art:Ljava/lang/String;

    .line 702
    .local v0, "art":Ljava/lang/String;
    invoke-direct {p0, v4, v5, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 662
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

    .line 670
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

    .line 685
    .restart local v1    # "isLrcFile":Z
    .restart local v2    # "lrcLink":Ljava/lang/String;
    :cond_b
    if-eqz v1, :cond_c

    .line 686
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iput v7, v6, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    goto :goto_5

    .line 688
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

    .line 707
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v2, p1, p2, p3}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setAudioPlayDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->isFromPractise()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 711
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mIsFirstPlay:Z

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->start(Z)V

    .line 716
    :goto_1
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mIsFirstPlay:Z

    .line 717
    return-void

    :cond_0
    move v0, v1

    .line 711
    goto :goto_0

    .line 713
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->start(Z)V

    goto :goto_1
.end method

.method private playPrev(Z)V
    .locals 2
    .param p1, "manual"    # Z

    .prologue
    .line 886
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 887
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 889
    const v0, 0x7f0f0142

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 890
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    if-eqz v0, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 895
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->play()V

    .line 896
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    goto :goto_0

    .line 898
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->d()I

    move-result v0

    if-nez v0, :cond_3

    .line 899
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onAlreadySwitchToFirst()V

    goto :goto_0

    .line 903
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 904
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    .line 906
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->b()V

    .line 907
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onResetLyricView()V

    goto :goto_0
.end method

.method private quitJobThread()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mJobThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private recordTrackerStart()V
    .locals 4

    .prologue
    .line 933
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    const-string v2, "Community"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/logic/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 937
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
    .line 425
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 431
    invoke-interface {v1, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 432
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 433
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 434
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$1;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 435
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private requestAudioAnonymous(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 463
    invoke-interface {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/d;->c(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 464
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 465
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 466
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$4;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 467
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 489
    :cond_0
    return-void
.end method

.method private requestAudioResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "bid":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-direct {p0, v0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudios(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .end local v0    # "bid":Ljava/lang/String;
    :goto_0
    return-void

    .line 412
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    .end local v0    # "bid":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudiosAnonymous(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestAudios(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bid"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 498
    invoke-interface {v1, p1, p2}, Lcom/jiliguala/niuwa/logic/network/d;->b(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 499
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 500
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 501
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$5;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 502
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 496
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method private requestAudiosAnonymous(Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 530
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 531
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 532
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 533
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$6;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$6;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 534
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 528
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 556
    :cond_0
    return-void
.end method

.method private resetProgress()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeMessages(I)V

    .line 877
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 878
    return-void
.end method

.method private resetToInitialState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 847
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setRid(Ljava/lang/String;)V

    .line 848
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 850
    return-void
.end method

.method private sendMobEvent(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 3
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    .line 720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 721
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Source"

    const-string v2, "Audio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v1, "Media_name"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    const-string v2, "Skip"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 724
    return-void
.end method

.method private shouldPlayNextWithCheckState()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 584
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v1

    .line 591
    .local v1, "networkType":I
    sget-boolean v5, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayChangeToOfflineCancelled:Z

    if-nez v5, :cond_0

    if-eq v1, v4, :cond_0

    .line 592
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->k()I

    move-result v2

    .line 593
    .local v2, "offlineSize":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    const-string v6, "-1"

    if-eq v5, v6, :cond_0

    if-lez v2, :cond_0

    .line 594
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v5, :cond_0

    .line 595
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showChangeToOfflineDialog()V

    .line 612
    .end local v2    # "offlineSize":I
    :goto_0
    return v3

    .line 604
    :cond_0
    const-string v5, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v5, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 605
    .local v0, "enabled":Z
    sget-boolean v5, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayNoneWifiEnable:Z

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    const-string v6, "-1"

    if-eq v5, v6, :cond_1

    .line 607
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v5, :cond_1

    .line 608
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v4}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->show3GNetStateDialog()V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 612
    goto :goto_0
.end method

.method private tryPlayOnline(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 4
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 241
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/jiliguala/niuwa/common/util/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "NPE_AUDIO_ITEM"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
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

    .line 254
    :goto_0
    return-void

    .line 246
    :cond_0
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->errorCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->errorCounter:I

    .line 247
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->errorCounter:I

    if-lt v0, v3, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->pausePlay()V

    .line 249
    const v0, 0x7f0f0189

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext()V

    goto :goto_0
.end method

.method private unRegisterMediaPlayService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;)V

    .line 391
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setConnectionListener(Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;)V

    .line 392
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->stopService()V

    .line 393
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mDownloadReceiver:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 560
    return-void
.end method

.method private updateDownloadIconById(Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateDownloadIcon(I)V

    .line 1248
    :cond_0
    return-void
.end method

.method private updateFavIconById(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 1229
    :cond_0
    return-void
.end method


# virtual methods
.method public acquirePowerLock()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000000a

    sget-object v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 332
    return-void
.end method

.method public changeLoopStrategy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 787
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    .line 788
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setLooping(Z)V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateLoopBtn(Z)V

    .line 794
    :cond_1
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    if-eqz v0, :cond_4

    const-string v0, "\u5df2\u5207\u6362\u5230\u5355\u66f2\u5faa\u73af\u6a21\u5f0f"

    :goto_2
    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 795
    return-void

    :cond_2
    move v0, v1

    .line 787
    goto :goto_0

    .line 792
    :cond_3
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_1

    .line 794
    :cond_4
    const-string v0, "\u5df2\u5207\u6362\u5230\u5217\u8868\u5faa\u73af\u6a21\u5f0f"

    goto :goto_2
.end method

.method public changeOfflineStatus()V
    .locals 0

    .prologue
    .line 798
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/b;->m()V

    .line 799
    return-void
.end method

.method public clickDownloadThisSong()V
    .locals 3

    .prologue
    .line 977
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 978
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$8;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$8;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/logic/t/a/a;)V

    .line 989
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$9;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/common/a/i;)V

    .line 1014
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    .line 1015
    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getThisFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/t/a;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;Landroid/support/v4/app/ag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->performDownload()V

    .line 1023
    :cond_0
    return-void
.end method

.method public clickFavThisSong()V
    .locals 3

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_2

    .line 1066
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1067
    .local v0, "isFav":Z
    if-nez v0, :cond_3

    .line 1068
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v1

    .line 1069
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/p;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_1

    .line 1109
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showPopFragment(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 1112
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->performFavAudio()V

    .line 1121
    .end local v0    # "isFav":Z
    :cond_2
    :goto_0
    return-void

    .line 1114
    .restart local v0    # "isFav":Z
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_2

    .line 1117
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
    .line 1166
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/logic/k/a;->c(Ljava/lang/String;)V

    .line 1167
    const-string v2, "1000"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jiliguala/niuwa/logic/g/a;->b(Ljava/lang/String;)V

    .line 1170
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateFavIcon()V

    .line 1172
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v2, :cond_1

    .line 1173
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    .line 1174
    .local v1, "rid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "bid":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 1176
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    .line 1177
    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->generateBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->c(Lokhttp3/ab;)Lrx/e;

    move-result-object v3

    .line 1178
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 1179
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 1180
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$11;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$11;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 1181
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 1175
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    .line 1198
    .end local v0    # "bid":Ljava/lang/String;
    .end local v1    # "rid":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public doChannelSelect()V
    .locals 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v0, :cond_1

    const-string v0, "#FF2FCA89"

    :goto_0
    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->gotoChannelSelect(Ljava/lang/String;)V

    .line 1270
    :cond_0
    return-void

    .line 1268
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
    .line 1280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZZ)V

    .line 1281
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

    .line 1292
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    packed-switch v1, :pswitch_data_0

    .line 1325
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/jiliguala/niuwa/logic/g/a;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1328
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_1

    .line 1330
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateLoopBtn(Z)V

    .line 1332
    :cond_1
    return-void

    .line 1294
    :pswitch_0
    if-nez p4, :cond_2

    .line 1295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    .line 1302
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1299
    :cond_3
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_2

    .line 1309
    :pswitch_1
    if-nez p4, :cond_0

    .line 1310
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_0

    .line 1314
    :pswitch_2
    if-nez p4, :cond_4

    .line 1315
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    .line 1317
    :cond_4
    sget-object v1, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->CHANNEL_SELECTION_STATE:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1320
    :pswitch_3
    if-nez p4, :cond_0

    .line 1321
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_0

    .line 1330
    :cond_5
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    goto :goto_1

    .line 1292
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
    .line 1273
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-nez v0, :cond_1

    const-string v0, "#FF2FCA89"

    :goto_0
    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onSearchAction(Ljava/lang/String;)V

    .line 1277
    :cond_0
    return-void

    .line 1275
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->clr:Ljava/lang/String;

    goto :goto_0
.end method

.method public doShareThisSong()V
    .locals 6

    .prologue
    .line 1251
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v2, :cond_0

    .line 1252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1253
    .local v0, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ID"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    const-string v2, "Title"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Listen Share Dialog"

    .line 1256
    invoke-virtual {v2, v3, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1257
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v2, :cond_0

    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u548c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    .line 1259
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

    .line 1260
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

    .line 1263
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
    .line 236
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->requestAudioResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public isCurrentItemFavored()Z
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    .line 1219
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/k/a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchOfflineMode()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->launchOfflineMode()V

    .line 623
    return-void
.end method

.method public onComplete()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 198
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->isFromPractise()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "Title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->meta:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioMetaPart;->ttl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Listen Play"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayComplete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext(Z)V

    .line 207
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

    .line 1381
    packed-switch p3, :pswitch_data_0

    .line 1388
    :goto_0
    return-void

    .line 1384
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    .line 1385
    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIconById(Ljava/lang/String;I)V

    goto :goto_0

    .line 1381
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

    .line 1392
    packed-switch p4, :pswitch_data_0

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1395
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    .line 1396
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIconById(Ljava/lang/String;I)V

    goto :goto_0

    .line 1401
    :pswitch_1
    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/x;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1402
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v0

    invoke-static {p2}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
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

    .line 1404
    invoke-direct {p0, p2, p3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->notifyDownloadLyricSucceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1392
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

    .line 1417
    packed-switch p3, :pswitch_data_0

    .line 1426
    :goto_0
    return-void

    .line 1419
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/jiliguala/niuwa/logic/k/c;->a(Ljava/lang/String;I)V

    .line 1420
    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->updateDownloadIconById(Ljava/lang/String;I)V

    goto :goto_0

    .line 1423
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->notifyDownloadLyricFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 1417
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
    .line 1413
    return-void
.end method

.method public onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 1431
    return-void
.end method

.method public onError(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "errorSource"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    .line 163
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->onErrorLogic(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onFail()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->enableButtons(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 915
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->resume()V

    .line 918
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->recordTrackerStart()V

    .line 919
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayResume()V

    .line 920
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->pause()V

    .line 924
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/a;->c()V

    .line 925
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 926
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeMessages(I)V

    goto :goto_0
.end method

.method public onPlayListEmpty()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetToInitialState()V

    .line 232
    return-void
.end method

.method public onPrepared()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->playRightNow()V

    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayResume()V

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->enableButtons(Z)V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPrepared(J)V

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 185
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->recordTrackerStart()V

    .line 187
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->pausePlayOnChannelShow()V

    .line 191
    :cond_2
    return-void
.end method

.method public onProgressChangedUpdateLyric(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 812
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrcmod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 814
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateLyricView(I)V

    .line 819
    :cond_0
    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .locals 1
    .param p1, "chnName"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateChannelName(Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->shouldPlayNextWithCheckState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->play()V

    .line 219
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 807
    const-string v0, "KEY_PLAY_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    .line 808
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/g/a;->b(Landroid/os/Bundle;)V

    .line 809
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 802
    const-string v0, "KEY_PLAY_MODE"

    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurPlayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 803
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/g/a;->a(Landroid/os/Bundle;)V

    .line 804
    return-void
.end method

.method public onServiceConnected()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/logic/g/a;->a(Lcom/jiliguala/niuwa/logic/g/d;)V

    .line 570
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/g/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "channelId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->setChannelId(Ljava/lang/String;)V

    .line 577
    .end local v0    # "channelId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->shouldPlayNextWithCheckState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v3, v2, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 580
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 578
    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method public pausePlay()V
    .locals 2

    .prologue
    const/16 v1, 0x1000

    .line 954
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->pause()V

    .line 957
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/i/a;->c()V

    .line 958
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 959
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeMessages(I)V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayPause()V

    .line 964
    return-void
.end method

.method public perform3GContinue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 616
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->reset()V

    .line 618
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->doChannelSelectAction(Ljava/lang/String;IZ)V

    .line 619
    return-void
.end method

.method public playNext()V
    .locals 1

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendProgressTrackerReport()V

    .line 843
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playNext(Z)V

    .line 844
    return-void
.end method

.method public playNext(Z)V
    .locals 2
    .param p1, "manual"    # Z

    .prologue
    .line 854
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 855
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 857
    const v0, 0x7f0f0142

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 858
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->resetProgress()V

    .line 863
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->singleLoop:Z

    if-eqz v0, :cond_2

    .line 864
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->play()V

    goto :goto_0

    .line 866
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->enableButtons(Z)V

    .line 870
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
    .line 881
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->playPrev(Z)V

    .line 882
    return-void
.end method

.method public registerMediaPlayService()V
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    .line 367
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver$PlayBackInterface;)V

    .line 368
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->setConnectionListener(Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy$ServiceConnectionListener;)V

    .line 369
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->startAndBindService()V

    .line 370
    return-void
.end method

.method public releasePowerLock()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 338
    :cond_0
    return-void
.end method

.method public requestAudioChannel()V
    .locals 3

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 1496
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 1497
    invoke-interface {v1}, Lcom/jiliguala/niuwa/logic/network/d;->b()Lrx/e;

    move-result-object v1

    .line 1498
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 1499
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 1500
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$2;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)V

    .line 1501
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 1495
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 1520
    :cond_0
    return-void
.end method

.method public requestAudioFav()V
    .locals 4

    .prologue
    .line 1524
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1525
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1526
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1554
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1529
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 1530
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const-string v3, "1000"

    .line 1531
    invoke-interface {v2, v0, v3}, Lcom/jiliguala/niuwa/logic/network/d;->a(Ljava/lang/String;Ljava/lang/String;)Lrx/e;

    move-result-object v2

    .line 1532
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1533
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 1534
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$3;

    invoke-direct {v3, p0, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$3;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;Ljava/lang/String;)V

    .line 1535
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 1529
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method

.method public resumePlay()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->resume()V

    .line 946
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->recordTrackerStart()V

    .line 947
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onPlayResume()V

    .line 948
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mHandler:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$a;->sendEmptyMessage(I)Z

    .line 950
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->seek(J)J

    .line 362
    :cond_0
    return-void
.end method

.method public sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "courseid"    # Ljava/lang/String;
    .param p2, "subtaskid"    # Ljava/lang/String;

    .prologue
    .line 737
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "bid":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 740
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->showLoadingProgress()V

    .line 742
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->getSubscriptions()Lrx/i/b;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v2

    .line 743
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v2

    const/4 v3, 0x0

    .line 744
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->generateRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lokhttp3/ab;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/logic/network/d;->q(Lokhttp3/ab;)Lrx/e;

    move-result-object v2

    .line 745
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 746
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v2

    .line 747
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;

    invoke-direct {v3, p0, p2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;-><init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v2, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 742
    invoke-virtual {v1, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 770
    :cond_0
    return-void
.end method

.method public sendProgressTrackerReport()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->isFromPractise()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/db/b;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 732
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/i/a;->a()Lcom/jiliguala/niuwa/logic/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/i/a;->a(Ljava/lang/String;)V

    .line 734
    :cond_1
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mChannel:Ljava/lang/String;

    .line 313
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->changePlayMode(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mRid:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mProxy:Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerServiceProxy;->stop()V

    .line 968
    return-void
.end method

.method public toggleLyricFullScreen()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_0

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lyrics View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 346
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public unRegisterAll()V
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->quitJobThread()V

    .line 376
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->unregisterReceiver()V

    .line 377
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/g/a;->m()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    .line 380
    return-void
.end method

.method public unRegisterService()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mPlayBackReceiver:Lcom/jiliguala/niuwa/module/audio/PlayBackReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 384
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->unRegisterMediaPlayService()V

    .line 385
    return-void
.end method

.method public updateDownloadIcon()V
    .locals 3

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_0

    .line 1233
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/c;->b(Ljava/lang/String;)I

    move-result v0

    .line 1234
    .local v0, "status":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateDownloadIcon(I)V

    .line 1239
    .end local v0    # "status":I
    :cond_0
    return-void
.end method

.method public updateFavIcon()V
    .locals 3

    .prologue
    .line 1201
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    if-eqz v1, :cond_0

    .line 1202
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1203
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mCurrentPlayItem:Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/k/a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1204
    .local v0, "isFav":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1206
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateFavIcon(Z)V

    .line 1215
    .end local v0    # "isFav":Z
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    if-eqz v1, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->mAudioView:Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->updateFavIcon(Z)V

    goto :goto_0
.end method
