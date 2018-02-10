.class public Lcom/jiliguala/niuwa/common/util/xutils/task/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final a:I = 0x5

.field private static final b:I = 0x100

.field private static final c:I = 0x1

.field private static final d:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/c$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/c$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->d:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/c;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 9
    .param p1, "poolSize"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->e:Ljava/util/concurrent/BlockingQueue;

    .line 38
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v3, 0x100

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->d:Ljava/util/concurrent/ThreadFactory;

    move v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1
    .param p1, "poolSize"    # I

    .prologue
    .line 46
    if-lez p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 49
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method
