.class public Lcom/alibaba/mtl/appmonitor/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/alibaba/mtl/appmonitor/a/e;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/l;",
            "Lcom/alibaba/mtl/appmonitor/g/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    .line 63
    return-void
.end method

.method private a(Lcom/alibaba/mtl/appmonitor/g/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/g/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/mtl/appmonitor/a/d;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/a/d;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {p2}, Lcom/alibaba/mtl/appmonitor/f/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/alibaba/mtl/appmonitor/f/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/g/l;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_1

    .line 298
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/Map;

    monitor-enter v2

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/k;

    .line 300
    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v3, Lcom/alibaba/mtl/appmonitor/g/k;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/k;

    .line 302
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 305
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/g/k;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/alibaba/mtl/appmonitor/a/e;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/alibaba/mtl/appmonitor/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/e;->c:Lcom/alibaba/mtl/appmonitor/a/e;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a/e;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/a/e;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/e;->c:Lcom/alibaba/mtl/appmonitor/a/e;

    .line 57
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/e;->c:Lcom/alibaba/mtl/appmonitor/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/j;->a()Lcom/alibaba/mtl/appmonitor/g/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/appmonitor/g/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 312
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 313
    const-string v1, "EventRepo"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, " EVENT size:"

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 315
    const-string v0, "EventRepo"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " event size exceed trigger count."

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 317
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/a/e;->b(I)V

    .line 319
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/j;->a()Lcom/alibaba/mtl/appmonitor/g/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/appmonitor/g/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->b()V

    .line 281
    :cond_0
    return-void
.end method

.method private c(I)Lcom/alibaba/mtl/appmonitor/g/l;
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/g/l;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/l;

    .line 69
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->ACCESS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/mtl/log/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/g/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/d;

    .line 70
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/mtl/log/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/g/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/d;

    .line 71
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->USERID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/mtl/log/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/g/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/d;

    .line 72
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->USERNICK:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/mtl/log/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/g/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/d;

    .line 73
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->EVENTID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/g/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/d;

    .line 74
    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/l;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/a/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 329
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/Map;

    monitor-enter v4

    .line 330
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 332
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_1

    .line 333
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/l;

    .line 334
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/l;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/g/k;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/k;->a()Ljava/util/List;

    move-result-object v1

    .line 337
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 343
    :cond_1
    monitor-exit v4

    .line 344
    return-object v3

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/h;Lcom/alibaba/mtl/appmonitor/g/d;)V
    .locals 6

    .prologue
    .line 141
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/j;->a()Lcom/alibaba/mtl/appmonitor/g/j;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/mtl/appmonitor/g/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->f()Lcom/alibaba/mtl/appmonitor/g/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->f()Lcom/alibaba/mtl/appmonitor/g/c;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/alibaba/mtl/appmonitor/g/c;->b(Lcom/alibaba/mtl/appmonitor/g/d;)V

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->g()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->g()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/alibaba/mtl/appmonitor/g/f;->b(Lcom/alibaba/mtl/appmonitor/g/h;)V

    .line 150
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->c(I)Lcom/alibaba/mtl/appmonitor/g/l;

    move-result-object v1

    .line 151
    const/4 v4, 0x0

    const-class v5, Lcom/alibaba/mtl/appmonitor/a/g;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/g/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/g;

    .line 152
    invoke-virtual {v0, p5, p4}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V

    .line 154
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/a/g;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/g;

    .line 156
    invoke-virtual {v0, p5, p4}, Lcom/alibaba/mtl/appmonitor/a/g;->a(Lcom/alibaba/mtl/appmonitor/g/d;Lcom/alibaba/mtl/appmonitor/g/h;)V

    .line 157
    invoke-static {v1, v0}, Lcom/alibaba/mtl/appmonitor/f/c;->a(Lcom/alibaba/mtl/appmonitor/g/l;Lcom/alibaba/mtl/appmonitor/a/d;)V

    .line 159
    :cond_2
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_3
    const-string v0, "EventRepo"

    const-string v1, "metric is null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->c(I)Lcom/alibaba/mtl/appmonitor/g/l;

    move-result-object v1

    .line 83
    const-class v5, Lcom/alibaba/mtl/appmonitor/a/a;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/g/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/a;

    .line 84
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/a;->a()V

    .line 85
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/a/a;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/a;

    .line 87
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/a;->a()V

    .line 88
    invoke-static {v1, v0}, Lcom/alibaba/mtl/appmonitor/f/c;->a(Lcom/alibaba/mtl/appmonitor/g/l;Lcom/alibaba/mtl/appmonitor/a/d;)V

    .line 90
    :cond_0
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 91
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->c(I)Lcom/alibaba/mtl/appmonitor/g/l;

    move-result-object v1

    .line 120
    const-class v5, Lcom/alibaba/mtl/appmonitor/a/b;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/g/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/b;

    .line 121
    invoke-virtual {v0, p5, p6}, Lcom/alibaba/mtl/appmonitor/a/b;->a(D)V

    .line 122
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/a/b;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/b;

    .line 124
    invoke-virtual {v0, p5, p6}, Lcom/alibaba/mtl/appmonitor/a/b;->a(D)V

    .line 125
    invoke-static {v1, v0}, Lcom/alibaba/mtl/appmonitor/f/c;->a(Lcom/alibaba/mtl/appmonitor/g/l;Lcom/alibaba/mtl/appmonitor/a/d;)V

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 129
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->c(I)Lcom/alibaba/mtl/appmonitor/g/l;

    move-result-object v1

    .line 98
    const-class v5, Lcom/alibaba/mtl/appmonitor/a/a;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/g/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/mtl/appmonitor/a/d;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/a;

    .line 99
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/a;->b()V

    .line 100
    invoke-virtual {v0, p5, p6}, Lcom/alibaba/mtl/appmonitor/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/a/a;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/a;

    .line 103
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/a;->b()V

    .line 104
    invoke-virtual {v0, p5, p6}, Lcom/alibaba/mtl/appmonitor/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v1, v0}, Lcom/alibaba/mtl/appmonitor/f/c;->a(Lcom/alibaba/mtl/appmonitor/g/l;Lcom/alibaba/mtl/appmonitor/a/d;)V

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 108
    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 174
    invoke-direct {p0, p2, p3}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;)V
    .locals 5

    .prologue
    .line 244
    .line 245
    const-class v1, Lcom/alibaba/mtl/appmonitor/a/c;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/c;

    .line 247
    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/a/c;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/c;

    .line 249
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v0, p5}, Lcom/alibaba/mtl/appmonitor/a/c;->a(Lcom/alibaba/mtl/appmonitor/g/d;)V

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 190
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/j;->a()Lcom/alibaba/mtl/appmonitor/g/j;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/alibaba/mtl/appmonitor/g/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/i;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->g()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->g()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/alibaba/mtl/appmonitor/g/f;->b(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/e;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1

    .line 195
    const-class v1, Lcom/alibaba/mtl/appmonitor/a/c;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/c;

    .line 197
    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/a/c;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a/c;

    .line 199
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v0, p5}, Lcom/alibaba/mtl/appmonitor/a/c;->a(Ljava/lang/String;)V

    .line 205
    :cond_1
    return-void

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 219
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/mtl/appmonitor/a/c;

    .line 229
    if-eqz v6, :cond_1

    .line 230
    invoke-virtual {v6, p2}, Lcom/alibaba/mtl/appmonitor/a/c;->b(Ljava/lang/String;)Z

    move-result v0

    .line 231
    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    if-eqz p3, :cond_0

    .line 234
    iget-object v0, v6, Lcom/alibaba/mtl/appmonitor/a/c;->e:Ljava/lang/String;

    iget-object v1, v6, Lcom/alibaba/mtl/appmonitor/a/c;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/mtl/appmonitor/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    iget v1, v6, Lcom/alibaba/mtl/appmonitor/a/c;->h:I

    iget-object v2, v6, Lcom/alibaba/mtl/appmonitor/a/c;->e:Ljava/lang/String;

    iget-object v3, v6, Lcom/alibaba/mtl/appmonitor/a/c;->f:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/a/c;->b()Lcom/alibaba/mtl/appmonitor/g/h;

    move-result-object v4

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/a/c;->e()Lcom/alibaba/mtl/appmonitor/g/d;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/h;Lcom/alibaba/mtl/appmonitor/g/d;)V

    .line 238
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    .line 241
    :cond_1
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 351
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 360
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 361
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/a/c;

    .line 363
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/e;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 367
    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 371
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v1

    new-instance v2, Lcom/alibaba/mtl/appmonitor/a/e$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/mtl/appmonitor/a/e$1;-><init>(Lcom/alibaba/mtl/appmonitor/a/e;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/log/e/r;->a(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method
