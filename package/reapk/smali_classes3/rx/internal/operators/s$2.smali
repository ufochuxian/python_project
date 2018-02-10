.class Lrx/internal/operators/s$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/s;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i/b;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lrx/d;

.field final synthetic d:Lrx/internal/operators/s;


# direct methods
.method constructor <init>(Lrx/internal/operators/s;Lrx/i/b;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/d;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lrx/internal/operators/s$2;->d:Lrx/internal/operators/s;

    iput-object p2, p0, Lrx/internal/operators/s$2;->a:Lrx/i/b;

    iput-object p3, p0, Lrx/internal/operators/s$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrx/internal/operators/s$2;->c:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lrx/internal/operators/s$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lrx/internal/operators/s$2;->a:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 109
    iget-object v0, p0, Lrx/internal/operators/s$2;->c:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 111
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    iget-object v0, p0, Lrx/internal/operators/s$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lrx/internal/operators/s$2;->a:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 99
    iget-object v0, p0, Lrx/internal/operators/s$2;->c:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 92
    iget-object v0, p0, Lrx/internal/operators/s$2;->a:Lrx/i/b;

    invoke-virtual {v0, p1}, Lrx/i/b;->a(Lrx/m;)V

    .line 93
    return-void
.end method
