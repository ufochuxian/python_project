.class Lrx/internal/operators/eb$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/eb;->a(Lrx/l;)Lrx/l;
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
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lrx/e/g;

.field final synthetic c:Lrx/internal/operators/eb;


# direct methods
.method constructor <init>(Lrx/internal/operators/eb;Lrx/l;ZLjava/util/concurrent/atomic/AtomicReference;Lrx/e/g;)V
    .locals 0
    .param p3, "x1"    # Z

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/eb$1;, "Lrx/internal/operators/eb.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/eb$1;->c:Lrx/internal/operators/eb;

    iput-object p4, p0, Lrx/internal/operators/eb$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lrx/internal/operators/eb$1;->b:Lrx/e/g;

    invoke-direct {p0, p2, p3}, Lrx/l;-><init>(Lrx/l;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/eb$1;, "Lrx/internal/operators/eb.1;"
    iget-object v0, p0, Lrx/internal/operators/eb$1;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->onCompleted()V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/eb$1;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->unsubscribe()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/eb$1;, "Lrx/internal/operators/eb.1;"
    iget-object v0, p0, Lrx/internal/operators/eb$1;->b:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 69
    iget-object v0, p0, Lrx/internal/operators/eb$1;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->unsubscribe()V

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/eb$1;, "Lrx/internal/operators/eb.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/internal/operators/eb$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "o":Ljava/lang/Object;
    sget-object v4, Lrx/internal/operators/eb;->c:Ljava/lang/Object;

    if-eq v1, v4, :cond_0

    .line 57
    move-object v3, v1

    .line 58
    .local v3, "u":Ljava/lang/Object;, "TU;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/eb$1;->c:Lrx/internal/operators/eb;

    iget-object v4, v4, Lrx/internal/operators/eb;->a:Lrx/c/q;

    invoke-interface {v4, p1, v3}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 60
    .local v2, "result":Ljava/lang/Object;, "TR;"
    iget-object v4, p0, Lrx/internal/operators/eb$1;->b:Lrx/e/g;

    invoke-virtual {v4, v2}, Lrx/e/g;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "result":Ljava/lang/Object;, "TR;"
    .end local v3    # "u":Ljava/lang/Object;, "TU;"
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v3    # "u":Ljava/lang/Object;, "TU;"
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method
