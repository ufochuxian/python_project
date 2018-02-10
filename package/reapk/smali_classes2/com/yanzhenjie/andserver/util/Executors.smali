.class public Lcom/yanzhenjie/andserver/util/Executors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/yanzhenjie/andserver/util/Executors;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private final mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/andserver/util/Executors;->mService:Ljava/util/concurrent/ExecutorService;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/yanzhenjie/andserver/util/Executors;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method public static getInstance()Lcom/yanzhenjie/andserver/util/Executors;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/yanzhenjie/andserver/util/Executors;->instance:Lcom/yanzhenjie/andserver/util/Executors;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/yanzhenjie/andserver/util/Executors;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/yanzhenjie/andserver/util/Executors;->instance:Lcom/yanzhenjie/andserver/util/Executors;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/yanzhenjie/andserver/util/Executors;

    invoke-direct {v0}, Lcom/yanzhenjie/andserver/util/Executors;-><init>()V

    sput-object v0, Lcom/yanzhenjie/andserver/util/Executors;->instance:Lcom/yanzhenjie/andserver/util/Executors;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/yanzhenjie/andserver/util/Executors;->instance:Lcom/yanzhenjie/andserver/util/Executors;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public executorService(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yanzhenjie/andserver/util/Executors;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public handler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 75
    sget-object v0, Lcom/yanzhenjie/andserver/util/Executors;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method
