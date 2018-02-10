.class final Lrx/internal/schedulers/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ThreadFactory;

.field private final b:J

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/internal/schedulers/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lrx/i/b;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "keepAliveTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/schedulers/a$a;->a:Ljava/util/concurrent/ThreadFactory;

    .line 58
    if-eqz p4, :cond_1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lrx/internal/schedulers/a$a;->b:J

    .line 59
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lrx/internal/schedulers/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 60
    new-instance v1, Lrx/i/b;

    invoke-direct {v1}, Lrx/i/b;-><init>()V

    iput-object v1, p0, Lrx/internal/schedulers/a$a;->d:Lrx/i/b;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v7, 0x0

    .line 64
    .local v7, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p4, :cond_0

    .line 65
    const/4 v1, 0x1

    new-instance v2, Lrx/internal/schedulers/a$a$1;

    invoke-direct {v2, p0, p1}, Lrx/internal/schedulers/a$a$1;-><init>(Lrx/internal/schedulers/a$a;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lrx/internal/schedulers/h;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 73
    new-instance v1, Lrx/internal/schedulers/a$a$2;

    invoke-direct {v1, p0}, Lrx/internal/schedulers/a$a$2;-><init>(Lrx/internal/schedulers/a$a;)V

    iget-wide v2, p0, Lrx/internal/schedulers/a$a;->b:J

    iget-wide v4, p0, Lrx/internal/schedulers/a$a;->b:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 82
    :cond_0
    iput-object v0, p0, Lrx/internal/schedulers/a$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 83
    iput-object v7, p0, Lrx/internal/schedulers/a$a;->f:Ljava/util/concurrent/Future;

    .line 84
    return-void

    .line 58
    .end local v0    # "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v7    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lrx/internal/schedulers/a$c;
    .locals 3

    .prologue
    .line 87
    iget-object v2, p0, Lrx/internal/schedulers/a$a;->d:Lrx/i/b;

    invoke-virtual {v2}, Lrx/i/b;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget-object v0, Lrx/internal/schedulers/a;->a:Lrx/internal/schedulers/a$c;

    .line 100
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v2, p0, Lrx/internal/schedulers/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    iget-object v2, p0, Lrx/internal/schedulers/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/a$c;

    .line 92
    .local v0, "threadWorker":Lrx/internal/schedulers/a$c;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    .end local v0    # "threadWorker":Lrx/internal/schedulers/a$c;
    :cond_1
    new-instance v1, Lrx/internal/schedulers/a$c;

    iget-object v2, p0, Lrx/internal/schedulers/a$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v1, v2}, Lrx/internal/schedulers/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 99
    .local v1, "w":Lrx/internal/schedulers/a$c;
    iget-object v2, p0, Lrx/internal/schedulers/a$a;->d:Lrx/i/b;

    invoke-virtual {v2, v1}, Lrx/i/b;->a(Lrx/m;)V

    move-object v0, v1

    .line 100
    goto :goto_0
.end method

.method a(Lrx/internal/schedulers/a$c;)V
    .locals 4
    .param p1, "threadWorker"    # Lrx/internal/schedulers/a$c;

    .prologue
    .line 105
    invoke-virtual {p0}, Lrx/internal/schedulers/a$a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/schedulers/a$a;->b:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lrx/internal/schedulers/a$c;->a(J)V

    .line 107
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method b()V
    .locals 6

    .prologue
    .line 111
    iget-object v4, p0, Lrx/internal/schedulers/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    invoke-virtual {p0}, Lrx/internal/schedulers/a$a;->c()J

    move-result-wide v0

    .line 114
    .local v0, "currentTimestamp":J
    iget-object v4, p0, Lrx/internal/schedulers/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/schedulers/a$c;

    .line 115
    .local v3, "threadWorker":Lrx/internal/schedulers/a$c;
    invoke-virtual {v3}, Lrx/internal/schedulers/a$c;->b()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    .line 116
    iget-object v4, p0, Lrx/internal/schedulers/a$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lrx/internal/schedulers/a$a;->d:Lrx/i/b;

    invoke-virtual {v4, v3}, Lrx/i/b;->b(Lrx/m;)V

    goto :goto_0

    .line 126
    .end local v0    # "currentTimestamp":J
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "threadWorker":Lrx/internal/schedulers/a$c;
    :cond_1
    return-void
.end method

.method c()J
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 137
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->d:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/schedulers/a$a;->d:Lrx/i/b;

    invoke-virtual {v1}, Lrx/i/b;->unsubscribe()V

    throw v0
.end method
