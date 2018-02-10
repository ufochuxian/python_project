.class final Lrx/internal/schedulers/c$a;
.super Lrx/h$a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lrx/i/b;

.field final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/internal/schedulers/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 54
    invoke-direct {p0}, Lrx/h$a;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/schedulers/c$a;->a:Ljava/util/concurrent/Executor;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/c$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    .line 59
    invoke-static {}, Lrx/internal/schedulers/d;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/schedulers/c$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 3
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 64
    invoke-virtual {p0}, Lrx/internal/schedulers/c$a;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-static {p1}, Lrx/f/c;->a(Lrx/c/b;)Lrx/c/b;

    move-result-object p1

    .line 70
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    iget-object v2, p0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    invoke-direct {v0, p1, v2}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/c/b;Lrx/i/b;)V

    .line 71
    .local v0, "ea":Lrx/internal/schedulers/ScheduledAction;
    iget-object v2, p0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    invoke-virtual {v2, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 72
    iget-object v2, p0, Lrx/internal/schedulers/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lrx/internal/schedulers/c$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_0

    .line 79
    :try_start_0
    iget-object v2, p0, Lrx/internal/schedulers/c$a;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 82
    .local v1, "t":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    invoke-virtual {v2, v0}, Lrx/i/b;->b(Lrx/m;)V

    .line 83
    iget-object v2, p0, Lrx/internal/schedulers/c$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 85
    invoke-static {v1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 87
    throw v1
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 10
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 118
    const-wide/16 v8, 0x0

    cmp-long v7, p2, v8

    if-gtz v7, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/c$a;->a(Lrx/c/b;)Lrx/m;

    move-result-object v5

    .line 174
    :goto_0
    return-object v5

    .line 121
    :cond_0
    invoke-virtual {p0}, Lrx/internal/schedulers/c$a;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 122
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v5

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {p1}, Lrx/f/c;->a(Lrx/c/b;)Lrx/c/b;

    move-result-object v0

    .line 127
    .local v0, "decorated":Lrx/c/b;
    new-instance v3, Lrx/i/c;

    invoke-direct {v3}, Lrx/i/c;-><init>()V

    .line 128
    .local v3, "first":Lrx/i/c;
    new-instance v4, Lrx/i/c;

    invoke-direct {v4}, Lrx/i/c;-><init>()V

    .line 129
    .local v4, "mas":Lrx/i/c;
    invoke-virtual {v4, v3}, Lrx/i/c;->a(Lrx/m;)V

    .line 130
    iget-object v7, p0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    invoke-virtual {v7, v4}, Lrx/i/b;->a(Lrx/m;)V

    .line 131
    new-instance v7, Lrx/internal/schedulers/c$a$1;

    invoke-direct {v7, p0, v4}, Lrx/internal/schedulers/c$a$1;-><init>(Lrx/internal/schedulers/c$a;Lrx/i/c;)V

    invoke-static {v7}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v5

    .line 138
    .local v5, "removeMas":Lrx/m;
    new-instance v1, Lrx/internal/schedulers/ScheduledAction;

    new-instance v7, Lrx/internal/schedulers/c$a$2;

    invoke-direct {v7, p0, v4, v0, v5}, Lrx/internal/schedulers/c$a$2;-><init>(Lrx/internal/schedulers/c$a;Lrx/i/c;Lrx/c/b;Lrx/m;)V

    invoke-direct {v1, v7}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/c/b;)V

    .line 157
    .local v1, "ea":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {v3, v1}, Lrx/i/c;->a(Lrx/m;)V

    .line 162
    :try_start_0
    iget-object v7, p0, Lrx/internal/schedulers/c$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v7, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 163
    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v1, v2}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v6

    .line 166
    .local v6, "t":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {v6}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 167
    throw v6
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 97
    :cond_0
    iget-object v1, p0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    invoke-virtual {v1}, Lrx/i/b;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lrx/internal/schedulers/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v1, p0, Lrx/internal/schedulers/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    .line 102
    .local v0, "sa":Lrx/internal/schedulers/ScheduledAction;
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    iget-object v1, p0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    invoke-virtual {v1}, Lrx/i/b;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 107
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->run()V

    .line 113
    :cond_3
    iget-object v1, p0, Lrx/internal/schedulers/c$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 109
    :cond_4
    iget-object v1, p0, Lrx/internal/schedulers/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lrx/internal/schedulers/c$a;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 185
    iget-object v0, p0, Lrx/internal/schedulers/c$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 186
    return-void
.end method
