.class final Lrx/internal/operators/d$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/operators/d$b;, "Lrx/internal/operators/d$b<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 145
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/d$b;->b:Ljava/util/concurrent/BlockingQueue;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/d$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a()Lrx/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lrx/internal/operators/d$b;, "Lrx/internal/operators/d$b<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/internal/operators/d$b;->a(I)V

    .line 177
    iget-object v0, p0, Lrx/internal/operators/d$b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    return-object v0
.end method

.method a(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/operators/d$b;, "Lrx/internal/operators/d$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/d$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 181
    return-void
.end method

.method public a(Lrx/Notification;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lrx/internal/operators/d$b;, "Lrx/internal/operators/d$b<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v2, p0, Lrx/internal/operators/d$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lrx/Notification;->i()Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    :cond_0
    move-object v1, p1

    .line 163
    .local v1, "toOffer":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_1
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/d$b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    iget-object v2, p0, Lrx/internal/operators/d$b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 167
    .local v0, "concurrentItem":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrx/Notification;->i()Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    move-object v1, v0

    goto :goto_0

    .line 173
    .end local v0    # "concurrentItem":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    .end local v1    # "toOffer":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_2
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/operators/d$b;, "Lrx/internal/operators/d$b<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 156
    .local p0, "this":Lrx/internal/operators/d$b;, "Lrx/internal/operators/d$b<TT;>;"
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/operators/d$b;, "Lrx/internal/operators/d$b<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/d$b;->a(Lrx/Notification;)V

    return-void
.end method
