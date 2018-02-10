.class final Lrx/internal/operators/ex$a$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ex$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/ex$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/ex$a;)V
    .locals 0

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/ex$a$a;, "Lrx/internal/operators/ex$a<TT;TU;>.a;"
    iput-object p1, p0, Lrx/internal/operators/ex$a$a;->a:Lrx/internal/operators/ex$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/ex$a$a;, "Lrx/internal/operators/ex$a<TT;TU;>.a;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Single::takeUntil(Observable) - Stream was canceled before emitting a terminal event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/ex$a$a;->onError(Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/ex$a$a;, "Lrx/internal/operators/ex$a<TT;TU;>.a;"
    iget-object v0, p0, Lrx/internal/operators/ex$a$a;->a:Lrx/internal/operators/ex$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/ex$a;->onError(Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/ex$a$a;, "Lrx/internal/operators/ex$a<TT;TU;>.a;"
    .local p1, "value":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lrx/internal/operators/ex$a$a;->onCompleted()V

    .line 90
    return-void
.end method
