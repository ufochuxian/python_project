.class public final Lrx/internal/operators/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/em;, "Lrx/internal/operators/em<TT;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/em;->a:Ljava/util/concurrent/Future;

    .line 40
    iput-wide p2, p0, Lrx/internal/operators/em;->b:J

    .line 41
    iput-object p4, p0, Lrx/internal/operators/em;->c:Ljava/util/concurrent/TimeUnit;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/em;, "Lrx/internal/operators/em<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/em;->a:Ljava/util/concurrent/Future;

    .line 48
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {v1}, Lrx/i/f;->a(Ljava/util/concurrent/Future;)Lrx/m;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/k;->a(Lrx/m;)V

    .line 53
    :try_start_0
    iget-wide v4, p0, Lrx/internal/operators/em;->b:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-virtual {p1, v2}, Lrx/k;->a(Ljava/lang/Object;)V

    .line 65
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :goto_1
    return-void

    .line 56
    :cond_0
    :try_start_1
    iget-wide v4, p0, Lrx/internal/operators/em;->b:J

    iget-object v3, p0, Lrx/internal/operators/em;->c:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 58
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {p1, v0}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/em;, "Lrx/internal/operators/em<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/em;->a(Lrx/k;)V

    return-void
.end method
