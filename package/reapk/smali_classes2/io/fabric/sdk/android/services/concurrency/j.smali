.class public Lio/fabric/sdk/android/services/concurrency/j;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/j$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lio/fabric/sdk/android/services/concurrency/j;->a:I

    .line 39
    sget v0, Lio/fabric/sdk/android/services/concurrency/j;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/j;->b:I

    .line 40
    sget v0, Lio/fabric/sdk/android/services/concurrency/j;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/j;->c:I

    return-void
.end method

.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/b;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/k;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/g;",
            ">(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue",
            "<TT;>;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p6, "workQueue":Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;, "Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue<TT;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 52
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/j;->prestartAllCoreThreads()I

    .line 53
    return-void
.end method

.method public static a()Lio/fabric/sdk/android/services/concurrency/j;
    .locals 2

    .prologue
    .line 83
    sget v0, Lio/fabric/sdk/android/services/concurrency/j;->b:I

    sget v1, Lio/fabric/sdk/android/services/concurrency/j;->c:I

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/concurrency/j;->a(II)Lio/fabric/sdk/android/services/concurrency/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lio/fabric/sdk/android/services/concurrency/j;
    .locals 1
    .param p0, "threadCount"    # I

    .prologue
    .line 74
    invoke-static {p0, p0}, Lio/fabric/sdk/android/services/concurrency/j;->a(II)Lio/fabric/sdk/android/services/concurrency/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Lio/fabric/sdk/android/services/concurrency/j;
    .locals 9
    .param p0, "corePoolSize"    # I
    .param p1, "maxPoolSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Runnable;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/b;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/k;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/g;",
            ">(II)",
            "Lio/fabric/sdk/android/services/concurrency/j;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/j;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    invoke-direct {v7}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;-><init>()V

    new-instance v8, Lio/fabric/sdk/android/services/concurrency/j$a;

    const/16 v0, 0xa

    invoke-direct {v8, v0}, Lio/fabric/sdk/android/services/concurrency/j$a;-><init>(I)V

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v8}, Lio/fabric/sdk/android/services/concurrency/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    move-object v0, p1

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/k;

    .line 110
    .local v0, "task":Lio/fabric/sdk/android/services/concurrency/k;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/concurrency/k;->setFinished(Z)V

    .line 111
    invoke-interface {v0, p2}, Lio/fabric/sdk/android/services/concurrency/k;->setError(Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/j;->b()Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;->recycleBlockedQueue()V

    .line 115
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public b()Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 99
    invoke-static {p1}, Lio/fabric/sdk/android/services/concurrency/i;->isProperDelegate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/services/concurrency/j;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/j;->b()Lio/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/f;

    invoke-direct {v0, p1, p2}, Lio/fabric/sdk/android/services/concurrency/f;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/f;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/services/concurrency/f;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
