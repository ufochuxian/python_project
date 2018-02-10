.class Lrx/internal/operators/db$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/db;->a(Lrx/l;)Lrx/l;
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
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lrx/e/g;

.field final synthetic c:Lrx/internal/operators/db;


# direct methods
.method constructor <init>(Lrx/internal/operators/db;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/e/g;)V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/db$1;, "Lrx/internal/operators/db.1;"
    iput-object p1, p0, Lrx/internal/operators/db$1;->c:Lrx/internal/operators/db;

    iput-object p2, p0, Lrx/internal/operators/db$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/internal/operators/db$1;->b:Lrx/e/g;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/db$1;, "Lrx/internal/operators/db.1;"
    invoke-virtual {p0}, Lrx/internal/operators/db$1;->unsubscribe()V

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/db$1;, "Lrx/internal/operators/db.1;"
    iget-object v0, p0, Lrx/internal/operators/db$1;->b:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 58
    iget-object v0, p0, Lrx/internal/operators/db$1;->b:Lrx/e/g;

    invoke-virtual {v0}, Lrx/e/g;->unsubscribe()V

    .line 59
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/db$1;, "Lrx/internal/operators/db.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/db$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    invoke-virtual {p0}, Lrx/internal/operators/db$1;->unsubscribe()V

    .line 53
    return-void
.end method
