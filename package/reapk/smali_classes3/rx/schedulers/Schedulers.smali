.class public final Lrx/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/schedulers/Schedulers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lrx/h;

.field private final b:Lrx/h;

.field private final c:Lrx/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/schedulers/Schedulers;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lrx/f/f;->a()Lrx/f/f;

    move-result-object v4

    invoke-virtual {v4}, Lrx/f/f;->g()Lrx/f/g;

    move-result-object v1

    .line 79
    .local v1, "hook":Lrx/f/g;
    invoke-virtual {v1}, Lrx/f/g;->d()Lrx/h;

    move-result-object v0

    .line 80
    .local v0, "c":Lrx/h;
    if-eqz v0, :cond_0

    .line 81
    iput-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/h;

    .line 86
    :goto_0
    invoke-virtual {v1}, Lrx/f/g;->e()Lrx/h;

    move-result-object v2

    .line 87
    .local v2, "io":Lrx/h;
    if-eqz v2, :cond_1

    .line 88
    iput-object v2, p0, Lrx/schedulers/Schedulers;->b:Lrx/h;

    .line 93
    :goto_1
    invoke-virtual {v1}, Lrx/f/g;->f()Lrx/h;

    move-result-object v3

    .line 94
    .local v3, "nt":Lrx/h;
    if-eqz v3, :cond_2

    .line 95
    iput-object v3, p0, Lrx/schedulers/Schedulers;->c:Lrx/h;

    .line 99
    :goto_2
    return-void

    .line 83
    .end local v2    # "io":Lrx/h;
    .end local v3    # "nt":Lrx/h;
    :cond_0
    invoke-static {}, Lrx/f/g;->a()Lrx/h;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->a:Lrx/h;

    goto :goto_0

    .line 90
    .restart local v2    # "io":Lrx/h;
    :cond_1
    invoke-static {}, Lrx/f/g;->b()Lrx/h;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->b:Lrx/h;

    goto :goto_1

    .line 97
    .restart local v3    # "nt":Lrx/h;
    :cond_2
    invoke-static {}, Lrx/f/g;->c()Lrx/h;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->c:Lrx/h;

    goto :goto_2
.end method

.method private static c()Lrx/schedulers/Schedulers;
    .locals 3

    .prologue
    .line 62
    .local v0, "current":Lrx/schedulers/Schedulers;
    :goto_0
    sget-object v1, Lrx/schedulers/Schedulers;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lrx/schedulers/Schedulers;
    check-cast v0, Lrx/schedulers/Schedulers;

    .line 63
    .restart local v0    # "current":Lrx/schedulers/Schedulers;
    if-eqz v0, :cond_1

    .line 68
    :cond_0
    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lrx/schedulers/Schedulers;

    .end local v0    # "current":Lrx/schedulers/Schedulers;
    invoke-direct {v0}, Lrx/schedulers/Schedulers;-><init>()V

    .line 67
    .restart local v0    # "current":Lrx/schedulers/Schedulers;
    sget-object v1, Lrx/schedulers/Schedulers;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {v0}, Lrx/schedulers/Schedulers;->b()V

    goto :goto_0
.end method

.method public static computation()Lrx/h;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lrx/schedulers/Schedulers;->c()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->a:Lrx/h;

    invoke-static {v0}, Lrx/f/c;->a(Lrx/h;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lrx/h;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 181
    new-instance v0, Lrx/internal/schedulers/c;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/c;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static immediate()Lrx/h;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lrx/internal/schedulers/f;->a:Lrx/internal/schedulers/f;

    return-object v0
.end method

.method public static io()Lrx/h;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lrx/schedulers/Schedulers;->c()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->b:Lrx/h;

    invoke-static {v0}, Lrx/f/c;->b(Lrx/h;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public static newThread()Lrx/h;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lrx/schedulers/Schedulers;->c()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->c:Lrx/h;

    invoke-static {v0}, Lrx/f/c;->c(Lrx/h;)Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method public static reset()V
    .locals 3
    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 191
    sget-object v1, Lrx/schedulers/Schedulers;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/Schedulers;

    .line 192
    .local v0, "s":Lrx/schedulers/Schedulers;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lrx/schedulers/Schedulers;->b()V

    .line 195
    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lrx/schedulers/Schedulers;->c()Lrx/schedulers/Schedulers;

    move-result-object v0

    .line 216
    .local v0, "s":Lrx/schedulers/Schedulers;
    invoke-virtual {v0}, Lrx/schedulers/Schedulers;->b()V

    .line 218
    monitor-enter v0

    .line 219
    :try_start_0
    sget-object v1, Lrx/internal/schedulers/d;->a:Lrx/internal/schedulers/d;

    invoke-virtual {v1}, Lrx/internal/schedulers/d;->b()V

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lrx/schedulers/Schedulers;->c()Lrx/schedulers/Schedulers;

    move-result-object v0

    .line 204
    .local v0, "s":Lrx/schedulers/Schedulers;
    invoke-virtual {v0}, Lrx/schedulers/Schedulers;->a()V

    .line 206
    monitor-enter v0

    .line 207
    :try_start_0
    sget-object v1, Lrx/internal/schedulers/d;->a:Lrx/internal/schedulers/d;

    invoke-virtual {v1}, Lrx/internal/schedulers/d;->a()V

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static test()Lrx/schedulers/TestScheduler;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lrx/schedulers/TestScheduler;

    invoke-direct {v0}, Lrx/schedulers/TestScheduler;-><init>()V

    return-object v0
.end method

.method public static trampoline()Lrx/h;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lrx/internal/schedulers/m;->a:Lrx/internal/schedulers/m;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/h;

    instance-of v0, v0, Lrx/internal/schedulers/j;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/h;

    check-cast v0, Lrx/internal/schedulers/j;

    invoke-interface {v0}, Lrx/internal/schedulers/j;->a()V

    .line 230
    :cond_0
    iget-object v0, p0, Lrx/schedulers/Schedulers;->b:Lrx/h;

    instance-of v0, v0, Lrx/internal/schedulers/j;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lrx/schedulers/Schedulers;->b:Lrx/h;

    check-cast v0, Lrx/internal/schedulers/j;

    invoke-interface {v0}, Lrx/internal/schedulers/j;->a()V

    .line 233
    :cond_1
    iget-object v0, p0, Lrx/schedulers/Schedulers;->c:Lrx/h;

    instance-of v0, v0, Lrx/internal/schedulers/j;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lrx/schedulers/Schedulers;->c:Lrx/h;

    check-cast v0, Lrx/internal/schedulers/j;

    invoke-interface {v0}, Lrx/internal/schedulers/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_2
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/h;

    instance-of v0, v0, Lrx/internal/schedulers/j;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lrx/schedulers/Schedulers;->a:Lrx/h;

    check-cast v0, Lrx/internal/schedulers/j;

    invoke-interface {v0}, Lrx/internal/schedulers/j;->b()V

    .line 245
    :cond_0
    iget-object v0, p0, Lrx/schedulers/Schedulers;->b:Lrx/h;

    instance-of v0, v0, Lrx/internal/schedulers/j;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lrx/schedulers/Schedulers;->b:Lrx/h;

    check-cast v0, Lrx/internal/schedulers/j;

    invoke-interface {v0}, Lrx/internal/schedulers/j;->b()V

    .line 248
    :cond_1
    iget-object v0, p0, Lrx/schedulers/Schedulers;->c:Lrx/h;

    instance-of v0, v0, Lrx/internal/schedulers/j;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lrx/schedulers/Schedulers;->c:Lrx/h;

    check-cast v0, Lrx/internal/schedulers/j;

    invoke-interface {v0}, Lrx/internal/schedulers/j;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_2
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
