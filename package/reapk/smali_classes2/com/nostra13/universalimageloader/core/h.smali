.class final Lcom/nostra13/universalimageloader/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/b/c$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/h$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "ImageLoader is paused. Waiting...  [%s]"

.field private static final g:Ljava/lang/String; = ".. Resume loading [%s]"

.field private static final h:Ljava/lang/String; = "Delay %d ms before loading...  [%s]"

.field private static final i:Ljava/lang/String; = "Start display image task [%s]"

.field private static final j:Ljava/lang/String; = "Image already is loading. Waiting... [%s]"

.field private static final k:Ljava/lang/String; = "...Get cached bitmap from memory after waiting. [%s]"

.field private static final l:Ljava/lang/String; = "Load image from network [%s]"

.field private static final m:Ljava/lang/String; = "Load image from disk cache [%s]"

.field private static final n:Ljava/lang/String; = "Resize image in disk cache [%s]"

.field private static final o:Ljava/lang/String; = "PreProcess image before caching in memory [%s]"

.field private static final p:Ljava/lang/String; = "PostProcess image before displaying [%s]"

.field private static final q:Ljava/lang/String; = "Cache image in memory [%s]"

.field private static final r:Ljava/lang/String; = "Cache image on disk [%s]"

.field private static final s:Ljava/lang/String; = "Process image before cache on disk [%s]"

.field private static final t:Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"

.field private static final u:Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final v:Ljava/lang/String; = "Task was interrupted [%s]"

.field private static final w:Ljava/lang/String; = "No stream for image [%s]"

.field private static final x:Ljava/lang/String; = "Pre-processor returned null [%s]"

.field private static final y:Ljava/lang/String; = "Post-processor returned null [%s]"

.field private static final z:Ljava/lang/String; = "Bitmap processor for disk cache returned null [%s]"


# instance fields
.field private final A:Lcom/nostra13/universalimageloader/core/f;

.field private final B:Lcom/nostra13/universalimageloader/core/g;

.field private final C:Landroid/os/Handler;

.field private final D:Lcom/nostra13/universalimageloader/core/e;

.field private final E:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final F:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final G:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final H:Lcom/nostra13/universalimageloader/core/a/b;

.field private final I:Ljava/lang/String;

.field private final J:Lcom/nostra13/universalimageloader/core/assist/c;

.field private final K:Z

.field private L:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field final a:Ljava/lang/String;

.field final b:Lcom/nostra13/universalimageloader/core/c/a;

.field final c:Lcom/nostra13/universalimageloader/core/c;

.field final d:Lcom/nostra13/universalimageloader/core/d/a;

.field final e:Lcom/nostra13/universalimageloader/core/d/b;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/f;Lcom/nostra13/universalimageloader/core/g;Landroid/os/Handler;)V
    .locals 1
    .param p1, "engine"    # Lcom/nostra13/universalimageloader/core/f;
    .param p2, "imageLoadingInfo"    # Lcom/nostra13/universalimageloader/core/g;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->L:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 99
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    .line 100
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/h;->B:Lcom/nostra13/universalimageloader/core/g;

    .line 101
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/h;->C:Landroid/os/Handler;

    .line 103
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/f;->a:Lcom/nostra13/universalimageloader/core/e;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    .line 104
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/e;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->E:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 105
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/e;->s:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->F:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 106
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/e;->t:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->G:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 107
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/e;->q:Lcom/nostra13/universalimageloader/core/a/b;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->H:Lcom/nostra13/universalimageloader/core/a/b;

    .line 108
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    .line 109
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    .line 110
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/g;->c:Lcom/nostra13/universalimageloader/core/c/a;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->b:Lcom/nostra13/universalimageloader/core/c/a;

    .line 111
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/g;->d:Lcom/nostra13/universalimageloader/core/assist/c;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->J:Lcom/nostra13/universalimageloader/core/assist/c;

    .line 112
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/g;->e:Lcom/nostra13/universalimageloader/core/c;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    .line 113
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/g;->f:Lcom/nostra13/universalimageloader/core/d/a;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->d:Lcom/nostra13/universalimageloader/core/d/a;

    .line 114
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/g;->g:Lcom/nostra13/universalimageloader/core/d/b;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->e:Lcom/nostra13/universalimageloader/core/d/b;

    .line 115
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/c;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/h;->K:Z

    .line 116
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "imageUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->b:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v1}, Lcom/nostra13/universalimageloader/core/c/a;->c()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v5

    .line 263
    .local v5, "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    new-instance v0, Lcom/nostra13/universalimageloader/core/a/c;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->J:Lcom/nostra13/universalimageloader/core/assist/c;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v6

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/c;)V

    .line 265
    .local v0, "decodingInfo":Lcom/nostra13/universalimageloader/core/a/c;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->H:Lcom/nostra13/universalimageloader/core/a/b;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/a/b;->a(Lcom/nostra13/universalimageloader/core/a/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/core/h;)Lcom/nostra13/universalimageloader/core/e;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/h;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    return-object v0
.end method

.method private a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "failType"    # Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .param p2, "failCause"    # Ljava/lang/Throwable;

    .prologue
    .line 353
    iget-boolean v1, p0, Lcom/nostra13/universalimageloader/core/h;->K:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/h$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/h$2;-><init>(Lcom/nostra13/universalimageloader/core/h;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 363
    .local v0, "r":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h;->C:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/f;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/f;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "sync"    # Z
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "engine"    # Lcom/nostra13/universalimageloader/core/f;

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 465
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 471
    :goto_0
    return-void

    .line 466
    :cond_0
    if-nez p2, :cond_1

    .line 467
    invoke-virtual {p3, p0}, Lcom/nostra13/universalimageloader/core/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 181
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/f;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    .line 182
    .local v1, "pause":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/f;->e()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 184
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    const-string v4, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/f;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    const-string v2, ".. Resume loading [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->j()Z

    move-result v2

    :goto_0
    return v2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "Task was interrupted [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    monitor-exit v3

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private b(II)Z
    .locals 13
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 307
    const/4 v9, 0x0

    .line 308
    .local v9, "saved":Z
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nostra13/universalimageloader/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 309
    .local v10, "targetFile":Ljava/io/File;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/c;

    invoke-direct {v4, p1, p2}, Lcom/nostra13/universalimageloader/core/assist/c;-><init>(II)V

    .line 311
    .local v4, "targetImageSize":Lcom/nostra13/universalimageloader/core/assist/c;
    new-instance v1, Lcom/nostra13/universalimageloader/core/c$a;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/c$a;-><init>()V

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/c;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/c$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/c$a;->d()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v7

    .line 313
    .local v7, "specialOptions":Lcom/nostra13/universalimageloader/core/c;
    new-instance v0, Lcom/nostra13/universalimageloader/core/a/c;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    sget-object v5, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/nostra13/universalimageloader/core/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/c;)V

    .line 316
    .local v0, "decodingInfo":Lcom/nostra13/universalimageloader/core/a/c;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->H:Lcom/nostra13/universalimageloader/core/a/b;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/a/b;->a(Lcom/nostra13/universalimageloader/core/a/c;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 317
    .local v8, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/e;->f:Lcom/nostra13/universalimageloader/core/e/a;

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "Process image before cache on disk [%s]"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/e;->f:Lcom/nostra13/universalimageloader/core/e/a;

    invoke-interface {v1, v8}, Lcom/nostra13/universalimageloader/core/e/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 320
    if-nez v8, :cond_0

    .line 321
    const-string v1, "Bitmap processor for disk cache returned null [%s]"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/b/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_0
    if-eqz v8, :cond_1

    .line 325
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v8}, Lcom/nostra13/universalimageloader/a/a/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v9

    .line 326
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    .end local v0    # "decodingInfo":Lcom/nostra13/universalimageloader/core/a/c;
    .end local v4    # "targetImageSize":Lcom/nostra13/universalimageloader/core/assist/c;
    .end local v7    # "specialOptions":Lcom/nostra13/universalimageloader/core/c;
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    return v9
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/c;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const-string v3, "Delay %d ms before loading...  [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/c;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :try_start_0
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/c;->l()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->j()Z

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Task was interrupted [%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/b/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v1, v2

    .line 211
    goto :goto_0
.end method

.method private c(II)Z
    .locals 4
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->p()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h;->e:Lcom/nostra13/universalimageloader/core/d/b;

    if-eqz v2, :cond_2

    .line 341
    new-instance v0, Lcom/nostra13/universalimageloader/core/h$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/h$1;-><init>(Lcom/nostra13/universalimageloader/core/h;II)V

    .line 347
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h;->C:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/f;)V

    .line 349
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/h$a;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/nostra13/universalimageloader/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 218
    .local v2, "imageFile":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 219
    const-string v4, "Load image from disk cache [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->L:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 222
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->i()V

    .line 223
    sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    .line 226
    :cond_1
    const-string v4, "Load image from network [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->L:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 229
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    .line 230
    .local v3, "imageUriForDecoding":Ljava/lang/String;
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/c;->i()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/nostra13/universalimageloader/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 232
    if-eqz v2, :cond_2

    .line 233
    sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    :cond_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->i()V

    .line 238
    invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    .line 241
    :cond_3
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/nostra13/universalimageloader/core/h;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nostra13/universalimageloader/core/h$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 258
    .end local v2    # "imageFile":Ljava/io/File;
    .end local v3    # "imageUriForDecoding":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v8}, Lcom/nostra13/universalimageloader/core/h;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 247
    .local v1, "e":Lcom/nostra13/universalimageloader/core/h$a;
    throw v1

    .line 248
    .end local v1    # "e":Lcom/nostra13/universalimageloader/core/h$a;
    :catch_2
    move-exception v1

    .line 249
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    .line 250
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v1}, Lcom/nostra13/universalimageloader/core/h;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    .line 253
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v1}, Lcom/nostra13/universalimageloader/core/h;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 254
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    .line 256
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v1}, Lcom/nostra13/universalimageloader/core/h;->a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/h$a;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 270
    const-string v4, "Cache image on disk [%s]"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->f()Z

    move-result v2

    .line 275
    .local v2, "loaded":Z
    if-eqz v2, :cond_1

    .line 276
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget v3, v4, Lcom/nostra13/universalimageloader/core/e;->d:I

    .line 277
    .local v3, "width":I
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget v1, v4, Lcom/nostra13/universalimageloader/core/e;->e:I

    .line 278
    .local v1, "height":I
    if-gtz v3, :cond_0

    if-lez v1, :cond_1

    .line 279
    :cond_0
    const-string v4, "Resize image in disk cache [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-direct {p0, v3, v1}, Lcom/nostra13/universalimageloader/core/h;->b(II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return v2

    .line 283
    .end local v2    # "loaded":Z
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/Throwable;)V

    .line 285
    const/4 v2, 0x0

    .restart local v2    # "loaded":Z
    goto :goto_0
.end method

.method private f()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/c;->n()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 292
    .local v0, "is":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 293
    const-string v2, "No stream for image [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/b/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :goto_0
    return v1

    .line 297
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/e;->o:Lcom/nostra13/universalimageloader/a/a/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lcom/nostra13/universalimageloader/a/a/a;->a(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/b/c$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 299
    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/c;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private g()V
    .locals 4

    .prologue
    .line 367
    iget-boolean v1, p0, Lcom/nostra13/universalimageloader/core/h;->K:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/h$3;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/h$3;-><init>(Lcom/nostra13/universalimageloader/core/h;)V

    .line 374
    .local v0, "r":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h;->C:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/f;)V

    goto :goto_0
.end method

.method private h()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 2

    .prologue
    .line 379
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/f;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->F:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 386
    .local v0, "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    :goto_0
    return-object v0

    .line 381
    .end local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    :cond_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/f;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->G:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .restart local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    goto :goto_0

    .line 384
    .end local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->E:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .restart local v0    # "d":Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    goto :goto_0
.end method

.method private i()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/h$a;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->k()V

    .line 396
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->m()V

    .line 397
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/h$a;
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Lcom/nostra13/universalimageloader/core/h$a;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/h$a;-><init>(Lcom/nostra13/universalimageloader/core/h;)V

    throw v0

    .line 412
    :cond_0
    return-void
.end method

.method private l()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 416
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/h;->b:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/c/a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    const-string v2, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/h$a;
        }
    .end annotation

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Lcom/nostra13/universalimageloader/core/h$a;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/h$a;-><init>(Lcom/nostra13/universalimageloader/core/h;)V

    throw v0

    .line 428
    :cond_0
    return-void
.end method

.method private n()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 432
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->b:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/c/a;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "currentCacheKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 436
    .local v1, "imageAwareWasReused":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 437
    const-string v4, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    :goto_1
    return v2

    .end local v1    # "imageAwareWasReused":Z
    :cond_0
    move v1, v3

    .line 435
    goto :goto_0

    .restart local v1    # "imageAwareWasReused":Z
    :cond_1
    move v2, v3

    .line 440
    goto :goto_1
.end method

.method private o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nostra13/universalimageloader/core/h$a;
        }
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lcom/nostra13/universalimageloader/core/h$a;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/h$a;-><init>(Lcom/nostra13/universalimageloader/core/h;)V

    throw v0

    .line 448
    :cond_0
    return-void
.end method

.method private p()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    const-string v2, "Task was interrupted [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(II)Z
    .locals 1
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/h;->K:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/h;->c(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 120
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->B:Lcom/nostra13/universalimageloader/core/g;

    iget-object v3, v4, Lcom/nostra13/universalimageloader/core/g;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 124
    .local v3, "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    const-string v4, "Start display image task [%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    const-string v4, "Image already is loading. Waiting... [%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->i()V

    .line 134
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/e;->n:Lcom/nostra13/universalimageloader/a/b/c;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/nostra13/universalimageloader/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 136
    :cond_3
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->d()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/nostra13/universalimageloader/core/h$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    if-nez v0, :cond_4

    .line 172
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 139
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->i()V

    .line 140
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->o()V

    .line 142
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/c;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    const-string v4, "PreProcess image before caching in memory [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/c;->o()Lcom/nostra13/universalimageloader/core/e/a;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/nostra13/universalimageloader/core/e/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    if-nez v0, :cond_5

    .line 146
    const-string v4, "Pre-processor returned null [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_5
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/c;->h()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 151
    const-string v4, "Cache image in memory [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->D:Lcom/nostra13/universalimageloader/core/e;

    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/e;->n:Lcom/nostra13/universalimageloader/a/b/c;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/nostra13/universalimageloader/a/b/c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 159
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/c;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 160
    const-string v4, "PostProcess image before displaying [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->c:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/c;->p()Lcom/nostra13/universalimageloader/core/e/a;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/nostra13/universalimageloader/core/e/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    if-nez v0, :cond_7

    .line 163
    const-string v4, "Post-processor returned null [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_7
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->i()V

    .line 167
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->o()V
    :try_end_1
    .catch Lcom/nostra13/universalimageloader/core/h$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    new-instance v1, Lcom/nostra13/universalimageloader/core/b;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->B:Lcom/nostra13/universalimageloader/core/g;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/h;->L:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v1, v0, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/b;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/g;Lcom/nostra13/universalimageloader/core/f;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 176
    .local v1, "displayBitmapTask":Lcom/nostra13/universalimageloader/core/b;
    iget-boolean v4, p0, Lcom/nostra13/universalimageloader/core/h;->K:Z

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/h;->C:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/h;->A:Lcom/nostra13/universalimageloader/core/f;

    invoke-static {v1, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/f;)V

    goto/16 :goto_0

    .line 155
    .end local v1    # "displayBitmapTask":Lcom/nostra13/universalimageloader/core/b;
    :cond_8
    :try_start_2
    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v4, p0, Lcom/nostra13/universalimageloader/core/h;->L:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 156
    const-string v4, "...Get cached bitmap from memory after waiting. [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/h;->I:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/nostra13/universalimageloader/core/h$a; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 168
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Lcom/nostra13/universalimageloader/core/h$a;
    :try_start_3
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/h;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v2    # "e":Lcom/nostra13/universalimageloader/core/h$a;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method
