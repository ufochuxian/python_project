.class Lrx/internal/operators/cs$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cs;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lrx/e/g;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic d:Lrx/internal/operators/cs;


# direct methods
.method constructor <init>(Lrx/internal/operators/cs;Ljava/util/concurrent/atomic/AtomicReference;Lrx/e/g;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/cs$1;, "Lrx/internal/operators/cs.1;"
    iput-object p1, p0, Lrx/internal/operators/cs$1;->d:Lrx/internal/operators/cs;

    iput-object p2, p0, Lrx/internal/operators/cs$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/cs$1;->b:Lrx/e/g;

    iput-object p4, p0, Lrx/internal/operators/cs$1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/cs$1;, "Lrx/internal/operators/cs.1;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrx/internal/operators/cs$1;->onNext(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lrx/internal/operators/cs$1;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->onCompleted()V

    .line 72
    iget-object v0, p0, Lrx/internal/operators/cs$1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 73
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/cs$1;, "Lrx/internal/operators/cs.1;"
    iget-object v0, p0, Lrx/internal/operators/cs$1;->b:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 64
    iget-object v0, p0, Lrx/internal/operators/cs$1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/m;

    invoke-interface {v0}, Lrx/m;->unsubscribe()V

    .line 65
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/cs$1;, "Lrx/internal/operators/cs.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v2, p0, Lrx/internal/operators/cs$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lrx/internal/operators/cs;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "localValue":Ljava/lang/Object;
    sget-object v2, Lrx/internal/operators/cs;->b:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 55
    move-object v1, v0

    .line 56
    .local v1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/cs$1;->b:Lrx/e/g;

    invoke-virtual {v2, v1}, Lrx/e/g;->onNext(Ljava/lang/Object;)V

    .line 58
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method
