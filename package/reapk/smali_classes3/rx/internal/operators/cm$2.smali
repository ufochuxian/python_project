.class Lrx/internal/operators/cm$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cm;->a(Lrx/l;)Lrx/l;
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
.field a:Z

.field final synthetic b:Lrx/l;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic d:Lrx/internal/operators/cm;


# direct methods
.method constructor <init>(Lrx/internal/operators/cm;Lrx/l;Lrx/l;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/cm$2;, "Lrx/internal/operators/cm.2;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/cm$2;->d:Lrx/internal/operators/cm;

    iput-object p3, p0, Lrx/internal/operators/cm$2;->b:Lrx/l;

    iput-object p4, p0, Lrx/internal/operators/cm$2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/cm$2;, "Lrx/internal/operators/cm.2;"
    iget-boolean v0, p0, Lrx/internal/operators/cm$2;->a:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cm$2;->a:Z

    .line 78
    iget-object v0, p0, Lrx/internal/operators/cm$2;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 80
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/cm$2;, "Lrx/internal/operators/cm.2;"
    iget-boolean v0, p0, Lrx/internal/operators/cm$2;->a:Z

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cm$2;->a:Z

    .line 86
    iget-object v0, p0, Lrx/internal/operators/cm$2;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/cm$2;, "Lrx/internal/operators/cm.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/cm$2;->a:Z

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/cm$2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 98
    iget-object v1, p0, Lrx/internal/operators/cm$2;->b:Lrx/l;

    invoke-virtual {v1, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lrx/internal/operators/cm$2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/cm$2;->d:Lrx/internal/operators/cm;

    iget-object v1, v1, Lrx/internal/operators/cm;->a:Lrx/c/c;

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/cm$2;->d:Lrx/internal/operators/cm;

    iget-object v1, v1, Lrx/internal/operators/cm;->a:Lrx/c/c;

    invoke-interface {v1, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/cm$2;, "Lrx/internal/operators/cm.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/cm$2;->request(J)V

    .line 72
    return-void
.end method
