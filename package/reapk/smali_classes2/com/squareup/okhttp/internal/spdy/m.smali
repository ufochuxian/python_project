.class public final Lcom/squareup/okhttp/internal/spdy/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/m$b;,
        Lcom/squareup/okhttp/internal/spdy/m$a;
    }
.end annotation


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;

.field private static final x:I = 0x1000000


# instance fields
.field final a:Lcom/squareup/okhttp/Protocol;

.field final b:Z

.field c:J

.field d:J

.field final e:Lcom/squareup/okhttp/internal/spdy/k;

.field final f:Lcom/squareup/okhttp/internal/spdy/k;

.field final g:Lcom/squareup/okhttp/internal/spdy/o;

.field final h:Ljava/net/Socket;

.field final i:Lcom/squareup/okhttp/internal/spdy/b;

.field final j:Lcom/squareup/okhttp/internal/spdy/m$b;

.field private final m:Lcom/squareup/okhttp/internal/spdy/g;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/n;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private s:J

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/i;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/squareup/okhttp/internal/spdy/j;

.field private w:I

.field private y:Z

.field private final z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 52
    const-class v0, Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/m;->k:Z

    .line 66
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp SpdyConnection"

    .line 68
    invoke-static {v0, v8}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/squareup/okhttp/internal/spdy/m;->l:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/m$a;)V
    .locals 12
    .param p1, "builder"    # Lcom/squareup/okhttp/internal/spdy/m$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->s:J

    .line 102
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->c:J

    .line 113
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/k;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/k;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->e:Lcom/squareup/okhttp/internal/spdy/k;

    .line 119
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/k;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/k;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->f:Lcom/squareup/okhttp/internal/spdy/k;

    .line 121
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->y:Z

    .line 791
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->z:Ljava/util/Set;

    .line 130
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->a(Lcom/squareup/okhttp/internal/spdy/m$a;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->a:Lcom/squareup/okhttp/Protocol;

    .line 131
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->b(Lcom/squareup/okhttp/internal/spdy/m$a;)Lcom/squareup/okhttp/internal/spdy/j;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->v:Lcom/squareup/okhttp/internal/spdy/j;

    .line 132
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->c(Lcom/squareup/okhttp/internal/spdy/m$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->b:Z

    .line 133
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->d(Lcom/squareup/okhttp/internal/spdy/m$a;)Lcom/squareup/okhttp/internal/spdy/g;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->m:Lcom/squareup/okhttp/internal/spdy/g;

    .line 135
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->c(Lcom/squareup/okhttp/internal/spdy/m$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->q:I

    .line 136
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->c(Lcom/squareup/okhttp/internal/spdy/m$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v4, :cond_0

    .line 137
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->q:I

    .line 140
    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->c(Lcom/squareup/okhttp/internal/spdy/m$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->w:I

    .line 146
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->c(Lcom/squareup/okhttp/internal/spdy/m$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->e:Lcom/squareup/okhttp/internal/spdy/k;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lcom/squareup/okhttp/internal/spdy/k;->a(III)Lcom/squareup/okhttp/internal/spdy/k;

    .line 150
    :cond_2
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->e(Lcom/squareup/okhttp/internal/spdy/m$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_4

    .line 153
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/e;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/e;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->g:Lcom/squareup/okhttp/internal/spdy/o;

    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 157
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->t:Ljava/util/concurrent/ExecutorService;

    .line 159
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->f:Lcom/squareup/okhttp/internal/spdy/k;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lcom/squareup/okhttp/internal/spdy/k;->a(III)Lcom/squareup/okhttp/internal/spdy/k;

    .line 160
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->f:Lcom/squareup/okhttp/internal/spdy/k;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/k;->a(III)Lcom/squareup/okhttp/internal/spdy/k;

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->f:Lcom/squareup/okhttp/internal/spdy/k;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/k;->l(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->d:J

    .line 168
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->f(Lcom/squareup/okhttp/internal/spdy/m$a;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->h:Ljava/net/Socket;

    .line 169
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->g:Lcom/squareup/okhttp/internal/spdy/o;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/m$a;->f(Lcom/squareup/okhttp/internal/spdy/m$a;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lokio/o;->a(Ljava/net/Socket;)Lokio/w;

    move-result-object v1

    invoke-static {v1}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v1

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/o;->a(Lokio/d;Z)Lcom/squareup/okhttp/internal/spdy/b;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    .line 171
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/m$b;

    invoke-direct {v0, p0, v11}, Lcom/squareup/okhttp/internal/spdy/m$b;-><init>(Lcom/squareup/okhttp/internal/spdy/m;Lcom/squareup/okhttp/internal/spdy/m$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->j:Lcom/squareup/okhttp/internal/spdy/m$b;

    .line 172
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->j:Lcom/squareup/okhttp/internal/spdy/m$b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void

    :cond_3
    move v0, v1

    .line 135
    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_5

    .line 162
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/l;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/l;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->g:Lcom/squareup/okhttp/internal/spdy/o;

    .line 163
    iput-object v11, p0, Lcom/squareup/okhttp/internal/spdy/m;->t:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->a:Lcom/squareup/okhttp/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/m$a;Lcom/squareup/okhttp/internal/spdy/m$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/spdy/m$a;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/spdy/m$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/m;-><init>(Lcom/squareup/okhttp/internal/spdy/m$a;)V

    return-void
.end method

.method private a(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/n;
    .locals 9
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/spdy/n;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 247
    if-nez p3, :cond_0

    move v3, v4

    .line 248
    .local v3, "outFinished":Z
    :goto_0
    if-nez p4, :cond_1

    .line 252
    .local v4, "inFinished":Z
    :goto_1
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    monitor-enter v8

    .line 253
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->r:Z

    if-eqz v2, :cond_2

    .line 255
    new-instance v2, Ljava/io/IOException;

    const-string v5, "shutdown"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 273
    :catchall_1
    move-exception v2

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .end local v3    # "outFinished":Z
    .end local v4    # "inFinished":Z
    :cond_0
    move v3, v2

    .line 247
    goto :goto_0

    .restart local v3    # "outFinished":Z
    :cond_1
    move v4, v2

    .line 248
    goto :goto_1

    .line 257
    .restart local v4    # "inFinished":Z
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->q:I

    .line 258
    .local v1, "streamId":I
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->q:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->q:I

    .line 259
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/n;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/n;-><init>(ILcom/squareup/okhttp/internal/spdy/m;ZZLjava/util/List;)V

    .line 260
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/n;
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/m;->a(Z)V

    .line 264
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    if-nez p1, :cond_5

    .line 266
    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZZIILjava/util/List;)V

    .line 273
    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    if-nez p3, :cond_4

    .line 276
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/spdy/b;->b()V

    .line 279
    :cond_4
    return-object v0

    .line 268
    :cond_5
    :try_start_5
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->b:Z

    if-eqz v2, :cond_6

    .line 269
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_6
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v2, p1, v1, p2}, Lcom/squareup/okhttp/internal/spdy/b;->a(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/util/List;)V
    .locals 7
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    monitor-enter p0

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->z:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/internal/spdy/m;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 797
    monitor-exit p0

    .line 815
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->z:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/m;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/m$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/m$4;-><init>(Lcom/squareup/okhttp/internal/spdy/m;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ILokio/e;IZ)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "source"    # Lokio/e;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v5, Lokio/c;

    invoke-direct {v5}, Lokio/c;-><init>()V

    .line 842
    .local v5, "buffer":Lokio/c;
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/e;->a(J)V

    .line 843
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lokio/e;->read(Lokio/c;J)J

    .line 844
    invoke-virtual {v5}, Lokio/c;->a()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/c;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_0
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/m;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/m$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/m$6;-><init>(Lcom/squareup/okhttp/internal/spdy/m;Ljava/lang/String;[Ljava/lang/Object;ILokio/c;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 859
    return-void
.end method

.method private a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 10
    .param p1, "connectionCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p2, "streamCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 445
    sget-boolean v7, Lcom/squareup/okhttp/internal/spdy/m;->k:Z

    if-nez v7, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 446
    :cond_0
    const/4 v6, 0x0

    .line 448
    .local v6, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    const/4 v5, 0x0

    .line 454
    .local v5, "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/n;
    const/4 v3, 0x0

    .line 455
    .local v3, "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/i;
    monitor-enter p0

    .line 456
    :try_start_1
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 457
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lcom/squareup/okhttp/internal/spdy/n;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/n;

    move-object v5, v0

    .line 458
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 459
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/squareup/okhttp/internal/spdy/m;->a(Z)V

    .line 461
    :cond_1
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m;->u:Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 462
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m;->u:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/m;->u:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lcom/squareup/okhttp/internal/spdy/i;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/i;

    move-object v3, v0

    .line 463
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m;->u:Ljava/util/Map;

    .line 465
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    if-eqz v5, :cond_4

    .line 468
    array-length v9, v5

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v4, v5, v7

    .line 470
    .local v4, "stream":Lcom/squareup/okhttp/internal/spdy/n;
    :try_start_2
    invoke-virtual {v4, p2}, Lcom/squareup/okhttp/internal/spdy/n;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 468
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 449
    .end local v3    # "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/i;
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/n;
    .end local v5    # "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/n;
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_0

    .line 465
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/i;
    .restart local v5    # "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/n;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 471
    .restart local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/n;
    :catch_1
    move-exception v1

    .line 472
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_3

    move-object v6, v1

    goto :goto_2

    .line 477
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/n;
    :cond_4
    if-eqz v3, :cond_5

    .line 478
    array-length v9, v3

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_5

    aget-object v2, v3, v7

    .line 479
    .local v2, "ping":Lcom/squareup/okhttp/internal/spdy/i;
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/i;->c()V

    .line 478
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 485
    .end local v2    # "ping":Lcom/squareup/okhttp/internal/spdy/i;
    :cond_5
    :try_start_4
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v7}, Lcom/squareup/okhttp/internal/spdy/b;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 492
    :cond_6
    :goto_4
    :try_start_5
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m;->h:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 497
    :goto_5
    if-eqz v6, :cond_7

    throw v6

    .line 486
    :catch_2
    move-exception v1

    .line 487
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v6, :cond_6

    move-object v6, v1

    goto :goto_4

    .line 493
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 494
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_5

    .line 498
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/m;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/m;->c(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/m;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/m;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/m;ILjava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/m;->b(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/m;ILokio/e;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lokio/e;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/m;->a(ILokio/e;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/m;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/m;ZIILcom/squareup/okhttp/internal/spdy/i;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/squareup/okhttp/internal/spdy/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/m;->b(ZIILcom/squareup/okhttp/internal/spdy/i;)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 201
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ZIILcom/squareup/okhttp/internal/spdy/i;)V
    .locals 9
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/squareup/okhttp/internal/spdy/i;

    .prologue
    .line 387
    sget-object v8, Lcom/squareup/okhttp/internal/spdy/m;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/m$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 388
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/m$3;-><init>(Lcom/squareup/okhttp/internal/spdy/m;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/spdy/i;)V

    .line 387
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/m;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/m;->d(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/m;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/m;->y:Z

    return p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/m;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/m;->p:I

    return p1
.end method

.method private b(ILjava/util/List;Z)V
    .locals 8
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 819
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/m;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/m$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/m$5;-><init>(Lcom/squareup/okhttp/internal/spdy/m;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/m;ZIILcom/squareup/okhttp/internal/spdy/i;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/squareup/okhttp/internal/spdy/i;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/m;->a(ZIILcom/squareup/okhttp/internal/spdy/i;)V

    return-void
.end method

.method private b(ZIILcom/squareup/okhttp/internal/spdy/i;)V
    .locals 2
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/squareup/okhttp/internal/spdy/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    monitor-enter v1

    .line 401
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/spdy/i;->a()V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZII)V

    .line 403
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/m;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->r:Z

    return v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/m;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/m;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/m;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 52
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->p:I

    return v0
.end method

.method private declared-synchronized c(I)Lcom/squareup/okhttp/internal/spdy/i;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/m;I)Lcom/squareup/okhttp/internal/spdy/i;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/m;->c(I)Lcom/squareup/okhttp/internal/spdy/i;

    move-result-object v0

    return-object v0
.end method

.method private c(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 862
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/m;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/m$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/m$7;-><init>(Lcom/squareup/okhttp/internal/spdy/m;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 870
    return-void
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/spdy/m;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 52
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->q:I

    return v0
.end method

.method private d(I)Z
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/spdy/m;)Lcom/squareup/okhttp/internal/spdy/g;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->m:Lcom/squareup/okhttp/internal/spdy/g;

    return-object v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/spdy/m;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->y:Z

    return v0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/spdy/m;)Lcom/squareup/okhttp/internal/spdy/j;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->v:Lcom/squareup/okhttp/internal/spdy/j;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/m;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic i(Lcom/squareup/okhttp/internal/spdy/m;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/m;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->z:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->a:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized a(I)Lcom/squareup/okhttp/internal/spdy/n;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILjava/util/List;Z)Lcom/squareup/okhttp/internal/spdy/n;
    .locals 2
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;Z)",
            "Lcom/squareup/okhttp/internal/spdy/n;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/m;->a(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/n;
    .locals 1
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/spdy/n;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/m;->a(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/n;

    move-result-object v0

    return-object v0
.end method

.method a(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 355
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/m;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/m$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/spdy/m$2;-><init>(Lcom/squareup/okhttp/internal/spdy/m;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 340
    sget-object v6, Lcom/squareup/okhttp/internal/spdy/m;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/m$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/m$1;-><init>(Lcom/squareup/okhttp/internal/spdy/m;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 348
    return-void
.end method

.method a(IZLjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v0, p2, p1, p3}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZILjava/util/List;)V

    .line 285
    return-void
.end method

.method public a(IZLokio/c;J)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lokio/c;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 304
    cmp-long v2, p4, v8

    if-nez v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v2, p2, p1, p3, v3}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZILokio/c;I)V

    .line 328
    :cond_0
    return-void

    .line 320
    :cond_1
    :try_start_0
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->d:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 321
    .local v1, "toWrite":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/spdy/b;->c()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 322
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->d:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->d:J

    .line 323
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    int-to-long v4, v1

    sub-long/2addr p4, v4

    .line 326
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    if-eqz p2, :cond_3

    cmp-long v2, p4, v8

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v4, v2, p1, p3, v1}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZILokio/c;I)V

    .line 309
    .end local v1    # "toWrite":I
    :cond_2
    cmp-long v2, p4, v8

    if-lez v2, :cond_0

    .line 311
    monitor-enter p0

    .line 313
    :goto_1
    :try_start_1
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/m;->d:J

    cmp-long v2, v4, v8

    if-gtz v2, :cond_1

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 323
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1    # "toWrite":I
    :cond_3
    move v2, v3

    .line 326
    goto :goto_0
.end method

.method a(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->d:J

    .line 336
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 337
    :cond_0
    return-void
.end method

.method public a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    monitor-enter v2

    .line 423
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->r:Z

    if-eqz v1, :cond_0

    .line 425
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    :goto_0
    return-void

    .line 427
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->r:Z

    .line 428
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->p:I

    .line 429
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 431
    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    sget-object v3, Lcom/squareup/okhttp/internal/j;->a:[B

    invoke-interface {v1, v0, p1, v3}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V

    .line 432
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lastGoodStreamId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 429
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized b()I
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
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

.method declared-synchronized b(I)Lcom/squareup/okhttp/internal/spdy/n;
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/n;

    .line 194
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/n;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/m;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-object v0

    .line 193
    .end local v0    # "stream":Lcom/squareup/okhttp/internal/spdy/n;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 352
    return-void
.end method

.method public declared-synchronized c()Z
    .locals 4

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/m;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 442
    return-void
.end method

.method public declared-synchronized d()J
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lcom/squareup/okhttp/internal/spdy/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/i;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/i;-><init>()V

    .line 372
    .local v0, "ping":Lcom/squareup/okhttp/internal/spdy/i;
    monitor-enter p0

    .line 373
    :try_start_0
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->r:Z

    if-eqz v2, :cond_0

    .line 374
    new-instance v2, Ljava/io/IOException;

    const-string v3, "shutdown"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 376
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->w:I

    .line 377
    .local v1, "pingId":I
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->w:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->w:I

    .line 378
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->u:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->u:Ljava/util/Map;

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->u:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/m;->b(ZIILcom/squareup/okhttp/internal/spdy/i;)V

    .line 382
    return-object v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/b;->b()V

    .line 412
    return-void
.end method

.method public g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    .line 505
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/spdy/b;->a()V

    .line 506
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m;->e:Lcom/squareup/okhttp/internal/spdy/k;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/spdy/b;->b(Lcom/squareup/okhttp/internal/spdy/k;)V

    .line 507
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->e:Lcom/squareup/okhttp/internal/spdy/k;

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/internal/spdy/k;->l(I)I

    move-result v0

    .line 508
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_0

    .line 509
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/m;->i:Lcom/squareup/okhttp/internal/spdy/b;

    const/4 v2, 0x0

    sub-int v3, v0, v3

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Lcom/squareup/okhttp/internal/spdy/b;->a(IJ)V

    .line 511
    :cond_0
    return-void
.end method