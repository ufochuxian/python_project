.class Lrx/internal/operators/cj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cj;->h(Lrx/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lrx/internal/operators/cj;


# direct methods
.method constructor <init>(Lrx/internal/operators/cj;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/cj$2;, "Lrx/internal/operators/cj.2;"
    iput-object p1, p0, Lrx/internal/operators/cj$2;->b:Lrx/internal/operators/cj;

    iput-object p2, p0, Lrx/internal/operators/cj$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/cj$2;, "Lrx/internal/operators/cj.2;"
    iget-object v1, p0, Lrx/internal/operators/cj$2;->b:Lrx/internal/operators/cj;

    iget-object v2, v1, Lrx/internal/operators/cj;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/cj$2;->b:Lrx/internal/operators/cj;

    iget-object v1, v1, Lrx/internal/operators/cj;->h:Lrx/m;

    iget-object v3, p0, Lrx/internal/operators/cj$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 99
    iget-object v1, p0, Lrx/internal/operators/cj$2;->b:Lrx/internal/operators/cj;

    iget-object v0, v1, Lrx/internal/operators/cj;->g:Lrx/l;

    .line 100
    .local v0, "s":Lrx/m;
    iget-object v1, p0, Lrx/internal/operators/cj$2;->b:Lrx/internal/operators/cj;

    const/4 v3, 0x0

    iput-object v3, v1, Lrx/internal/operators/cj;->g:Lrx/l;

    .line 101
    iget-object v1, p0, Lrx/internal/operators/cj$2;->b:Lrx/internal/operators/cj;

    const/4 v3, 0x0

    iput-object v3, v1, Lrx/internal/operators/cj;->h:Lrx/m;

    .line 102
    iget-object v1, p0, Lrx/internal/operators/cj$2;->b:Lrx/internal/operators/cj;

    iget-object v1, v1, Lrx/internal/operators/cj;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 106
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 110
    .end local v0    # "s":Lrx/m;
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
