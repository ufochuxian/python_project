.class public Lcom/google/android/exoplayer/util/ManifestFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;,
        Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;,
        Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;,
        Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;,
        Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/upstream/Loader$Callback;"
    }
.end annotation


# instance fields
.field private currentLoadStartTimestamp:J

.field private currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private enabledCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

.field private loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

.field private loadExceptionCount:I

.field private loadExceptionTimestamp:J

.field private loader:Lcom/google/android/exoplayer/upstream/Loader;

.field private volatile manifest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile manifestLoadCompleteTimestamp:J

.field private volatile manifestLoadStartTimestamp:J

.field volatile manifestUri:Ljava/lang/String;

.field private final parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V
    .locals 6
    .param p1, "manifestUri"    # Ljava/lang/String;
    .param p2, "uriDataSource"    # Lcom/google/android/exoplayer/upstream/UriDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/upstream/UriDataSource;",
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    .local p3, "parser":Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;, "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser<TT;>;"
    const/4 v4, 0x0

    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;Landroid/os/Handler;Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;Landroid/os/Handler;Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;)V
    .locals 0
    .param p1, "manifestUri"    # Ljava/lang/String;
    .param p2, "uriDataSource"    # Lcom/google/android/exoplayer/upstream/UriDataSource;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/upstream/UriDataSource;",
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    .local p3, "parser":Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;, "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 97
    iput-object p4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    .line 98
    iput-object p5, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/util/ManifestFetcher;)Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/util/ManifestFetcher;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    return-object v0
.end method

.method private getRetryDelayMillis(J)J
    .locals 5
    .param p1, "errorCount"    # J

    .prologue
    .line 256
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyManifestError(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 282
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/util/ManifestFetcher$3;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    :cond_0
    return-void
.end method

.method private notifyManifestRefreshStarted()V
    .locals 2

    .prologue
    .line 260
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$1;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    :cond_0
    return-void
.end method

.method private notifyManifestRefreshed()V
    .locals 2

    .prologue
    .line 271
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventListener:Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher$2;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher$2;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->release()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 185
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 169
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->enabledCount:I

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    .line 173
    :cond_0
    return-void
.end method

.method public getManifest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public getManifestLoadCompleteTimestamp()J
    .locals 2

    .prologue
    .line 147
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    return-wide v0
.end method

.method public getManifestLoadStartTimestamp()J
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    return-wide v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 160
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    throw v0
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 0
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 233
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
    .locals 4
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .prologue
    .line 208
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    if-eq v2, p1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    .line 214
    iget-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadStartTimestamp:J

    iput-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    .line 216
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    .line 219
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    instance-of v2, v2, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;

    if-eqz v2, :cond_1

    .line 220
    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;

    .line 221
    .local v1, "redirectingManifest":Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;
    invoke-interface {v1}, Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;->getNextManifestUri()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "nextLocation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    .line 227
    .end local v0    # "nextLocation":Ljava/lang/String;
    .end local v1    # "redirectingManifest":Lcom/google/android/exoplayer/util/ManifestFetcher$RedirectingManifest;
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestRefreshed()V

    goto :goto_0
.end method

.method public onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2
    .param p1, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p2, "exception"    # Ljava/io/IOException;

    .prologue
    .line 237
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    if-eq v0, p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionTimestamp:J

    .line 244
    new-instance v0, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestError(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method onSingleFetchCompleted(Ljava/lang/Object;J)V
    .locals 2
    .param p2, "loadStartTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifest:Ljava/lang/Object;

    .line 251
    iput-wide p2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadStartTimestamp:J

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestLoadCompleteTimestamp:J

    .line 253
    return-void
.end method

.method public requestRefresh()V
    .locals 6

    .prologue
    .line 191
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadException:Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestIOException;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionTimestamp:J

    iget v4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loadExceptionCount:I

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getRetryDelayMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lcom/google/android/exoplayer/upstream/Loader;

    const-string v1, "manifestLoader"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/google/android/exoplayer/upstream/UriLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadStartTimestamp:J

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->loader:Lcom/google/android/exoplayer/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->currentLoadable:Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/upstream/Loader;->startLoading(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V

    .line 202
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->notifyManifestRefreshStarted()V

    goto :goto_0
.end method

.method public singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V
    .locals 5
    .param p1, "callbackLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    .local p2, "callback":Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;, "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback<TT;>;"
    new-instance v0, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;

    new-instance v1, Lcom/google/android/exoplayer/upstream/UriLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v4, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/upstream/UriLoadable;Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 120
    .local v0, "fetchHelper":Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>.SingleFetchHelper;"
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher$SingleFetchHelper;->startLoading()V

    .line 121
    return-void
.end method

.method public updateManifestUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "manifestUri"    # Ljava/lang/String;

    .prologue
    .line 107
    .local p0, "this":Lcom/google/android/exoplayer/util/ManifestFetcher;, "Lcom/google/android/exoplayer/util/ManifestFetcher<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer/util/ManifestFetcher;->manifestUri:Ljava/lang/String;

    .line 108
    return-void
.end method
