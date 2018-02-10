.class Lrx/internal/operators/au$4$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/au$4;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/au$4;


# direct methods
.method constructor <init>(Lrx/internal/operators/au$4;Lrx/l;)V
    .locals 0

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/au$4$1;, "Lrx/internal/operators/au$4.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/au$4$1;->a:Lrx/internal/operators/au$4;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 321
    .local p0, "this":Lrx/internal/operators/au$4$1;, "Lrx/internal/operators/au$4.1;"
    iget-object v0, p0, Lrx/internal/operators/au$4$1;->a:Lrx/internal/operators/au$4;

    iget-object v0, v0, Lrx/internal/operators/au$4;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 322
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 326
    .local p0, "this":Lrx/internal/operators/au$4$1;, "Lrx/internal/operators/au$4.1;"
    iget-object v0, p0, Lrx/internal/operators/au$4$1;->a:Lrx/internal/operators/au$4;

    iget-object v0, v0, Lrx/internal/operators/au$4;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 327
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 331
    .local p0, "this":Lrx/internal/operators/au$4$1;, "Lrx/internal/operators/au$4.1;"
    iget-object v0, p0, Lrx/internal/operators/au$4$1;->a:Lrx/internal/operators/au$4;

    iget-object v0, v0, Lrx/internal/operators/au$4;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lrx/internal/operators/au$4$1;->a:Lrx/internal/operators/au$4;

    iget-object v0, v0, Lrx/internal/operators/au$4;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 336
    iget-object v0, p0, Lrx/internal/operators/au$4$1;->a:Lrx/internal/operators/au$4;

    iget-object v0, v0, Lrx/internal/operators/au$4;->d:Lrx/h$a;

    iget-object v1, p0, Lrx/internal/operators/au$4$1;->a:Lrx/internal/operators/au$4;

    iget-object v1, v1, Lrx/internal/operators/au$4;->e:Lrx/c/b;

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/au$4$1;->a:Lrx/internal/operators/au$4;

    iget-object v0, v0, Lrx/internal/operators/au$4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_0
.end method

.method public setProducer(Lrx/g;)V
    .locals 2
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 347
    .local p0, "this":Lrx/internal/operators/au$4$1;, "Lrx/internal/operators/au$4.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/g;->request(J)V

    .line 348
    return-void
.end method
