.class public Lrx/internal/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# static fields
.field public static final b:I


# instance fields
.field public volatile a:Ljava/lang/Object;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 243
    const/16 v0, 0x80

    .line 246
    .local v0, "defaultSize":I
    invoke-static {}, Lrx/internal/util/i;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const/16 v0, 0x10

    .line 251
    :cond_0
    const-string v3, "rx.ring-buffer.size"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "sizeFromProperty":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 254
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 260
    :cond_1
    :goto_0
    sput v0, Lrx/internal/util/j;->b:I

    .line 261
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Lrx/internal/util/atomic/d;

    sget v1, Lrx/internal/util/j;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/d;-><init>(I)V

    sget v1, Lrx/internal/util/j;->b:I

    invoke-direct {p0, v0, v1}, Lrx/internal/util/j;-><init>(Ljava/util/Queue;I)V

    .line 301
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lrx/internal/util/j;->c:Ljava/util/Queue;

    .line 282
    iput p2, p0, Lrx/internal/util/j;->d:I

    .line 283
    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 1
    .param p1, "spmc"    # Z
    .param p2, "size"    # I

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    if-eqz p1, :cond_0

    new-instance v0, Lrx/internal/util/a/r;

    invoke-direct {v0, p2}, Lrx/internal/util/a/r;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/internal/util/j;->c:Ljava/util/Queue;

    .line 287
    iput p2, p0, Lrx/internal/util/j;->d:I

    .line 288
    return-void

    .line 286
    :cond_0
    new-instance v0, Lrx/internal/util/a/z;

    invoke-direct {v0, p2}, Lrx/internal/util/a/z;-><init>(I)V

    goto :goto_0
.end method

.method public static a()Lrx/internal/util/j;
    .locals 3

    .prologue
    .line 265
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lrx/internal/util/j;

    const/4 v1, 0x0

    sget v2, Lrx/internal/util/j;->b:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/j;-><init>(ZI)V

    .line 268
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/util/j;

    invoke-direct {v0}, Lrx/internal/util/j;-><init>()V

    goto :goto_0
.end method

.method public static b()Lrx/internal/util/j;
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lrx/internal/util/j;

    const/4 v1, 0x1

    sget v2, Lrx/internal/util/j;->b:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/j;-><init>(ZI)V

    .line 276
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/util/j;

    invoke-direct {v0}, Lrx/internal/util/j;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "iae":Z
    const/4 v1, 0x0

    .line 312
    .local v1, "mbe":Z
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v2, p0, Lrx/internal/util/j;->c:Ljava/util/Queue;

    .line 314
    .local v2, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 315
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 319
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-eqz v0, :cond_2

    .line 322
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 319
    .end local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 324
    .restart local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 325
    new-instance v3, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v3}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw v3

    .line 327
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 338
    iget-object v0, p0, Lrx/internal/util/j;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 339
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/j;->a:Ljava/lang/Object;

    .line 341
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lrx/f;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "child"    # Lrx/f;

    .prologue
    .line 415
    invoke-static {p2, p1}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 402
    invoke-static {p1}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized c()V
    .locals 0

    .prologue
    .line 292
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 406
    invoke-static {p1}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 410
    invoke-static {p1}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lrx/internal/util/j;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 332
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/j;->a:Ljava/lang/Object;

    .line 334
    :cond_0
    return-void
.end method

.method public e()I
    .locals 2

    .prologue
    .line 344
    iget v0, p0, Lrx/internal/util/j;->d:I

    invoke-virtual {p0}, Lrx/internal/util/j;->g()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 419
    invoke-static {p1}, Lrx/internal/operators/v;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lrx/internal/util/j;->d:I

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lrx/internal/util/j;->c:Ljava/util/Queue;

    .line 353
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 354
    const/4 v1, 0x0

    .line 356
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lrx/internal/util/j;->c:Ljava/util/Queue;

    .line 361
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 366
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v1, p0, Lrx/internal/util/j;->c:Ljava/util/Queue;

    .line 368
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 370
    monitor-exit p0

    .line 381
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 374
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/util/j;->a:Ljava/lang/Object;

    .line 375
    .local v2, "ts":Ljava/lang/Object;
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 376
    move-object v0, v2

    .line 378
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/util/j;->a:Ljava/lang/Object;

    .line 380
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lrx/internal/util/j;->c:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v1, p0, Lrx/internal/util/j;->c:Ljava/util/Queue;

    .line 388
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 390
    const/4 v0, 0x0

    monitor-exit p0

    .line 398
    :goto_0
    return-object v0

    .line 392
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/util/j;->a:Ljava/lang/Object;

    .line 394
    .local v2, "ts":Ljava/lang/Object;
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 395
    move-object v0, v2

    .line 397
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 296
    invoke-virtual {p0}, Lrx/internal/util/j;->c()V

    .line 297
    return-void
.end method
