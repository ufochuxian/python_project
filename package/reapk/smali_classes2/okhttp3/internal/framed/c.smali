.class public final Lokhttp3/internal/framed/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/c$b;,
        Lokhttp3/internal/framed/c$c;,
        Lokhttp3/internal/framed/c$a;
    }
.end annotation


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;

.field private static final w:I = 0x1000000


# instance fields
.field final a:Lokhttp3/Protocol;

.field final b:Z

.field c:J

.field d:J

.field e:Lokhttp3/internal/framed/l;

.field final f:Lokhttp3/internal/framed/l;

.field final g:Lokhttp3/internal/framed/n;

.field final h:Ljava/net/Socket;

.field final i:Lokhttp3/internal/framed/b;

.field final j:Lokhttp3/internal/framed/c$c;

.field private final m:Lokhttp3/internal/framed/c$b;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/d;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private final s:Ljava/util/concurrent/ExecutorService;

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/j;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lokhttp3/internal/framed/k;

.field private v:I

.field private x:Z

.field private final y:Ljava/util/Set;
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

    .line 55
    const-class v0, Lokhttp3/internal/framed/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lokhttp3/internal/framed/c;->k:Z

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    .line 71
    invoke-static {v0, v8}, Lokhttp3/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/framed/c;->l:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0
.end method

.method private constructor <init>(Lokhttp3/internal/framed/c$a;)V
    .locals 12
    .param p1, "builder"    # Lokhttp3/internal/framed/c$a;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    .line 104
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lokhttp3/internal/framed/c;->c:J

    .line 113
    new-instance v0, Lokhttp3/internal/framed/l;

    invoke-direct {v0}, Lokhttp3/internal/framed/l;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/c;->e:Lokhttp3/internal/framed/l;

    .line 119
    new-instance v0, Lokhttp3/internal/framed/l;

    invoke-direct {v0}, Lokhttp3/internal/framed/l;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/c;->f:Lokhttp3/internal/framed/l;

    .line 121
    iput-boolean v2, p0, Lokhttp3/internal/framed/c;->x:Z

    .line 816
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/c;->y:Ljava/util/Set;

    .line 130
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->a(Lokhttp3/internal/framed/c$a;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/c;->a:Lokhttp3/Protocol;

    .line 131
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->b(Lokhttp3/internal/framed/c$a;)Lokhttp3/internal/framed/k;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/c;->u:Lokhttp3/internal/framed/k;

    .line 132
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->c(Lokhttp3/internal/framed/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/framed/c;->b:Z

    .line 133
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->d(Lokhttp3/internal/framed/c$a;)Lokhttp3/internal/framed/c$b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/c;->m:Lokhttp3/internal/framed/c$b;

    .line 135
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->c(Lokhttp3/internal/framed/c$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lokhttp3/internal/framed/c;->q:I

    .line 136
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->c(Lokhttp3/internal/framed/c$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/c;->a:Lokhttp3/Protocol;

    sget-object v4, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v4, :cond_0

    .line 137
    iget v0, p0, Lokhttp3/internal/framed/c;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/framed/c;->q:I

    .line 140
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->c(Lokhttp3/internal/framed/c$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lokhttp3/internal/framed/c;->v:I

    .line 146
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->c(Lokhttp3/internal/framed/c$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lokhttp3/internal/framed/c;->e:Lokhttp3/internal/framed/l;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lokhttp3/internal/framed/l;->a(III)Lokhttp3/internal/framed/l;

    .line 150
    :cond_2
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->e(Lokhttp3/internal/framed/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lokhttp3/internal/framed/c;->a:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_4

    .line 153
    new-instance v0, Lokhttp3/internal/framed/g;

    invoke-direct {v0}, Lokhttp3/internal/framed/g;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/c;->g:Lokhttp3/internal/framed/n;

    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 157
    invoke-static {v0, v8}, Lokhttp3/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lokhttp3/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/internal/framed/c;->s:Ljava/util/concurrent/ExecutorService;

    .line 159
    iget-object v0, p0, Lokhttp3/internal/framed/c;->f:Lokhttp3/internal/framed/l;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lokhttp3/internal/framed/l;->a(III)Lokhttp3/internal/framed/l;

    .line 160
    iget-object v0, p0, Lokhttp3/internal/framed/c;->f:Lokhttp3/internal/framed/l;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/framed/l;->a(III)Lokhttp3/internal/framed/l;

    .line 167
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/framed/c;->f:Lokhttp3/internal/framed/l;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/l;->l(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/framed/c;->d:J

    .line 168
    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->f(Lokhttp3/internal/framed/c$a;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/c;->h:Ljava/net/Socket;

    .line 169
    iget-object v0, p0, Lokhttp3/internal/framed/c;->g:Lokhttp3/internal/framed/n;

    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->g(Lokhttp3/internal/framed/c$a;)Lokio/d;

    move-result-object v1

    iget-boolean v2, p0, Lokhttp3/internal/framed/c;->b:Z

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/n;->a(Lokio/d;Z)Lokhttp3/internal/framed/b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    .line 171
    new-instance v0, Lokhttp3/internal/framed/c$c;

    iget-object v1, p0, Lokhttp3/internal/framed/c;->g:Lokhttp3/internal/framed/n;

    invoke-static {p1}, Lokhttp3/internal/framed/c$a;->h(Lokhttp3/internal/framed/c$a;)Lokio/e;

    move-result-object v2

    iget-boolean v3, p0, Lokhttp3/internal/framed/c;->b:Z

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/framed/n;->a(Lokio/e;Z)Lokhttp3/internal/framed/a;

    move-result-object v1

    invoke-direct {v0, p0, v1, v11}, Lokhttp3/internal/framed/c$c;-><init>(Lokhttp3/internal/framed/c;Lokhttp3/internal/framed/a;Lokhttp3/internal/framed/c$1;)V

    iput-object v0, p0, Lokhttp3/internal/framed/c;->j:Lokhttp3/internal/framed/c$c;

    .line 172
    return-void

    :cond_3
    move v0, v1

    .line 135
    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/framed/c;->a:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_5

    .line 162
    new-instance v0, Lokhttp3/internal/framed/m;

    invoke-direct {v0}, Lokhttp3/internal/framed/m;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/c;->g:Lokhttp3/internal/framed/n;

    .line 163
    iput-object v11, p0, Lokhttp3/internal/framed/c;->s:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 165
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lokhttp3/internal/framed/c;->a:Lokhttp3/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/c$a;Lokhttp3/internal/framed/c$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/internal/framed/c$a;
    .param p2, "x1"    # Lokhttp3/internal/framed/c$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/c;-><init>(Lokhttp3/internal/framed/c$a;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/c;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/util/List;ZZ)Lokhttp3/internal/framed/d;
    .locals 12
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    if-nez p3, :cond_0

    const/4 v3, 0x1

    .line 230
    .local v3, "outFinished":Z
    :goto_0
    if-nez p4, :cond_1

    const/4 v4, 0x1

    .line 235
    .local v4, "inFinished":Z
    :goto_1
    iget-object v9, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    monitor-enter v9

    .line 236
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget-boolean v2, p0, Lokhttp3/internal/framed/c;->r:Z

    if-eqz v2, :cond_2

    .line 238
    new-instance v2, Ljava/io/IOException;

    const-string v5, "shutdown"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 256
    :catchall_1
    move-exception v2

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 229
    .end local v3    # "outFinished":Z
    .end local v4    # "inFinished":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 230
    .restart local v3    # "outFinished":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 240
    .restart local v4    # "inFinished":Z
    :cond_2
    :try_start_3
    iget v1, p0, Lokhttp3/internal/framed/c;->q:I

    .line 241
    .local v1, "streamId":I
    iget v2, p0, Lokhttp3/internal/framed/c;->q:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lokhttp3/internal/framed/c;->q:I

    .line 242
    new-instance v0, Lokhttp3/internal/framed/d;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/d;-><init>(ILokhttp3/internal/framed/c;ZZLjava/util/List;)V

    .line 243
    .local v0, "stream":Lokhttp3/internal/framed/d;
    if-eqz p3, :cond_3

    iget-wide v6, p0, Lokhttp3/internal/framed/c;->d:J

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-eqz v2, :cond_3

    iget-wide v6, v0, Lokhttp3/internal/framed/d;->b:J

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-nez v2, :cond_6

    :cond_3
    const/4 v8, 0x1

    .line 244
    .local v8, "flushHeaders":Z
    :goto_2
    invoke-virtual {v0}, Lokhttp3/internal/framed/d;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    iget-object v2, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    if-nez p1, :cond_7

    .line 249
    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lokhttp3/internal/framed/b;->a(ZZIILjava/util/List;)V

    .line 256
    :goto_3
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    if-eqz v8, :cond_5

    .line 259
    iget-object v2, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v2}, Lokhttp3/internal/framed/b;->b()V

    .line 262
    :cond_5
    return-object v0

    .line 243
    .end local v8    # "flushHeaders":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 251
    .restart local v8    # "flushHeaders":Z
    :cond_7
    :try_start_5
    iget-boolean v2, p0, Lokhttp3/internal/framed/c;->b:Z

    if-eqz v2, :cond_8

    .line 252
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_8
    iget-object v2, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v2, p1, v1, p2}, Lokhttp3/internal/framed/b;->a(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3
.end method

.method private a(ILjava/util/List;)V
    .locals 7
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 819
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    monitor-enter p0

    .line 820
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/c;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/framed/c;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 822
    monitor-exit p0

    .line 840
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/c;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 825
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    iget-object v6, p0, Lokhttp3/internal/framed/c;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/c$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/c$4;-><init>(Lokhttp3/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 825
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
    .line 866
    new-instance v5, Lokio/c;

    invoke-direct {v5}, Lokio/c;-><init>()V

    .line 867
    .local v5, "buffer":Lokio/c;
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/e;->a(J)V

    .line 868
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lokio/e;->read(Lokio/c;J)J

    .line 869
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

    .line 870
    :cond_0
    iget-object v8, p0, Lokhttp3/internal/framed/c;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/c$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/c$6;-><init>(Lokhttp3/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILokio/c;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 884
    return-void
.end method

.method private a(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .locals 10
    .param p1, "connectionCode"    # Lokhttp3/internal/framed/ErrorCode;
    .param p2, "streamCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 427
    sget-boolean v7, Lokhttp3/internal/framed/c;->k:Z

    if-nez v7, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 428
    :cond_0
    const/4 v6, 0x0

    .line 430
    .local v6, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/c;->a(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    const/4 v5, 0x0

    .line 436
    .local v5, "streamsToClose":[Lokhttp3/internal/framed/d;
    const/4 v3, 0x0

    .line 437
    .local v3, "pingsToCancel":[Lokhttp3/internal/framed/j;
    monitor-enter p0

    .line 438
    :try_start_1
    iget-object v7, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 439
    iget-object v7, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lokhttp3/internal/framed/d;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lokhttp3/internal/framed/d;

    move-object v5, v0

    .line 440
    iget-object v7, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 442
    :cond_1
    iget-object v7, p0, Lokhttp3/internal/framed/c;->t:Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 443
    iget-object v7, p0, Lokhttp3/internal/framed/c;->t:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lokhttp3/internal/framed/c;->t:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lokhttp3/internal/framed/j;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lokhttp3/internal/framed/j;

    move-object v3, v0

    .line 444
    const/4 v7, 0x0

    iput-object v7, p0, Lokhttp3/internal/framed/c;->t:Ljava/util/Map;

    .line 446
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    if-eqz v5, :cond_4

    .line 449
    array-length v9, v5

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v4, v5, v7

    .line 451
    .local v4, "stream":Lokhttp3/internal/framed/d;
    :try_start_2
    invoke-virtual {v4, p2}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 449
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 431
    .end local v3    # "pingsToCancel":[Lokhttp3/internal/framed/j;
    .end local v4    # "stream":Lokhttp3/internal/framed/d;
    .end local v5    # "streamsToClose":[Lokhttp3/internal/framed/d;
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_0

    .line 446
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "pingsToCancel":[Lokhttp3/internal/framed/j;
    .restart local v5    # "streamsToClose":[Lokhttp3/internal/framed/d;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 452
    .restart local v4    # "stream":Lokhttp3/internal/framed/d;
    :catch_1
    move-exception v1

    .line 453
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_3

    move-object v6, v1

    goto :goto_2

    .line 458
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Lokhttp3/internal/framed/d;
    :cond_4
    if-eqz v3, :cond_5

    .line 459
    array-length v9, v3

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_5

    aget-object v2, v3, v7

    .line 460
    .local v2, "ping":Lokhttp3/internal/framed/j;
    invoke-virtual {v2}, Lokhttp3/internal/framed/j;->c()V

    .line 459
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 466
    .end local v2    # "ping":Lokhttp3/internal/framed/j;
    :cond_5
    :try_start_4
    iget-object v7, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v7}, Lokhttp3/internal/framed/b;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 473
    :cond_6
    :goto_4
    :try_start_5
    iget-object v7, p0, Lokhttp3/internal/framed/c;->h:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 478
    :goto_5
    if-eqz v6, :cond_7

    throw v6

    .line 467
    :catch_2
    move-exception v1

    .line 468
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v6, :cond_6

    move-object v6, v1

    goto :goto_4

    .line 474
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 475
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_5

    .line 479
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/c;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/c;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/c;ILjava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/c;->b(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/c;ILokhttp3/internal/framed/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/c;->c(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/c;ILokio/e;IZ)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
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
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/c;->a(ILokio/e;IZ)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/c;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # Lokhttp3/internal/framed/ErrorCode;
    .param p2, "x2"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/c;->a(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/c;ZIILokhttp3/internal/framed/j;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lokhttp3/internal/framed/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/c;->b(ZIILokhttp3/internal/framed/j;)V

    return-void
.end method

.method private a(ZIILokhttp3/internal/framed/j;)V
    .locals 9
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lokhttp3/internal/framed/j;

    .prologue
    .line 371
    sget-object v8, Lokhttp3/internal/framed/c;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/c$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 372
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

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/c$3;-><init>(Lokhttp3/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/framed/j;)V

    .line 371
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/c;I)Z
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/c;->d(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/c;Z)Z
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/c;->x:Z

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/framed/c;I)I
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lokhttp3/internal/framed/c;->p:I

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
            "Lokhttp3/internal/framed/e;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 844
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    iget-object v7, p0, Lokhttp3/internal/framed/c;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/c$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/framed/c$5;-><init>(Lokhttp3/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 858
    return-void
.end method

.method static synthetic b(Lokhttp3/internal/framed/c;ZIILokhttp3/internal/framed/j;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lokhttp3/internal/framed/j;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/c;->a(ZIILokhttp3/internal/framed/j;)V

    return-void
.end method

.method private b(ZIILokhttp3/internal/framed/j;)V
    .locals 2
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lokhttp3/internal/framed/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    monitor-enter v1

    .line 385
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lokhttp3/internal/framed/j;->a()V

    .line 386
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v0, p1, p2, p3}, Lokhttp3/internal/framed/b;->a(ZII)V

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/c;)Z
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/c;->r:Z

    return v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/c;Z)Z
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/framed/c;->r:Z

    return p1
.end method

.method static synthetic c(Lokhttp3/internal/framed/c;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 55
    iget v0, p0, Lokhttp3/internal/framed/c;->p:I

    return v0
.end method

.method private declared-synchronized c(I)Lokhttp3/internal/framed/j;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/c;->t:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/c;->t:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/j;
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

.method static synthetic c(Lokhttp3/internal/framed/c;I)Lokhttp3/internal/framed/j;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lokhttp3/internal/framed/c;->c(I)Lokhttp3/internal/framed/j;

    move-result-object v0

    return-object v0
.end method

.method private c(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 887
    iget-object v6, p0, Lokhttp3/internal/framed/c;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/c$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/c$7;-><init>(Lokhttp3/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 895
    return-void
.end method

.method static synthetic d(Lokhttp3/internal/framed/c;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 55
    iget v0, p0, Lokhttp3/internal/framed/c;->q:I

    return v0
.end method

.method private d(I)Z
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    .line 812
    iget-object v0, p0, Lokhttp3/internal/framed/c;->a:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

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

.method static synthetic e(Lokhttp3/internal/framed/c;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/internal/framed/c;)Lokhttp3/internal/framed/c$b;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/c;->m:Lokhttp3/internal/framed/c$b;

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lokhttp3/internal/framed/c;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/internal/framed/c;)Z
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 55
    iget-boolean v0, p0, Lokhttp3/internal/framed/c;->x:Z

    return v0
.end method

.method static synthetic h(Lokhttp3/internal/framed/c;)Lokhttp3/internal/framed/k;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/c;->u:Lokhttp3/internal/framed/k;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/internal/framed/c;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/c;

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/framed/c;->y:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lokhttp3/internal/framed/c;->a:Lokhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized a(I)Lokhttp3/internal/framed/d;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILjava/util/List;Z)Lokhttp3/internal/framed/d;
    .locals 2
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;Z)",
            "Lokhttp3/internal/framed/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    iget-boolean v0, p0, Lokhttp3/internal/framed/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/c;->a:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/internal/framed/c;->a(ILjava/util/List;ZZ)Lokhttp3/internal/framed/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;ZZ)Lokhttp3/internal/framed/d;
    .locals 1
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lokhttp3/internal/framed/c;->a(ILjava/util/List;ZZ)Lokhttp3/internal/framed/d;

    move-result-object v0

    return-object v0
.end method

.method a(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 339
    sget-object v0, Lokhttp3/internal/framed/c;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lokhttp3/internal/framed/c$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/framed/c$2;-><init>(Lokhttp3/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method a(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .prologue
    .line 324
    sget-object v6, Lokhttp3/internal/framed/c;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/c$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/c;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/c$1;-><init>(Lokhttp3/internal/framed/c;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 332
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
            "Lokhttp3/internal/framed/e;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    iget-object v0, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v0, p2, p1, p3}, Lokhttp3/internal/framed/b;->a(ZILjava/util/List;)V

    .line 268
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

    .line 284
    cmp-long v2, p4, v8

    if-nez v2, :cond_2

    .line 285
    iget-object v2, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v2, p2, p1, p3, v3}, Lokhttp3/internal/framed/b;->a(ZILokio/c;I)V

    .line 313
    :cond_0
    return-void

    .line 305
    :cond_1
    :try_start_0
    iget-wide v4, p0, Lokhttp3/internal/framed/c;->d:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 306
    .local v1, "toWrite":I
    iget-object v2, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v2}, Lokhttp3/internal/framed/b;->c()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 307
    iget-wide v4, p0, Lokhttp3/internal/framed/c;->d:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/framed/c;->d:J

    .line 308
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    int-to-long v4, v1

    sub-long/2addr p4, v4

    .line 311
    iget-object v4, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    if-eqz p2, :cond_4

    cmp-long v2, p4, v8

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v4, v2, p1, p3, v1}, Lokhttp3/internal/framed/b;->a(ZILokio/c;I)V

    .line 289
    .end local v1    # "toWrite":I
    :cond_2
    cmp-long v2, p4, v8

    if-lez v2, :cond_0

    .line 291
    monitor-enter p0

    .line 293
    :goto_1
    :try_start_1
    iget-wide v4, p0, Lokhttp3/internal/framed/c;->d:J

    cmp-long v2, v4, v8

    if-gtz v2, :cond_1

    .line 296
    iget-object v2, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 297
    new-instance v2, Ljava/io/IOException;

    const-string v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 308
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 299
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .restart local v1    # "toWrite":I
    :cond_4
    move v2, v3

    .line 311
    goto :goto_0
.end method

.method a(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 319
    iget-wide v0, p0, Lokhttp3/internal/framed/c;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/c;->d:J

    .line 320
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    :cond_0
    return-void
.end method

.method public a(Lokhttp3/internal/framed/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v2, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    monitor-enter v2

    .line 406
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :try_start_1
    iget-boolean v1, p0, Lokhttp3/internal/framed/c;->r:Z

    if-eqz v1, :cond_0

    .line 408
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lokhttp3/internal/framed/c;->r:Z

    .line 411
    iget v0, p0, Lokhttp3/internal/framed/c;->p:I

    .line 412
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 414
    :try_start_4
    iget-object v1, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    sget-object v3, Lokhttp3/internal/c;->a:[B

    invoke-interface {v1, v0, p1, v3}, Lokhttp3/internal/framed/b;->a(ILokhttp3/internal/framed/ErrorCode;[B)V

    .line 415
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lastGoodStreamId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 412
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

.method public a(Lokhttp3/internal/framed/l;)V
    .locals 3
    .param p1, "settings"    # Lokhttp3/internal/framed/l;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v1, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    monitor-enter v1

    .line 508
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/c;->r:Z

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 515
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 512
    :cond_0
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/framed/c;->e:Lokhttp3/internal/framed/l;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/l;->a(Lokhttp3/internal/framed/l;)V

    .line 513
    iget-object v0, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v0, p1}, Lokhttp3/internal/framed/b;->b(Lokhttp3/internal/framed/l;)V

    .line 514
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 516
    return-void
.end method

.method a(Z)V
    .locals 6
    .param p1, "sendConnectionPreface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    .line 494
    if-eqz p1, :cond_0

    .line 495
    iget-object v1, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v1}, Lokhttp3/internal/framed/b;->a()V

    .line 496
    iget-object v1, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    iget-object v2, p0, Lokhttp3/internal/framed/c;->e:Lokhttp3/internal/framed/l;

    invoke-interface {v1, v2}, Lokhttp3/internal/framed/b;->b(Lokhttp3/internal/framed/l;)V

    .line 497
    iget-object v1, p0, Lokhttp3/internal/framed/c;->e:Lokhttp3/internal/framed/l;

    invoke-virtual {v1, v3}, Lokhttp3/internal/framed/l;->l(I)I

    move-result v0

    .line 498
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_0

    .line 499
    iget-object v1, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    const/4 v2, 0x0

    sub-int v3, v0, v3

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Lokhttp3/internal/framed/b;->a(IJ)V

    .line 502
    .end local v0    # "windowSize":I
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lokhttp3/internal/framed/c;->j:Lokhttp3/internal/framed/c$c;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 503
    return-void
.end method

.method public declared-synchronized b()I
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

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

.method declared-synchronized b(I)Lokhttp3/internal/framed/d;
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/framed/c;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/d;

    .line 192
    .local v0, "stream":Lokhttp3/internal/framed/d;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-object v0

    .line 191
    .end local v0    # "stream":Lokhttp3/internal/framed/d;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method b(ILokhttp3/internal/framed/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v0, p1, p2}, Lokhttp3/internal/framed/b;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 336
    return-void
.end method

.method public declared-synchronized c()I
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/c;->f:Lokhttp3/internal/framed/l;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/l;->g(I)I
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

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/framed/c;->a(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    .line 424
    return-void
.end method

.method public d()Lokhttp3/internal/framed/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lokhttp3/internal/framed/j;

    invoke-direct {v0}, Lokhttp3/internal/framed/j;-><init>()V

    .line 356
    .local v0, "ping":Lokhttp3/internal/framed/j;
    monitor-enter p0

    .line 357
    :try_start_0
    iget-boolean v2, p0, Lokhttp3/internal/framed/c;->r:Z

    if-eqz v2, :cond_0

    .line 358
    new-instance v2, Ljava/io/IOException;

    const-string v3, "shutdown"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 360
    :cond_0
    :try_start_1
    iget v1, p0, Lokhttp3/internal/framed/c;->v:I

    .line 361
    .local v1, "pingId":I
    iget v2, p0, Lokhttp3/internal/framed/c;->v:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lokhttp3/internal/framed/c;->v:I

    .line 362
    iget-object v2, p0, Lokhttp3/internal/framed/c;->t:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lokhttp3/internal/framed/c;->t:Ljava/util/Map;

    .line 363
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/framed/c;->t:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lokhttp3/internal/framed/c;->b(ZIILokhttp3/internal/framed/j;)V

    .line 366
    return-object v0
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    invoke-interface {v0}, Lokhttp3/internal/framed/b;->b()V

    .line 396
    return-void
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/c;->a(Z)V

    .line 487
    return-void
.end method
