.class public Lcom/iflytek/sunflower/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/iflytek/sunflower/a;

.field private static c:Landroid/content/Context;


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field private final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/sunflower/a;->b:Lcom/iflytek/sunflower/a;

    sput-object v0, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_0

    sput-object p1, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatisLogAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/sunflower/a;
    .locals 1

    sget-object v0, Lcom/iflytek/sunflower/a;->b:Lcom/iflytek/sunflower/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/sunflower/a;

    invoke-direct {v0, p0}, Lcom/iflytek/sunflower/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/sunflower/a;->b:Lcom/iflytek/sunflower/a;

    :goto_0
    sget-object v0, Lcom/iflytek/sunflower/a;->b:Lcom/iflytek/sunflower/a;

    return-object v0

    :cond_0
    sput-object p0, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    goto :goto_0
.end method

.method private d()Z
    .locals 6

    const/4 v0, 0x0

    sget v1, Lcom/iflytek/sunflower/config/a;->l:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/sunflower/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/iflytek/sunflower/config/b;->g:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v1, Lcom/iflytek/sunflower/config/a;->m:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/sunflower/config/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sunflower/task/h;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/sunflower/task/h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/iflytek/sunflower/OnlineConfigListener;)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/sunflower/task/i;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/iflytek/sunflower/task/i;-><init>(Landroid/content/Context;Lcom/iflytek/sunflower/OnlineConfigListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/iflytek/sunflower/a/c;

    invoke-direct {v0}, Lcom/iflytek/sunflower/a/c;-><init>()V

    sget-object v1, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/sunflower/a/c;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/iflytek/sunflower/a/c;->c:J

    invoke-static {p1}, Lcom/iflytek/sunflower/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/sunflower/a/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/iflytek/sunflower/task/b;

    invoke-direct {v2, v0}, Lcom/iflytek/sunflower/task/b;-><init>(Lcom/iflytek/sunflower/a/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "destUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object p2, Lcom/iflytek/sunflower/config/a;->t:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "updateConfigUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object p2, Lcom/iflytek/sunflower/config/a;->u:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "deviceid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-object p2, Lcom/iflytek/sunflower/config/a;->v:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "caller.appid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-object p2, Lcom/iflytek/sunflower/config/a;->w:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "net.mac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-object p2, Lcom/iflytek/sunflower/config/a;->x:Ljava/lang/String;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/iflytek/sunflower/config/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/iflytek/sunflower/c/g;->b(Z)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/sunflower/task/c;

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/sunflower/task/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/iflytek/sunflower/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/sunflower/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sunflower/task/d;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/iflytek/sunflower/task/d;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iflytek/sunflower/config/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Collector"

    const-string v1, "onPause called without context from corresponding onResume"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sunflower/task/g;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/sunflower/task/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/iflytek/sunflower/b;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/sunflower/b;-><init>(Lcom/iflytek/sunflower/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/sunflower/task/c;

    const/4 v2, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/sunflower/task/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sunflower/task/SendTask;

    sget-object v2, Lcom/iflytek/sunflower/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/sunflower/task/SendTask;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/iflytek/sunflower/c;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/sunflower/c;-><init>(Lcom/iflytek/sunflower/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/sunflower/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sunflower/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/sunflower/task/c;

    const/4 v2, 0x2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/sunflower/task/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/iflytek/sunflower/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/sunflower/a;->c()V

    :cond_0
    return-void
.end method
