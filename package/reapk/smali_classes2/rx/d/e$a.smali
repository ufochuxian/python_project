.class final Lrx/d/e$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/f;
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/f",
        "<TT;>;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33dc0208097b2408L


# instance fields
.field private final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/e",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/l;Lrx/d/e;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/d/e",
            "<TS;TT;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "parent":Lrx/d/e;, "Lrx/d/e<TS;TT;>;"
    .local p3, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 341
    iput-object p1, p0, Lrx/d/e$a;->a:Lrx/l;

    .line 342
    iput-object p2, p0, Lrx/d/e$a;->b:Lrx/d/e;

    .line 343
    iput-object p3, p0, Lrx/d/e$a;->e:Ljava/lang/Object;

    .line 344
    return-void
.end method

.method private a(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    const-wide/16 v10, 0x0

    .line 429
    iget-object v6, p0, Lrx/d/e$a;->b:Lrx/d/e;

    .line 430
    .local v6, "p":Lrx/d/e;, "Lrx/d/e<TS;TT;>;"
    iget-object v0, p0, Lrx/d/e$a;->a:Lrx/l;

    .line 431
    .local v0, "a":Lrx/l;, "Lrx/l<-TT;>;"
    move-wide v4, p1

    .line 433
    .local v4, "numRequested":J
    :cond_0
    move-wide v2, v4

    .line 436
    .local v2, "numRemaining":J
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lrx/d/e$a;->c:Z

    .line 437
    invoke-direct {p0, v6}, Lrx/d/e$a;->a(Lrx/d/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    invoke-direct {p0}, Lrx/d/e$a;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 456
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/d/e$a;->a(Lrx/l;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 445
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    iget-boolean v7, p0, Lrx/d/e$a;->c:Z

    if-eqz v7, :cond_3

    .line 446
    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    .line 448
    :cond_3
    cmp-long v7, v2, v10

    if-nez v7, :cond_1

    .line 449
    neg-long v8, v4

    invoke-virtual {p0, v8, v9}, Lrx/d/e$a;->addAndGet(J)J

    move-result-wide v4

    .line 450
    cmp-long v7, v4, v10

    if-gtz v7, :cond_0

    .line 455
    invoke-direct {p0}, Lrx/d/e$a;->a()Z

    goto :goto_0
.end method

.method private a(Lrx/d/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/e",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    .local p1, "parent":Lrx/d/e;, "Lrx/d/e<TS;TT;>;"
    iget-object v0, p0, Lrx/d/e$a;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lrx/d/e;->a(Ljava/lang/Object;Lrx/f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/d/e$a;->e:Ljava/lang/Object;

    .line 460
    return-void
.end method

.method private a(Lrx/l;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    .local p1, "a":Lrx/l;, "Lrx/l<-TT;>;"
    iget-boolean v0, p0, Lrx/d/e$a;->d:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-static {p2}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 426
    :goto_0
    return-void

    .line 422
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/e$a;->d:Z

    .line 423
    invoke-virtual {p1, p2}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 424
    invoke-virtual {p0}, Lrx/d/e$a;->unsubscribe()V

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    .prologue
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    const-wide/16 v2, -0x1

    .line 372
    iget-boolean v0, p0, Lrx/d/e$a;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/d/e$a;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p0, v2, v3}, Lrx/d/e$a;->set(J)V

    .line 374
    invoke-direct {p0}, Lrx/d/e$a;->b()V

    .line 375
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 382
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/d/e$a;->b:Lrx/d/e;

    iget-object v2, p0, Lrx/d/e$a;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/d/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 385
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 401
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    iget-object v2, p0, Lrx/d/e$a;->b:Lrx/d/e;

    .line 402
    .local v2, "p":Lrx/d/e;, "Lrx/d/e<TS;TT;>;"
    iget-object v0, p0, Lrx/d/e$a;->a:Lrx/l;

    .line 406
    .local v0, "a":Lrx/l;, "Lrx/l<-TT;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lrx/d/e$a;->c:Z

    .line 407
    invoke-direct {p0, v2}, Lrx/d/e$a;->a(Lrx/d/e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    invoke-direct {p0}, Lrx/d/e$a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/d/e$a;->a(Lrx/l;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 348
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    invoke-virtual {p0}, Lrx/d/e$a;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 464
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    iget-boolean v0, p0, Lrx/d/e$a;->d:Z

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/e$a;->d:Z

    .line 468
    iget-object v0, p0, Lrx/d/e$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lrx/d/e$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 471
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 475
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    iget-boolean v0, p0, Lrx/d/e$a;->d:Z

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/e$a;->d:Z

    .line 479
    iget-object v0, p0, Lrx/d/e$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lrx/d/e$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 482
    :cond_1
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
    .line 486
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/d/e$a;->c:Z

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext called multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/e$a;->c:Z

    .line 490
    iget-object v0, p0, Lrx/d/e$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    const-wide/16 v2, 0x0

    .line 391
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 392
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 393
    invoke-direct {p0}, Lrx/d/e$a;->c()V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-direct {p0, p1, p2}, Lrx/d/e$a;->a(J)V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 6

    .prologue
    .line 354
    .local p0, "this":Lrx/d/e$a;, "Lrx/d/e$a<TS;TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/d/e$a;->get()J

    move-result-wide v0

    .line 355
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/d/e$a;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    invoke-direct {p0}, Lrx/d/e$a;->b()V

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_1
    const-wide/16 v2, -0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/d/e$a;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
