.class final Lrx/internal/operators/ew$a;
.super Lrx/k;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/k",
        "<TT;>;",
        "Lrx/d;"
    }
.end annotation


# instance fields
.field final a:Lrx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/k",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/ew$a;, "Lrx/internal/operators/ew$a<TT;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TT;>;"
    invoke-direct {p0}, Lrx/k;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/ew$a;->a:Lrx/k;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ew$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/ew$a;, "Lrx/internal/operators/ew$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/ew$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lrx/internal/operators/ew$a;->unsubscribe()V

    .line 73
    iget-object v0, p0, Lrx/internal/operators/ew$a;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/ew$a;, "Lrx/internal/operators/ew$a<TT;>;"
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Single::takeUntil(Completable) - Stream was canceled before emitting a terminal event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/ew$a;->onError(Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/ew$a;, "Lrx/internal/operators/ew$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ew$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lrx/internal/operators/ew$a;->unsubscribe()V

    .line 81
    iget-object v0, p0, Lrx/internal/operators/ew$a;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 0
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/ew$a;, "Lrx/internal/operators/ew$a<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/ew$a;->a(Lrx/m;)V

    .line 66
    return-void
.end method
