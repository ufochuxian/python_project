.class Lrx/internal/operators/ax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ax;->a(Lrx/l;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lrx/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lrx/internal/operators/ax;


# direct methods
.method constructor <init>(Lrx/internal/operators/ax;Lrx/l;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/ax$1;, "Lrx/internal/operators/ax.1;"
    iput-object p1, p0, Lrx/internal/operators/ax$1;->c:Lrx/internal/operators/ax;

    iput-object p2, p0, Lrx/internal/operators/ax$1;->a:Lrx/l;

    iput-object p3, p0, Lrx/internal/operators/ax$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/m;)V
    .locals 4
    .param p1, "subscription"    # Lrx/m;

    .prologue
    .local p0, "this":Lrx/internal/operators/ax$1;, "Lrx/internal/operators/ax.1;"
    const/4 v3, 0x0

    .line 96
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/ax$1;->c:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->a:Lrx/i/b;

    invoke-virtual {v0, p1}, Lrx/i/b;->a(Lrx/m;)V

    .line 98
    iget-object v0, p0, Lrx/internal/operators/ax$1;->c:Lrx/internal/operators/ax;

    iget-object v1, p0, Lrx/internal/operators/ax$1;->a:Lrx/l;

    iget-object v2, p0, Lrx/internal/operators/ax$1;->c:Lrx/internal/operators/ax;

    iget-object v2, v2, Lrx/internal/operators/ax;->a:Lrx/i/b;

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/ax;->a(Lrx/l;Lrx/i/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lrx/internal/operators/ax$1;->c:Lrx/internal/operators/ax;

    iget-object v0, v0, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    iget-object v0, p0, Lrx/internal/operators/ax$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/ax$1;->c:Lrx/internal/operators/ax;

    iget-object v1, v1, Lrx/internal/operators/ax;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    iget-object v1, p0, Lrx/internal/operators/ax$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/ax$1;, "Lrx/internal/operators/ax.1;"
    check-cast p1, Lrx/m;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ax$1;->a(Lrx/m;)V

    return-void
.end method
