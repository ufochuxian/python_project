.class final Lrx/internal/operators/cd$d;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/e$a",
        "<TT;>;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x35762a4bbab31538L


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lrx/internal/operators/cd$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/cd$b",
            "<*TK;TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile f:Z

.field g:Ljava/lang/Throwable;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/l",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(ILrx/internal/operators/cd$b;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/internal/operators/cd$b",
            "<*TK;TT;>;TK;Z)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    .local p2, "parent":Lrx/internal/operators/cd$b;, "Lrx/internal/operators/cd$b<*TK;TT;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 443
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cd$d;->b:Ljava/util/Queue;

    .line 444
    iput-object p2, p0, Lrx/internal/operators/cd$d;->c:Lrx/internal/operators/cd$b;

    .line 445
    iput-object p3, p0, Lrx/internal/operators/cd$d;->a:Ljava/lang/Object;

    .line 446
    iput-boolean p4, p0, Lrx/internal/operators/cd$d;->d:Z

    .line 447
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cd$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 448
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cd$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 449
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cd$d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 450
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cd$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 451
    return-void
.end method


# virtual methods
.method a()V
    .locals 14

    .prologue
    .line 512
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    invoke-virtual {p0}, Lrx/internal/operators/cd$d;->getAndIncrement()I

    move-result v11

    if-eqz v11, :cond_1

    .line 563
    :cond_0
    return-void

    .line 515
    :cond_1
    const/4 v6, 0x1

    .line 517
    .local v6, "missed":I
    iget-object v7, p0, Lrx/internal/operators/cd$d;->b:Ljava/util/Queue;

    .line 518
    .local v7, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-boolean v2, p0, Lrx/internal/operators/cd$d;->d:Z

    .line 519
    .local v2, "delayError":Z
    iget-object v11, p0, Lrx/internal/operators/cd$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/l;

    .line 521
    .local v0, "a":Lrx/l;, "Lrx/l<-TT;>;"
    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 522
    iget-boolean v11, p0, Lrx/internal/operators/cd$d;->f:Z

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v0, v2}, Lrx/internal/operators/cd$d;->a(ZZLrx/l;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 526
    iget-object v11, p0, Lrx/internal/operators/cd$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 527
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 529
    .local v4, "e":J
    :goto_1
    cmp-long v11, v4, v8

    if-eqz v11, :cond_3

    .line 530
    iget-boolean v1, p0, Lrx/internal/operators/cd$d;->f:Z

    .line 531
    .local v1, "d":Z
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 532
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_6

    const/4 v3, 0x1

    .line 534
    .local v3, "empty":Z
    :goto_2
    invoke-virtual {p0, v1, v3, v0, v2}, Lrx/internal/operators/cd$d;->a(ZZLrx/l;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 538
    if-eqz v3, :cond_7

    .line 547
    .end local v1    # "d":Z
    .end local v3    # "empty":Z
    .end local v10    # "v":Ljava/lang/Object;
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_5

    .line 548
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_4

    .line 549
    iget-object v11, p0, Lrx/internal/operators/cd$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v11, v4, v5}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 551
    :cond_4
    iget-object v11, p0, Lrx/internal/operators/cd$d;->c:Lrx/internal/operators/cd$b;

    iget-object v11, v11, Lrx/internal/operators/cd$b;->k:Lrx/internal/producers/a;

    invoke-virtual {v11, v4, v5}, Lrx/internal/producers/a;->request(J)V

    .line 555
    .end local v4    # "e":J
    .end local v8    # "r":J
    :cond_5
    neg-int v11, v6

    invoke-virtual {p0, v11}, Lrx/internal/operators/cd$d;->addAndGet(I)I

    move-result v6

    .line 556
    if-eqz v6, :cond_0

    .line 559
    if-nez v0, :cond_2

    .line 560
    iget-object v11, p0, Lrx/internal/operators/cd$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "a":Lrx/l;, "Lrx/l<-TT;>;"
    check-cast v0, Lrx/l;

    .restart local v0    # "a":Lrx/l;, "Lrx/l<-TT;>;"
    goto :goto_0

    .line 532
    .restart local v1    # "d":Z
    .restart local v4    # "e":J
    .restart local v8    # "r":J
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 542
    .restart local v3    # "empty":Z
    :cond_7
    invoke-static {v10}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 544
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 545
    goto :goto_1
.end method

.method a(ZZLrx/l;Z)Z
    .locals 4
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/l",
            "<-TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    .local p3, "a":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v1, 0x1

    .line 566
    iget-object v2, p0, Lrx/internal/operators/cd$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lrx/internal/operators/cd$d;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 568
    iget-object v2, p0, Lrx/internal/operators/cd$d;->c:Lrx/internal/operators/cd$b;

    iget-object v3, p0, Lrx/internal/operators/cd$d;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lrx/internal/operators/cd$b;->a(Ljava/lang/Object;)V

    .line 597
    :goto_0
    return v1

    .line 572
    :cond_0
    if-eqz p1, :cond_4

    .line 573
    if-eqz p4, :cond_2

    .line 574
    if-eqz p2, :cond_4

    .line 575
    iget-object v0, p0, Lrx/internal/operators/cd$d;->g:Ljava/lang/Throwable;

    .line 576
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p3}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 584
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/cd$d;->g:Ljava/lang/Throwable;

    .line 585
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 586
    iget-object v2, p0, Lrx/internal/operators/cd$d;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 587
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 590
    :cond_3
    if-eqz p2, :cond_4

    .line 591
    invoke-virtual {p3}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 597
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 421
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cd$d;->call(Lrx/l;)V

    return-void
.end method

.method public call(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    .local p1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cd$d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p1, p0}, Lrx/l;->add(Lrx/m;)V

    .line 482
    invoke-virtual {p1, p0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 483
    iget-object v0, p0, Lrx/internal/operators/cd$d;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 484
    invoke-virtual {p0}, Lrx/internal/operators/cd$d;->a()V

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Subscriber allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 466
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    iget-object v0, p0, Lrx/internal/operators/cd$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 507
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cd$d;->f:Z

    .line 508
    invoke-virtual {p0}, Lrx/internal/operators/cd$d;->a()V

    .line 509
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 501
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    iput-object p1, p0, Lrx/internal/operators/cd$d;->g:Ljava/lang/Throwable;

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cd$d;->f:Z

    .line 503
    invoke-virtual {p0}, Lrx/internal/operators/cd$d;->a()V

    .line 504
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cd$d;->g:Ljava/lang/Throwable;

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cd$d;->f:Z

    .line 497
    :goto_0
    invoke-virtual {p0}, Lrx/internal/operators/cd$d;->a()V

    .line 498
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/cd$d;->b:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    const-wide/16 v2, 0x0

    .line 455
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lrx/internal/operators/cd$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 460
    invoke-virtual {p0}, Lrx/internal/operators/cd$d;->a()V

    .line 462
    :cond_1
    return-void
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 471
    .local p0, "this":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    iget-object v0, p0, Lrx/internal/operators/cd$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lrx/internal/operators/cd$d;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lrx/internal/operators/cd$d;->c:Lrx/internal/operators/cd$b;

    iget-object v1, p0, Lrx/internal/operators/cd$d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/internal/operators/cd$b;->a(Ljava/lang/Object;)V

    .line 476
    :cond_0
    return-void
.end method
