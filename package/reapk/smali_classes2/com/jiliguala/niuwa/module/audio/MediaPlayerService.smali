.class public Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;,
        Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$MediaInfoProvider;
    }
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String;

.field public static final ACTION_NEXT:Ljava/lang/String;

.field public static final ACTION_PAUSE:Ljava/lang/String;

.field public static final ACTION_PLAY_PAUSE:Ljava/lang/String;

.field public static final ACTION_PREVIOUS:Ljava/lang/String;

.field private static final BUFFER_SEGMENT_COUNT:I = 0x100

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000

.field private static final NOTIFICATION_REF:I = 0x1

.field private static final RENDERER_BUILDING_STATE_BUILDING:I = 0x2

.field private static final RENDERER_BUILDING_STATE_BUILT:I = 0x3

.field private static final RENDERER_BUILDING_STATE_IDLE:I = 0x1

.field public static final RENDERER_COUNT:I = 0x4

.field private static final RETRY_MAX_TIME:I = 0x3

.field private static final STATE_ERROR:I = 0x9

.field private static final STATE_IDLE:I = 0x1

.field private static final STATE_INITIALIZED:I = 0x2

.field private static final STATE_PAUSED:I = 0x6

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x8

.field public static final STATE_PREPARED:I = 0x3

.field private static final STATE_PREPARING:I = 0x4

.field public static final STATE_STARTED:I = 0x5

.field private static final STATE_STOPPED:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final DUCK_VOLUME:F

.field private looping:Z

.field private mArtist:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentName:Landroid/content/ComponentName;

.field private mCurHashCode:I

.field private mCurState:I

.field protected mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

.field private mIsBinded:Z

.field private mIsPausing:Z

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field private mTitle:Ljava/lang/String;

.field private notification:Landroid/app/Notification;

.field private prepared:Z

.field private rendererBuildingState:I

.field private retryCount:I

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".action.PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_PAUSE:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".action.PLAY_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_PLAY_PAUSE:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".action.PREVIOUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_PREVIOUS:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".action.NEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NEXT:Ljava/lang/String;

    .line 61
    const-class v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->DUCK_VOLUME:F

    .line 92
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->prepared:Z

    .line 95
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->looping:Z

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurHashCode:I

    .line 99
    return-void
.end method

.method private buildRenders(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 563
    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v1, 0x10000

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    .line 567
    .local v3, "allocator":Lcom/google/android/exoplayer/upstream/Allocator;
    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v4, v5, v7}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;Z)V

    .line 568
    .local v2, "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    const/high16 v4, 0x1000000

    new-array v5, v8, [Lcom/google/android/exoplayer/extractor/Extractor;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 572
    .local v0, "sampleSource":Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
    new-instance v6, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v1, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    invoke-direct {v6, v0, v1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;)V

    .line 574
    .local v6, "audioTrackRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    new-array v4, v7, [Lcom/google/android/exoplayer/TrackRenderer;

    aput-object v6, v4, v8

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 575
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v6, v7, v4}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 576
    return-void
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Linux;Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ExoPlayerLib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.5.6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logCurState(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 623
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    packed-switch v0, :pswitch_data_0

    .line 652
    :pswitch_0
    return-void

    .line 623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private prepareAsync(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 529
    const-string v0, "prepareAsync >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 530
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 531
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 534
    :cond_1
    const-string v0, "prepareAsync >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private reset(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 318
    const-string v0, "reset >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 321
    const-string v0, "reset >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private setDataSource(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const-string v5, "setDataSource >>> "

    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 482
    iget v5, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 483
    const/4 v3, 0x0

    .line 485
    .local v3, "fis":Ljava/io/FileInputStream;
    if-eqz p2, :cond_4

    .line 486
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 488
    const-string v5, "INVALID_LOCAL"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 489
    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {p0, p1, v5, v6}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 526
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 494
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 496
    .local v2, "fileDescriptor":Ljava/io/FileDescriptor;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 499
    if-eqz v2, :cond_2

    .line 500
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move-object v3, v4

    .line 521
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 524
    :goto_3
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    goto :goto_0

    .line 502
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 514
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 515
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_4
    :try_start_4
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 516
    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {p0, p1, v5, v6}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 521
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 507
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    .line 508
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 509
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->a()Ljava/util/HashMap;

    move-result-object v7

    .line 507
    invoke-virtual {p1, v5, v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_2

    .line 514
    :catch_1
    move-exception v0

    goto :goto_4

    .line 512
    :cond_4
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 517
    :catch_2
    move-exception v0

    .line 518
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_6
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 519
    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {p0, p1, v5, v6}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 521
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_6
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 522
    throw v5

    .line 521
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 517
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mArtist"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 123
    new-instance v0, Landroid/support/v4/app/ay$d;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ay$d;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "mNotifyBuilder":Landroid/support/v4/app/ay$d;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v3, "notificationIntent":Landroid/content/Intent;
    const/high16 v5, 0x24000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 130
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f08018a

    invoke-virtual {v0, v5}, Landroid/support/v4/app/ay$d;->a(I)Landroid/support/v4/app/ay$d;

    move-result-object v5

    .line 131
    invoke-virtual {v5, p1}, Landroid/support/v4/app/ay$d;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/ay$d;

    move-result-object v5

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/ay$d;->a(J)Landroid/support/v4/app/ay$d;

    move-result-object v5

    .line 133
    invoke-virtual {v5, p1}, Landroid/support/v4/app/ay$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ay$d;

    move-result-object v5

    .line 134
    invoke-virtual {v5, p2}, Landroid/support/v4/app/ay$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ay$d;

    move-result-object v5

    .line 135
    invoke-virtual {v5, v9}, Landroid/support/v4/app/ay$d;->c(Z)Landroid/support/v4/app/ay$d;

    move-result-object v5

    .line 136
    invoke-virtual {v5, v8}, Landroid/support/v4/app/ay$d;->d(Z)Landroid/support/v4/app/ay$d;

    move-result-object v5

    .line 137
    invoke-virtual {v5, v4}, Landroid/support/v4/app/ay$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ay$d;

    .line 138
    invoke-virtual {v0}, Landroid/support/v4/app/ay$d;->b()Landroid/app/Notification;

    move-result-object v2

    .line 140
    .local v2, "notification":Landroid/app/Notification;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 141
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 145
    return-void
.end method

.method private start(Landroid/media/MediaPlayer;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isPlayRightNow"    # Z

    .prologue
    const/4 v2, -0x1

    .line 540
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {p0, p3}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->exoPlayerPrepare(Z)V

    .line 557
    :goto_0
    return-void

    .line 544
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->reset(Landroid/media/MediaPlayer;)V

    .line 545
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->prepared:Z

    .line 546
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setDataSource(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->prepareAsync(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 548
    :catch_0
    move-exception v1

    goto :goto_0

    .line 552
    :catch_1
    move-exception v0

    .line 554
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, p1, v2, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 550
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public exoPlayerPrepare(Z)V
    .locals 4
    .param p1, "isPlayRightNow"    # Z

    .prologue
    .line 579
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 580
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->buildRenders(Landroid/net/Uri;)V

    .line 581
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->rendererBuildingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 584
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->rendererBuildingState:I

    .line 585
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 586
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 587
    return-void
.end method

.method getBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mBinderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;-><init>(Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mBinderRef:Ljava/lang/ref/WeakReference;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mBinderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mBinderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getCurHashCode()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurHashCode:I

    return v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    .line 355
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 365
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 366
    :cond_0
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    .line 368
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsPausing:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 329
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    goto :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 163
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsBinded:Z

    .line 164
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService$LocalBinder;-><init>(Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mBinderRef:Ljava/lang/ref/WeakReference;

    .line 166
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const/4 v1, 0x4

    const/16 v2, 0x3e8

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 168
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 169
    iput v4, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->rendererBuildingState:I

    .line 179
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/audio/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mComponentName:Landroid/content/ComponentName;

    .line 180
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mAudioManager:Landroid/media/AudioManager;

    .line 181
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 184
    :try_start_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 185
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :goto_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mArtist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mArtist:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1

    .line 171
    :cond_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 172
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 173
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 174
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 175
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 176
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x1

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion >>> prepared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->prepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 432
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 433
    const-string v1, "onCompletion >>> "

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 434
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->prepared:Z

    if-nez v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->source:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->start(Landroid/media/MediaPlayer;Ljava/lang/String;Z)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, "completeIntent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsPausing:Z

    .line 445
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsBinded:Z

    if-nez v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->stopSelf()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 247
    const-string v0, "onCreate >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 254
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 596
    const-string v1, "onError >>> "

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 597
    const/16 v1, -0x26

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->source:Ljava/lang/String;

    const-string v2, "INVALID_LOCAL"

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->retryCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 599
    iget v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->retryCount:I

    .line 601
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->source:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v4}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->start(Landroid/media/MediaPlayer;Ljava/lang/String;Z)V

    .line 619
    :goto_0
    return v4

    .line 604
    :cond_1
    iput v3, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->retryCount:I

    .line 605
    const-string v1, "onError >>> "

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 606
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 607
    const-string v1, "onError >>> "

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 612
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "errorIntent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    const-string v1, "source"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v1, "what"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPlayWhenReadyCommitted()V
    .locals 0

    .prologue
    .line 723
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .locals 3
    .param p1, "error"    # Lcom/google/android/exoplayer/ExoPlaybackException;

    .prologue
    .line 735
    const/4 v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->rendererBuildingState:I

    .line 752
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v0, "errorIntent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    const-string v1, "source"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 760
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 7
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 665
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v2, :cond_0

    .line 666
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 668
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 710
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 680
    :pswitch_1
    if-eqz p1, :cond_1

    .line 681
    iput v6, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->retryCount:I

    .line 682
    const-string v2, "onPrepared >>> "

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 683
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 684
    const-string v2, "onPrepared >>> "

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 685
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->prepared:Z

    .line 686
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v1, "preparedIntent":Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 692
    .end local v1    # "preparedIntent":Landroid/content/Intent;
    :pswitch_2
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->looping:Z

    if-eqz v2, :cond_2

    .line 693
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 694
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 697
    :cond_2
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, "completeIntent":Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 701
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsPausing:Z

    .line 703
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsBinded:Z

    if-nez v2, :cond_1

    .line 704
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->stopSelf()V

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 453
    const/4 v1, 0x0

    iput v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->retryCount:I

    .line 454
    const-string v1, "onPrepared >>> "

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 455
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 456
    const-string v1, "onPrepared >>> "

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->prepared:Z

    .line 458
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "preparedIntent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 198
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsBinded:Z

    .line 200
    :try_start_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 201
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mArtist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mArtist:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 209
    return-void

    .line 202
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 397
    :try_start_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 398
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 399
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsBinded:Z

    .line 216
    :try_start_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 217
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 226
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->releaseExoPlayer()V

    .line 240
    :goto_1
    return v4

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 230
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 231
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 232
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->isStop()Z

    move-result v1

    if-nez v1, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->stop()V

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 236
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    .line 218
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 297
    const-string v0, "pause >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsPausing:Z

    .line 300
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 305
    :goto_0
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 307
    :cond_1
    const-string v0, "pause >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 308
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public playRightNow()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 464
    const-string v0, "playRightNow >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 465
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 466
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 471
    :goto_0
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 473
    :cond_1
    const-string v0, "playRightNow >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 474
    return-void

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public releaseExoPlayer()V
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->rendererBuildingState:I

    .line 591
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->release()V

    .line 592
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsPausing:Z

    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->reset(Landroid/media/MediaPlayer;)V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->prepared:Z

    .line 315
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->playRightNow()V

    .line 262
    return-void
.end method

.method public seek(J)J
    .locals 9
    .param p1, "whereto"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 378
    :try_start_0
    const-string v1, "seek >>> "

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 383
    .local v2, "seekPosition":J
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 390
    .end local v2    # "seekPosition":J
    :goto_1
    return-wide p1

    .line 381
    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 382
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->getDuration()I

    move-result v1

    int-to-long v6, v1

    .line 381
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v4, p1

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setAudioPlayDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ttl"    # Ljava/lang/String;
    .param p3, "art"    # Ljava/lang/String;
    .param p4, "hashCode"    # I

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->source:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mTitle:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mArtist:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mArtist:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mArtist:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    iput p4, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurHashCode:I

    .line 113
    return-void
.end method

.method public setCurState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 477
    iput p1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    .line 478
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->looping:Z

    .line 266
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public start(Z)V
    .locals 3
    .param p1, "isPlayRightNow"    # Z

    .prologue
    .line 274
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->exoPlayerPrepare(Z)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->source:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->start(Landroid/media/MediaPlayer;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 282
    const-string v0, "stop >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 283
    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mCurState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 284
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 289
    :goto_0
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->setCurState(I)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mIsPausing:Z

    .line 293
    :cond_1
    const-string v0, "stop >>> "

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->logCurState(Ljava/lang/String;)V

    .line 294
    return-void

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/MediaPlayerService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0
.end method
