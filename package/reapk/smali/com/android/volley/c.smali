.class public Lcom/android/volley/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/android/volley/b;

.field private final e:Lcom/android/volley/l;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/volley/n;->b:Z

    sput-boolean v0, Lcom/android/volley/c;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/b;Lcom/android/volley/l;)V
    .locals 1
    .param p3, "cache"    # Lcom/android/volley/b;
    .param p4, "delivery"    # Lcom/android/volley/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;",
            "Lcom/android/volley/b;",
            "Lcom/android/volley/l;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "cacheQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request<*>;>;"
    .local p2, "networkQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/c;->f:Z

    .line 72
    iput-object p1, p0, Lcom/android/volley/c;->b:Ljava/util/concurrent/BlockingQueue;

    .line 73
    iput-object p2, p0, Lcom/android/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    .line 74
    iput-object p3, p0, Lcom/android/volley/c;->d:Lcom/android/volley/b;

    .line 75
    iput-object p4, p0, Lcom/android/volley/c;->e:Lcom/android/volley/l;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/android/volley/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/volley/c;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/c;->f:Z

    .line 84
    invoke-virtual {p0}, Lcom/android/volley/c;->interrupt()V

    .line 85
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 89
    sget-boolean v5, Lcom/android/volley/c;->a:Z

    if-eqz v5, :cond_0

    .line 90
    const-string v5, "start new dispatcher"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/volley/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_0
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 94
    iget-object v5, p0, Lcom/android/volley/c;->d:Lcom/android/volley/b;

    invoke-interface {v5}, Lcom/android/volley/b;->a()V

    .line 99
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 102
    .local v3, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/volley/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    check-cast v3, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .restart local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_1
    const-string v5, "cache-queue-take"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    const-string v5, "cache-discard-canceled"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Unhandled exception %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Lcom/android/volley/n;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v5, p0, Lcom/android/volley/c;->f:Z

    if-eqz v5, :cond_1

    .line 106
    return-void

    .line 120
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/volley/c;->d:Lcom/android/volley/b;

    invoke-virtual {v3}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/volley/b;->a(Ljava/lang/String;)Lcom/android/volley/b$a;

    move-result-object v1

    .line 121
    .local v1, "entry":Lcom/android/volley/b$a;
    if-nez v1, :cond_3

    .line 122
    const-string v5, "cache-miss"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/android/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {v1}, Lcom/android/volley/b$a;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 130
    const-string v5, "cache-hit-expired"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3, v1}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/b$a;)Lcom/android/volley/Request;

    .line 132
    iget-object v5, p0, Lcom/android/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_4
    const-string v5, "cache-hit"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 138
    new-instance v5, Lcom/android/volley/NetworkResponse;

    iget-object v6, v1, Lcom/android/volley/b$a;->a:[B

    iget-object v7, v1, Lcom/android/volley/b$a;->g:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;

    move-result-object v4

    .line 139
    .local v4, "response":Lcom/android/volley/k;, "Lcom/android/volley/k<*>;"
    const-string v5, "cache-hit-parsed"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Lcom/android/volley/b$a;->b()Z

    move-result v5

    if-nez v5, :cond_5

    .line 143
    iget-object v5, p0, Lcom/android/volley/c;->e:Lcom/android/volley/l;

    invoke-interface {v5, v3, v4}, Lcom/android/volley/l;->a(Lcom/android/volley/Request;Lcom/android/volley/k;)V

    goto :goto_0

    .line 148
    :cond_5
    const-string v5, "cache-hit-refresh-needed"

    invoke-virtual {v3, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3, v1}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/b$a;)Lcom/android/volley/Request;

    .line 152
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/volley/k;->d:Z

    .line 156
    move-object v2, v3

    .line 157
    .local v2, "finalRequest":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iget-object v5, p0, Lcom/android/volley/c;->e:Lcom/android/volley/l;

    new-instance v6, Lcom/android/volley/c$1;

    invoke-direct {v6, p0, v2}, Lcom/android/volley/c$1;-><init>(Lcom/android/volley/c;Lcom/android/volley/Request;)V

    invoke-interface {v5, v3, v4, v6}, Lcom/android/volley/l;->a(Lcom/android/volley/Request;Lcom/android/volley/k;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
