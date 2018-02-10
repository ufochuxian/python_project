.class public Lio/fabric/sdk/android/services/concurrency/a/h;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "SourceFile"


# instance fields
.field private final a:Lio/fabric/sdk/android/services/concurrency/a/f;

.field private final b:Lio/fabric/sdk/android/services/concurrency/a/b;


# direct methods
.method public constructor <init>(ILio/fabric/sdk/android/services/concurrency/a/f;Lio/fabric/sdk/android/services/concurrency/a/b;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "retryPolicy"    # Lio/fabric/sdk/android/services/concurrency/a/f;
    .param p3, "backoff"    # Lio/fabric/sdk/android/services/concurrency/a/b;

    .prologue
    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/fabric/sdk/android/services/concurrency/a/h;-><init>(ILjava/util/concurrent/ThreadFactory;Lio/fabric/sdk/android/services/concurrency/a/f;Lio/fabric/sdk/android/services/concurrency/a/b;)V

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Lio/fabric/sdk/android/services/concurrency/a/f;Lio/fabric/sdk/android/services/concurrency/a/b;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "retryPolicy"    # Lio/fabric/sdk/android/services/concurrency/a/f;
    .param p4, "backoff"    # Lio/fabric/sdk/android/services/concurrency/a/b;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 66
    if-nez p3, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "retry policy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p4, :cond_1

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "backoff must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-object p3, p0, Lio/fabric/sdk/android/services/concurrency/a/h;->a:Lio/fabric/sdk/android/services/concurrency/a/f;

    .line 75
    iput-object p4, p0, Lio/fabric/sdk/android/services/concurrency/a/h;->b:Lio/fabric/sdk/android/services/concurrency/a/b;

    .line 76
    return-void
.end method

.method private b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_0

    .line 120
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 123
    :cond_0
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/a/g;

    iget-object v2, p0, Lio/fabric/sdk/android/services/concurrency/a/h;->b:Lio/fabric/sdk/android/services/concurrency/a/b;

    iget-object v3, p0, Lio/fabric/sdk/android/services/concurrency/a/h;->a:Lio/fabric/sdk/android/services/concurrency/a/f;

    invoke-direct {v1, v2, v3}, Lio/fabric/sdk/android/services/concurrency/a/g;-><init>(Lio/fabric/sdk/android/services/concurrency/a/b;Lio/fabric/sdk/android/services/concurrency/a/f;)V

    .line 124
    .local v1, "retryState":Lio/fabric/sdk/android/services/concurrency/a/g;
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a/e;

    invoke-direct {v0, p1, v1, p0}, Lio/fabric/sdk/android/services/concurrency/a/e;-><init>(Ljava/util/concurrent/Callable;Lio/fabric/sdk/android/services/concurrency/a/g;Lio/fabric/sdk/android/services/concurrency/a/h;)V

    .line 126
    .local v0, "retryFuture":Lio/fabric/sdk/android/services/concurrency/a/e;, "Lio/fabric/sdk/android/services/concurrency/a/e<TT;>;"
    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/concurrency/a/h;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-object v0
.end method


# virtual methods
.method public a()Lio/fabric/sdk/android/services/concurrency/a/f;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/h;->a:Lio/fabric/sdk/android/services/concurrency/a/f;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/a/h;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/a/h;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a/h;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public b()Lio/fabric/sdk/android/services/concurrency/a/b;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/h;->b:Lio/fabric/sdk/android/services/concurrency/a/b;

    return-object v0
.end method
