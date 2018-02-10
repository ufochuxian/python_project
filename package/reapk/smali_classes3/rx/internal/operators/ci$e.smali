.class final Lrx/internal/operators/ci$e;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<",
        "Lrx/e",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final p:[Lrx/internal/operators/ci$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/ci$c",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:I

.field d:Lrx/internal/operators/ci$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ci$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Lrx/i/b;

.field volatile g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Z

.field i:Z

.field j:Z

.field final k:Ljava/lang/Object;

.field volatile l:[Lrx/internal/operators/ci$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/ci$c",
            "<*>;"
        }
    .end annotation
.end field

.field m:J

.field n:J

.field o:I

.field final q:I

.field r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/ci$c;

    sput-object v0, Lrx/internal/operators/ci$e;->p:[Lrx/internal/operators/ci$c;

    return-void
.end method

.method public constructor <init>(Lrx/l;ZI)V
    .locals 2
    .param p2, "delayErrors"    # Z
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    const v1, 0x7fffffff

    .line 188
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 189
    iput-object p1, p0, Lrx/internal/operators/ci$e;->a:Lrx/l;

    .line 190
    iput-boolean p2, p0, Lrx/internal/operators/ci$e;->b:Z

    .line 191
    iput p3, p0, Lrx/internal/operators/ci$e;->c:I

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ci$e;->k:Ljava/lang/Object;

    .line 193
    sget-object v0, Lrx/internal/operators/ci$e;->p:[Lrx/internal/operators/ci$c;

    iput-object v0, p0, Lrx/internal/operators/ci$e;->l:[Lrx/internal/operators/ci$c;

    .line 194
    if-ne p3, v1, :cond_0

    .line 195
    iput v1, p0, Lrx/internal/operators/ci$e;->q:I

    .line 196
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ci$e;->request(J)V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x1

    shr-int/lit8 v1, p3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lrx/internal/operators/ci$e;->q:I

    .line 199
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ci$e;->request(J)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/ci$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 265
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 266
    iget-object v2, p0, Lrx/internal/operators/ci$e;->a:Lrx/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/ci$e;->a:Lrx/l;

    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/util/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ci$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 205
    .local v0, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_1

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ci$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 208
    if-nez v0, :cond_0

    .line 209
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .local v1, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :try_start_1
    iput-object v1, p0, Lrx/internal/operators/ci$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 212
    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 214
    :cond_1
    return-object v0

    .line 212
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    .restart local v0    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/Throwable;>;"
    goto :goto_0
.end method

.method public a(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 437
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/ci$e;->request(J)V

    .line 438
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x0

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, "success":Z
    iget-object v4, p0, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    invoke-virtual {v4}, Lrx/internal/operators/ci$d;->get()J

    move-result-wide v2

    .line 453
    .local v2, "r":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_1

    .line 454
    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    invoke-virtual {v4}, Lrx/internal/operators/ci$d;->get()J

    move-result-wide v2

    .line 457
    iget-boolean v4, p0, Lrx/internal/operators/ci$e;->i:Z

    if-nez v4, :cond_0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .line 458
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 459
    const/4 v1, 0x1

    .line 461
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_1
    if-eqz v1, :cond_4

    .line 464
    iget-object v0, p0, Lrx/internal/operators/ci$e;->e:Ljava/util/Queue;

    .line 465
    .local v0, "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 466
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Lrx/internal/operators/ci$e;->a(Ljava/lang/Object;J)V

    .line 475
    .end local v0    # "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 461
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 468
    .restart local v0    # "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {p0, p1}, Lrx/internal/operators/ci$e;->b(Ljava/lang/Object;)V

    .line 469
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->e()V

    goto :goto_0

    .line 472
    .end local v0    # "mainQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {p0, p1}, Lrx/internal/operators/ci$e;->b(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->d()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;J)V
    .locals 6
    .param p2, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 511
    .local v1, "skipFinal":Z
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/ci$e;->a:Lrx/l;

    invoke-virtual {v3, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    :goto_0
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, p2, v4

    if-eqz v3, :cond_0

    .line 523
    :try_start_1
    iget-object v3, p0, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lrx/internal/operators/ci$d;->produced(I)J

    .line 526
    :cond_0
    iget v3, p0, Lrx/internal/operators/ci$e;->r:I

    add-int/lit8 v0, v3, 0x1

    .line 527
    .local v0, "produced":I
    iget v3, p0, Lrx/internal/operators/ci$e;->q:I

    if-ne v0, v3, :cond_4

    .line 528
    const/4 v3, 0x0

    iput v3, p0, Lrx/internal/operators/ci$e;->r:I

    .line 529
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/ci$e;->a(J)V

    .line 535
    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 536
    const/4 v1, 0x1

    .line 537
    :try_start_2
    iget-boolean v3, p0, Lrx/internal/operators/ci$e;->j:Z

    if-nez v3, :cond_5

    .line 538
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 539
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 544
    if-nez v1, :cond_1

    .line 545
    monitor-enter p0

    .line 546
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 547
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 558
    .end local v0    # "produced":I
    :cond_1
    :goto_2
    return-void

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-boolean v3, p0, Lrx/internal/operators/ci$e;->b:Z

    if-nez v3, :cond_2

    .line 514
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 515
    const/4 v1, 0x1

    .line 516
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->unsubscribe()V

    .line 517
    invoke-virtual {p0, v2}, Lrx/internal/operators/ci$e;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 544
    if-nez v1, :cond_1

    .line 545
    monitor-enter p0

    .line 546
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 547
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 520
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->a()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 544
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    if-nez v1, :cond_3

    .line 545
    monitor-enter p0

    .line 546
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 547
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_3
    throw v3

    .line 531
    .restart local v0    # "produced":I
    :cond_4
    :try_start_8
    iput v0, p0, Lrx/internal/operators/ci$e;->r:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 547
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .line 541
    :cond_5
    const/4 v3, 0x0

    :try_start_a
    iput-boolean v3, p0, Lrx/internal/operators/ci$e;->j:Z

    .line 542
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 544
    if-nez v1, :cond_6

    .line 545
    monitor-enter p0

    .line 546
    const/4 v3, 0x0

    :try_start_b
    iput-boolean v3, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 547
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 557
    :cond_6
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->e()V

    goto :goto_2

    .line 542
    :catchall_3
    move-exception v3

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 547
    :catchall_4
    move-exception v3

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v3

    .end local v0    # "produced":I
    :catchall_5
    move-exception v3

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v3
.end method

.method public a(Lrx/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "t":Lrx/e;, "Lrx/e<+TT;>;"
    if-nez p1, :cond_0

    .line 251
    .end local p1    # "t":Lrx/e;, "Lrx/e<+TT;>;"
    :goto_0
    return-void

    .line 240
    .restart local p1    # "t":Lrx/e;, "Lrx/e<+TT;>;"
    :cond_0
    invoke-static {}, Lrx/e;->c()Lrx/e;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 241
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->c()V

    goto :goto_0

    .line 243
    :cond_1
    instance-of v1, p1, Lrx/internal/util/k;

    if-eqz v1, :cond_2

    .line 244
    check-cast p1, Lrx/internal/util/k;

    .end local p1    # "t":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-virtual {p1}, Lrx/internal/util/k;->K()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/operators/ci$e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    .restart local p1    # "t":Lrx/e;, "Lrx/e<+TT;>;"
    :cond_2
    new-instance v0, Lrx/internal/operators/ci$c;

    iget-wide v2, p0, Lrx/internal/operators/ci$e;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/operators/ci$e;->m:J

    invoke-direct {v0, p0, v2, v3}, Lrx/internal/operators/ci$c;-><init>(Lrx/internal/operators/ci$e;J)V

    .line 247
    .local v0, "inner":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    invoke-virtual {p0, v0}, Lrx/internal/operators/ci$e;->a(Lrx/internal/operators/ci$c;)V

    .line 248
    invoke-virtual {p1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 249
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->d()V

    goto :goto_0
.end method

.method a(Lrx/internal/operators/ci$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ci$c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "inner":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->b()Lrx/i/b;

    move-result-object v3

    invoke-virtual {v3, p1}, Lrx/i/b;->a(Lrx/m;)V

    .line 286
    iget-object v4, p0, Lrx/internal/operators/ci$e;->k:Ljava/lang/Object;

    monitor-enter v4

    .line 287
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ci$e;->l:[Lrx/internal/operators/ci$c;

    .line 288
    .local v0, "a":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    array-length v2, v0

    .line 289
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/internal/operators/ci$c;

    .line 290
    .local v1, "b":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    aput-object p1, v1, v2

    .line 292
    iput-object v1, p0, Lrx/internal/operators/ci$e;->l:[Lrx/internal/operators/ci$c;

    .line 293
    monitor-exit v4

    .line 294
    return-void

    .line 293
    .end local v0    # "a":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    .end local v1    # "b":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method a(Lrx/internal/operators/ci$c;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ci$c",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x0

    .line 340
    const/4 v3, 0x0

    .line 341
    .local v3, "success":Z
    iget-object v4, p0, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    invoke-virtual {v4}, Lrx/internal/operators/ci$d;->get()J

    move-result-wide v0

    .line 342
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 343
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    invoke-virtual {v4}, Lrx/internal/operators/ci$d;->get()J

    move-result-wide v0

    .line 346
    iget-boolean v4, p0, Lrx/internal/operators/ci$e;->i:Z

    if-nez v4, :cond_0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 347
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 348
    const/4 v3, 0x1

    .line 350
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_1
    if-eqz v3, :cond_4

    .line 353
    iget-object v2, p1, Lrx/internal/operators/ci$c;->d:Lrx/internal/util/j;

    .line 354
    .local v2, "subscriberQueue":Lrx/internal/util/j;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lrx/internal/util/j;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 355
    :cond_2
    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/internal/operators/ci$e;->a(Lrx/internal/operators/ci$c;Ljava/lang/Object;J)V

    .line 364
    .end local v2    # "subscriberQueue":Lrx/internal/util/j;
    :goto_0
    return-void

    .line 350
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 357
    .restart local v2    # "subscriberQueue":Lrx/internal/util/j;
    :cond_3
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/ci$e;->b(Lrx/internal/operators/ci$c;Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->e()V

    goto :goto_0

    .line 361
    .end local v2    # "subscriberQueue":Lrx/internal/util/j;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/ci$e;->b(Lrx/internal/operators/ci$c;Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->d()V

    goto :goto_0
.end method

.method protected a(Lrx/internal/operators/ci$c;Ljava/lang/Object;J)V
    .locals 5
    .param p3, "r"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ci$c",
            "<TT;>;TT;J)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 395
    .local v0, "skipFinal":Z
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/ci$e;->a:Lrx/l;

    invoke-virtual {v2, p2}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 406
    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p3, v2

    if-eqz v2, :cond_0

    .line 407
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lrx/internal/operators/ci$d;->produced(I)J

    .line 409
    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lrx/internal/operators/ci$c;->a(J)V

    .line 411
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 412
    const/4 v0, 0x1

    .line 413
    :try_start_2
    iget-boolean v2, p0, Lrx/internal/operators/ci$e;->j:Z

    if-nez v2, :cond_4

    .line 414
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 415
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 420
    if-nez v0, :cond_1

    .line 421
    monitor-enter p0

    .line 422
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 423
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 434
    :cond_1
    :goto_1
    return-void

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-boolean v2, p0, Lrx/internal/operators/ci$e;->b:Z

    if-nez v2, :cond_2

    .line 398
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 399
    const/4 v0, 0x1

    .line 400
    invoke-virtual {p1}, Lrx/internal/operators/ci$c;->unsubscribe()V

    .line 401
    invoke-virtual {p1, v1}, Lrx/internal/operators/ci$c;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 420
    if-nez v0, :cond_1

    .line 421
    monitor-enter p0

    .line 422
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 423
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 404
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->a()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 420
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    if-nez v0, :cond_3

    .line 421
    monitor-enter p0

    .line 422
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 423
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_3
    throw v2

    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 417
    :cond_4
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lrx/internal/operators/ci$e;->j:Z

    .line 418
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 420
    if-nez v0, :cond_5

    .line 421
    monitor-enter p0

    .line 422
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 423
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 433
    :cond_5
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->e()V

    goto :goto_1

    .line 418
    :catchall_3
    move-exception v2

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 423
    :catchall_4
    move-exception v2

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v2

    :catchall_5
    move-exception v2

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2
.end method

.method b()Lrx/i/b;
    .locals 4

    .prologue
    .line 217
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ci$e;->f:Lrx/i/b;

    .line 218
    .local v0, "c":Lrx/i/b;
    if-nez v0, :cond_1

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "shouldAdd":Z
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ci$e;->f:Lrx/i/b;

    .line 222
    if-nez v0, :cond_0

    .line 223
    new-instance v1, Lrx/i/b;

    invoke-direct {v1}, Lrx/i/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v0    # "c":Lrx/i/b;
    .local v1, "c":Lrx/i/b;
    :try_start_1
    iput-object v1, p0, Lrx/internal/operators/ci$e;->f:Lrx/i/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    const/4 v2, 0x1

    move-object v0, v1

    .line 227
    .end local v1    # "c":Lrx/i/b;
    .restart local v0    # "c":Lrx/i/b;
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {p0, v0}, Lrx/internal/operators/ci$e;->add(Lrx/m;)V

    .line 232
    .end local v2    # "shouldAdd":Z
    :cond_1
    return-object v0

    .line 227
    .restart local v2    # "shouldAdd":Z
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v0    # "c":Lrx/i/b;
    .restart local v1    # "c":Lrx/i/b;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "c":Lrx/i/b;
    .restart local v0    # "c":Lrx/i/b;
    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/ci$e;->e:Ljava/util/Queue;

    .line 484
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 485
    iget v0, p0, Lrx/internal/operators/ci$e;->c:I

    .line 486
    .local v0, "mc":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    .line 487
    new-instance v1, Lrx/internal/util/atomic/g;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    sget v2, Lrx/internal/util/j;->b:I

    invoke-direct {v1, v2}, Lrx/internal/util/atomic/g;-><init>(I)V

    .line 499
    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    iput-object v1, p0, Lrx/internal/operators/ci$e;->e:Ljava/util/Queue;

    .line 501
    .end local v0    # "mc":I
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 502
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->unsubscribe()V

    .line 503
    new-instance v2, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v2}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-static {v2, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/ci$e;->onError(Ljava/lang/Throwable;)V

    .line 505
    :cond_1
    return-void

    .line 489
    .restart local v0    # "mc":I
    :cond_2
    invoke-static {v0}, Lrx/internal/util/a/p;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 490
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 491
    new-instance v1, Lrx/internal/util/a/z;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/a/z;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0

    .line 493
    :cond_3
    new-instance v1, Lrx/internal/util/atomic/d;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/atomic/d;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0

    .line 496
    :cond_4
    new-instance v1, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;

    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {v1, v0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;-><init>(I)V

    .restart local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method b(Lrx/internal/operators/ci$c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ci$c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "inner":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    iget-object v5, p1, Lrx/internal/operators/ci$c;->d:Lrx/internal/util/j;

    .line 297
    .local v5, "q":Lrx/internal/util/j;
    if-eqz v5, :cond_0

    .line 298
    invoke-virtual {v5}, Lrx/internal/util/j;->c()V

    .line 302
    :cond_0
    iget-object v6, p0, Lrx/internal/operators/ci$e;->f:Lrx/i/b;

    invoke-virtual {v6, p1}, Lrx/i/b;->b(Lrx/m;)V

    .line 303
    iget-object v7, p0, Lrx/internal/operators/ci$e;->k:Ljava/lang/Object;

    monitor-enter v7

    .line 304
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ci$e;->l:[Lrx/internal/operators/ci$c;

    .line 305
    .local v0, "a":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    array-length v4, v0

    .line 306
    .local v4, "n":I
    const/4 v3, -0x1

    .line 308
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 309
    aget-object v6, v0, v2

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 310
    move v3, v2

    .line 314
    :cond_1
    if-gez v3, :cond_3

    .line 315
    monitor-exit v7

    .line 326
    :goto_1
    return-void

    .line 308
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_3
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 318
    sget-object v6, Lrx/internal/operators/ci$e;->p:[Lrx/internal/operators/ci$c;

    iput-object v6, p0, Lrx/internal/operators/ci$e;->l:[Lrx/internal/operators/ci$c;

    .line 319
    monitor-exit v7

    goto :goto_1

    .line 325
    .end local v0    # "a":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "n":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 321
    .restart local v0    # "a":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "n":I
    :cond_4
    add-int/lit8 v6, v4, -0x1

    :try_start_1
    new-array v1, v6, [Lrx/internal/operators/ci$c;

    .line 322
    .local v1, "b":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v6, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    add-int/lit8 v6, v3, 0x1

    sub-int v8, v4, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v6, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iput-object v1, p0, Lrx/internal/operators/ci$e;->l:[Lrx/internal/operators/ci$c;

    .line 325
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected b(Lrx/internal/operators/ci$c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ci$c",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p1, Lrx/internal/operators/ci$c;->d:Lrx/internal/util/j;

    .line 373
    .local v1, "q":Lrx/internal/util/j;
    if-nez v1, :cond_0

    .line 374
    invoke-static {}, Lrx/internal/util/j;->a()Lrx/internal/util/j;

    move-result-object v1

    .line 375
    invoke-virtual {p1, v1}, Lrx/internal/operators/ci$c;->add(Lrx/m;)V

    .line 376
    iput-object v1, p1, Lrx/internal/operators/ci$c;->d:Lrx/internal/util/j;

    .line 379
    :cond_0
    :try_start_0
    invoke-static {p2}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/util/j;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "ex":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p1}, Lrx/internal/operators/ci$c;->unsubscribe()V

    .line 382
    invoke-virtual {p1, v0}, Lrx/internal/operators/ci$c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    .end local v0    # "ex":Lrx/exceptions/MissingBackpressureException;
    :catch_1
    move-exception v0

    .line 384
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Lrx/internal/operators/ci$c;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    invoke-virtual {p1}, Lrx/internal/operators/ci$c;->unsubscribe()V

    .line 386
    invoke-virtual {p1, v0}, Lrx/internal/operators/ci$c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    .line 254
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    iget v1, p0, Lrx/internal/operators/ci$e;->r:I

    add-int/lit8 v0, v1, 0x1

    .line 255
    .local v0, "produced":I
    iget v1, p0, Lrx/internal/operators/ci$e;->q:I

    if-ne v0, v1, :cond_0

    .line 256
    const/4 v1, 0x0

    iput v1, p0, Lrx/internal/operators/ci$e;->r:I

    .line 257
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/ci$e;->a(J)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iput v0, p0, Lrx/internal/operators/ci$e;->r:I

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 561
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    monitor-enter p0

    .line 562
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/ci$e;->i:Z

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ci$e;->j:Z

    .line 564
    monitor-exit p0

    .line 569
    :goto_0
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ci$e;->i:Z

    .line 567
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->e()V

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method e()V
    .locals 32

    .prologue
    .line 574
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    const/16 v23, 0x0

    .line 576
    .local v23, "skipFinal":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/ci$e;->a:Lrx/l;

    .line 579
    .local v4, "child":Lrx/l;, "Lrx/l<-TT;>;"
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ci$e;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result v30

    if-eqz v30, :cond_2

    .line 580
    const/16 v23, 0x1

    .line 798
    if-nez v23, :cond_1

    .line 799
    monitor-enter p0

    .line 800
    const/16 v30, 0x0

    :try_start_1
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0

    .line 804
    :cond_1
    :goto_1
    return-void

    .line 801
    :catchall_0
    move-exception v30

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v30

    .line 583
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ci$e;->e:Ljava/util/Queue;

    move-object/from16 v26, v0

    .line 585
    .local v26, "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lrx/internal/operators/ci$d;->get()J

    move-result-wide v20

    .line 586
    .local v20, "r":J
    const-wide v30, 0x7fffffffffffffffL

    cmp-long v30, v20, v30

    if-nez v30, :cond_4

    const/16 v28, 0x1

    .line 589
    .local v28, "unbounded":Z
    :goto_2
    const/16 v19, 0x0

    .line 592
    .local v19, "replenishMain":I
    if-eqz v26, :cond_8

    .line 594
    :cond_3
    const/16 v22, 0x0

    .line 595
    .local v22, "scalarEmission":I
    const/16 v16, 0x0

    .line 596
    :goto_3
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-lez v30, :cond_6

    .line 597
    invoke-interface/range {v26 .. v26}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v16

    .line 599
    .local v16, "o":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ci$e;->f()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v30

    if-eqz v30, :cond_5

    .line 600
    const/16 v23, 0x1

    .line 798
    if-nez v23, :cond_1

    .line 799
    monitor-enter p0

    .line 800
    const/16 v30, 0x0

    :try_start_3
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v30

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v30

    .line 586
    .end local v16    # "o":Ljava/lang/Object;
    .end local v19    # "replenishMain":I
    .end local v22    # "scalarEmission":I
    .end local v28    # "unbounded":Z
    :cond_4
    const/16 v28, 0x0

    goto :goto_2

    .line 603
    .restart local v16    # "o":Ljava/lang/Object;
    .restart local v19    # "replenishMain":I
    .restart local v22    # "scalarEmission":I
    .restart local v28    # "unbounded":Z
    :cond_5
    if-nez v16, :cond_b

    .line 624
    .end local v16    # "o":Ljava/lang/Object;
    :cond_6
    if-lez v22, :cond_7

    .line 625
    if-eqz v28, :cond_e

    .line 626
    const-wide v20, 0x7fffffffffffffffL

    .line 631
    :cond_7
    :goto_4
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-eqz v30, :cond_8

    if-nez v16, :cond_3

    .line 643
    .end local v22    # "scalarEmission":I
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lrx/internal/operators/ci$e;->h:Z

    .line 646
    .local v5, "d":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ci$e;->e:Ljava/util/Queue;

    move-object/from16 v26, v0

    .line 648
    move-object/from16 v0, p0

    iget-object v9, v0, Lrx/internal/operators/ci$e;->l:[Lrx/internal/operators/ci$c;

    .line 649
    .local v9, "inner":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    array-length v15, v9

    .line 653
    .local v15, "n":I
    if-eqz v5, :cond_10

    if-eqz v26, :cond_9

    invoke-interface/range {v26 .. v26}, Ljava/util/Queue;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_10

    :cond_9
    if-nez v15, :cond_10

    .line 654
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/ci$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 655
    .local v6, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_f

    .line 656
    :cond_a
    invoke-virtual {v4}, Lrx/l;->onCompleted()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 660
    :goto_5
    const/16 v23, 0x1

    .line 798
    if-nez v23, :cond_1

    .line 799
    monitor-enter p0

    .line 800
    const/16 v30, 0x0

    :try_start_5
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception v30

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v30

    .line 606
    .end local v5    # "d":Z
    .end local v6    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    .end local v9    # "inner":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    .end local v15    # "n":I
    .restart local v16    # "o":Ljava/lang/Object;
    .restart local v22    # "scalarEmission":I
    :cond_b
    :try_start_6
    invoke-static/range {v16 .. v16}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v29

    .line 609
    .local v29, "v":Ljava/lang/Object;, "TT;"
    :try_start_7
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 620
    :goto_6
    add-int/lit8 v19, v19, 0x1

    .line 621
    add-int/lit8 v22, v22, 0x1

    .line 622
    const-wide/16 v30, 0x1

    sub-long v20, v20, v30

    .line 623
    goto/16 :goto_3

    .line 610
    :catch_0
    move-exception v27

    .line 611
    .local v27, "t":Ljava/lang/Throwable;
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/ci$e;->b:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    .line 612
    invoke-static/range {v27 .. v27}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 613
    const/16 v23, 0x1

    .line 614
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ci$e;->unsubscribe()V

    .line 615
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 798
    if-nez v23, :cond_1

    .line 799
    monitor-enter p0

    .line 800
    const/16 v30, 0x0

    :try_start_9
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0

    goto/16 :goto_1

    :catchall_3
    move-exception v30

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v30

    .line 618
    :cond_c
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ci$e;->a()Ljava/util/Queue;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_6

    .line 798
    .end local v4    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .end local v16    # "o":Ljava/lang/Object;
    .end local v19    # "replenishMain":I
    .end local v20    # "r":J
    .end local v22    # "scalarEmission":I
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v27    # "t":Ljava/lang/Throwable;
    .end local v28    # "unbounded":Z
    .end local v29    # "v":Ljava/lang/Object;, "TT;"
    :catchall_4
    move-exception v30

    if-nez v23, :cond_d

    .line 799
    monitor-enter p0

    .line 800
    const/16 v31, 0x0

    :try_start_b
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    :cond_d
    throw v30

    .line 628
    .restart local v4    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .restart local v19    # "replenishMain":I
    .restart local v20    # "r":J
    .restart local v22    # "scalarEmission":I
    .restart local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v28    # "unbounded":Z
    :cond_e
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lrx/internal/operators/ci$d;->produced(I)J

    move-result-wide v20

    goto/16 :goto_4

    .line 658
    .end local v22    # "scalarEmission":I
    .restart local v5    # "d":Z
    .restart local v6    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    .restart local v9    # "inner":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    .restart local v15    # "n":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lrx/internal/operators/ci$e;->g()V

    goto :goto_5

    .line 664
    .end local v6    # "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :cond_10
    const/4 v10, 0x0

    .line 665
    .local v10, "innerCompleted":Z
    if-lez v15, :cond_23

    .line 667
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/ci$e;->n:J

    move-wide/from16 v24, v0

    .line 668
    .local v24, "startId":J
    move-object/from16 v0, p0

    iget v8, v0, Lrx/internal/operators/ci$e;->o:I

    .line 672
    .local v8, "index":I
    if-le v15, v8, :cond_11

    aget-object v30, v9, v8

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/ci$c;->b:J

    move-wide/from16 v30, v0

    cmp-long v30, v30, v24

    if-eqz v30, :cond_14

    .line 673
    :cond_11
    if-gt v15, v8, :cond_12

    .line 674
    const/4 v8, 0x0

    .line 677
    :cond_12
    move v14, v8

    .line 678
    .local v14, "j":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-ge v7, v15, :cond_13

    .line 679
    aget-object v30, v9, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/ci$c;->b:J

    move-wide/from16 v30, v0

    cmp-long v30, v30, v24

    if-nez v30, :cond_15

    .line 690
    :cond_13
    move v8, v14

    .line 691
    move-object/from16 v0, p0

    iput v14, v0, Lrx/internal/operators/ci$e;->o:I

    .line 692
    aget-object v30, v9, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/ci$c;->b:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/ci$e;->n:J

    .line 695
    .end local v7    # "i":I
    .end local v14    # "j":I
    :cond_14
    move v14, v8

    .line 697
    .restart local v14    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    if-ge v7, v15, :cond_22

    .line 699
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ci$e;->f()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result v30

    if-eqz v30, :cond_17

    .line 700
    const/16 v23, 0x1

    .line 798
    if-nez v23, :cond_1

    .line 799
    monitor-enter p0

    .line 800
    const/16 v30, 0x0

    :try_start_d
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0

    goto/16 :goto_1

    :catchall_5
    move-exception v30

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v30

    .line 683
    :cond_15
    add-int/lit8 v14, v14, 0x1

    .line 684
    if-ne v14, v15, :cond_16

    .line 685
    const/4 v14, 0x0

    .line 678
    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 704
    :cond_17
    :try_start_e
    aget-object v13, v9, v14

    .line 706
    .local v13, "is":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    const/16 v16, 0x0

    .line 708
    :cond_18
    const/16 v17, 0x0

    .line 709
    .local v17, "produced":I
    :goto_9
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-lez v30, :cond_1a

    .line 711
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ci$e;->f()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-result v30

    if-eqz v30, :cond_19

    .line 712
    const/16 v23, 0x1

    .line 798
    if-nez v23, :cond_1

    .line 799
    monitor-enter p0

    .line 800
    const/16 v30, 0x0

    :try_start_f
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0

    goto/16 :goto_1

    :catchall_6
    move-exception v30

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v30

    .line 715
    :cond_19
    :try_start_10
    iget-object v0, v13, Lrx/internal/operators/ci$c;->d:Lrx/internal/util/j;

    move-object/from16 v18, v0

    .line 716
    .local v18, "q":Lrx/internal/util/j;
    if-nez v18, :cond_1e

    .line 740
    .end local v18    # "q":Lrx/internal/util/j;
    :cond_1a
    if-lez v17, :cond_1b

    .line 741
    if-nez v28, :cond_1f

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ci$e;->d:Lrx/internal/operators/ci$d;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/internal/operators/ci$d;->produced(I)J

    move-result-wide v20

    .line 746
    :goto_a
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v13, v0, v1}, Lrx/internal/operators/ci$c;->a(J)V

    .line 749
    :cond_1b
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-eqz v30, :cond_1c

    if-nez v16, :cond_18

    .line 753
    :cond_1c
    iget-boolean v11, v13, Lrx/internal/operators/ci$c;->c:Z

    .line 754
    .local v11, "innerDone":Z
    iget-object v12, v13, Lrx/internal/operators/ci$c;->d:Lrx/internal/util/j;

    .line 755
    .local v12, "innerQueue":Lrx/internal/util/j;
    if-eqz v11, :cond_21

    if-eqz v12, :cond_1d

    invoke-virtual {v12}, Lrx/internal/util/j;->h()Z

    move-result v30

    if-eqz v30, :cond_21

    .line 756
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lrx/internal/operators/ci$e;->b(Lrx/internal/operators/ci$c;)V

    .line 757
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ci$e;->f()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-result v30

    if-eqz v30, :cond_20

    .line 758
    const/16 v23, 0x1

    .line 798
    if-nez v23, :cond_1

    .line 799
    monitor-enter p0

    .line 800
    const/16 v30, 0x0

    :try_start_11
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0

    goto/16 :goto_1

    :catchall_7
    move-exception v30

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v30

    .line 719
    .end local v11    # "innerDone":Z
    .end local v12    # "innerQueue":Lrx/internal/util/j;
    .restart local v18    # "q":Lrx/internal/util/j;
    :cond_1e
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Lrx/internal/util/j;->i()Ljava/lang/Object;

    move-result-object v16

    .line 720
    .restart local v16    # "o":Ljava/lang/Object;
    if-eqz v16, :cond_1a

    .line 723
    invoke-static/range {v16 .. v16}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-result-object v29

    .line 726
    .restart local v29    # "v":Ljava/lang/Object;, "TT;"
    :try_start_13
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 737
    const-wide/16 v30, 0x1

    sub-long v20, v20, v30

    .line 738
    add-int/lit8 v17, v17, 0x1

    .line 739
    goto/16 :goto_9

    .line 727
    :catch_1
    move-exception v27

    .line 728
    .restart local v27    # "t":Ljava/lang/Throwable;
    const/16 v23, 0x1

    .line 729
    :try_start_14
    invoke-static/range {v27 .. v27}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 731
    :try_start_15
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 733
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ci$e;->unsubscribe()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 798
    if-nez v23, :cond_1

    .line 799
    monitor-enter p0

    .line 800
    const/16 v30, 0x0

    :try_start_17
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0

    goto/16 :goto_1

    :catchall_8
    move-exception v30

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    throw v30

    .line 733
    :catchall_9
    move-exception v30

    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/ci$e;->unsubscribe()V

    throw v30

    .line 744
    .end local v16    # "o":Ljava/lang/Object;
    .end local v18    # "q":Lrx/internal/util/j;
    .end local v27    # "t":Ljava/lang/Throwable;
    .end local v29    # "v":Ljava/lang/Object;, "TT;"
    :cond_1f
    const-wide v20, 0x7fffffffffffffffL

    goto :goto_a

    .line 761
    .restart local v11    # "innerDone":Z
    .restart local v12    # "innerQueue":Lrx/internal/util/j;
    :cond_20
    add-int/lit8 v19, v19, 0x1

    .line 762
    const/4 v10, 0x1

    .line 765
    :cond_21
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-nez v30, :cond_25

    .line 776
    .end local v11    # "innerDone":Z
    .end local v12    # "innerQueue":Lrx/internal/util/j;
    .end local v13    # "is":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    .end local v17    # "produced":I
    :cond_22
    move-object/from16 v0, p0

    iput v14, v0, Lrx/internal/operators/ci$e;->o:I

    .line 777
    aget-object v30, v9, v14

    move-object/from16 v0, v30

    iget-wide v0, v0, Lrx/internal/operators/ci$c;->b:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/ci$e;->n:J

    .line 780
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v14    # "j":I
    .end local v24    # "startId":J
    :cond_23
    if-lez v19, :cond_24

    .line 781
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/ci$e;->request(J)V

    .line 784
    :cond_24
    if-nez v10, :cond_0

    .line 788
    monitor-enter p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 789
    :try_start_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/ci$e;->j:Z

    move/from16 v30, v0

    if-nez v30, :cond_27

    .line 790
    const/16 v23, 0x1

    .line 791
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 792
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 798
    if-nez v23, :cond_1

    .line 799
    monitor-enter p0

    .line 800
    const/16 v30, 0x0

    :try_start_1a
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->i:Z

    .line 801
    monitor-exit p0

    goto/16 :goto_1

    :catchall_a
    move-exception v30

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    throw v30

    .line 770
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v11    # "innerDone":Z
    .restart local v12    # "innerQueue":Lrx/internal/util/j;
    .restart local v13    # "is":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    .restart local v14    # "j":I
    .restart local v17    # "produced":I
    .restart local v24    # "startId":J
    :cond_25
    add-int/lit8 v14, v14, 0x1

    .line 771
    if-ne v14, v15, :cond_26

    .line 772
    const/4 v14, 0x0

    .line 697
    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 794
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v11    # "innerDone":Z
    .end local v12    # "innerQueue":Lrx/internal/util/j;
    .end local v13    # "is":Lrx/internal/operators/ci$c;, "Lrx/internal/operators/ci$c<TT;>;"
    .end local v14    # "j":I
    .end local v17    # "produced":I
    .end local v24    # "startId":J
    :cond_27
    const/16 v30, 0x0

    :try_start_1b
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/ci$e;->j:Z

    .line 795
    monitor-exit p0

    goto/16 :goto_0

    :catchall_b
    move-exception v30

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    :try_start_1c
    throw v30
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 801
    .end local v4    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .end local v5    # "d":Z
    .end local v9    # "inner":[Lrx/internal/operators/ci$c;, "[Lrx/internal/operators/ci$c<*>;"
    .end local v10    # "innerCompleted":Z
    .end local v15    # "n":I
    .end local v19    # "replenishMain":I
    .end local v20    # "r":J
    .end local v26    # "svq":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v28    # "unbounded":Z
    :catchall_c
    move-exception v30

    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    throw v30
.end method

.method f()Z
    .locals 3

    .prologue
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    const/4 v1, 0x1

    .line 812
    iget-object v2, p0, Lrx/internal/operators/ci$e;->a:Lrx/l;

    invoke-virtual {v2}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    :goto_0
    return v1

    .line 815
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/ci$e;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 816
    .local v0, "e":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    iget-boolean v2, p0, Lrx/internal/operators/ci$e;->b:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 818
    :try_start_0
    invoke-direct {p0}, Lrx/internal/operators/ci$e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->unsubscribe()V

    throw v1

    .line 824
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ci$e;->h:Z

    .line 281
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->d()V

    .line 282
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 274
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ci$e;->h:Z

    .line 276
    invoke-virtual {p0}, Lrx/internal/operators/ci$e;->d()V

    .line 277
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    check-cast p1, Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ci$e;->a(Lrx/e;)V

    return-void
.end method
