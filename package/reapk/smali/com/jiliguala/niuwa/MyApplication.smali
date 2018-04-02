.class public Lcom/jiliguala/niuwa/MyApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "SourceFile"


# static fields
.field public static ApkResNoneWifiDownloadEnable:Z = false

.field public static AudioPlayChangeToOfflineCancelled:Z = false

.field public static AudioPlayNoneWifiEnable:Z = false

.field public static AudioResNoneWifiDownloadEnable:Z = false

.field public static final BOOK_NEW_DURATION:Lorg/joda/time/Duration;

.field public static EnableDownloadResWithNoWifi:Z = false

.field public static final MILLISECONDS_IN_FIFTEEN_DAYS:J = 0x4d3f6400L

.field public static VideoDetailPageNoneWifiEnable:Z

.field public static VideoPlayNoneWifiEnable:Z

.field private static final a:Ljava/lang/String;

.field public static initLocalServer:Z

.field public static isPrepareRes:Z

.field public static mPrefixUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static speakmode:I


# instance fields
.field private b:Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;

.field private c:Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

.field private d:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

.field private e:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

.field private f:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

.field private g:Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;

.field private h:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

.field private i:Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

.field private j:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private k:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private l:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private m:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

.field private n:Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    new-instance v0, Lorg/joda/time/Duration;

    const-wide/32 v2, 0x4d3f6400

    invoke-direct {v0, v2, v3}, Lorg/joda/time/Duration;-><init>(J)V

    sput-object v0, Lcom/jiliguala/niuwa/MyApplication;->BOOK_NEW_DURATION:Lorg/joda/time/Duration;

    .line 91
    const-class v0, Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/MyApplication;->a:Ljava/lang/String;

    .line 92
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioResNoneWifiDownloadEnable:Z

    .line 93
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->ApkResNoneWifiDownloadEnable:Z

    .line 94
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayNoneWifiEnable:Z

    .line 95
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayChangeToOfflineCancelled:Z

    .line 96
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 97
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->VideoDetailPageNoneWifiEnable:Z

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->EnableDownloadResWithNoWifi:Z

    .line 99
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->initLocalServer:Z

    .line 100
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->isPrepareRes:Z

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/MyApplication;->mPrefixUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/jiliguala/niuwa/MyApplication$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/MyApplication$2;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->addErrorCallback(Lcom/alibaba/sdk/android/feedback/util/a;)V

    .line 243
    new-instance v0, Lcom/jiliguala/niuwa/MyApplication$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/MyApplication$3;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->addLeaveCallback(Ljava/util/concurrent/Callable;)V

    .line 251
    const-string v0, "23601699"

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->init(Landroid/app/Application;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 260
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->b:Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;

    .line 261
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->initialize(Lcom/jiliguala/niuwa/MyApplication;)V

    .line 263
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->c:Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    .line 264
    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->g:Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;

    .line 265
    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->i:Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

    .line 270
    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->init(Lcom/jiliguala/niuwa/MyApplication;)V

    .line 276
    :try_start_0
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;

    const-string v2, "images"

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->j:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 277
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;

    const-string v2, "store"

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->k:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 278
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;-><init>(Landroid/content/res/AssetManager;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->l:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 280
    const-string v1, "audio"

    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->deleteCache(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/MyApplication;->j:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->f:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    .line 287
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->getInstance()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->d:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    .line 288
    iget-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->d:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->initialize(Landroid/content/Context;)V

    .line 289
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->h:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    .line 290
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->e:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .line 291
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->n:Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;

    .line 292
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->m:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    .line 293
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c()V
    .locals 12

    .prologue
    .line 364
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 365
    .local v2, "availableMemory":J
    long-to-float v9, v2

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 366
    .local v8, "memoryCacheSize":I
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 367
    .local v4, "cacheDir":Ljava/io/File;
    new-instance v7, Lcom/nostra13/universalimageloader/a/b/a/f;

    invoke-direct {v7, v8}, Lcom/nostra13/universalimageloader/a/b/a/f;-><init>(I)V

    .line 368
    .local v7, "memoryCache":Lcom/nostra13/universalimageloader/a/b/a/f;
    new-instance v6, Lcom/nostra13/universalimageloader/a/a/a/c;

    invoke-direct {v6, v4}, Lcom/nostra13/universalimageloader/a/a/a/c;-><init>(Ljava/io/File;)V

    .line 369
    .local v6, "diskCache":Lcom/nostra13/universalimageloader/a/a/a/c;
    new-instance v9, Lcom/nostra13/universalimageloader/core/e$a;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/nostra13/universalimageloader/core/e$a;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/e$a;->a(I)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v9

    const/4 v10, 0x3

    .line 370
    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/e$a;->b(I)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v9

    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 371
    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v9

    .line 372
    invoke-virtual {v9, v7}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/a/b/c;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/nostra13/universalimageloader/core/e$a;->b(Lcom/nostra13/universalimageloader/a/a/a;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v9

    new-instance v10, Lcom/nostra13/universalimageloader/a/a/b/b;

    invoke-direct {v10}, Lcom/nostra13/universalimageloader/a/a/b/b;-><init>()V

    .line 373
    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/e$a;->b(Lcom/nostra13/universalimageloader/a/a/b/a;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v9

    new-instance v10, Lcom/nostra13/universalimageloader/core/download/a;

    .line 374
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/nostra13/universalimageloader/core/download/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v9

    .line 375
    invoke-static {}, Lcom/nostra13/universalimageloader/core/c;->t()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/core/c;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v9

    .line 377
    invoke-virtual {v9}, Lcom/nostra13/universalimageloader/core/e$a;->c()Lcom/nostra13/universalimageloader/core/e;

    move-result-object v5

    .line 378
    .local v5, "config":Lcom/nostra13/universalimageloader/core/e;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/nostra13/universalimageloader/core/d;->a(Lcom/nostra13/universalimageloader/core/e;)V

    .line 381
    new-instance v9, Lcom/nostra13/universalimageloader/core/e$a;

    invoke-direct {v9, p0}, Lcom/nostra13/universalimageloader/core/e$a;-><init>(Landroid/content/Context;)V

    .line 382
    invoke-virtual {v9, v7}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/a/b/c;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v9

    .line 383
    invoke-virtual {v9}, Lcom/nostra13/universalimageloader/core/e$a;->c()Lcom/nostra13/universalimageloader/core/e;

    move-result-object v0

    .line 385
    .local v0, "apngConfig":Lcom/nostra13/universalimageloader/core/e;
    invoke-static {}, Lcom/github/sahasbhop/a/b;->a()Lcom/github/sahasbhop/a/b;

    move-result-object v1

    .line 386
    .local v1, "apngImageLoader":Lcom/github/sahasbhop/a/b;
    sget-boolean v9, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    invoke-virtual {v1, v9}, Lcom/github/sahasbhop/a/b;->b(Z)V

    .line 387
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/github/sahasbhop/a/b;->a(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v0, v10}, Lcom/github/sahasbhop/a/b;->a(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/e;Lcom/nostra13/universalimageloader/core/e;)V

    .line 389
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 392
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->b:Z

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 394
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 396
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 399
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->e(Z)V

    .line 400
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/jiliguala/niuwa/MyApplication$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/MyApplication$4;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/MyApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 484
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 124
    invoke-static {p0}, Landroid/support/multidex/b;->a(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public getArtworkManager()Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->f:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    return-object v0
.end method

.method public getAssetCache()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->j:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    return-object v0
.end method

.method public getAssetStore()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->k:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    return-object v0
.end method

.method public getAuthenticationManager()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->c:Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    return-object v0
.end method

.method public getDeviceIdentityManager()Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->b:Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;

    return-object v0
.end method

.method public getInstallDate()Lorg/joda/time/DateTime;
    .locals 6

    .prologue
    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 337
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v2, Lorg/joda/time/DateTime;

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v2, v4, v5}, Lorg/joda/time/DateTime;-><init>(J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 338
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getLiveDataManager()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->h:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    return-object v0
.end method

.method public getOfflineManager()Lcom/jiliguala/niuwa/module/story/data/OfflineManager;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->m:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    return-object v0
.end method

.method public getOnceManager()Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->i:Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

    return-object v0
.end method

.method public getPreloadLibrary()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->l:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 432
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 433
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 434
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 435
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 436
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 438
    .end local v0    # "newConfig":Landroid/content/res/Configuration;
    :cond_0
    return-object v1
.end method

.method public getStoryAudioManager()Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->e:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    return-object v0
.end method

.method public getSupportHelper()Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->g:Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;

    return-object v0
.end method

.method public getTelemetryManager()Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->n:Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;

    return-object v0
.end method

.method public getVolleyManager()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->d:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 423
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getResources()Landroid/content/res/Resources;

    .line 427
    :cond_0
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 428
    return-void
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x1

    .line 129
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 131
    invoke-static {p0}, Lcom/jiliguala/niuwa/c;->a(Landroid/content/Context;)V

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 135
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 137
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "CHANNEL"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "channel":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 139
    sput-object v1, Lcom/jiliguala/niuwa/common/util/b/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "channel":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/jiliguala/niuwa/MyApplication$1;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/MyApplication$1;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 157
    sput-boolean v5, Lcom/pingplusplus/android/PingppLog;->DEBUG:Z

    .line 166
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/t;->a()V

    .line 168
    const-string v7, "com.jiliguala.niuwa"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 170
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->getInstance(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->init()V

    .line 172
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    .line 175
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/a;->a()Lcom/jiliguala/niuwa/logic/r/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/r/a;->b()V

    .line 176
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    .line 177
    const-string v7, "CUR_VER"

    invoke-static {v7, v10}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v4

    .line 178
    .local v4, "localVer":I
    if-ne v4, v10, :cond_1

    .line 179
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/d/a;->f()V

    .line 181
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/d/a;->g()V

    .line 183
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/i;->a()V

    .line 185
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->d()V

    .line 186
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/e/a;->b()V

    .line 187
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->c()V

    .line 189
    const-string v7, "D_M"

    invoke-static {v7, v6}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    :goto_1
    sput-boolean v5, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    .line 191
    invoke-static {}, Lcom/jiliguala/niuwa/logic/t/a;->a()Lcom/jiliguala/niuwa/logic/t/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/t/a;->b()V

    .line 192
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->b()V

    .line 194
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Landroid/content/Context;)V

    .line 196
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/k/a;->d()V

    .line 201
    invoke-static {}, Lcom/jiliguala/niuwa/logic/download/b;->a()Lcom/jiliguala/niuwa/logic/download/b;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/jiliguala/niuwa/logic/download/b;->b(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->b()V

    .line 204
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->a(Landroid/content/Context;)V

    .line 207
    :try_start_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 215
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 220
    :goto_3
    const-string v5, "41377fc83990"

    const-string v6, "81a5046e1b0671736010166d9f0a845b"

    invoke-static {p0, v5, v6}, Lcom/mob/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v5, "ee1fe6df7ece373997"

    new-instance v6, Lcom/youzan/androidsdk/basic/d;

    invoke-direct {v6}, Lcom/youzan/androidsdk/basic/d;-><init>()V

    invoke-static {p0, v5, v6}, Lcom/youzan/androidsdk/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/youzan/androidsdk/f;)V

    .line 229
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->f()V

    .line 232
    .end local v4    # "localVer":I
    :cond_2
    return-void

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "localVer":I
    :cond_3
    move v5, v6

    .line 189
    goto :goto_1

    .line 208
    :catch_1
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 210
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 211
    .local v3, "error":Ljava/lang/Error;
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 216
    .end local v3    # "error":Ljava/lang/Error;
    :catch_3
    move-exception v2

    .line 217
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 410
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onTerminate()V

    .line 411
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->l()V

    .line 412
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->e()V

    .line 413
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->m()V

    .line 414
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/k/c;->b()V

    .line 415
    invoke-static {}, Lcom/jiliguala/niuwa/logic/download/b;->a()Lcom/jiliguala/niuwa/logic/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/download/b;->c()V

    .line 418
    invoke-static {}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a()V

    .line 419
    return-void
.end method
