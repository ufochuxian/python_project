.class public Lio/fabric/sdk/android/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "Fabric"

.field static final b:Ljava/lang/String; = ".Fabric"

.field static volatile c:Lio/fabric/sdk/android/d;

.field static final d:Lio/fabric/sdk/android/l;

.field static final e:Z


# instance fields
.field final f:Lio/fabric/sdk/android/l;

.field final g:Z

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private final k:Landroid/os/Handler;

.field private final l:Lio/fabric/sdk/android/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/g",
            "<",
            "Lio/fabric/sdk/android/d;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lio/fabric/sdk/android/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/g",
            "<*>;"
        }
    .end annotation
.end field

.field private final n:Lio/fabric/sdk/android/services/common/IdManager;

.field private o:Lio/fabric/sdk/android/a;

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lio/fabric/sdk/android/c;

    invoke-direct {v0}, Lio/fabric/sdk/android/c;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/d;->d:Lio/fabric/sdk/android/l;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/j;Landroid/os/Handler;Lio/fabric/sdk/android/l;ZLio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/common/IdManager;Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "threadPoolExecutor"    # Lio/fabric/sdk/android/services/concurrency/j;
    .param p4, "mainHandler"    # Landroid/os/Handler;
    .param p5, "logger"    # Lio/fabric/sdk/android/l;
    .param p6, "debuggable"    # Z
    .param p7, "callback"    # Lio/fabric/sdk/android/g;
    .param p8, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;
    .param p9, "rootActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/services/concurrency/j;",
            "Landroid/os/Handler;",
            "Lio/fabric/sdk/android/l;",
            "Z",
            "Lio/fabric/sdk/android/g;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "kits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/fabric/sdk/android/i;>;Lio/fabric/sdk/android/i;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lio/fabric/sdk/android/d;->h:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Lio/fabric/sdk/android/d;->i:Ljava/util/Map;

    .line 287
    iput-object p3, p0, Lio/fabric/sdk/android/d;->j:Ljava/util/concurrent/ExecutorService;

    .line 288
    iput-object p4, p0, Lio/fabric/sdk/android/d;->k:Landroid/os/Handler;

    .line 289
    iput-object p5, p0, Lio/fabric/sdk/android/d;->f:Lio/fabric/sdk/android/l;

    .line 290
    iput-boolean p6, p0, Lio/fabric/sdk/android/d;->g:Z

    .line 291
    iput-object p7, p0, Lio/fabric/sdk/android/d;->l:Lio/fabric/sdk/android/g;

    .line 292
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/fabric/sdk/android/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 293
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/d;->a(I)Lio/fabric/sdk/android/g;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/d;->m:Lio/fabric/sdk/android/g;

    .line 294
    iput-object p8, p0, Lio/fabric/sdk/android/d;->n:Lio/fabric/sdk/android/services/common/IdManager;

    .line 295
    invoke-virtual {p0, p9}, Lio/fabric/sdk/android/d;->a(Landroid/app/Activity;)Lio/fabric/sdk/android/d;

    .line 296
    return-void
.end method

.method static a()Lio/fabric/sdk/android/d;
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;[Lio/fabric/sdk/android/i;)Lio/fabric/sdk/android/d;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "kits"    # [Lio/fabric/sdk/android/i;

    .prologue
    .line 310
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    if-nez v0, :cond_1

    .line 311
    const-class v1, Lio/fabric/sdk/android/d;

    monitor-enter v1

    .line 312
    :try_start_0
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lio/fabric/sdk/android/d$a;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/d$a;->a([Lio/fabric/sdk/android/i;)Lio/fabric/sdk/android/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/d$a;->a()Lio/fabric/sdk/android/d;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/d;->d(Lio/fabric/sdk/android/d;)V

    .line 315
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_1
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    return-object v0

    .line 315
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lio/fabric/sdk/android/d;)Lio/fabric/sdk/android/d;
    .locals 2
    .param p0, "fabric"    # Lio/fabric/sdk/android/d;

    .prologue
    .line 330
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    if-nez v0, :cond_1

    .line 331
    const-class v1, Lio/fabric/sdk/android/d;

    monitor-enter v1

    .line 332
    :try_start_0
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    if-nez v0, :cond_0

    .line 333
    invoke-static {p0}, Lio/fabric/sdk/android/d;->d(Lio/fabric/sdk/android/d;)V

    .line 335
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_1
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    return-object v0

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/Class;)Lio/fabric/sdk/android/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/fabric/sdk/android/i;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lio/fabric/sdk/android/d;->a()Lio/fabric/sdk/android/d;

    move-result-object v0

    iget-object v0, v0, Lio/fabric/sdk/android/d;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/i;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .prologue
    .line 48
    invoke-static {p0}, Lio/fabric/sdk/android/d;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/fabric/sdk/android/i;>;Lio/fabric/sdk/android/i;>;"
    .local p1, "kits":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/fabric/sdk/android/i;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/i;

    .line 582
    .local v0, "kit":Lio/fabric/sdk/android/i;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    instance-of v2, v0, Lio/fabric/sdk/android/j;

    if-eqz v2, :cond_0

    .line 585
    check-cast v0, Lio/fabric/sdk/android/j;

    .end local v0    # "kit":Lio/fabric/sdk/android/i;
    invoke-interface {v0}, Lio/fabric/sdk/android/j;->getKits()Ljava/util/Collection;

    move-result-object v2

    invoke-static {p0, v2}, Lio/fabric/sdk/android/d;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 588
    :cond_1
    return-void
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/i;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "kits":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/fabric/sdk/android/i;>;"
    new-instance v0, Ljava/util/HashMap;

    .line 571
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 573
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<+Lio/fabric/sdk/android/i;>;Lio/fabric/sdk/android/i;>;"
    invoke-static {v0, p0}, Lio/fabric/sdk/android/d;->a(Ljava/util/Map;Ljava/util/Collection;)V

    .line 575
    return-object v0
.end method

.method static synthetic b(Lio/fabric/sdk/android/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lio/fabric/sdk/android/d;

    .prologue
    .line 48
    iget-object v0, p0, Lio/fabric/sdk/android/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lio/fabric/sdk/android/d;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lio/fabric/sdk/android/d;)Lio/fabric/sdk/android/g;
    .locals 1
    .param p0, "x0"    # Lio/fabric/sdk/android/d;

    .prologue
    .line 48
    iget-object v0, p0, Lio/fabric/sdk/android/d;->l:Lio/fabric/sdk/android/g;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 490
    check-cast p0, Landroid/app/Activity;

    .line 492
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static d(Lio/fabric/sdk/android/d;)V
    .locals 0
    .param p0, "fabric"    # Lio/fabric/sdk/android/d;

    .prologue
    .line 341
    sput-object p0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    .line 342
    invoke-direct {p0}, Lio/fabric/sdk/android/d;->n()V

    .line 343
    return-void
.end method

.method public static i()Lio/fabric/sdk/android/l;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    if-nez v0, :cond_0

    .line 533
    sget-object v0, Lio/fabric/sdk/android/d;->d:Lio/fabric/sdk/android/l;

    .line 535
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    iget-object v0, v0, Lio/fabric/sdk/android/d;->f:Lio/fabric/sdk/android/l;

    goto :goto_0
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    iget-boolean v0, v0, Lio/fabric/sdk/android/d;->g:Z

    goto :goto_0
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 552
    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    if-eqz v0, :cond_0

    sget-object v0, Lio/fabric/sdk/android/d;->c:Lio/fabric/sdk/android/d;

    iget-object v0, v0, Lio/fabric/sdk/android/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 365
    new-instance v0, Lio/fabric/sdk/android/a;

    iget-object v1, p0, Lio/fabric/sdk/android/d;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/fabric/sdk/android/d;->o:Lio/fabric/sdk/android/a;

    .line 366
    iget-object v0, p0, Lio/fabric/sdk/android/d;->o:Lio/fabric/sdk/android/a;

    new-instance v1, Lio/fabric/sdk/android/d$1;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/d$1;-><init>(Lio/fabric/sdk/android/d;)V

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/a;->a(Lio/fabric/sdk/android/a$b;)Z

    .line 384
    iget-object v0, p0, Lio/fabric/sdk/android/d;->h:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/d;->a(Landroid/content/Context;)V

    .line 385
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lio/fabric/sdk/android/d;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/fabric/sdk/android/d;->p:Ljava/lang/ref/WeakReference;

    .line 350
    return-object p0
.end method

.method a(I)Lio/fabric/sdk/android/g;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/fabric/sdk/android/g",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Lio/fabric/sdk/android/d$2;

    invoke-direct {v0, p0, p1}, Lio/fabric/sdk/android/d$2;-><init>(Lio/fabric/sdk/android/d;I)V

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    .line 405
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/d;->b(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 407
    .local v1, "installedKitsFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/Map<Ljava/lang/String;Lio/fabric/sdk/android/k;>;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/d;->h()Ljava/util/Collection;

    move-result-object v5

    .line 408
    .local v5, "providedKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/i;>;"
    new-instance v4, Lio/fabric/sdk/android/m;

    invoke-direct {v4, v1, v5}, Lio/fabric/sdk/android/m;-><init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V

    .line 409
    .local v4, "onboarding":Lio/fabric/sdk/android/m;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 410
    .local v3, "kits":Ljava/util/List;, "Ljava/util/List<Lio/fabric/sdk/android/i;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 414
    sget-object v6, Lio/fabric/sdk/android/g;->d:Lio/fabric/sdk/android/g;

    iget-object v7, p0, Lio/fabric/sdk/android/d;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v4, p1, p0, v6, v7}, Lio/fabric/sdk/android/m;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/d;Lio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/common/IdManager;)V

    .line 415
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/i;

    .line 416
    .local v2, "kit":Lio/fabric/sdk/android/i;
    iget-object v7, p0, Lio/fabric/sdk/android/d;->m:Lio/fabric/sdk/android/g;

    iget-object v8, p0, Lio/fabric/sdk/android/d;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v2, p1, p0, v7, v8}, Lio/fabric/sdk/android/i;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/d;Lio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/common/IdManager;)V

    goto :goto_0

    .line 421
    .end local v2    # "kit":Lio/fabric/sdk/android/i;
    :cond_0
    invoke-virtual {v4}, Lio/fabric/sdk/android/m;->initialize()V

    .line 425
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "Fabric"

    const/4 v8, 0x3

    invoke-interface {v6, v7, v8}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Initializing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lio/fabric/sdk/android/d;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [Version: "

    .line 428
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 429
    invoke-virtual {p0}, Lio/fabric/sdk/android/d;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], with the following kits:\n"

    .line 430
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    .local v0, "initInfo":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/i;

    .line 436
    .restart local v2    # "kit":Lio/fabric/sdk/android/i;
    iget-object v7, v2, Lio/fabric/sdk/android/i;->initializationTask:Lio/fabric/sdk/android/h;

    iget-object v8, v4, Lio/fabric/sdk/android/m;->initializationTask:Lio/fabric/sdk/android/h;

    invoke-virtual {v7, v8}, Lio/fabric/sdk/android/h;->a(Lio/fabric/sdk/android/services/concurrency/k;)V

    .line 438
    iget-object v7, p0, Lio/fabric/sdk/android/d;->i:Ljava/util/Map;

    invoke-virtual {p0, v7, v2}, Lio/fabric/sdk/android/d;->a(Ljava/util/Map;Lio/fabric/sdk/android/i;)V

    .line 440
    invoke-virtual {v2}, Lio/fabric/sdk/android/i;->initialize()V

    .line 442
    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v2}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " [Version: "

    .line 444
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 445
    invoke-virtual {v2}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\n"

    .line 446
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 432
    .end local v0    # "initInfo":Ljava/lang/StringBuilder;
    .end local v2    # "kit":Lio/fabric/sdk/android/i;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "initInfo":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 450
    :cond_3
    if-eqz v0, :cond_4

    .line 451
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v6

    const-string v7, "Fabric"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_4
    return-void
.end method

.method a(Ljava/util/Map;Lio/fabric/sdk/android/i;)V
    .locals 9
    .param p2, "dependentKit"    # Lio/fabric/sdk/android/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ">;",
            "Lio/fabric/sdk/android/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "kits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/fabric/sdk/android/i;>;Lio/fabric/sdk/android/i;>;"
    iget-object v2, p2, Lio/fabric/sdk/android/i;->dependsOnAnnotation:Lio/fabric/sdk/android/services/concurrency/c;

    .line 462
    .local v2, "dependsOn":Lio/fabric/sdk/android/services/concurrency/c;
    if-eqz v2, :cond_4

    .line 463
    invoke-interface {v2}, Lio/fabric/sdk/android/services/concurrency/c;->a()[Ljava/lang/Class;

    move-result-object v0

    .line 464
    .local v0, "dependencies":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v1, v0, v5

    .line 465
    .local v1, "dependency":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/i;

    .line 468
    .local v3, "kit":Lio/fabric/sdk/android/i;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 469
    iget-object v7, p2, Lio/fabric/sdk/android/i;->initializationTask:Lio/fabric/sdk/android/h;

    iget-object v8, v3, Lio/fabric/sdk/android/i;->initializationTask:Lio/fabric/sdk/android/h;

    invoke-virtual {v7, v8}, Lio/fabric/sdk/android/h;->a(Lio/fabric/sdk/android/services/concurrency/k;)V

    goto :goto_1

    .line 475
    .end local v3    # "kit":Lio/fabric/sdk/android/i;
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/fabric/sdk/android/i;

    .line 476
    .restart local v3    # "kit":Lio/fabric/sdk/android/i;
    if-nez v3, :cond_2

    .line 477
    new-instance v4, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string v5, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v4, v5}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 481
    :cond_2
    iget-object v7, p2, Lio/fabric/sdk/android/i;->initializationTask:Lio/fabric/sdk/android/h;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/i;

    iget-object v4, v4, Lio/fabric/sdk/android/i;->initializationTask:Lio/fabric/sdk/android/h;

    invoke-virtual {v7, v4}, Lio/fabric/sdk/android/h;->a(Lio/fabric/sdk/android/services/concurrency/k;)V

    .line 464
    .end local v3    # "kit":Lio/fabric/sdk/android/i;
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 486
    .end local v0    # "dependencies":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "dependency":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lio/fabric/sdk/android/d;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lio/fabric/sdk/android/d;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 361
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/k;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 614
    new-instance v1, Lio/fabric/sdk/android/f;

    .line 615
    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/f;-><init>(Ljava/lang/String;)V

    .line 616
    .local v1, "fabricKitsFinder":Lio/fabric/sdk/android/f;
    invoke-virtual {p0}, Lio/fabric/sdk/android/d;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 617
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    return-object v2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const-string v0, "1.3.17.dev"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public e()Lio/fabric/sdk/android/a;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lio/fabric/sdk/android/d;->o:Lio/fabric/sdk/android/a;

    return-object v0
.end method

.method public f()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lio/fabric/sdk/android/d;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public g()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lio/fabric/sdk/android/d;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lio/fabric/sdk/android/d;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lio/fabric/sdk/android/d;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lio/fabric/sdk/android/d;->n:Lio/fabric/sdk/android/services/common/IdManager;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
