.class public final Lrx/internal/schedulers/ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/ScheduledAction$c;,
        Lrx/internal/schedulers/ScheduledAction$b;,
        Lrx/internal/schedulers/ScheduledAction$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x36fd4556f787c9b1L


# instance fields
.field final action:Lrx/c/b;

.field final cancel:Lrx/internal/util/m;


# direct methods
.method public constructor <init>(Lrx/c/b;)V
    .locals 1
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/c/b;

    .line 40
    new-instance v0, Lrx/internal/util/m;

    invoke-direct {v0}, Lrx/internal/util/m;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    .line 41
    return-void
.end method

.method public constructor <init>(Lrx/c/b;Lrx/i/b;)V
    .locals 2
    .param p1, "action"    # Lrx/c/b;
    .param p2, "parent"    # Lrx/i/b;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/c/b;

    .line 44
    new-instance v0, Lrx/internal/util/m;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$b;

    invoke-direct {v1, p0, p2}, Lrx/internal/schedulers/ScheduledAction$b;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/i/b;)V

    invoke-direct {v0, v1}, Lrx/internal/util/m;-><init>(Lrx/m;)V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    .line 45
    return-void
.end method

.method public constructor <init>(Lrx/c/b;Lrx/internal/util/m;)V
    .locals 2
    .param p1, "action"    # Lrx/c/b;
    .param p2, "parent"    # Lrx/internal/util/m;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/c/b;

    .line 48
    new-instance v0, Lrx/internal/util/m;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$c;

    invoke-direct {v1, p0, p2}, Lrx/internal/schedulers/ScheduledAction$c;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/internal/util/m;)V

    invoke-direct {v0, v1}, Lrx/internal/util/m;-><init>(Lrx/m;)V

    iput-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    .line 49
    return-void
.end method


# virtual methods
.method public add(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$a;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$a;-><init>(Lrx/internal/schedulers/ScheduledAction;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/m;->a(Lrx/m;)V

    .line 100
    return-void
.end method

.method public add(Lrx/m;)V
    .locals 1
    .param p1, "s"    # Lrx/m;

    .prologue
    .line 90
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    invoke-virtual {v0, p1}, Lrx/internal/util/m;->a(Lrx/m;)V

    .line 91
    return-void
.end method

.method public addParent(Lrx/i/b;)V
    .locals 2
    .param p1, "parent"    # Lrx/i/b;

    .prologue
    .line 110
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$b;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$b;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/i/b;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/m;->a(Lrx/m;)V

    .line 111
    return-void
.end method

.method public addParent(Lrx/internal/util/m;)V
    .locals 2
    .param p1, "parent"    # Lrx/internal/util/m;

    .prologue
    .line 121
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    new-instance v1, Lrx/internal/schedulers/ScheduledAction$c;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/ScheduledAction$c;-><init>(Lrx/internal/schedulers/ScheduledAction;Lrx/internal/util/m;)V

    invoke-virtual {v0, v1}, Lrx/internal/util/m;->a(Lrx/m;)V

    .line 122
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    invoke-virtual {v0}, Lrx/internal/util/m;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/internal/schedulers/ScheduledAction;->lazySet(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lrx/internal/schedulers/ScheduledAction;->action:Lrx/c/b;

    invoke-interface {v1}, Lrx/c/b;->call()V
    :try_end_0
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    .line 63
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lrx/exceptions/OnErrorNotImplementedException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lrx/internal/schedulers/ScheduledAction;->signalError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    goto :goto_0

    .line 58
    .end local v0    # "e":Lrx/exceptions/OnErrorNotImplementedException;
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lrx/internal/schedulers/ScheduledAction;->signalError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/schedulers/ScheduledAction;->unsubscribe()V

    throw v1
.end method

.method signalError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ie"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 68
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    invoke-virtual {v0}, Lrx/internal/util/m;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction;->cancel:Lrx/internal/util/m;

    invoke-virtual {v0}, Lrx/internal/util/m;->unsubscribe()V

    .line 81
    :cond_0
    return-void
.end method
