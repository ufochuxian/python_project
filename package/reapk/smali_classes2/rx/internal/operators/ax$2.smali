.class Lrx/internal/operators/ax$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ax;->a(Lrx/l;Lrx/i/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/i/b;

.field final synthetic c:Lrx/internal/operators/ax;


# direct methods
.method constructor <init>(Lrx/internal/operators/ax;Lrx/l;Lrx/l;Lrx/i/b;)V
    .locals 0

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/ax$2;, "Lrx/internal/operators/ax.2;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/ax$2;->c:Lrx/internal/operators/ax;

    iput-object p3, p0, Lrx/internal/operators/ax$2;->a:Lrx/l;

    iput-object p4, p0, Lrx/internal/operators/ax$2;->b:Lrx/i/b;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/ax$2;, "Lrx/internal/operators/ax.2;"
    iget-object v0, p0, Lrx/internal/operators/ax$2;->c:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ax$2;->c:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->a:Lrx/i/b;

    iget-object v1, p0, Lrx/internal/operators/ax$2;->b:Lrx/i/b;

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lrx/internal/operators/ax$2;->c:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->a:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 134
    iget-object v0, p0, Lrx/internal/operators/ax$2;->c:Lrx/internal/operators/ax;

    new-instance v1, Lrx/i/b;

    invoke-direct {v1}, Lrx/i/b;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/ax;->a:Lrx/i/b;

    .line 135
    iget-object v0, p0, Lrx/internal/operators/ax$2;->c:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/ax$2;->c:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/ax$2;->c:Lrx/internal/operators/ax;

    iget-object v1, v1, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/ax$2;, "Lrx/internal/operators/ax.2;"
    invoke-virtual {p0}, Lrx/internal/operators/ax$2;->a()V

    .line 125
    iget-object v0, p0, Lrx/internal/operators/ax$2;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 126
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/ax$2;, "Lrx/internal/operators/ax.2;"
    invoke-virtual {p0}, Lrx/internal/operators/ax$2;->a()V

    .line 116
    iget-object v0, p0, Lrx/internal/operators/ax$2;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/ax$2;, "Lrx/internal/operators/ax.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/ax$2;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 121
    return-void
.end method
