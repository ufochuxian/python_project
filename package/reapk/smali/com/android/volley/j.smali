.class public Lcom/android/volley/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/j$a;,
        Lcom/android/volley/j$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x4


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/android/volley/b;

.field private final g:Lcom/android/volley/g;

.field private final h:Lcom/android/volley/l;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:[Lcom/android/volley/h;

.field private k:Lcom/android/volley/c;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/j$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/b;Lcom/android/volley/g;)V
    .locals 1
    .param p1, "cache"    # Lcom/android/volley/b;
    .param p2, "network"    # Lcom/android/volley/g;

    .prologue
    .line 130
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/j;-><init>(Lcom/android/volley/b;Lcom/android/volley/g;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/b;Lcom/android/volley/g;I)V
    .locals 3
    .param p1, "cache"    # Lcom/android/volley/b;
    .param p2, "network"    # Lcom/android/volley/g;
    .param p3, "threadPoolSize"    # I

    .prologue
    .line 120
    new-instance v0, Lcom/android/volley/e;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/e;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/volley/j;-><init>(Lcom/android/volley/b;Lcom/android/volley/g;ILcom/android/volley/l;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/b;Lcom/android/volley/g;ILcom/android/volley/l;)V
    .locals 1
    .param p1, "cache"    # Lcom/android/volley/b;
    .param p2, "network"    # Lcom/android/volley/g;
    .param p3, "threadPoolSize"    # I
    .param p4, "delivery"    # Lcom/android/volley/l;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/j;->b:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/j;->c:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/j;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 70
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/j;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/j;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/j;->l:Ljava/util/List;

    .line 106
    iput-object p1, p0, Lcom/android/volley/j;->f:Lcom/android/volley/b;

    .line 107
    iput-object p2, p0, Lcom/android/volley/j;->g:Lcom/android/volley/g;

    .line 108
    new-array v0, p3, [Lcom/android/volley/h;

    iput-object v0, p0, Lcom/android/volley/j;->j:[Lcom/android/volley/h;

    .line 109
    iput-object p4, p0, Lcom/android/volley/j;->h:Lcom/android/volley/l;

    .line 110
    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;)",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->setRequestQueue(Lcom/android/volley/j;)Lcom/android/volley/Request;

    .line 218
    iget-object v3, p0, Lcom/android/volley/j;->c:Ljava/util/Set;

    monitor-enter v3

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/android/volley/j;->c:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {p0}, Lcom/android/volley/j;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->setSequence(I)Lcom/android/volley/Request;

    .line 224
    const-string v2, "add-to-queue"

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/volley/j;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 252
    :goto_0
    return-object p1

    .line 220
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/android/volley/j;->b:Ljava/util/Map;

    monitor-enter v3

    .line 234
    :try_start_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/volley/j;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/android/volley/j;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 238
    .local v1, "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    if-nez v1, :cond_1

    .line 239
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 241
    .restart local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v2, p0, Lcom/android/volley/j;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-boolean v2, Lcom/android/volley/n;->b:Z

    if-eqz v2, :cond_2

    .line 244
    const-string v2, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/android/volley/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    .end local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    :cond_2
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 253
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 249
    .restart local v0    # "cacheKey":Ljava/lang/String;
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/volley/j;->b:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lcom/android/volley/j;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public a()V
    .locals 7

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/volley/j;->b()V

    .line 139
    new-instance v2, Lcom/android/volley/c;

    iget-object v3, p0, Lcom/android/volley/j;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/android/volley/j;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/android/volley/j;->f:Lcom/android/volley/b;

    iget-object v6, p0, Lcom/android/volley/j;->h:Lcom/android/volley/l;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/volley/c;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/b;Lcom/android/volley/l;)V

    iput-object v2, p0, Lcom/android/volley/j;->k:Lcom/android/volley/c;

    .line 140
    iget-object v2, p0, Lcom/android/volley/j;->k:Lcom/android/volley/c;

    invoke-virtual {v2}, Lcom/android/volley/c;->start()V

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/volley/j;->j:[Lcom/android/volley/h;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 144
    new-instance v1, Lcom/android/volley/h;

    iget-object v2, p0, Lcom/android/volley/j;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/j;->g:Lcom/android/volley/g;

    iget-object v4, p0, Lcom/android/volley/j;->f:Lcom/android/volley/b;

    iget-object v5, p0, Lcom/android/volley/j;->h:Lcom/android/volley/l;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/h;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/g;Lcom/android/volley/b;Lcom/android/volley/l;)V

    .line 145
    .local v1, "networkDispatcher":Lcom/android/volley/h;
    iget-object v2, p0, Lcom/android/volley/j;->j:[Lcom/android/volley/h;

    aput-object v1, v2, v0

    .line 146
    invoke-virtual {v1}, Lcom/android/volley/h;->start()V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "networkDispatcher":Lcom/android/volley/h;
    :cond_0
    return-void
.end method

.method public a(Lcom/android/volley/j$a;)V
    .locals 4
    .param p1, "filter"    # Lcom/android/volley/j$a;

    .prologue
    .line 184
    iget-object v2, p0, Lcom/android/volley/j;->c:Ljava/util/Set;

    monitor-enter v2

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/j;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 186
    .local v0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-interface {p1, v0}, Lcom/android/volley/j$a;->a(Lcom/android/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    goto :goto_0

    .line 190
    .end local v0    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    return-void
.end method

.method public a(Lcom/android/volley/j$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/j$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "listener":Lcom/android/volley/j$b;, "Lcom/android/volley/j$b<TT;>;"
    iget-object v1, p0, Lcom/android/volley/j;->l:Ljava/util/List;

    monitor-enter v1

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/j;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    new-instance v0, Lcom/android/volley/j$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/j$1;-><init>(Lcom/android/volley/j;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/volley/j;->a(Lcom/android/volley/j$a;)V

    .line 207
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/volley/j;->k:Lcom/android/volley/c;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/volley/j;->k:Lcom/android/volley/c;

    invoke-virtual {v1}, Lcom/android/volley/c;->a()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/volley/j;->j:[Lcom/android/volley/h;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/volley/j;->j:[Lcom/android/volley/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/volley/j;->j:[Lcom/android/volley/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/volley/h;->a()V

    .line 157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_2
    return-void
.end method

.method b(Lcom/android/volley/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v4, p0, Lcom/android/volley/j;->c:Ljava/util/Set;

    monitor-enter v4

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/android/volley/j;->c:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 267
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    iget-object v4, p0, Lcom/android/volley/j;->l:Ljava/util/List;

    monitor-enter v4

    .line 269
    :try_start_1
    iget-object v3, p0, Lcom/android/volley/j;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/j$b;

    .line 270
    .local v1, "listener":Lcom/android/volley/j$b;, "Lcom/android/volley/j$b<TT;>;"
    invoke-interface {v1, p1}, Lcom/android/volley/j$b;->a(Lcom/android/volley/Request;)V

    goto :goto_0

    .line 272
    .end local v1    # "listener":Lcom/android/volley/j$b;, "Lcom/android/volley/j$b<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 267
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 272
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 275
    iget-object v4, p0, Lcom/android/volley/j;->b:Ljava/util/Map;

    monitor-enter v4

    .line 276
    :try_start_4
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/volley/j;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .line 278
    .local v2, "waitingRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    if-eqz v2, :cond_2

    .line 279
    sget-boolean v3, Lcom/android/volley/n;->b:Z

    if-eqz v3, :cond_1

    .line 280
    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Lcom/android/volley/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/android/volley/j;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_2
    monitor-exit v4

    .line 288
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v2    # "waitingRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/volley/Request<*>;>;"
    :cond_3
    return-void

    .line 286
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method public b(Lcom/android/volley/j$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/j$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "listener":Lcom/android/volley/j$b;, "Lcom/android/volley/j$b<TT;>;"
    iget-object v1, p0, Lcom/android/volley/j;->l:Ljava/util/List;

    monitor-enter v1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/j;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 302
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/volley/j;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public d()Lcom/android/volley/b;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/volley/j;->f:Lcom/android/volley/b;

    return-object v0
.end method
