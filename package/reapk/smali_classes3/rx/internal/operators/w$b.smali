.class final Lrx/internal/operators/w$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/w;
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
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/w$a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lrx/internal/operators/w$a",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lrx/internal/operators/w$b;, "Lrx/internal/operators/w$b<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 340
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/w$b;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public unsubscribeLosers()V
    .locals 1

    .prologue
    .line 343
    .local p0, "this":Lrx/internal/operators/w$b;, "Lrx/internal/operators/w$b<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/w$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/w$a;

    .line 344
    .local v0, "winner":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Lrx/internal/operators/w$b;->unsubscribeOthers(Lrx/internal/operators/w$a;)V

    .line 347
    :cond_0
    return-void
.end method

.method public unsubscribeOthers(Lrx/internal/operators/w$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/w$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lrx/internal/operators/w$b;, "Lrx/internal/operators/w$b<TT;>;"
    .local p1, "notThis":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/w$b;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/w$a;

    .line 351
    .local v1, "other":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    if-eq v1, p1, :cond_0

    .line 352
    invoke-virtual {v1}, Lrx/internal/operators/w$a;->unsubscribe()V

    goto :goto_0

    .line 355
    .end local v1    # "other":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/w$b;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 356
    return-void
.end method
