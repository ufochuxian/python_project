.class public Lcom/android/volley/toolbox/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/k$a;
.implements Lcom/android/volley/k$b;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/k$a;",
        "Lcom/android/volley/k$b",
        "<TT;>;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Lcom/android/volley/VolleyError;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    .line 60
    return-void
.end method

.method public static a()Lcom/android/volley/toolbox/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/volley/toolbox/r",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/android/volley/toolbox/r;

    invoke-direct {v0}, Lcom/android/volley/toolbox/r;-><init>()V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4
    .param p1, "timeoutMs"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    const-wide/16 v2, 0x0

    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v0

    .line 107
    :cond_1
    if-nez p1, :cond_3

    .line 108
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 113
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_4

    .line 114
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 109
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 110
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 117
    :cond_4
    iget-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    if-nez v0, :cond_5

    .line 118
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->c:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iput-object p1, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;

    .line 68
    return-void
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    const/4 v0, 0x0

    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 76
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/r;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/volley/toolbox/r;->a(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/r;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/r;->a:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/volley/toolbox/r;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 146
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/volley/toolbox/r;->d:Lcom/android/volley/VolleyError;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/android/volley/toolbox/r;, "Lcom/android/volley/toolbox/r<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/volley/toolbox/r;->b:Z

    .line 140
    iput-object p1, p0, Lcom/android/volley/toolbox/r;->c:Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
