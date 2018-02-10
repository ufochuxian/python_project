.class Lrx/internal/operators/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/s;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lrx/i/b;

.field final synthetic c:Lrx/d;

.field final synthetic d:Lrx/internal/operators/s;


# direct methods
.method constructor <init>(Lrx/internal/operators/s;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/i/b;Lrx/d;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lrx/internal/operators/s$1;->d:Lrx/internal/operators/s;

    iput-object p2, p0, Lrx/internal/operators/s$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/internal/operators/s$1;->b:Lrx/i/b;

    iput-object p4, p0, Lrx/internal/operators/s$1;->c:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lrx/internal/operators/s$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lrx/internal/operators/s$1;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->a()V

    .line 60
    iget-object v0, p0, Lrx/internal/operators/s$1;->d:Lrx/internal/operators/s;

    iget-object v0, v0, Lrx/internal/operators/s;->e:Lrx/b;

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lrx/internal/operators/s$1;->c:Lrx/d;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/s$1;->d:Lrx/internal/operators/s;

    iget-object v0, v0, Lrx/internal/operators/s;->e:Lrx/b;

    new-instance v1, Lrx/internal/operators/s$1$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/s$1$1;-><init>(Lrx/internal/operators/s$1;)V

    invoke-virtual {v0, v1}, Lrx/b;->a(Lrx/d;)V

    goto :goto_0
.end method
