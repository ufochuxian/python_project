.class public Lcom/jiliguala/niuwa/common/util/xutils/util/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/jiliguala/niuwa/common/util/xutils/util/l;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->c:Lcom/jiliguala/niuwa/common/util/xutils/util/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/common/util/xutils/util/l;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->c:Lcom/jiliguala/niuwa/common/util/xutils/util/l;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x3

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 40
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x3

    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 60
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 76
    :cond_0
    return-void
.end method
