.class public final Lrx/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;

.field static final b:Ljava/lang/Object;

.field static final c:Ljava/lang/Object;


# instance fields
.field private final d:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/d/b;->a:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/d/b;->b:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/d/b;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lrx/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "o":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/d/b;->d:Lrx/e;

    .line 66
    return-void
.end method

.method public static a(Lrx/e;)Lrx/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/d/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "o":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Lrx/d/b;

    invoke-direct {v0, p0}, Lrx/d/b;-><init>(Lrx/e;)V

    return-object v0
.end method

.method private b(Lrx/e;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "observable":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 440
    .local v2, "returnItem":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 441
    .local v1, "returnException":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 444
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lrx/d/b$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lrx/d/b$3;-><init>(Lrx/d/b;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 461
    .local v3, "subscription":Lrx/m;
    invoke-static {v0, v3}, Lrx/internal/util/d;->a(Ljava/util/concurrent/CountDownLatch;Lrx/m;)V

    .line 463
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 464
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 467
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->d(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lrx/c/p;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v0, p2}, Lrx/e;->l(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->d(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/c/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->m(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-static {v0}, Lrx/internal/operators/f;->a(Lrx/e;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/c/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 105
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 112
    .local v0, "exceptionFromOnError":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    iget-object v3, p0, Lrx/d/b;->d:Lrx/e;

    new-instance v4, Lrx/d/b$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lrx/d/b$1;-><init>(Lrx/d/b;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lrx/c/c;)V

    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    .line 137
    .local v2, "subscription":Lrx/m;
    invoke-static {v1, v2}, Lrx/internal/util/d;->a(Ljava/util/concurrent/CountDownLatch;Lrx/m;)V

    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 142
    :cond_0
    return-void
.end method

.method public a(Lrx/c/c;Lrx/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lrx/d/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    .line 655
    return-void
.end method

.method public a(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V
    .locals 1
    .param p3, "onCompleted"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/c/b;",
            ")V"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/d/b$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/d/b$9;-><init>(Lrx/d/b;Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/d/b;->a(Lrx/f;)V

    .line 682
    return-void
.end method

.method public a(Lrx/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "observer":Lrx/f;, "Lrx/f<-TT;>;"
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 513
    .local v2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    iget-object v4, p0, Lrx/d/b;->d:Lrx/e;

    new-instance v5, Lrx/d/b$5;

    invoke-direct {v5, p0, v2}, Lrx/d/b$5;-><init>(Lrx/d/b;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 530
    .local v3, "s":Lrx/m;
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 531
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 532
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .line 534
    :cond_1
    invoke-static {p1, v1}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 542
    invoke-interface {v3}, Lrx/m;->unsubscribe()V

    .line 544
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 540
    invoke-interface {p1, v0}, Lrx/f;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    invoke-interface {v3}, Lrx/m;->unsubscribe()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Lrx/m;->unsubscribe()V

    throw v4
.end method

.method public a(Lrx/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v6, 0x0

    .line 556
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 557
    .local v2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    const/4 v5, 0x1

    new-array v4, v5, [Lrx/g;

    const/4 v5, 0x0

    aput-object v5, v4, v6

    .line 559
    .local v4, "theProducer":[Lrx/g;
    new-instance v3, Lrx/d/b$6;

    invoke-direct {v3, p0, v2, v4}, Lrx/d/b$6;-><init>(Lrx/d/b;Ljava/util/concurrent/BlockingQueue;[Lrx/g;)V

    .line 585
    .local v3, "s":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {p1, v3}, Lrx/l;->add(Lrx/m;)V

    .line 586
    new-instance v5, Lrx/d/b$7;

    invoke-direct {v5, p0, v2}, Lrx/d/b$7;-><init>(Lrx/d/b;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v5}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v5

    invoke-virtual {p1, v5}, Lrx/l;->add(Lrx/m;)V

    .line 593
    iget-object v5, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v5, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    .line 597
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 621
    :cond_1
    invoke-virtual {v3}, Lrx/l;->unsubscribe()V

    .line 623
    :goto_1
    return-void

    .line 600
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 601
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 602
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .line 604
    :cond_3
    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lrx/d/b;->c:Ljava/lang/Object;

    if-eq v1, v5, :cond_1

    .line 607
    sget-object v5, Lrx/d/b;->a:Ljava/lang/Object;

    if-ne v1, v5, :cond_4

    .line 608
    invoke-virtual {p1}, Lrx/l;->onStart()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 617
    .end local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 619
    invoke-virtual {p1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 621
    invoke-virtual {v3}, Lrx/l;->unsubscribe()V

    goto :goto_1

    .line 610
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_4
    :try_start_3
    sget-object v5, Lrx/d/b;->b:Ljava/lang/Object;

    if-ne v1, v5, :cond_5

    .line 611
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {p1, v5}, Lrx/l;->setProducer(Lrx/g;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 621
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lrx/l;->unsubscribe()V

    throw v5

    .line 613
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_5
    :try_start_4
    invoke-static {p1, v1}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 621
    invoke-virtual {v3}, Lrx/l;->unsubscribe()V

    goto :goto_1
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->m()Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->e(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;Lrx/c/p;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v0, p2}, Lrx/e;->l(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->e(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lrx/c/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->q(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lrx/c/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    new-instance v0, Lrx/d/b$8;

    invoke-direct {v0, p0}, Lrx/d/b$8;-><init>(Lrx/d/b;)V

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lrx/d/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    .line 644
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-static {v0, p1}, Lrx/internal/operators/c;->a(Lrx/e;Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->p()Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;Lrx/c/p;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v0, p2}, Lrx/e;->l(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->f(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Lrx/c/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->y(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-static {v0}, Lrx/internal/operators/d;->a(Lrx/e;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->f(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-static {v0}, Lrx/internal/operators/b;->a(Lrx/e;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->B()Lrx/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/d/b;->b(Lrx/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    iget-object v0, p0, Lrx/d/b;->d:Lrx/e;

    invoke-static {v0}, Lrx/internal/operators/e;->a(Lrx/e;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    new-instance v0, Lrx/d/b$2;

    invoke-direct {v0, p0}, Lrx/d/b$2;-><init>(Lrx/d/b;)V

    return-object v0
.end method

.method public i()V
    .locals 7
    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .local p0, "this":Lrx/d/b;, "Lrx/d/b<TT;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 476
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 477
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v4, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v4, v2, v6

    .line 479
    .local v2, "error":[Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/d/b;->d:Lrx/e;

    new-instance v5, Lrx/d/b$4;

    invoke-direct {v5, p0, v2, v0}, Lrx/d/b$4;-><init>(Lrx/d/b;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 496
    .local v3, "s":Lrx/m;
    invoke-static {v0, v3}, Lrx/internal/util/d;->a(Ljava/util/concurrent/CountDownLatch;Lrx/m;)V

    .line 497
    aget-object v1, v2, v6

    .line 498
    .local v1, "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 499
    invoke-static {v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 501
    :cond_0
    return-void
.end method
