.class Lrx/internal/operators/ax$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ax;->a(Lrx/i/b;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i/b;

.field final synthetic b:Lrx/internal/operators/ax;


# direct methods
.method constructor <init>(Lrx/internal/operators/ax;Lrx/i/b;)V
    .locals 0

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/operators/ax$3;, "Lrx/internal/operators/ax.3;"
    iput-object p1, p0, Lrx/internal/operators/ax$3;->b:Lrx/internal/operators/ax;

    iput-object p2, p0, Lrx/internal/operators/ax$3;->a:Lrx/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/ax$3;, "Lrx/internal/operators/ax.3;"
    iget-object v0, p0, Lrx/internal/operators/ax$3;->b:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 150
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ax$3;->b:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->a:Lrx/i/b;

    iget-object v1, p0, Lrx/internal/operators/ax$3;->a:Lrx/i/b;

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lrx/internal/operators/ax$3;->b:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lrx/internal/operators/ax$3;->b:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->a:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 155
    iget-object v0, p0, Lrx/internal/operators/ax$3;->b:Lrx/internal/operators/ax;

    new-instance v1, Lrx/i/b;

    invoke-direct {v1}, Lrx/i/b;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/ax;->a:Lrx/i/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/ax$3;->b:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/ax$3;->b:Lrx/internal/operators/ax;

    iget-object v1, v1, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
