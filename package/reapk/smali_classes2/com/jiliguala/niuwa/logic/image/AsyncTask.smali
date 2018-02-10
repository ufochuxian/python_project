.class public abstract Lcom/jiliguala/niuwa/logic/image/AsyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;,
        Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;,
        Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;,
        Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;,
        Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static c:Ljava/util/concurrent/ThreadPoolExecutor; = null

.field private static final d:Ljava/lang/String; = "AsyncTask"

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I = 0x1

.field private static final i:Ljava/util/concurrent/ThreadFactory;

.field private static final j:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:I = 0x1

.field private static final l:I = 0x2

.field private static final m:Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;

.field private static volatile n:Ljava/util/concurrent/Executor;


# instance fields
.field private final o:Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/logic/image/AsyncTask$d",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile s:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 177
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->e:I

    .line 178
    sget v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->f:I

    .line 179
    sget v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->g:I

    .line 183
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->i:Ljava/util/concurrent/ThreadFactory;

    .line 194
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;

    invoke-direct {v0, v10}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;-><init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;)V

    .line 195
    :goto_0
    sput-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->a:Ljava/util/concurrent/Executor;

    .line 196
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->j:Ljava/util/concurrent/BlockingQueue;

    .line 200
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->f:I

    sget v3, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->g:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->j:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->i:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->b:Ljava/util/concurrent/Executor;

    .line 204
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;

    invoke-direct {v0, v10}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;-><init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->m:Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;

    .line 206
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->a:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->n:Ljava/util/concurrent/Executor;

    return-void

    .line 194
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->i:Ljava/util/concurrent/ThreadFactory;

    .line 195
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 216
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 211
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;->PENDING:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->s:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    .line 217
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$2;-><init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->o:Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;

    .line 227
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$3;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->o:Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$3;-><init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->p:Ljava/util/concurrent/FutureTask;

    .line 241
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/image/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()Ljava/util/concurrent/Executor;
    .locals 10

    .prologue
    .line 244
    const-class v9, Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->f:I

    sget v3, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->g:I

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->i:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 250
    :cond_1
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->c:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/image/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 275
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->n:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 264
    sput-object p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->n:Ljava/util/concurrent/Executor;

    .line 265
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->m:Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;->getLooper()Landroid/os/Looper;

    .line 258
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/image/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/logic/image/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/AsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 280
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 287
    sget-object v1, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->m:Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;

    new-instance v2, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;-><init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 289
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->b(Ljava/lang/Object;)V

    .line 543
    :goto_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;->FINISHED:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->s:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    .line 544
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/jiliguala/niuwa/logic/image/AsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/jiliguala/niuwa/logic/image/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->s:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    sget-object v1, Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;->PENDING:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 501
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$4;->a:[I

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->s:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 510
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;->RUNNING:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->s:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    .line 512
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->d()V

    .line 514
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->o:Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;

    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;->b:[Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->p:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 517
    return-object p0

    .line 503
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->p:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method public final a(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 414
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 415
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->p:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->e()V

    .line 368
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method public final c()Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;
    .locals 1

    .prologue
    .line 297
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->s:Lcom/jiliguala/niuwa/logic/image/AsyncTask$Status;

    return-object v0
.end method

.method public final varargs c([Ljava/lang/Object;)Lcom/jiliguala/niuwa/logic/image/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/jiliguala/niuwa/logic/image/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->n:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 320
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs d([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->m:Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;

    const/4 v1, 0x2

    new-instance v2, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;-><init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 535
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 383
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 393
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->p:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
