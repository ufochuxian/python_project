.class public Lcom/android/volley/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/volley/g;

.field private final c:Lcom/android/volley/b;

.field private final d:Lcom/android/volley/l;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/g;Lcom/android/volley/b;Lcom/android/volley/l;)V
    .locals 1
    .param p2, "network"    # Lcom/android/volley/g;
    .param p3, "cache"    # Lcom/android/volley/b;
    .param p4, "delivery"    # Lcom/android/volley/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;",
            "Lcom/android/volley/g;",
            "Lcom/android/volley/b;",
            "Lcom/android/volley/l;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/h;->e:Z

    .line 67
    iput-object p1, p0, Lcom/android/volley/h;->a:Ljava/util/concurrent/BlockingQueue;

    .line 68
    iput-object p2, p0, Lcom/android/volley/h;->b:Lcom/android/volley/g;

    .line 69
    iput-object p3, p0, Lcom/android/volley/h;->c:Lcom/android/volley/b;

    .line 70
    iput-object p4, p0, Lcom/android/volley/h;->d:Lcom/android/volley/l;

    .line 71
    return-void
.end method

.method private a(Lcom/android/volley/Request;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 88
    :cond_0
    return-void
.end method

.method private a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p2, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    .line 160
    iget-object v0, p0, Lcom/android/volley/h;->d:Lcom/android/volley/l;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/l;->a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 161
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/h;->e:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/volley/h;->interrupt()V

    .line 80
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 92
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 95
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 97
    .local v4, "startTimeMs":J
    const/4 v2, 0x0

    .line 100
    .local v2, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/volley/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    check-cast v2, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .restart local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_1
    const-string v7, "network-queue-take"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    const-string v7, "network-discard-cancelled"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 146
    :catch_0
    move-exception v6

    .line 147
    .local v6, "volleyError":Lcom/android/volley/VolleyError;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 148
    invoke-direct {p0, v2, v6}, Lcom/android/volley/h;->a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 101
    .end local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .end local v6    # "volleyError":Lcom/android/volley/VolleyError;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v7, p0, Lcom/android/volley/h;->e:Z

    if-eqz v7, :cond_0

    .line 104
    return-void

    .line 119
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/volley/h;->a(Lcom/android/volley/Request;)V

    .line 122
    iget-object v7, p0, Lcom/android/volley/h;->b:Lcom/android/volley/g;

    invoke-interface {v7, v2}, Lcom/android/volley/g;->a(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    .line 123
    .local v1, "networkResponse":Lcom/android/volley/NetworkResponse;
    const-string v7, "network-http-complete"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 127
    iget-boolean v7, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    const-string v7, "not-modified"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 149
    .end local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :catch_2
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Unhandled exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/android/volley/n;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v6, Lcom/android/volley/VolleyError;

    invoke-direct {v6, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 152
    .restart local v6    # "volleyError":Lcom/android/volley/VolleyError;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 153
    iget-object v7, p0, Lcom/android/volley/h;->d:Lcom/android/volley/l;

    invoke-interface {v7, v2, v6}, Lcom/android/volley/l;->a(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "volleyError":Lcom/android/volley/VolleyError;
    .restart local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :cond_2
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;

    move-result-object v3

    .line 134
    .local v3, "response":Lcom/android/volley/k;, "Lcom/android/volley/k<*>;"
    const-string v7, "network-parse-complete"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/android/volley/k;->b:Lcom/android/volley/b$a;

    if-eqz v7, :cond_3

    .line 139
    iget-object v7, p0, Lcom/android/volley/h;->c:Lcom/android/volley/b;

    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lcom/android/volley/k;->b:Lcom/android/volley/b$a;

    invoke-interface {v7, v8, v9}, Lcom/android/volley/b;->a(Ljava/lang/String;Lcom/android/volley/b$a;)V

    .line 140
    const-string v7, "network-cache-written"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 144
    :cond_3
    invoke-virtual {v2}, Lcom/android/volley/Request;->markDelivered()V

    .line 145
    iget-object v7, p0, Lcom/android/volley/h;->d:Lcom/android/volley/l;

    invoke-interface {v7, v2, v3}, Lcom/android/volley/l;->a(Lcom/android/volley/Request;Lcom/android/volley/k;)V
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
