.class Lrx/internal/operators/cs$2;
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
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lrx/e/g;

.field final synthetic c:Lrx/l;

.field final synthetic d:Lrx/internal/operators/cs;


# direct methods
.method constructor <init>(Lrx/internal/operators/cs;Ljava/util/concurrent/atomic/AtomicReference;Lrx/e/g;Lrx/l;)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/cs$2;, "Lrx/internal/operators/cs.2;"
    iput-object p1, p0, Lrx/internal/operators/cs$2;->d:Lrx/internal/operators/cs;

    iput-object p2, p0, Lrx/internal/operators/cs$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/cs$2;->b:Lrx/e/g;

    iput-object p4, p0, Lrx/internal/operators/cs$2;->c:Lrx/l;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/cs$2;, "Lrx/internal/operators/cs.2;"
    iget-object v0, p0, Lrx/internal/operators/cs$2;->c:Lrx/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lrx/internal/operators/cs$2;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->onCompleted()V

    .line 94
    iget-object v0, p0, Lrx/internal/operators/cs$2;->c:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->unsubscribe()V

    .line 95
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/cs$2;, "Lrx/internal/operators/cs.2;"
    iget-object v0, p0, Lrx/internal/operators/cs$2;->b:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lrx/internal/operators/cs$2;->c:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->unsubscribe()V

    .line 87
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
    .line 79
    .local p0, "this":Lrx/internal/operators/cs$2;, "Lrx/internal/operators/cs.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/cs$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    return-void
.end method
