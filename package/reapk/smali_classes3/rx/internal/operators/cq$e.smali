.class final Lrx/internal/operators/cq$e;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cq;
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
        "<TT;>;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field static final c:[Lrx/internal/operators/cq$b;

.field static final d:[Lrx/internal/operators/cq$b;


# instance fields
.field final a:Lrx/internal/operators/cq$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/cq$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field volatile e:Z

.field final f:Lrx/internal/util/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/h",
            "<",
            "Lrx/internal/operators/cq$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field g:[Lrx/internal/operators/cq$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/cq$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile h:J

.field i:J

.field final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field k:Z

.field l:Z

.field m:J

.field n:J

.field volatile o:Lrx/g;

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/cq$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    new-array v0, v1, [Lrx/internal/operators/cq$b;

    sput-object v0, Lrx/internal/operators/cq$e;->c:[Lrx/internal/operators/cq$b;

    .line 313
    new-array v0, v1, [Lrx/internal/operators/cq$b;

    sput-object v0, Lrx/internal/operators/cq$e;->d:[Lrx/internal/operators/cq$b;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/cq$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cq$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    .local p1, "buffer":Lrx/internal/operators/cq$d;, "Lrx/internal/operators/cq$d<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 351
    iput-object p1, p0, Lrx/internal/operators/cq$e;->a:Lrx/internal/operators/cq$d;

    .line 352
    new-instance v0, Lrx/internal/util/h;

    invoke-direct {v0}, Lrx/internal/util/h;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    .line 353
    sget-object v0, Lrx/internal/operators/cq$e;->c:[Lrx/internal/operators/cq$b;

    iput-object v0, p0, Lrx/internal/operators/cq$e;->g:[Lrx/internal/operators/cq$b;

    .line 354
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cq$e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 357
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/cq$e;->request(J)V

    .line 358
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 361
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    new-instance v0, Lrx/internal/operators/cq$e$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/cq$e$1;-><init>(Lrx/internal/operators/cq$e;)V

    invoke-static {v0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/cq$e;->add(Lrx/m;)V

    .line 380
    return-void
.end method

.method a(JJ)V
    .locals 11
    .param p1, "maxTotalRequests"    # J
    .param p3, "previousTotalRequests"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    const-wide/16 v8, 0x0

    .line 571
    iget-wide v6, p0, Lrx/internal/operators/cq$e;->n:J

    .line 572
    .local v6, "ur":J
    iget-object v2, p0, Lrx/internal/operators/cq$e;->o:Lrx/g;

    .line 574
    .local v2, "p":Lrx/g;
    sub-long v0, p1, p3

    .line 575
    .local v0, "diff":J
    cmp-long v3, v0, v8

    if-eqz v3, :cond_4

    .line 576
    iput-wide p1, p0, Lrx/internal/operators/cq$e;->m:J

    .line 577
    if-eqz v2, :cond_2

    .line 578
    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 579
    iput-wide v8, p0, Lrx/internal/operators/cq$e;->n:J

    .line 580
    add-long v8, v6, v0

    invoke-interface {v2, v8, v9}, Lrx/g;->request(J)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-interface {v2, v0, v1}, Lrx/g;->request(J)V

    goto :goto_0

    .line 586
    :cond_2
    add-long v4, v6, v0

    .line 587
    .local v4, "u":J
    cmp-long v3, v4, v8

    if-gez v3, :cond_3

    .line 588
    const-wide v4, 0x7fffffffffffffffL

    .line 590
    :cond_3
    iput-wide v4, p0, Lrx/internal/operators/cq$e;->n:J

    goto :goto_0

    .line 594
    .end local v4    # "u":J
    :cond_4
    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 595
    iput-wide v8, p0, Lrx/internal/operators/cq$e;->n:J

    .line 597
    invoke-interface {v2, v6, v7}, Lrx/g;->request(J)V

    goto :goto_0
.end method

.method a(Lrx/internal/operators/cq$b;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cq$b",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    .local p1, "producer":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    const/4 v0, 0x0

    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 391
    :cond_0
    iget-boolean v1, p0, Lrx/internal/operators/cq$e;->e:Z

    if-eqz v1, :cond_1

    .line 402
    :goto_0
    return v0

    .line 394
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/cq$e;->e:Z

    if-eqz v2, :cond_2

    .line 396
    monitor-exit v1

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 399
    :cond_2
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    invoke-virtual {v0, p1}, Lrx/internal/util/h;->a(Ljava/lang/Object;)Z

    .line 400
    iget-wide v2, p0, Lrx/internal/operators/cq$e;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/cq$e;->h:J

    .line 401
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Lrx/internal/operators/cq$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cq$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    .local p1, "producer":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/cq$e;->e:Z

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/cq$e;->e:Z

    if-eqz v0, :cond_1

    .line 416
    monitor-exit v1

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 418
    :cond_1
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    invoke-virtual {v0, p1}, Lrx/internal/util/h;->b(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    invoke-virtual {v0}, Lrx/internal/util/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    sget-object v0, Lrx/internal/operators/cq$e;->c:[Lrx/internal/operators/cq$b;

    iput-object v0, p0, Lrx/internal/operators/cq$e;->g:[Lrx/internal/operators/cq$b;

    .line 422
    :cond_2
    iget-wide v2, p0, Lrx/internal/operators/cq$e;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/cq$e;->h:J

    .line 423
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method b()[Lrx/internal/operators/cq$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/internal/operators/cq$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    monitor-enter v4

    .line 561
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    invoke-virtual {v3}, Lrx/internal/util/h;->d()[Ljava/lang/Object;

    move-result-object v0

    .line 562
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 564
    .local v1, "n":I
    new-array v2, v1, [Lrx/internal/operators/cq$b;

    .line 565
    .local v2, "result":[Lrx/internal/operators/cq$b;, "[Lrx/internal/operators/cq$b<TT;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    monitor-exit v4

    return-object v2

    .line 567
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "n":I
    .end local v2    # "result":[Lrx/internal/operators/cq$b;, "[Lrx/internal/operators/cq$b<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method c()V
    .locals 12

    .prologue
    .line 606
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/cq$e;->g:[Lrx/internal/operators/cq$b;

    .line 607
    .local v6, "pc":[Lrx/internal/operators/cq$b;, "[Lrx/internal/operators/cq$b<TT;>;"
    iget-wide v8, p0, Lrx/internal/operators/cq$e;->i:J

    iget-wide v10, p0, Lrx/internal/operators/cq$e;->h:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 608
    iget-object v9, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    monitor-enter v9

    .line 609
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/cq$e;->g:[Lrx/internal/operators/cq$b;

    .line 612
    iget-object v8, p0, Lrx/internal/operators/cq$e;->f:Lrx/internal/util/h;

    invoke-virtual {v8}, Lrx/internal/util/h;->d()[Ljava/lang/Object;

    move-result-object v0

    .line 613
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    .line 614
    .local v5, "n":I
    array-length v8, v6

    if-eq v8, v5, :cond_0

    .line 615
    new-array v6, v5, [Lrx/internal/operators/cq$b;

    .line 616
    iput-object v6, p0, Lrx/internal/operators/cq$e;->g:[Lrx/internal/operators/cq$b;

    .line 618
    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v8, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    iget-wide v10, p0, Lrx/internal/operators/cq$e;->h:J

    iput-wide v10, p0, Lrx/internal/operators/cq$e;->i:J

    .line 620
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v5    # "n":I
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/cq$e;->a:Lrx/internal/operators/cq$d;

    .line 623
    .local v2, "b":Lrx/internal/operators/cq$d;, "Lrx/internal/operators/cq$d<TT;>;"
    move-object v1, v6

    .local v1, "arr$":[Lrx/internal/operators/cq$b;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v1, v3

    .line 624
    .local v7, "rp":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    if-eqz v7, :cond_2

    .line 625
    invoke-interface {v2, v7}, Lrx/internal/operators/cq$d;->replay(Lrx/internal/operators/cq$b;)V

    .line 623
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    .end local v1    # "arr$":[Lrx/internal/operators/cq$b;
    .end local v2    # "b":Lrx/internal/operators/cq$d;, "Lrx/internal/operators/cq$d<TT;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "rp":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 628
    .restart local v1    # "arr$":[Lrx/internal/operators/cq$b;
    .restart local v2    # "b":Lrx/internal/operators/cq$d;, "Lrx/internal/operators/cq$d<TT;>;"
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    return-void
.end method

.method c(Lrx/internal/operators/cq$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cq$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    .local p1, "inner":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->isUnsubscribed()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    monitor-enter p0

    .line 482
    :try_start_0
    iget-boolean v11, p0, Lrx/internal/operators/cq$e;->k:Z

    if-eqz v11, :cond_4

    .line 483
    if-eqz p1, :cond_3

    .line 484
    iget-object v5, p0, Lrx/internal/operators/cq$e;->p:Ljava/util/List;

    .line 485
    .local v5, "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/cq$b<TT;>;>;"
    if-nez v5, :cond_2

    .line 486
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/cq$b<TT;>;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .restart local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/cq$b<TT;>;>;"
    iput-object v5, p0, Lrx/internal/operators/cq$e;->p:Ljava/util/List;

    .line 489
    :cond_2
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/cq$b<TT;>;>;"
    :goto_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lrx/internal/operators/cq$e;->l:Z

    .line 494
    monitor-exit p0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 491
    :cond_3
    const/4 v11, 0x1

    :try_start_1
    iput-boolean v11, p0, Lrx/internal/operators/cq$e;->q:Z

    goto :goto_1

    .line 496
    :cond_4
    const/4 v11, 0x1

    iput-boolean v11, p0, Lrx/internal/operators/cq$e;->k:Z

    .line 497
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    iget-wide v8, p0, Lrx/internal/operators/cq$e;->m:J

    .line 502
    .local v8, "ri":J
    if-eqz p1, :cond_6

    .line 503
    iget-object v11, p1, Lrx/internal/operators/cq$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 515
    .local v6, "maxTotalRequested":J
    :cond_5
    invoke-virtual {p0, v6, v7, v8, v9}, Lrx/internal/operators/cq$e;->a(JJ)V

    .line 519
    :goto_2
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 525
    monitor-enter p0

    .line 526
    :try_start_2
    iget-boolean v11, p0, Lrx/internal/operators/cq$e;->l:Z

    if-nez v11, :cond_8

    .line 527
    const/4 v11, 0x0

    iput-boolean v11, p0, Lrx/internal/operators/cq$e;->k:Z

    .line 528
    monitor-exit p0

    goto :goto_0

    .line 535
    :catchall_1
    move-exception v11

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 505
    .end local v6    # "maxTotalRequested":J
    :cond_6
    move-wide v6, v8

    .line 507
    .restart local v6    # "maxTotalRequested":J
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->b()[Lrx/internal/operators/cq$b;

    move-result-object v0

    .line 508
    .local v0, "a":[Lrx/internal/operators/cq$b;, "[Lrx/internal/operators/cq$b<TT;>;"
    move-object v2, v0

    .local v2, "arr$":[Lrx/internal/operators/cq$b;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v10, v2, v3

    .line 509
    .local v10, "rp":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    if-eqz v10, :cond_7

    .line 510
    iget-object v11, v10, Lrx/internal/operators/cq$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 508
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 530
    .end local v0    # "a":[Lrx/internal/operators/cq$b;, "[Lrx/internal/operators/cq$b<TT;>;"
    .end local v2    # "arr$":[Lrx/internal/operators/cq$b;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v10    # "rp":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    :cond_8
    const/4 v11, 0x0

    :try_start_3
    iput-boolean v11, p0, Lrx/internal/operators/cq$e;->l:Z

    .line 531
    iget-object v5, p0, Lrx/internal/operators/cq$e;->p:Ljava/util/List;

    .line 532
    .restart local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/cq$b<TT;>;>;"
    const/4 v11, 0x0

    iput-object v11, p0, Lrx/internal/operators/cq$e;->p:Ljava/util/List;

    .line 533
    iget-boolean v1, p0, Lrx/internal/operators/cq$e;->q:Z

    .line 534
    .local v1, "all":Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Lrx/internal/operators/cq$e;->q:Z

    .line 535
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 537
    iget-wide v8, p0, Lrx/internal/operators/cq$e;->m:J

    .line 538
    move-wide v6, v8

    .line 540
    if-eqz v5, :cond_9

    .line 541
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/internal/operators/cq$b;

    .line 542
    .restart local v10    # "rp":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    iget-object v11, v10, Lrx/internal/operators/cq$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 543
    goto :goto_4

    .line 546
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v10    # "rp":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    :cond_9
    if-eqz v1, :cond_b

    .line 547
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->b()[Lrx/internal/operators/cq$b;

    move-result-object v0

    .line 548
    .restart local v0    # "a":[Lrx/internal/operators/cq$b;, "[Lrx/internal/operators/cq$b<TT;>;"
    move-object v2, v0

    .restart local v2    # "arr$":[Lrx/internal/operators/cq$b;
    array-length v4, v2

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v4, :cond_b

    aget-object v10, v2, v3

    .line 549
    .restart local v10    # "rp":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    if-eqz v10, :cond_a

    .line 550
    iget-object v11, v10, Lrx/internal/operators/cq$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 548
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 555
    .end local v0    # "a":[Lrx/internal/operators/cq$b;, "[Lrx/internal/operators/cq$b<TT;>;"
    .end local v2    # "arr$":[Lrx/internal/operators/cq$b;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v10    # "rp":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    :cond_b
    invoke-virtual {p0, v6, v7, v8, v9}, Lrx/internal/operators/cq$e;->a(JJ)V

    goto :goto_2
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 462
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/cq$e;->b:Z

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cq$e;->b:Z

    .line 465
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/cq$e;->a:Lrx/internal/operators/cq$d;

    invoke-interface {v0}, Lrx/internal/operators/cq$d;->complete()V

    .line 466
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->unsubscribe()V

    .line 471
    :cond_0
    return-void

    .line 468
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 448
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/cq$e;->b:Z

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cq$e;->b:Z

    .line 451
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/cq$e;->a:Lrx/internal/operators/cq$d;

    invoke-interface {v0, p1}, Lrx/internal/operators/cq$d;->error(Ljava/lang/Throwable;)V

    .line 452
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->unsubscribe()V

    .line 457
    :cond_0
    return-void

    .line 454
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/cq$e;->b:Z

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lrx/internal/operators/cq$e;->a:Lrx/internal/operators/cq$d;

    invoke-interface {v0, p1}, Lrx/internal/operators/cq$d;->next(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->c()V

    .line 443
    :cond_0
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 3
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 428
    .local p0, "this":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cq$e;->o:Lrx/g;

    .line 429
    .local v0, "p0":Lrx/g;
    if-eqz v0, :cond_0

    .line 430
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only a single producer can be set on a Subscriber."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/cq$e;->o:Lrx/g;

    .line 433
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lrx/internal/operators/cq$e;->c(Lrx/internal/operators/cq$b;)V

    .line 434
    invoke-virtual {p0}, Lrx/internal/operators/cq$e;->c()V

    .line 435
    return-void
.end method
