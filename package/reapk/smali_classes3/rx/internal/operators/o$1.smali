.class Lrx/internal/operators/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/o;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i/b;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lrx/d;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic e:Lrx/internal/operators/o;


# direct methods
.method constructor <init>(Lrx/internal/operators/o;Lrx/i/b;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/d;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lrx/internal/operators/o$1;->e:Lrx/internal/operators/o;

    iput-object p2, p0, Lrx/internal/operators/o$1;->a:Lrx/i/b;

    iput-object p3, p0, Lrx/internal/operators/o$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrx/internal/operators/o$1;->c:Lrx/d;

    iput-object p5, p0, Lrx/internal/operators/o$1;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lrx/internal/operators/o$1;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lrx/internal/operators/o$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lrx/internal/operators/o$1;->c:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 80
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    iget-object v0, p0, Lrx/internal/operators/o$1;->a:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 66
    iget-object v0, p0, Lrx/internal/operators/o$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lrx/internal/operators/o$1;->c:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 60
    iget-object v0, p0, Lrx/internal/operators/o$1;->a:Lrx/i/b;

    invoke-virtual {v0, p1}, Lrx/i/b;->a(Lrx/m;)V

    .line 61
    return-void
.end method
