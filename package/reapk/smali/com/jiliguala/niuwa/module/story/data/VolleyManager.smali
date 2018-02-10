.class public Lcom/jiliguala/niuwa/module/story/data/VolleyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_CACHE_DIR:Ljava/lang/String; = "volley-serial"

.field private static final DEFAULT_AUDIO_THREAD_POOL_SIZE:I = 0x1

.field private static INSTANCE:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioRequestQueue:Lcom/android/volley/j;

.field private mInMemoryBitmapCache:Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;

.field private mRequestQueue:Lcom/android/volley/j;

.field private mThumbnailImageLoader:Lcom/android/volley/toolbox/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    return-object v0
.end method

.method public static newSerialRequestQueue(Landroid/content/Context;Lcom/squareup/okhttp/t;)Lcom/android/volley/j;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "volley-serial"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v1, Lcom/android/volley/toolbox/c;

    new-instance v3, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;

    invoke-direct {v3, p1}, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;-><init>(Lcom/squareup/okhttp/t;)V

    invoke-direct {v1, v3}, Lcom/android/volley/toolbox/c;-><init>(Lcom/android/volley/toolbox/i;)V

    .line 61
    .local v1, "network":Lcom/android/volley/g;
    new-instance v2, Lcom/android/volley/j;

    new-instance v3, Lcom/android/volley/toolbox/f;

    invoke-direct {v3, v0}, Lcom/android/volley/toolbox/f;-><init>(Ljava/io/File;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/android/volley/j;-><init>(Lcom/android/volley/b;Lcom/android/volley/g;I)V

    .line 62
    .local v2, "queue":Lcom/android/volley/j;
    invoke-virtual {v2}, Lcom/android/volley/j;->a()V

    .line 63
    return-object v2
.end method


# virtual methods
.method public getAudioRequestQueue()Lcom/android/volley/j;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mAudioRequestQueue:Lcom/android/volley/j;

    return-object v0
.end method

.method public getInMemoryImageCacheSize()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mInMemoryBitmapCache:Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getInMemoryImageCacheStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mInMemoryBitmapCache:Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->getStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;

    move-result-object v0

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/j;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mRequestQueue:Lcom/android/volley/j;

    return-object v0
.end method

.method public getThumbnailImageLoader()Lcom/android/volley/toolbox/k;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mThumbnailImageLoader:Lcom/android/volley/toolbox/k;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/volley/toolbox/k;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mRequestQueue:Lcom/android/volley/j;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mInMemoryBitmapCache:Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/k;-><init>(Lcom/android/volley/j;Lcom/android/volley/toolbox/k$b;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mThumbnailImageLoader:Lcom/android/volley/toolbox/k;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mThumbnailImageLoader:Lcom/android/volley/toolbox/k;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Lcom/squareup/okhttp/t;

    invoke-direct {v0}, Lcom/squareup/okhttp/t;-><init>()V

    .line 68
    .local v0, "client":Lcom/squareup/okhttp/t;
    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;

    invoke-direct {v1, v0}, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;-><init>(Lcom/squareup/okhttp/t;)V

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;Lcom/android/volley/toolbox/i;)Lcom/android/volley/j;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mRequestQueue:Lcom/android/volley/j;

    .line 69
    invoke-static {p1, v0}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->newSerialRequestQueue(Landroid/content/Context;Lcom/squareup/okhttp/t;)Lcom/android/volley/j;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mAudioRequestQueue:Lcom/android/volley/j;

    .line 70
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;

    invoke-direct {v1, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mInMemoryBitmapCache:Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;

    .line 71
    return-void
.end method

.method public purgeInMemoryImageCache()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->mInMemoryBitmapCache:Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/cache/InMemoryBitmapCache;->evictAll()V

    .line 106
    return-void
.end method
