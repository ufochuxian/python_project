.class final Lrx/internal/operators/ak$e;
.super Lrx/internal/operators/ak$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ak;
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
        "Lrx/internal/operators/ak$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Throwable;

.field volatile e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lrx/internal/operators/ak$e;, "Lrx/internal/operators/ak$e<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/ak$a;-><init>(Lrx/l;)V

    .line 418
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ak$e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 419
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ak$e;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 420
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 448
    .local p0, "this":Lrx/internal/operators/ak$e;, "Lrx/internal/operators/ak$e<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ak$e;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lrx/internal/operators/ak$e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 451
    :cond_0
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 443
    .local p0, "this":Lrx/internal/operators/ak$e;, "Lrx/internal/operators/ak$e<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/ak$e;->c()V

    .line 444
    return-void
.end method

.method c()V
    .locals 14

    .prologue
    .line 454
    .local p0, "this":Lrx/internal/operators/ak$e;, "Lrx/internal/operators/ak$e<TT;>;"
    iget-object v9, p0, Lrx/internal/operators/ak$e;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_0

    .line 527
    :goto_0
    return-void

    .line 458
    :cond_0
    const/4 v6, 0x1

    .line 459
    .local v6, "missed":I
    iget-object v0, p0, Lrx/internal/operators/ak$e;->a:Lrx/l;

    .line 460
    .local v0, "a":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/ak$e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 463
    .local v8, "q":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/ak$e;->get()J

    move-result-wide v10

    .line 464
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 466
    .local v2, "e":J
    :goto_1
    cmp-long v9, v2, v10

    if-eqz v9, :cond_6

    .line 467
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 468
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 472
    :cond_2
    iget-boolean v1, p0, Lrx/internal/operators/ak$e;->e:Z

    .line 474
    .local v1, "d":Z
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 476
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 478
    .local v4, "empty":Z
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 479
    iget-object v5, p0, Lrx/internal/operators/ak$e;->d:Ljava/lang/Throwable;

    .line 480
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_4

    .line 481
    invoke-super {p0, v5}, Lrx/internal/operators/ak$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 476
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 483
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    invoke-super {p0}, Lrx/internal/operators/ak$a;->onCompleted()V

    goto :goto_0

    .line 488
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-eqz v4, :cond_7

    .line 497
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_6
    cmp-long v9, v2, v10

    if-nez v9, :cond_b

    .line 498
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 499
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 492
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_7
    invoke-static {v7}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 494
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 495
    goto :goto_1

    .line 503
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_8
    iget-boolean v1, p0, Lrx/internal/operators/ak$e;->e:Z

    .line 505
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_9

    const/4 v4, 0x1

    .line 507
    .restart local v4    # "empty":Z
    :goto_3
    if-eqz v1, :cond_b

    if-eqz v4, :cond_b

    .line 508
    iget-object v5, p0, Lrx/internal/operators/ak$e;->d:Ljava/lang/Throwable;

    .line 509
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_a

    .line 510
    invoke-super {p0, v5}, Lrx/internal/operators/ak$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 505
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 512
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_a
    invoke-super {p0}, Lrx/internal/operators/ak$a;->onCompleted()V

    goto :goto_0

    .line 518
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_b
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_c

    .line 519
    invoke-static {p0, v2, v3}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 522
    :cond_c
    iget-object v9, p0, Lrx/internal/operators/ak$e;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v12, v6

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 523
    if-nez v6, :cond_1

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 437
    .local p0, "this":Lrx/internal/operators/ak$e;, "Lrx/internal/operators/ak$e<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ak$e;->e:Z

    .line 438
    invoke-virtual {p0}, Lrx/internal/operators/ak$e;->c()V

    .line 439
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 430
    .local p0, "this":Lrx/internal/operators/ak$e;, "Lrx/internal/operators/ak$e<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/ak$e;->d:Ljava/lang/Throwable;

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ak$e;->e:Z

    .line 432
    invoke-virtual {p0}, Lrx/internal/operators/ak$e;->c()V

    .line 433
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
    .line 424
    .local p0, "this":Lrx/internal/operators/ak$e;, "Lrx/internal/operators/ak$e<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/ak$e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 425
    invoke-virtual {p0}, Lrx/internal/operators/ak$e;->c()V

    .line 426
    return-void
.end method
