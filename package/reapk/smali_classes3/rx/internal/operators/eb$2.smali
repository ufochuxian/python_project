.class Lrx/internal/operators/eb$2;
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
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lrx/e/g;

.field final synthetic c:Lrx/internal/operators/eb;


# direct methods
.method constructor <init>(Lrx/internal/operators/eb;Ljava/util/concurrent/atomic/AtomicReference;Lrx/e/g;)V
    .locals 0

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/eb$2;, "Lrx/internal/operators/eb.2;"
    iput-object p1, p0, Lrx/internal/operators/eb$2;->c:Lrx/internal/operators/eb;

    iput-object p2, p0, Lrx/internal/operators/eb$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/eb$2;->b:Lrx/e/g;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/eb$2;, "Lrx/internal/operators/eb.2;"
    iget-object v0, p0, Lrx/internal/operators/eb$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/eb;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lrx/internal/operators/eb$2;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->onCompleted()V

    .line 92
    iget-object v0, p0, Lrx/internal/operators/eb$2;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->unsubscribe()V

    .line 94
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/eb$2;, "Lrx/internal/operators/eb.2;"
    iget-object v0, p0, Lrx/internal/operators/eb$2;->b:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lrx/internal/operators/eb$2;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->unsubscribe()V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/eb$2;, "Lrx/internal/operators/eb.2;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/eb$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
