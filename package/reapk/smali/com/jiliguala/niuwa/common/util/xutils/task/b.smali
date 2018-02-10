.class public abstract Lcom/jiliguala/niuwa/common/util/xutils/task/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/xutils/task/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;,
        Lcom/jiliguala/niuwa/common/util/xutils/task/b$c;,
        Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;
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
        "Ljava/lang/Object;",
        "Lcom/jiliguala/niuwa/common/util/xutils/task/f;"
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;

.field public static final l:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Lcom/jiliguala/niuwa/common/util/xutils/task/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/task/b$c",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile h:Z

.field private i:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/c;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->l:Ljava/util/concurrent/Executor;

    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->h:Z

    .line 55
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$1;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/b$c;

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/b$c;

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->e:Ljava/util/concurrent/FutureTask;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/task/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/task/b;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/task/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;->DEFAULT:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->a(Ljava/lang/Runnable;Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;)V

    .line 90
    return-void
.end method

.method public static a(Ljava/lang/Runnable;Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "priority"    # Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    .prologue
    .line 100
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->l:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/jiliguala/niuwa/common/util/xutils/task/e;

    invoke-direct {v1, p1, p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/e;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/util/xutils/task/b;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/task/b;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/util/xutils/task/b;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/task/b;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->e(Ljava/lang/Object;)V

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
    .line 112
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 113
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
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
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 120
    sget-object v1, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;

    new-instance v2, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
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
    .line 364
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->a(Ljava/lang/Object;)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;
    .locals 3
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/b",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->h:Z

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->h:Z

    .line 338
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->c()V

    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->d:Lcom/jiliguala/niuwa/common/util/xutils/task/b$c;

    iput-object p2, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$c;->b:[Ljava/lang/Object;

    .line 341
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/e;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->i:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->e:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/e;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 343
    return-object p0
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
    .line 305
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->e:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;)V
    .locals 0
    .param p1, "priority"    # Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    .prologue
    .line 108
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->i:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    .line 109
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->d()V

    .line 193
    return-void
.end method

.method public final a(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 233
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->e:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->i:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
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
    .line 175
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected varargs abstract c([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 145
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 208
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public final varargs e([Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/b",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->l:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
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
    .line 283
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->e:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs f([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;

    const/4 v1, 0x2

    new-instance v2, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 361
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 254
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 258
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->a(Z)Z

    .line 263
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
