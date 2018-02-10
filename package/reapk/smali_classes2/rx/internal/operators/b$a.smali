.class final Lrx/internal/operators/b$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Semaphore;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field c:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/b$a;, "Lrx/internal/operators/b$a<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/b$a;->a:Ljava/util/concurrent/Semaphore;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/b$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a(Lrx/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/b$a;, "Lrx/internal/operators/b$a<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v1, p0, Lrx/internal/operators/b$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 69
    .local v0, "wasNotAvailable":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lrx/internal/operators/b$a;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 72
    :cond_0
    return-void

    .line 68
    .end local v0    # "wasNotAvailable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/b$a;, "Lrx/internal/operators/b$a<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 89
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->h()Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    if-nez v2, :cond_2

    .line 92
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/b$a;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    iget-object v2, p0, Lrx/internal/operators/b$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Notification;

    .line 101
    .local v1, "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iput-object v1, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    .line 102
    iget-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 93
    .end local v1    # "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/internal/operators/b$a;->unsubscribe()V

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 96
    invoke-static {v0}, Lrx/Notification;->a(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    .line 97
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 107
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    invoke-virtual {v2}, Lrx/Notification;->h()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/b$a;, "Lrx/internal/operators/b$a<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/b$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->c()Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/b$a;->c:Lrx/Notification;

    .line 116
    return-object v0

    .line 119
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/b$a;, "Lrx/internal/operators/b$a<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/b$a;, "Lrx/internal/operators/b$a<TT;>;"
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/b$a;, "Lrx/internal/operators/b$a<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/b$a;->a(Lrx/Notification;)V

    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/b$a;, "Lrx/internal/operators/b$a<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
