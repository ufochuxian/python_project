.class Lrx/internal/operators/ev$1$1;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ev$1;->a(Lrx/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lrx/k;

.field final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic f:Lrx/internal/operators/ev$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/ev$1;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Lrx/k;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lrx/internal/operators/ev$1$1;->f:Lrx/internal/operators/ev$1;

    iput-object p2, p0, Lrx/internal/operators/ev$1$1;->a:[Ljava/lang/Object;

    iput p3, p0, Lrx/internal/operators/ev$1$1;->b:I

    iput-object p4, p0, Lrx/internal/operators/ev$1$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lrx/internal/operators/ev$1$1;->d:Lrx/k;

    iput-object p6, p0, Lrx/internal/operators/ev$1$1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lrx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/ev$1$1;->a:[Ljava/lang/Object;

    iget v3, p0, Lrx/internal/operators/ev$1$1;->b:I

    aput-object p1, v2, v3

    .line 61
    iget-object v2, p0, Lrx/internal/operators/ev$1$1;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    .line 65
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/ev$1$1;->f:Lrx/internal/operators/ev$1;

    iget-object v2, v2, Lrx/internal/operators/ev$1;->b:Lrx/c/y;

    iget-object v3, p0, Lrx/internal/operators/ev$1$1;->a:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/c/y;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    .local v1, "r":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/internal/operators/ev$1$1;->d:Lrx/k;

    invoke-virtual {v2, v1}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 74
    .end local v1    # "r":Ljava/lang/Object;, "TR;"
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0, v0}, Lrx/internal/operators/ev$1$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    iget-object v0, p0, Lrx/internal/operators/ev$1$1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lrx/internal/operators/ev$1$1;->d:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
