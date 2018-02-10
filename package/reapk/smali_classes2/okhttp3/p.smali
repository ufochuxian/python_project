.class public final Lokhttp3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/z$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/z$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Lokhttp3/p;->a:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/p;->b:I

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/p;->e:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/p;->g:Ljava/util/Deque;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Lokhttp3/p;->a:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/p;->b:I

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/p;->e:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/p;->g:Ljava/util/Deque;

    .line 56
    iput-object p1, p0, Lokhttp3/p;->d:Ljava/util/concurrent/ExecutorService;

    .line 57
    return-void
.end method

.method private a(Ljava/util/Deque;Ljava/lang/Object;Z)V
    .locals 4
    .param p3, "promoteCalls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "calls":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    .local p2, "call":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 198
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Call wasn\'t in-flight!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 202
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 199
    :cond_0
    if-eqz p3, :cond_1

    :try_start_1
    invoke-direct {p0}, Lokhttp3/p;->i()V

    .line 200
    :cond_1
    invoke-virtual {p0}, Lokhttp3/p;->h()I

    move-result v1

    .line 201
    .local v1, "runningCallsCount":I
    iget-object v0, p0, Lokhttp3/p;->c:Ljava/lang/Runnable;

    .line 202
    .local v0, "idleCallback":Ljava/lang/Runnable;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 205
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 207
    :cond_2
    return-void
.end method

.method private c(Lokhttp3/z$a;)I
    .locals 5
    .param p1, "call"    # Lokhttp3/z$a;

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "result":I
    iget-object v2, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/z$a;

    .line 174
    .local v0, "c":Lokhttp3/z$a;
    invoke-virtual {v0}, Lokhttp3/z$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/z$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "c":Lokhttp3/z$a;
    :cond_1
    return v1
.end method

.method private i()V
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lokhttp3/p;->a:I

    if-lt v2, v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lokhttp3/p;->e:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    iget-object v2, p0, Lokhttp3/p;->e:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/z$a;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/z$a;

    .line 160
    .local v0, "call":Lokhttp3/z$a;
    invoke-direct {p0, v0}, Lokhttp3/p;->c(Lokhttp3/z$a;)I

    move-result v2

    iget v3, p0, Lokhttp3/p;->b:I

    if-ge v2, v3, :cond_3

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 162
    iget-object v2, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0}, Lokhttp3/p;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 166
    :cond_3
    iget-object v2, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lokhttp3/p;->a:I

    if-lt v2, v3, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/p;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 64
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Dispatcher"

    const/4 v8, 0x0

    .line 65
    invoke-static {v0, v8}, Lokhttp3/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/p;->d:Ljava/util/concurrent/ExecutorService;

    .line 67
    :cond_0
    iget-object v0, p0, Lokhttp3/p;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 3
    .param p1, "maxRequests"    # I

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 79
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_0
    :try_start_1
    iput p1, p0, Lokhttp3/p;->a:I

    .line 82
    invoke-direct {p0}, Lokhttp3/p;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "idleCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lokhttp3/p;->c:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lokhttp3/z$a;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/z$a;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/p;->a:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lokhttp3/p;->c(Lokhttp3/z$a;)I

    move-result v0

    iget v1, p0, Lokhttp3/p;->b:I

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lokhttp3/p;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/p;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lokhttp3/z;)V
    .locals 1
    .param p1, "call"    # Lokhttp3/z;

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/p;->g:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/p;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)V
    .locals 3
    .param p1, "maxRequestsPerHost"    # I

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_0
    :try_start_1
    iput p1, p0, Lokhttp3/p;->b:I

    .line 103
    invoke-direct {p0}, Lokhttp3/p;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit p0

    return-void
.end method

.method b(Lokhttp3/z$a;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/z$a;

    .prologue
    .line 186
    iget-object v0, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lokhttp3/p;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 187
    return-void
.end method

.method b(Lokhttp3/z;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/z;

    .prologue
    .line 191
    iget-object v0, p0, Lokhttp3/p;->g:Ljava/util/Deque;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lokhttp3/p;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 192
    return-void
.end method

.method public declared-synchronized c()I
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/p;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lokhttp3/p;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/z$a;

    .line 141
    .local v0, "call":Lokhttp3/z$a;
    invoke-virtual {v0}, Lokhttp3/z$a;->c()Lokhttp3/z;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/z;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "call":Lokhttp3/z$a;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 144
    :cond_0
    :try_start_1
    iget-object v1, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/z$a;

    .line 145
    .restart local v0    # "call":Lokhttp3/z$a;
    invoke-virtual {v0}, Lokhttp3/z$a;->c()Lokhttp3/z;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/z;->c()V

    goto :goto_1

    .line 148
    .end local v0    # "call":Lokhttp3/z$a;
    :cond_1
    iget-object v1, p0, Lokhttp3/p;->g:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/z;

    .line 149
    .local v0, "call":Lokhttp3/z;
    invoke-virtual {v0}, Lokhttp3/z;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 151
    .end local v0    # "call":Lokhttp3/z;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized e()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/e;>;"
    iget-object v2, p0, Lokhttp3/p;->e:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/z$a;

    .line 213
    .local v0, "asyncCall":Lokhttp3/z$a;
    invoke-virtual {v0}, Lokhttp3/z$a;->c()Lokhttp3/z;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    .end local v0    # "asyncCall":Lokhttp3/z$a;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/e;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 215
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/e;>;"
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/e;>;"
    iget-object v2, p0, Lokhttp3/p;->g:Ljava/util/Deque;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object v2, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/z$a;

    .line 223
    .local v0, "asyncCall":Lokhttp3/z$a;
    invoke-virtual {v0}, Lokhttp3/z$a;->c()Lokhttp3/z;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "asyncCall":Lokhttp3/z$a;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/e;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 225
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/e;>;"
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized g()I
    .locals 1

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/p;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()I
    .locals 2

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/p;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lokhttp3/p;->g:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
