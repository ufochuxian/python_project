.class final Lrx/internal/operators/ak$b;
.super Lrx/internal/operators/ak$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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
.field private static final serialVersionUID:J = 0x21aef8f9f7f1cbc3L


# instance fields
.field final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
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
.method public constructor <init>(Lrx/l;I)V
    .locals 1
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lrx/internal/operators/ak$b;, "Lrx/internal/operators/ak$b<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/ak$a;-><init>(Lrx/l;)V

    .line 290
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/internal/util/a/ah;

    invoke-direct {v0, p2}, Lrx/internal/util/a/ah;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/internal/operators/ak$b;->c:Ljava/util/Queue;

    .line 293
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ak$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 294
    return-void

    .line 290
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/g;

    invoke-direct {v0, p2}, Lrx/internal/util/atomic/g;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 322
    .local p0, "this":Lrx/internal/operators/ak$b;, "Lrx/internal/operators/ak$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ak$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lrx/internal/operators/ak$b;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 325
    :cond_0
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 317
    .local p0, "this":Lrx/internal/operators/ak$b;, "Lrx/internal/operators/ak$b<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/ak$b;->c()V

    .line 318
    return-void
.end method

.method c()V
    .locals 14

    .prologue
    .line 328
    .local p0, "this":Lrx/internal/operators/ak$b;, "Lrx/internal/operators/ak$b<TT;>;"
    iget-object v9, p0, Lrx/internal/operators/ak$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_0

    .line 401
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v6, 0x1

    .line 333
    .local v6, "missed":I
    iget-object v0, p0, Lrx/internal/operators/ak$b;->a:Lrx/l;

    .line 334
    .local v0, "a":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/ak$b;->c:Ljava/util/Queue;

    .line 337
    .local v8, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/ak$b;->get()J

    move-result-wide v10

    .line 338
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 340
    .local v2, "e":J
    :goto_1
    cmp-long v9, v2, v10

    if-eqz v9, :cond_6

    .line 341
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 342
    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 346
    :cond_2
    iget-boolean v1, p0, Lrx/internal/operators/ak$b;->e:Z

    .line 348
    .local v1, "d":Z
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    .line 350
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 352
    .local v4, "empty":Z
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 353
    iget-object v5, p0, Lrx/internal/operators/ak$b;->d:Ljava/lang/Throwable;

    .line 354
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_4

    .line 355
    invoke-super {p0, v5}, Lrx/internal/operators/ak$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 350
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 357
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    invoke-super {p0}, Lrx/internal/operators/ak$a;->onCompleted()V

    goto :goto_0

    .line 362
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-eqz v4, :cond_7

    .line 371
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_6
    cmp-long v9, v2, v10

    if-nez v9, :cond_a

    .line 372
    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 373
    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 366
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_7
    invoke-static {v7}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 368
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 369
    goto :goto_1

    .line 377
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_8
    iget-boolean v1, p0, Lrx/internal/operators/ak$b;->e:Z

    .line 379
    .restart local v1    # "d":Z
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    .line 381
    .restart local v4    # "empty":Z
    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 382
    iget-object v5, p0, Lrx/internal/operators/ak$b;->d:Ljava/lang/Throwable;

    .line 383
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_9

    .line 384
    invoke-super {p0, v5}, Lrx/internal/operators/ak$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 386
    :cond_9
    invoke-super {p0}, Lrx/internal/operators/ak$a;->onCompleted()V

    goto :goto_0

    .line 392
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_a
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_b

    .line 393
    invoke-static {p0, v2, v3}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 396
    :cond_b
    iget-object v9, p0, Lrx/internal/operators/ak$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v12, v6

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 397
    if-nez v6, :cond_1

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/ak$b;, "Lrx/internal/operators/ak$b<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ak$b;->e:Z

    .line 312
    invoke-virtual {p0}, Lrx/internal/operators/ak$b;->c()V

    .line 313
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 304
    .local p0, "this":Lrx/internal/operators/ak$b;, "Lrx/internal/operators/ak$b<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/ak$b;->d:Ljava/lang/Throwable;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ak$b;->e:Z

    .line 306
    invoke-virtual {p0}, Lrx/internal/operators/ak$b;->c()V

    .line 307
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
    .line 298
    .local p0, "this":Lrx/internal/operators/ak$b;, "Lrx/internal/operators/ak$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/ak$b;->c:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {p0}, Lrx/internal/operators/ak$b;->c()V

    .line 300
    return-void
.end method
