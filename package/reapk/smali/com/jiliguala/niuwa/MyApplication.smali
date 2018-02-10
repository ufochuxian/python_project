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

    .line 85
    new-instance v0, Lorg/joda/time/Duration;

    const-wide/32 v2, 0x4d3f6400

    invoke-direct {v0, v2, v3}, Lorg/joda/time/Duration;-><init>(J)V

    sput-object v0, Lcom/jiliguala/niuwa/MyApplication;->BOOK_NEW_DURATION:Lorg/joda/time/Duration;

    .line 86
    const-class v0, Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/MyApplication;->a:Ljava/lang/String;

    .line 87
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioResNoneWifiDownloadEnable:Z

    .line 88
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->ApkResNoneWifiDownloadEnable:Z

    .line 89
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayNoneWifiEnable:Z

    .line 90
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayChangeToOfflineCancelled:Z

    .line 91
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 92
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->VideoDetailPageNoneWifiEnable:Z

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->EnableDownloadResWithNoWifi:Z

    .line 94
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->initLocalServer:Z

    .line 95
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->isPrepareRes:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/MyApplication;->mPrefixUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/jiliguala/niuwa/MyApplication$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/MyApplication$2;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->addErrorCallback(Lcom/alibaba/sdk/android/feedback/util/a;)V

    .line 223
    new-instance v0, Lcom/jiliguala/niuwa/MyApplication$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/MyApplication$3;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->addLeaveCallback(Ljava/util/concurrent/Callable;)V

    .line 231
    const-string v0, "23601699"

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->init(Landroid/app/Application;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 240
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->b:Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;

    .line 241
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->initialize(Lcom/jiliguala/niuwa/MyApplication;)V

    .line 243
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->c:Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    .line 244
    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->g:Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;

    .line 245
    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->i:Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

    .line 250
    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->init(Lcom/jiliguala/niuwa/MyApplication;)V

    .line 256
    :try_start_0
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;

    const-string v2, "images"

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->j:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 257
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;

    const-string v2, "store"

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->k:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 258
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;-><init>(Landroid/content/res/AssetManager;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->l:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 260
    const-string v1, "audio"

    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->deleteCache(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    iget-object v2, p0, Lcom/jiliguala/niuwa/MyApplication;->j:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-direct {v1, p0, v2}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->f:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    .line 267
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->getInstance()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->d:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    .line 268
    iget-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->d:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->initialize(Landroid/content/Context;)V

    .line 269
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->h:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    .line 270
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->e:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .line 271
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->n:Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;

    .line 272
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/MyApplication;->m:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    .line 273
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c()V
    .locals 11

    .prologue
    .line 344
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 345
    .local v2, "availableMemory":J
    long-to-float v8, v2

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v9

    float-to-int v7, v8

    .line 346
    .local v7, "memoryCacheSize":I
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/d/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 347
    .local v1, "cacheDir":Ljava/io/File;
    new-instance v6, Lcom/nostra13/universalimageloader/a/b/a/f;

    invoke-direct {v6, v7}, Lcom/nostra13/universalimageloader/a/b/a/f;-><init>(I)V

    .line 348
    .local v6, "memoryCache":Lcom/nostra13/universalimageloader/a/b/a/f;
    new-instance v5, Lcom/nostra13/universalimageloader/a/a/a/c;

    invoke-direct {v5, v1}, Lcom/nostra13/universalimageloader/a/a/a/c;-><init>(Ljava/io/File;)V

    .line 349
    .local v5, "diskCache":Lcom/nostra13/universalimageloader/a/a/a/c;
    new-instance v8, Lcom/nostra13/universalimageloader/core/e$a;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/nostra13/universalimageloader/core/e$a;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/nostra13/universalimageloader/core/e$a;->a(I)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v8

    const/4 v9, 0x3

    .line 350
    invoke-virtual {v8, v9}, Lcom/nostra13/universalimageloader/core/e$a;->b(I)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v8

    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 351
    invoke-virtual {v8, v9}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v8

    .line 352
    invoke-virtual {v8}, Lcom/nostra13/universalimageloader/core/e$a;->a()Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/a/b/c;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/nostra13/universalimageloader/core/e$a;->b(Lcom/nostra13/universalimageloader/a/a/a;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v8

    new-instance v9, Lcom/nostra13/universalimageloader/a/a/b/b;

    invoke-direct {v9}, Lcom/nostra13/universalimageloader/a/a/b/b;-><init>()V

    .line 353
    invoke-virtual {v8, v9}, Lcom/nostra13/universalimageloader/core/e$a;->b(Lcom/nostra13/universalimageloader/a/a/b/a;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v8

    new-instance v9, Lcom/nostra13/universalimageloader/core/download/a;

    .line 354
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/nostra13/universalimageloader/core/download/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v8

    .line 355
    invoke-static {}, Lcom/nostra13/universalimageloader/core/c;->t()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nostra13/universalimageloader/core/e$a;->a(Lcom/nostra13/universalimageloader/core/c;)Lcom/nostra13/universalimageloader/core/e$a;

    move-result-object v8

    .line 357
    invoke-virtual {v8}, Lcom/nostra13/universalimageloader/core/e$a;->c()Lcom/nostra13/universalimageloader/core/e;

    move-result-object v4

    .line 358
    .local v4, "config":Lcom/nostra13/universalimageloader/core/e;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/nostra13/universalimageloader/core/d;->a(Lcom/nostra13/universalimageloader/core/e;)V

    .line 361
    invoke-static {}, Lcom/github/sahasbhop/a/b;->a()Lcom/github/sahasbhop/a/b;

    move-result-object v0

    .line 362
    .local v0, "apngImageLoader":Lcom/github/sahasbhop/a/b;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/github/sahasbhop/a/b;->b(Z)V

    .line 363
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/github/sahasbhop/a/b;->a(Z)V

    .line 364
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/github/sahasbhop/a/b;->a(Landroid/content/Context;)V

    .line 365
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 368
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->b:Z

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 370
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 372
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 375
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->e(Z)V

    .line 376
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 119
    invoke-static {p0}, Landroid/support/multidex/b;->a(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public getArtworkManager()Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->f:Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    return-object v0
.end method

.method public getAssetCache()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->j:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    return-object v0
.end method

.method public getAssetStore()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->k:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    return-object v0
.end method

.method public getAuthenticationManager()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->c:Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    return-object v0
.end method

.method public getDeviceIdentityManager()Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->b:Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;

    return-object v0
.end method

.method public getInstallDate()Lorg/joda/time/DateTime;
    .locals 6

    .prologue
    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 317
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v2, Lorg/joda/time/DateTime;

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v2, v4, v5}, Lorg/joda/time/DateTime;-><init>(J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 318
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getLiveDataManager()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->h:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    return-object v0
.end method

.method public getOfflineManager()Lcom/jiliguala/niuwa/module/story/data/OfflineManager;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->m:Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    return-object v0
.end method

.method public getOnceManager()Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->i:Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

    return-object v0
.end method

.method public getPreloadLibrary()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->l:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 408
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 409
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 410
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 411
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 412
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 414
    .end local v0    # "newConfig":Landroid/content/res/Configuration;
    :cond_0
    return-object v1
.end method

.method public getStoryAudioManager()Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->e:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    return-object v0
.end method

.method public getSupportHelper()Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->g:Lcom/jiliguala/niuwa/module/story/helpers/SupportHelper;

    return-object v0
.end method

.method public getTelemetryManager()Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->n:Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;

    return-object v0
.end method

.method public getVolleyManager()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jiliguala/niuwa/MyApplication;->d:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 399
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getResources()Landroid/content/res/Resources;

    .line 403
    :cond_0
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 404
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 124
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 126
    invoke-static {p0}, Lcom/jiliguala/niuwa/c;->a(Landroid/content/Context;)V

    .line 128
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/jiliguala/niuwa/MyApplication$1;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/MyApplication$1;-><init>(Lcom/jiliguala/niuwa/MyApplication;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 139
    sput-boolean v3, Lcom/pingplusplus/android/PingppLog;->DEBUG:Z

    .line 148
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/t;->a()V

    .line 150
    const-string v5, "com.jiliguala.niuwa"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->getInstance(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->init()V

    .line 154
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    .line 157
    invoke-static {}, Lcom/jiliguala/niuwa/logic/q/a;->a()Lcom/jiliguala/niuwa/logic/q/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/q/a;->b()V

    .line 158
    invoke-static {}, Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;->getInstance()Lcom/jiliguala/niuwa/module/video/helper/VideoFailReportHelper;

    .line 159
    const-string v5, "CUR_VER"

    invoke-static {v5, v7}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v2

    .line 160
    .local v2, "localVer":I
    if-ne v2, v7, :cond_0

    .line 161
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/d/a;->f()V

    .line 163
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/d/a;->g()V

    .line 165
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/i;->a()V

    .line 167
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->d()V

    .line 168
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/e/a;->b()V

    .line 169
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->c()V

    .line 171
    const-string v5, "D_M"

    invoke-static {v5, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_0
    sput-boolean v3, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    .line 173
    invoke-static {}, Lcom/jiliguala/niuwa/logic/s/a;->a()Lcom/jiliguala/niuwa/logic/s/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/s/a;->b()V

    .line 174
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->b()V

    .line 176
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Landroid/content/Context;)V

    .line 178
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/k/a;->d()V

    .line 183
    invoke-static {}, Lcom/jiliguala/niuwa/logic/download/b;->a()Lcom/jiliguala/niuwa/logic/download/b;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/jiliguala/niuwa/logic/download/b;->b(Landroid/content/Context;)V

    .line 184
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->b()V

    .line 186
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->a(Landroid/content/Context;)V

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/MyApplication;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 202
    :goto_2
    const-string v3, "41377fc83990"

    const-string v4, "81a5046e1b0671736010166d9f0a845b"

    invoke-static {p0, v3, v4}, Lcom/mob/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "ee1fe6df7ece373997"

    new-instance v4, Lcom/youzan/androidsdk/basic/d;

    invoke-direct {v4}, Lcom/youzan/androidsdk/basic/d;-><init>()V

    invoke-static {p0, v3, v4}, Lcom/youzan/androidsdk/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/youzan/androidsdk/f;)V

    .line 212
    .end local v2    # "localVer":I
    :cond_1
    return-void

    .restart local v2    # "localVer":I
    :cond_2
    move v3, v4

    .line 171
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 193
    .local v1, "error":Ljava/lang/Error;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 198
    .end local v1    # "error":Ljava/lang/Error;
    :catch_2
    move-exception v0

    .line 199
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onTerminate()V

    .line 387
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->l()V

    .line 388
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->e()V

    .line 389
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->m()V

    .line 390
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/k/c;->b()V

    .line 391
    invoke-static {}, Lcom/jiliguala/niuwa/logic/download/b;->a()Lcom/jiliguala/niuwa/logic/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/download/b;->c()V

    .line 394
    invoke-static {}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a()V

    .line 395
    return-void
.end method
