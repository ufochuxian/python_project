.class public final Lrx/internal/schedulers/b;
.super Lrx/h;
.source "SourceFile"

# interfaces
.implements Lrx/internal/schedulers/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/b$c;,
        Lrx/internal/schedulers/b$a;,
        Lrx/internal/schedulers/b$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "rx.scheduler.max-computation-threads"

.field static final b:I

.field static final c:Lrx/internal/schedulers/b$c;

.field static final d:Lrx/internal/schedulers/b$b;


# instance fields
.field final e:Ljava/util/concurrent/ThreadFactory;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/schedulers/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    const-string v3, "rx.scheduler.max-computation-threads"

    invoke-static {v3, v5}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 36
    .local v2, "maxThreads":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 38
    .local v0, "cpuCount":I
    if-lez v2, :cond_0

    if-le v2, v0, :cond_1

    .line 39
    :cond_0
    move v1, v0

    .line 43
    .local v1, "max":I
    :goto_0
    sput v1, Lrx/internal/schedulers/b;->b:I

    .line 48
    new-instance v3, Lrx/internal/schedulers/b$c;

    sget-object v4, Lrx/internal/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v3, v4}, Lrx/internal/schedulers/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v3, Lrx/internal/schedulers/b;->c:Lrx/internal/schedulers/b$c;

    .line 49
    sget-object v3, Lrx/internal/schedulers/b;->c:Lrx/internal/schedulers/b$c;

    invoke-virtual {v3}, Lrx/internal/schedulers/b$c;->unsubscribe()V

    .line 53
    new-instance v3, Lrx/internal/schedulers/b$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Lrx/internal/schedulers/b$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v3, Lrx/internal/schedulers/b;->d:Lrx/internal/schedulers/b$b;

    return-void

    .line 41
    .end local v1    # "max":I
    :cond_1
    move v1, v2

    .restart local v1    # "max":I
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 95
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 96
    iput-object p1, p0, Lrx/internal/schedulers/b;->e:Ljava/util/concurrent/ThreadFactory;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/b;->d:Lrx/internal/schedulers/b$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    invoke-virtual {p0}, Lrx/internal/schedulers/b;->a()V

    .line 99
    return-void
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 4
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 135
    iget-object v1, p0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/schedulers/b$b;

    invoke-virtual {v1}, Lrx/internal/schedulers/b$b;->a()Lrx/internal/schedulers/b$c;

    move-result-object v0

    .line 136
    .local v0, "pw":Lrx/internal/schedulers/b$c;
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lrx/internal/schedulers/b$c;->b(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v1

    return-object v1
.end method

.method public a()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lrx/internal/schedulers/b$b;

    iget-object v1, p0, Lrx/internal/schedulers/b;->e:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lrx/internal/schedulers/b;->b:I

    invoke-direct {v0, v1, v2}, Lrx/internal/schedulers/b$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 109
    .local v0, "update":Lrx/internal/schedulers/b$b;
    iget-object v1, p0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/b;->d:Lrx/internal/schedulers/b$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lrx/internal/schedulers/b$b;->b()V

    .line 112
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 117
    :cond_0
    iget-object v1, p0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/b$b;

    .line 118
    .local v0, "curr":Lrx/internal/schedulers/b$b;
    sget-object v1, Lrx/internal/schedulers/b;->d:Lrx/internal/schedulers/b$b;

    if-ne v0, v1, :cond_1

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/b;->d:Lrx/internal/schedulers/b$b;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lrx/internal/schedulers/b$b;->b()V

    goto :goto_0
.end method

.method public createWorker()Lrx/h$a;
    .locals 2

    .prologue
    .line 103
    new-instance v1, Lrx/internal/schedulers/b$a;

    iget-object v0, p0, Lrx/internal/schedulers/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/b$b;

    invoke-virtual {v0}, Lrx/internal/schedulers/b$b;->a()Lrx/internal/schedulers/b$c;

    move-result-object v0

    invoke-direct {v1, v0}, Lrx/internal/schedulers/b$a;-><init>(Lrx/internal/schedulers/b$c;)V

    return-object v1
.end method
