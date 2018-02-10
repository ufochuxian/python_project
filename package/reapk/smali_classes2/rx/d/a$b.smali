.class final Lrx/d/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f",
        "<",
        "Lrx/e",
        "<+TT;>;>;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Lrx/i/b;

.field c:Z

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:Lrx/g;

.field f:J

.field private final g:Lrx/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private final h:Lrx/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e/f",
            "<",
            "Lrx/e",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final l:Lrx/d/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a$c",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d/a;Ljava/lang/Object;Lrx/d/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a",
            "<TS;TT;>;TS;",
            "Lrx/d/a$c",
            "<",
            "Lrx/e",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    .local p1, "parent":Lrx/d/a;, "Lrx/d/a<TS;TT;>;"
    .local p2, "initialState":Ljava/lang/Object;, "TS;"
    .local p3, "merger":Lrx/d/a$c;, "Lrx/d/a$c<Lrx/e<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lrx/d/a$b;->b:Lrx/i/b;

    .line 383
    iput-object p1, p0, Lrx/d/a$b;->g:Lrx/d/a;

    .line 384
    new-instance v0, Lrx/e/f;

    invoke-direct {v0, p0}, Lrx/e/f;-><init>(Lrx/f;)V

    iput-object v0, p0, Lrx/d/a$b;->h:Lrx/e/f;

    .line 385
    iput-object p2, p0, Lrx/d/a$b;->k:Ljava/lang/Object;

    .line 386
    iput-object p3, p0, Lrx/d/a$b;->l:Lrx/d/a$c;

    .line 387
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/d/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 388
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 557
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    iget-boolean v0, p0, Lrx/d/a$b;->i:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 564
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a$b;->i:Z

    .line 561
    iget-object v0, p0, Lrx/d/a$b;->l:Lrx/d/a$c;

    invoke-virtual {v0, p1}, Lrx/d/a$c;->onError(Ljava/lang/Throwable;)V

    .line 562
    invoke-virtual {p0}, Lrx/d/a$b;->a()V

    goto :goto_0
.end method

.method private b(Lrx/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    .local p1, "t":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {}, Lrx/internal/operators/g;->K()Lrx/internal/operators/g;

    move-result-object v0

    .line 600
    .local v0, "buffer":Lrx/internal/operators/g;, "Lrx/internal/operators/g<TT;>;"
    iget-wide v2, p0, Lrx/d/a$b;->f:J

    .line 601
    .local v2, "expected":J
    new-instance v4, Lrx/d/a$b$1;

    invoke-direct {v4, p0, v2, v3, v0}, Lrx/d/a$b$1;-><init>(Lrx/d/a$b;JLrx/internal/operators/g;)V

    .line 621
    .local v4, "s":Lrx/l;, "Lrx/l<TT;>;"
    iget-object v5, p0, Lrx/d/a$b;->b:Lrx/i/b;

    invoke-virtual {v5, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 623
    new-instance v5, Lrx/d/a$b$2;

    invoke-direct {v5, p0, v4}, Lrx/d/a$b$2;-><init>(Lrx/d/a$b;Lrx/l;)V

    invoke-virtual {p1, v5}, Lrx/e;->c(Lrx/c/b;)Lrx/e;

    move-result-object v1

    .line 629
    .local v1, "doOnTerminate":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-virtual {v1, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    .line 631
    iget-object v5, p0, Lrx/d/a$b;->l:Lrx/d/a$c;

    invoke-virtual {v5, v0}, Lrx/d/a$c;->onNext(Ljava/lang/Object;)V

    .line 632
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 422
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    iget-object v1, p0, Lrx/d/a$b;->b:Lrx/i/b;

    invoke-virtual {v1}, Lrx/i/b;->unsubscribe()V

    .line 424
    :try_start_0
    iget-object v1, p0, Lrx/d/a$b;->g:Lrx/d/a;

    iget-object v2, p0, Lrx/d/a$b;->k:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/d/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lrx/d/a$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3
    .param p1, "requestCount"    # J

    .prologue
    .line 418
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    iget-object v0, p0, Lrx/d/a$b;->g:Lrx/d/a;

    iget-object v1, p0, Lrx/d/a$b;->k:Ljava/lang/Object;

    iget-object v2, p0, Lrx/d/a$b;->h:Lrx/e/f;

    invoke-virtual {v0, v1, p1, p2, v2}, Lrx/d/a;->a(Ljava/lang/Object;JLrx/f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a$b;->k:Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public a(Lrx/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    .local p1, "t":Lrx/e;, "Lrx/e<+TT;>;"
    iget-boolean v0, p0, Lrx/d/a$b;->j:Z

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext called multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a$b;->j:Z

    .line 590
    iget-boolean v0, p0, Lrx/d/a$b;->i:Z

    if-eqz v0, :cond_1

    .line 594
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-direct {p0, p1}, Lrx/d/a$b;->b(Lrx/e;)V

    goto :goto_0
.end method

.method a(Lrx/g;)V
    .locals 2
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 406
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    iget-object v0, p0, Lrx/d/a$b;->e:Lrx/g;

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setConcatProducer may be called at most once!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iput-object p1, p0, Lrx/d/a$b;->e:Lrx/g;

    .line 410
    return-void
.end method

.method public b(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    const-wide/16 v6, 0x0

    .line 488
    cmp-long v4, p1, v6

    if-nez v4, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    cmp-long v4, p1, v6

    if-gez v4, :cond_2

    .line 492
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request can\'t be negative! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 494
    :cond_2
    monitor-enter p0

    .line 495
    :try_start_0
    iget-boolean v4, p0, Lrx/d/a$b;->c:Z

    if-eqz v4, :cond_4

    .line 496
    iget-object v1, p0, Lrx/d/a$b;->d:Ljava/util/List;

    .line 497
    .local v1, "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_3

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object v1, p0, Lrx/d/a$b;->d:Ljava/util/List;

    .line 501
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    monitor-exit p0

    goto :goto_0

    .line 506
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 505
    :cond_4
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lrx/d/a$b;->c:Z

    .line 506
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    invoke-virtual {p0, p1, p2}, Lrx/d/a$b;->c(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 513
    :cond_5
    monitor-enter p0

    .line 514
    :try_start_2
    iget-object v1, p0, Lrx/d/a$b;->d:Ljava/util/List;

    .line 515
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_6

    .line 516
    const/4 v4, 0x0

    iput-boolean v4, p0, Lrx/d/a$b;->c:Z

    .line 517
    monitor-exit p0

    goto :goto_0

    .line 520
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 519
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_6
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lrx/d/a$b;->d:Ljava/util/List;

    .line 520
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 522
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 523
    .local v2, "r":J
    invoke-virtual {p0, v2, v3}, Lrx/d/a$b;->c(J)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0
.end method

.method c(J)Z
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 531
    invoke-virtual {p0}, Lrx/d/a$b;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    invoke-virtual {p0}, Lrx/d/a$b;->a()V

    .line 553
    :goto_0
    return v1

    .line 537
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lrx/d/a$b;->j:Z

    .line 538
    iput-wide p1, p0, Lrx/d/a$b;->f:J

    .line 539
    invoke-virtual {p0, p1, p2}, Lrx/d/a$b;->a(J)V

    .line 541
    iget-boolean v3, p0, Lrx/d/a$b;->i:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lrx/d/a$b;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    :cond_1
    invoke-virtual {p0}, Lrx/d/a$b;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lrx/d/a$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 545
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lrx/d/a$b;->j:Z

    if-nez v3, :cond_3

    .line 546
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No events emitted!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lrx/d/a$b;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 553
    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 414
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    iget-object v0, p0, Lrx/d/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 568
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    iget-boolean v0, p0, Lrx/d/a$b;->i:Z

    if-eqz v0, :cond_0

    .line 569
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a$b;->i:Z

    .line 572
    iget-object v0, p0, Lrx/d/a$b;->l:Lrx/d/a$c;

    invoke-virtual {v0}, Lrx/d/a$c;->onCompleted()V

    .line 573
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 577
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    iget-boolean v0, p0, Lrx/d/a$b;->i:Z

    if-eqz v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a$b;->i:Z

    .line 581
    iget-object v0, p0, Lrx/d/a$b;->l:Lrx/d/a$c;

    invoke-virtual {v0, p1}, Lrx/d/a$c;->onError(Ljava/lang/Throwable;)V

    .line 582
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 361
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    check-cast p1, Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/d/a$b;->a(Lrx/e;)V

    return-void
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    const-wide/16 v6, 0x0

    .line 432
    cmp-long v3, p1, v6

    if-nez v3, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    cmp-long v3, p1, v6

    if-gez v3, :cond_2

    .line 436
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request can\'t be negative! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 438
    :cond_2
    const/4 v2, 0x0

    .line 439
    .local v2, "quit":Z
    monitor-enter p0

    .line 440
    :try_start_0
    iget-boolean v3, p0, Lrx/d/a$b;->c:Z

    if-eqz v3, :cond_5

    .line 441
    iget-object v1, p0, Lrx/d/a$b;->d:Ljava/util/List;

    .line 442
    .local v1, "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_3

    .line 443
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object v1, p0, Lrx/d/a$b;->d:Ljava/util/List;

    .line 446
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    const/4 v2, 0x1

    .line 452
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 454
    iget-object v3, p0, Lrx/d/a$b;->e:Lrx/g;

    invoke-interface {v3, p1, p2}, Lrx/g;->request(J)V

    .line 456
    if-nez v2, :cond_0

    .line 460
    invoke-virtual {p0, p1, p2}, Lrx/d/a$b;->c(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 465
    :cond_4
    monitor-enter p0

    .line 466
    :try_start_1
    iget-object v1, p0, Lrx/d/a$b;->d:Ljava/util/List;

    .line 467
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_6

    .line 468
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/d/a$b;->c:Z

    .line 469
    monitor-exit p0

    goto :goto_0

    .line 472
    .end local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 450
    :cond_5
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lrx/d/a$b;->c:Z

    goto :goto_1

    .line 452
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 471
    .restart local v1    # "q":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_6
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lrx/d/a$b;->d:Ljava/util/List;

    .line 472
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 474
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 475
    .local v4, "r":J
    invoke-virtual {p0, v4, v5}, Lrx/d/a$b;->c(J)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .local p0, "this":Lrx/d/a$b;, "Lrx/d/a$b<TS;TT;>;"
    const/4 v2, 0x1

    .line 392
    iget-object v0, p0, Lrx/d/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    monitor-enter p0

    .line 394
    :try_start_0
    iget-boolean v0, p0, Lrx/d/a$b;->c:Z

    if-eqz v0, :cond_1

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/d/a$b;->d:Ljava/util/List;

    .line 396
    iget-object v0, p0, Lrx/d/a$b;->d:Ljava/util/List;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    monitor-exit p0

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a$b;->c:Z

    .line 400
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-virtual {p0}, Lrx/d/a$b;->a()V

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
