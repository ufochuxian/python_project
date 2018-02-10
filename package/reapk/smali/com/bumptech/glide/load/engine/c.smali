.class public Lcom/bumptech/glide/load/engine/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/i$a;
.implements Lcom/bumptech/glide/load/engine/e;
.implements Lcom/bumptech/glide/load/engine/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/c$a;,
        Lcom/bumptech/glide/load/engine/c$d;,
        Lcom/bumptech/glide/load/engine/c$e;,
        Lcom/bumptech/glide/load/engine/c$b;,
        Lcom/bumptech/glide/load/engine/c$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Engine"


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/engine/g;

.field private final d:Lcom/bumptech/glide/load/engine/b/i;

.field private final e:Lcom/bumptech/glide/load/engine/c$a;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/bumptech/glide/load/engine/l;

.field private final h:Lcom/bumptech/glide/load/engine/c$b;

.field private i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10
    .param p1, "memoryCache"    # Lcom/bumptech/glide/load/engine/b/i;
    .param p2, "diskCacheFactory"    # Lcom/bumptech/glide/load/engine/b/a$a;
    .param p3, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "sourceService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v5, 0x0

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/g;Ljava/util/Map;Lcom/bumptech/glide/load/engine/c$a;Lcom/bumptech/glide/load/engine/l;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/b/i;Lcom/bumptech/glide/load/engine/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/g;Ljava/util/Map;Lcom/bumptech/glide/load/engine/c$a;Lcom/bumptech/glide/load/engine/l;)V
    .locals 1
    .param p1, "cache"    # Lcom/bumptech/glide/load/engine/b/i;
    .param p2, "diskCacheFactory"    # Lcom/bumptech/glide/load/engine/b/a$a;
    .param p3, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "sourceService"    # Ljava/util/concurrent/ExecutorService;
    .param p6, "keyFactory"    # Lcom/bumptech/glide/load/engine/g;
    .param p8, "engineJobFactory"    # Lcom/bumptech/glide/load/engine/c$a;
    .param p9, "resourceRecycler"    # Lcom/bumptech/glide/load/engine/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/b/i;",
            "Lcom/bumptech/glide/load/engine/b/a$a;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/d;",
            ">;",
            "Lcom/bumptech/glide/load/engine/g;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;>;>;",
            "Lcom/bumptech/glide/load/engine/c$a;",
            "Lcom/bumptech/glide/load/engine/l;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p5, "jobs":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/d;>;"
    .local p7, "activeResources":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/b;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/h<*>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c;->d:Lcom/bumptech/glide/load/engine/b/i;

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/engine/c$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/c$b;-><init>(Lcom/bumptech/glide/load/engine/b/a$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c;->h:Lcom/bumptech/glide/load/engine/c$b;

    .line 74
    if-nez p7, :cond_0

    .line 75
    new-instance p7, Ljava/util/HashMap;

    .end local p7    # "activeResources":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/b;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/h<*>;>;>;"
    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 77
    .restart local p7    # "activeResources":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/b;Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/h<*>;>;>;"
    :cond_0
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/c;->f:Ljava/util/Map;

    .line 79
    if-nez p6, :cond_1

    .line 80
    new-instance p6, Lcom/bumptech/glide/load/engine/g;

    .end local p6    # "keyFactory":Lcom/bumptech/glide/load/engine/g;
    invoke-direct {p6}, Lcom/bumptech/glide/load/engine/g;-><init>()V

    .line 82
    .restart local p6    # "keyFactory":Lcom/bumptech/glide/load/engine/g;
    :cond_1
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/c;->c:Lcom/bumptech/glide/load/engine/g;

    .line 84
    if-nez p5, :cond_2

    .line 85
    new-instance p5, Ljava/util/HashMap;

    .end local p5    # "jobs":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/d;>;"
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 87
    .restart local p5    # "jobs":Ljava/util/Map;, "Ljava/util/Map<Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/d;>;"
    :cond_2
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/c;->b:Ljava/util/Map;

    .line 89
    if-nez p8, :cond_3

    .line 90
    new-instance p8, Lcom/bumptech/glide/load/engine/c$a;

    .end local p8    # "engineJobFactory":Lcom/bumptech/glide/load/engine/c$a;
    invoke-direct {p8, p3, p4, p0}, Lcom/bumptech/glide/load/engine/c$a;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/e;)V

    .line 92
    .restart local p8    # "engineJobFactory":Lcom/bumptech/glide/load/engine/c$a;
    :cond_3
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/c;->e:Lcom/bumptech/glide/load/engine/c$a;

    .line 94
    if-nez p9, :cond_4

    .line 95
    new-instance p9, Lcom/bumptech/glide/load/engine/l;

    .end local p9    # "resourceRecycler":Lcom/bumptech/glide/load/engine/l;
    invoke-direct {p9}, Lcom/bumptech/glide/load/engine/l;-><init>()V

    .line 97
    .restart local p9    # "resourceRecycler":Lcom/bumptech/glide/load/engine/l;
    :cond_4
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/c;->g:Lcom/bumptech/glide/load/engine/l;

    .line 99
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/b/i;->a(Lcom/bumptech/glide/load/engine/b/i$a;)V

    .line 100
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/h;
    .locals 3
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->d:Lcom/bumptech/glide/load/engine/b/i;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/b/i;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 235
    .local v0, "cached":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<*>;"
    if-nez v0, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 243
    .local v1, "result":Lcom/bumptech/glide/load/engine/h;
    :goto_0
    return-object v1

    .line 237
    .end local v1    # "result":Lcom/bumptech/glide/load/engine/h;
    :cond_0
    instance-of v2, v0, Lcom/bumptech/glide/load/engine/h;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 239
    check-cast v1, Lcom/bumptech/glide/load/engine/h;

    .restart local v1    # "result":Lcom/bumptech/glide/load/engine/h;
    goto :goto_0

    .line 241
    .end local v1    # "result":Lcom/bumptech/glide/load/engine/h;
    :cond_1
    new-instance v1, Lcom/bumptech/glide/load/engine/h;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/engine/h;-><init>(Lcom/bumptech/glide/load/engine/k;Z)V

    .restart local v1    # "result":Lcom/bumptech/glide/load/engine/h;
    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/h;
    .locals 3
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .param p2, "isMemoryCacheable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 199
    if-nez p2, :cond_1

    .line 200
    const/4 v0, 0x0

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    const/4 v0, 0x0

    .line 204
    .local v0, "active":Lcom/bumptech/glide/load/engine/h;, "Lcom/bumptech/glide/load/engine/h<*>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->f:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 205
    .local v1, "activeRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/bumptech/glide/load/engine/h<*>;>;"
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "active":Lcom/bumptech/glide/load/engine/h;, "Lcom/bumptech/glide/load/engine/h<*>;"
    check-cast v0, Lcom/bumptech/glide/load/engine/h;

    .line 207
    .restart local v0    # "active":Lcom/bumptech/glide/load/engine/h;, "Lcom/bumptech/glide/load/engine/h<*>;"
    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h;->e()V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->f:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V
    .locals 5
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "key"    # Lcom/bumptech/glide/load/b;

    .prologue
    .line 195
    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/bumptech/glide/i/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/h;
    .locals 4
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .param p2, "isMemoryCacheable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 218
    if-nez p2, :cond_1

    .line 219
    const/4 v0, 0x0

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/c;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/h;

    move-result-object v0

    .line 223
    .local v0, "cached":Lcom/bumptech/glide/load/engine/h;, "Lcom/bumptech/glide/load/engine/h<*>;"
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h;->e()V

    .line 225
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->f:Ljava/util/Map;

    new-instance v2, Lcom/bumptech/glide/load/engine/c$e;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c;->b()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/bumptech/glide/load/engine/c$e;-><init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/h;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->i:Ljava/lang/ref/ReferenceQueue;

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/c;->i:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 305
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/bumptech/glide/load/engine/c$d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/c$d;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 307
    .end local v0    # "queue":Landroid/os/MessageQueue;
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->i:Ljava/lang/ref/ReferenceQueue;

    return-object v1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/g/g;)Lcom/bumptech/glide/load/engine/c$c;
    .locals 24
    .param p1, "signature"    # Lcom/bumptech/glide/load/b;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p8, "priority"    # Lcom/bumptech/glide/Priority;
    .param p9, "isMemoryCacheable"    # Z
    .param p10, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p11, "cb"    # Lcom/bumptech/glide/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b;",
            "II",
            "Lcom/bumptech/glide/load/a/c",
            "<TT;>;",
            "Lcom/bumptech/glide/f/b",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/f",
            "<TZ;>;",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<TZ;TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Z",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/g/g;",
            ")",
            "Lcom/bumptech/glide/load/engine/c$c;"
        }
    .end annotation

    .prologue
    .line 145
    .local p4, "fetcher":Lcom/bumptech/glide/load/a/c;, "Lcom/bumptech/glide/load/a/c<TT;>;"
    .local p5, "loadProvider":Lcom/bumptech/glide/f/b;, "Lcom/bumptech/glide/f/b<TT;TZ;>;"
    .local p6, "transformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<TZ;>;"
    .local p7, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<TZ;TR;>;"
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/i/e;->a()J

    move-result-wide v22

    .line 148
    .local v22, "startTime":J
    invoke-interface/range {p4 .. p4}, Lcom/bumptech/glide/load/a/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/c;->c:Lcom/bumptech/glide/load/engine/g;

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/f/b;->a()Lcom/bumptech/glide/load/d;

    move-result-object v9

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/f/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/f/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v12

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/f/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v14

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v4 .. v14}, Lcom/bumptech/glide/load/engine/g;->a(Ljava/lang/String;Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/f;

    move-result-object v7

    .line 153
    .local v7, "key":Lcom/bumptech/glide/load/engine/f;
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v7, v1}, Lcom/bumptech/glide/load/engine/c;->b(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/h;

    move-result-object v18

    .line 154
    .local v18, "cached":Lcom/bumptech/glide/load/engine/h;, "Lcom/bumptech/glide/load/engine/h<*>;"
    if-eqz v18, :cond_1

    .line 155
    move-object/from16 v0, p11

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/bumptech/glide/g/g;->a(Lcom/bumptech/glide/load/engine/k;)V

    .line 156
    const-string v4, "Engine"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    const-string v4, "Loaded resource from cache"

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1, v7}, Lcom/bumptech/glide/load/engine/c;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 159
    :cond_0
    const/4 v4, 0x0

    .line 191
    :goto_0
    return-object v4

    .line 162
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v7, v1}, Lcom/bumptech/glide/load/engine/c;->a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/h;

    move-result-object v17

    .line 163
    .local v17, "active":Lcom/bumptech/glide/load/engine/h;, "Lcom/bumptech/glide/load/engine/h<*>;"
    if-eqz v17, :cond_3

    .line 164
    move-object/from16 v0, p11

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/bumptech/glide/g/g;->a(Lcom/bumptech/glide/load/engine/k;)V

    .line 165
    const-string v4, "Engine"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    const-string v4, "Loaded resource from active resources"

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1, v7}, Lcom/bumptech/glide/load/engine/c;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 168
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 171
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/c;->b:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/bumptech/glide/load/engine/d;

    .line 172
    .local v19, "current":Lcom/bumptech/glide/load/engine/d;
    if-eqz v19, :cond_5

    .line 173
    move-object/from16 v0, v19

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/d;->a(Lcom/bumptech/glide/g/g;)V

    .line 174
    const-string v4, "Engine"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    const-string v4, "Added to existing load"

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1, v7}, Lcom/bumptech/glide/load/engine/c;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 177
    :cond_4
    new-instance v4, Lcom/bumptech/glide/load/engine/c$c;

    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/bumptech/glide/load/engine/c$c;-><init>(Lcom/bumptech/glide/g/g;Lcom/bumptech/glide/load/engine/d;)V

    goto :goto_0

    .line 180
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/c;->e:Lcom/bumptech/glide/load/engine/c$a;

    move/from16 v0, p9

    invoke-virtual {v4, v7, v0}, Lcom/bumptech/glide/load/engine/c$a;->a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/d;

    move-result-object v20

    .line 181
    .local v20, "engineJob":Lcom/bumptech/glide/load/engine/d;
    new-instance v6, Lcom/bumptech/glide/load/engine/b;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/load/engine/c;->h:Lcom/bumptech/glide/load/engine/c$b;

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v15, p10

    move-object/from16 v16, p8

    invoke-direct/range {v6 .. v16}, Lcom/bumptech/glide/load/engine/b;-><init>(Lcom/bumptech/glide/load/engine/f;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/f/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/f/f;Lcom/bumptech/glide/load/engine/b$a;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V

    .line 183
    .local v6, "decodeJob":Lcom/bumptech/glide/load/engine/b;, "Lcom/bumptech/glide/load/engine/b<TT;TZ;TR;>;"
    new-instance v21, Lcom/bumptech/glide/load/engine/i;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v6, v2}, Lcom/bumptech/glide/load/engine/i;-><init>(Lcom/bumptech/glide/load/engine/i$a;Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/Priority;)V

    .line 184
    .local v21, "runnable":Lcom/bumptech/glide/load/engine/i;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/c;->b:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-object/from16 v0, v20

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/d;->a(Lcom/bumptech/glide/g/g;)V

    .line 186
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/load/engine/d;->a(Lcom/bumptech/glide/load/engine/i;)V

    .line 188
    const-string v4, "Engine"

    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 189
    const-string v4, "Started new load"

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1, v7}, Lcom/bumptech/glide/load/engine/c;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 191
    :cond_6
    new-instance v4, Lcom/bumptech/glide/load/engine/c$c;

    move-object/from16 v0, p11

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/bumptech/glide/load/engine/c$c;-><init>(Lcom/bumptech/glide/g/g;Lcom/bumptech/glide/load/engine/d;)V

    goto/16 :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->h:Lcom/bumptech/glide/load/engine/c$b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/c$b;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/a;->a()V

    .line 299
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/h;)V
    .locals 3
    .param p1, "key"    # Lcom/bumptech/glide/load/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/h",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "resource":Lcom/bumptech/glide/load/engine/h;, "Lcom/bumptech/glide/load/engine/h<*>;"
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 260
    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {p2, p1, p0}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/h$a;)V

    .line 263
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->f:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/engine/c$e;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c;->b()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/bumptech/glide/load/engine/c$e;-><init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/h;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/d;Lcom/bumptech/glide/load/b;)V
    .locals 2
    .param p1, "engineJob"    # Lcom/bumptech/glide/load/engine/d;
    .param p2, "key"    # Lcom/bumptech/glide/load/b;

    .prologue
    .line 273
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 274
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/d;

    .line 275
    .local v0, "current":Lcom/bumptech/glide/load/engine/d;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/k;)V
    .locals 2
    .param p1, "resource"    # Lcom/bumptech/glide/load/engine/k;

    .prologue
    .line 247
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 248
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/h;

    if-eqz v0, :cond_0

    .line 249
    check-cast p1, Lcom/bumptech/glide/load/engine/h;

    .end local p1    # "resource":Lcom/bumptech/glide/load/engine/k;
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/h;->f()V

    .line 253
    return-void

    .line 251
    .restart local p1    # "resource":Lcom/bumptech/glide/load/engine/k;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/h;)V
    .locals 1
    .param p1, "cacheKey"    # Lcom/bumptech/glide/load/b;
    .param p2, "resource"    # Lcom/bumptech/glide/load/engine/h;

    .prologue
    .line 288
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->d:Lcom/bumptech/glide/load/engine/b/i;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/b/i;->b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->g:Lcom/bumptech/glide/load/engine/l;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/load/engine/k;)V

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<*>;"
    invoke-static {}, Lcom/bumptech/glide/i/i;->a()V

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->g:Lcom/bumptech/glide/load/engine/l;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/load/engine/k;)V

    .line 284
    return-void
.end method
