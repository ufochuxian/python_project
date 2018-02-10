.class final Lrx/internal/operators/dy$b;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dy$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;",
        "Lrx/c/b;"
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

.field final b:I

.field final c:I

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Lrx/m;

.field final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lrx/h/f",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/h/f",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field j:Ljava/lang/Throwable;

.field volatile k:Z

.field l:I

.field m:I


# direct methods
.method public constructor <init>(Lrx/l;II)V
    .locals 4
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lrx/internal/operators/dy$b;, "Lrx/internal/operators/dy$b<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 314
    iput-object p1, p0, Lrx/internal/operators/dy$b;->a:Lrx/l;

    .line 315
    iput p2, p0, Lrx/internal/operators/dy$b;->b:I

    .line 316
    iput p3, p0, Lrx/internal/operators/dy$b;->c:I

    .line 317
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/dy$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 318
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/dy$b;->f:Ljava/util/ArrayDeque;

    .line 319
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/dy$b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/dy$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 321
    invoke-static {p0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/dy$b;->e:Lrx/m;

    .line 322
    iget-object v1, p0, Lrx/internal/operators/dy$b;->e:Lrx/m;

    invoke-virtual {p0, v1}, Lrx/internal/operators/dy$b;->add(Lrx/m;)V

    .line 323
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/dy$b;->request(J)V

    .line 324
    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, p2

    div-int v0, v1, p3

    .line 325
    .local v0, "maxWindows":I
    new-instance v1, Lrx/internal/util/atomic/e;

    invoke-direct {v1, v0}, Lrx/internal/util/atomic/e;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/dy$b;->i:Ljava/util/Queue;

    .line 326
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/dy$b;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/dy$b;
    .param p1, "x1"    # J

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/dy$b;->request(J)V

    return-void
.end method

.method static synthetic b(Lrx/internal/operators/dy$b;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/dy$b;
    .param p1, "x1"    # J

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/dy$b;->request(J)V

    return-void
.end method


# virtual methods
.method a()Lrx/g;
    .locals 1

    .prologue
    .line 393
    .local p0, "this":Lrx/internal/operators/dy$b;, "Lrx/internal/operators/dy$b<TT;>;"
    new-instance v0, Lrx/internal/operators/dy$b$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/dy$b$a;-><init>(Lrx/internal/operators/dy$b;)V

    return-object v0
.end method

.method a(ZZLrx/l;Ljava/util/Queue;)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/l",
            "<-",
            "Lrx/h/f",
            "<TT;TT;>;>;",
            "Ljava/util/Queue",
            "<",
            "Lrx/h/f",
            "<TT;TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/dy$b;, "Lrx/internal/operators/dy$b<TT;>;"
    .local p3, "a":Lrx/l;, "Lrx/l<-Lrx/h/f<TT;TT;>;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/h/f<TT;TT;>;>;"
    const/4 v1, 0x1

    .line 455
    invoke-virtual {p3}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 471
    :goto_0
    return v1

    .line 459
    :cond_0
    if-eqz p1, :cond_2

    .line 460
    iget-object v0, p0, Lrx/internal/operators/dy$b;->j:Ljava/lang/Throwable;

    .line 461
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 462
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 463
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 466
    :cond_1
    if-eqz p2, :cond_2

    .line 467
    invoke-virtual {p3}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 471
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 14

    .prologue
    .line 404
    .local p0, "this":Lrx/internal/operators/dy$b;, "Lrx/internal/operators/dy$b<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/dy$b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 405
    .local v2, "dw":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    if-eqz v11, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/dy$b;->a:Lrx/l;

    .line 410
    .local v0, "a":Lrx/l;, "Lrx/l<-Lrx/h/f<TT;TT;>;>;"
    iget-object v7, p0, Lrx/internal/operators/dy$b;->i:Ljava/util/Queue;

    .line 412
    .local v7, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/h/f<TT;TT;>;>;"
    const/4 v6, 0x1

    .line 416
    .local v6, "missed":I
    :cond_2
    iget-object v11, p0, Lrx/internal/operators/dy$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 417
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 419
    .local v4, "e":J
    :goto_1
    cmp-long v11, v4, v8

    if-eqz v11, :cond_3

    .line 420
    iget-boolean v1, p0, Lrx/internal/operators/dy$b;->k:Z

    .line 421
    .local v1, "d":Z
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/h/f;

    .line 422
    .local v10, "v":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    if-nez v10, :cond_6

    const/4 v3, 0x1

    .line 424
    .local v3, "empty":Z
    :goto_2
    invoke-virtual {p0, v1, v3, v0, v7}, Lrx/internal/operators/dy$b;->a(ZZLrx/l;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 428
    if-eqz v3, :cond_7

    .line 437
    .end local v1    # "d":Z
    .end local v3    # "empty":Z
    .end local v10    # "v":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    :cond_3
    cmp-long v11, v4, v8

    if-nez v11, :cond_4

    .line 438
    iget-boolean v11, p0, Lrx/internal/operators/dy$b;->k:Z

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v0, v7}, Lrx/internal/operators/dy$b;->a(ZZLrx/l;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 443
    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_5

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_5

    .line 444
    iget-object v11, p0, Lrx/internal/operators/dy$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 447
    :cond_5
    neg-int v11, v6

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 448
    if-nez v6, :cond_2

    goto :goto_0

    .line 422
    .restart local v1    # "d":Z
    .restart local v10    # "v":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 432
    .restart local v3    # "empty":Z
    :cond_7
    invoke-virtual {v0, v10}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 434
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 435
    goto :goto_1
.end method

.method public call()V
    .locals 1

    .prologue
    .line 398
    .local p0, "this":Lrx/internal/operators/dy$b;, "Lrx/internal/operators/dy$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dy$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lrx/internal/operators/dy$b;->unsubscribe()V

    .line 401
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 383
    .local p0, "this":Lrx/internal/operators/dy$b;, "Lrx/internal/operators/dy$b<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/dy$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/f;

    .line 384
    .local v1, "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    invoke-virtual {v1}, Lrx/h/f;->onCompleted()V

    goto :goto_0

    .line 386
    .end local v1    # "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/dy$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 388
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/dy$b;->k:Z

    .line 389
    invoke-virtual {p0}, Lrx/internal/operators/dy$b;->b()V

    .line 390
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 371
    .local p0, "this":Lrx/internal/operators/dy$b;, "Lrx/internal/operators/dy$b<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/dy$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/h/f;

    .line 372
    .local v1, "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    invoke-virtual {v1, p1}, Lrx/h/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    .end local v1    # "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/dy$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 376
    iput-object p1, p0, Lrx/internal/operators/dy$b;->j:Ljava/lang/Throwable;

    .line 377
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/dy$b;->k:Z

    .line 378
    invoke-virtual {p0}, Lrx/internal/operators/dy$b;->b()V

    .line 379
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lrx/internal/operators/dy$b;, "Lrx/internal/operators/dy$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/dy$b;->l:I

    .line 332
    .local v0, "i":I
    iget-object v3, p0, Lrx/internal/operators/dy$b;->f:Ljava/util/ArrayDeque;

    .line 334
    .local v3, "q":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lrx/h/f<TT;TT;>;>;"
    if-nez v0, :cond_0

    iget-object v5, p0, Lrx/internal/operators/dy$b;->a:Lrx/l;

    invoke-virtual {v5}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 335
    iget-object v5, p0, Lrx/internal/operators/dy$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 337
    const/16 v5, 0x10

    invoke-static {v5, p0}, Lrx/h/i;->a(ILrx/c/b;)Lrx/h/i;

    move-result-object v4

    .line 338
    .local v4, "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 340
    iget-object v5, p0, Lrx/internal/operators/dy$b;->i:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lrx/internal/operators/dy$b;->b()V

    .line 344
    .end local v4    # "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    :cond_0
    iget-object v5, p0, Lrx/internal/operators/dy$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/h/f;

    .line 345
    .restart local v4    # "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    invoke-virtual {v4, p1}, Lrx/h/f;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 348
    .end local v4    # "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    :cond_1
    iget v5, p0, Lrx/internal/operators/dy$b;->m:I

    add-int/lit8 v2, v5, 0x1

    .line 350
    .local v2, "p":I
    iget v5, p0, Lrx/internal/operators/dy$b;->b:I

    if-ne v2, v5, :cond_3

    .line 351
    iget v5, p0, Lrx/internal/operators/dy$b;->c:I

    sub-int v5, v2, v5

    iput v5, p0, Lrx/internal/operators/dy$b;->m:I

    .line 353
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/h/f;

    .line 354
    .restart local v4    # "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    if-eqz v4, :cond_2

    .line 355
    invoke-virtual {v4}, Lrx/h/f;->onCompleted()V

    .line 361
    .end local v4    # "w":Lrx/h/f;, "Lrx/h/f<TT;TT;>;"
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 362
    iget v5, p0, Lrx/internal/operators/dy$b;->c:I

    if-ne v0, v5, :cond_4

    .line 363
    const/4 v5, 0x0

    iput v5, p0, Lrx/internal/operators/dy$b;->l:I

    .line 367
    :goto_2
    return-void

    .line 358
    :cond_3
    iput v2, p0, Lrx/internal/operators/dy$b;->m:I

    goto :goto_1

    .line 365
    :cond_4
    iput v0, p0, Lrx/internal/operators/dy$b;->l:I

    goto :goto_2
.end method
