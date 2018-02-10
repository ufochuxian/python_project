.class final Lrx/internal/operators/ea$c;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lrx/h$a;

.field final c:Ljava/lang/Object;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/ea$a",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field e:Z

.field final synthetic f:Lrx/internal/operators/ea;


# direct methods
.method public constructor <init>(Lrx/internal/operators/ea;Lrx/l;Lrx/h$a;)V
    .locals 1
    .param p3, "worker"    # Lrx/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;",
            "Lrx/h$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    .local p2, "child":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/ea$c;->f:Lrx/internal/operators/ea;

    .line 370
    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    .line 371
    iput-object p2, p0, Lrx/internal/operators/ea$c;->a:Lrx/l;

    .line 372
    iput-object p3, p0, Lrx/internal/operators/ea$c;->b:Lrx/h$a;

    .line 373
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ea$c;->c:Ljava/lang/Object;

    .line 374
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ea$c;->d:Ljava/util/List;

    .line 375
    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    .line 440
    .local p0, "this":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    iget-object v0, p0, Lrx/internal/operators/ea$c;->b:Lrx/h$a;

    new-instance v1, Lrx/internal/operators/ea$c$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/ea$c$1;-><init>(Lrx/internal/operators/ea$c;)V

    iget-object v2, p0, Lrx/internal/operators/ea$c;->f:Lrx/internal/operators/ea;

    iget-wide v2, v2, Lrx/internal/operators/ea;->b:J

    iget-object v4, p0, Lrx/internal/operators/ea$c;->f:Lrx/internal/operators/ea;

    iget-wide v4, v4, Lrx/internal/operators/ea;->b:J

    iget-object v6, p0, Lrx/internal/operators/ea$c;->f:Lrx/internal/operators/ea;

    iget-object v6, v6, Lrx/internal/operators/ea;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h$a;->a(Lrx/c/b;JJLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 448
    return-void
.end method

.method a(Lrx/internal/operators/ea$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ea$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    .local p1, "chunk":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    const/4 v2, 0x0

    .line 475
    .local v2, "terminate":Z
    iget-object v4, p0, Lrx/internal/operators/ea$c;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 476
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/ea$c;->e:Z

    if-eqz v3, :cond_1

    .line 477
    monitor-exit v4

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/ea$c;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 480
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/ea$a<TT;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 481
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/ea$a;

    .line 482
    .local v0, "cs":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    if-ne v0, p1, :cond_2

    .line 483
    const/4 v2, 0x1

    .line 484
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 488
    .end local v0    # "cs":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    if-eqz v2, :cond_0

    .line 490
    iget-object v3, p1, Lrx/internal/operators/ea$a;->a:Lrx/f;

    invoke-interface {v3}, Lrx/f;->onCompleted()V

    goto :goto_0

    .line 488
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/ea$a<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method b()V
    .locals 7

    .prologue
    .line 450
    .local p0, "this":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    invoke-virtual {p0}, Lrx/internal/operators/ea$c;->c()Lrx/internal/operators/ea$a;

    move-result-object v0

    .line 451
    .local v0, "chunk":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/ea$c;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 452
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/ea$c;->e:Z

    if-eqz v2, :cond_0

    .line 453
    monitor-exit v3

    .line 472
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/ea$c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/ea$c;->a:Lrx/l;

    iget-object v3, v0, Lrx/internal/operators/ea$a;->b:Lrx/e;

    invoke-virtual {v2, v3}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    iget-object v2, p0, Lrx/internal/operators/ea$c;->b:Lrx/h$a;

    new-instance v3, Lrx/internal/operators/ea$c$2;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/ea$c$2;-><init>(Lrx/internal/operators/ea$c;Lrx/internal/operators/ea$a;)V

    iget-object v4, p0, Lrx/internal/operators/ea$c;->f:Lrx/internal/operators/ea;

    iget-wide v4, v4, Lrx/internal/operators/ea;->a:J

    iget-object v6, p0, Lrx/internal/operators/ea$c;->f:Lrx/internal/operators/ea;

    iget-object v6, v6, Lrx/internal/operators/ea;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/ea$c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method c()Lrx/internal/operators/ea$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/ea$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    invoke-static {}, Lrx/h/i;->K()Lrx/h/i;

    move-result-object v0

    .line 495
    .local v0, "bus":Lrx/h/i;, "Lrx/h/i<TT;>;"
    new-instance v1, Lrx/internal/operators/ea$a;

    invoke-direct {v1, v0, v0}, Lrx/internal/operators/ea$a;-><init>(Lrx/f;Lrx/e;)V

    return-object v1
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 426
    .local p0, "this":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    iget-object v4, p0, Lrx/internal/operators/ea$c;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 427
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/ea$c;->e:Z

    if-eqz v3, :cond_0

    .line 428
    monitor-exit v4

    .line 438
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/ea$c;->e:Z

    .line 431
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/ea$c;->d:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/ea$a<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/ea$c;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 433
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/ea$a;

    .line 435
    .local v0, "cs":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/ea$a;->a:Lrx/f;

    invoke-interface {v3}, Lrx/f;->onCompleted()V

    goto :goto_1

    .line 433
    .end local v0    # "cs":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/ea$a<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 437
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/ea$a<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/ea$c;->a:Lrx/l;

    invoke-virtual {v3}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 409
    .local p0, "this":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    iget-object v4, p0, Lrx/internal/operators/ea$c;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 410
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/ea$c;->e:Z

    if-eqz v3, :cond_0

    .line 411
    monitor-exit v4

    .line 421
    :goto_0
    return-void

    .line 413
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/ea$c;->e:Z

    .line 414
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/ea$c;->d:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 415
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/ea$a<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/ea$c;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 416
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/ea$a;

    .line 418
    .local v0, "cs":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/ea$a;->a:Lrx/f;

    invoke-interface {v3, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 416
    .end local v0    # "cs":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/ea$a<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 420
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/ea$a<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/ea$c;->a:Lrx/l;

    invoke-virtual {v3, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lrx/internal/operators/ea$c;->c:Ljava/lang/Object;

    monitor-enter v5

    .line 386
    :try_start_0
    iget-boolean v4, p0, Lrx/internal/operators/ea$c;->e:Z

    if-eqz v4, :cond_1

    .line 387
    monitor-exit v5

    .line 404
    :cond_0
    return-void

    .line 389
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lrx/internal/operators/ea$c;->d:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 390
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/ea$a<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/ea$c;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 391
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/ea$a<TT;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 392
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/ea$a;

    .line 393
    .local v0, "cs":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    iget v4, v0, Lrx/internal/operators/ea$a;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lrx/internal/operators/ea$a;->c:I

    iget-object v6, p0, Lrx/internal/operators/ea$c;->f:Lrx/internal/operators/ea;

    iget v6, v6, Lrx/internal/operators/ea;->e:I

    if-ne v4, v6, :cond_2

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 397
    .end local v0    # "cs":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/ea$a<TT;>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/ea$a<TT;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/ea$a<TT;>;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/ea$a<TT;>;>;"
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/ea$a;

    .line 399
    .restart local v0    # "cs":Lrx/internal/operators/ea$a;, "Lrx/internal/operators/ea$a<TT;>;"
    iget-object v4, v0, Lrx/internal/operators/ea$a;->a:Lrx/f;

    invoke-interface {v4, p1}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 400
    iget v4, v0, Lrx/internal/operators/ea$a;->c:I

    iget-object v5, p0, Lrx/internal/operators/ea$c;->f:Lrx/internal/operators/ea;

    iget v5, v5, Lrx/internal/operators/ea;->e:I

    if-ne v4, v5, :cond_4

    .line 401
    iget-object v4, v0, Lrx/internal/operators/ea$a;->a:Lrx/f;

    invoke-interface {v4}, Lrx/f;->onCompleted()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 379
    .local p0, "this":Lrx/internal/operators/ea$c;, "Lrx/internal/operators/ea<TT;>.c;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ea$c;->request(J)V

    .line 380
    return-void
.end method
