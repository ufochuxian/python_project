.class public final Lrx/internal/operators/dp;
.super Lrx/internal/operators/dq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/dq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/e;Lrx/h;)V
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/dp;, "Lrx/internal/operators/dp<TT;>;"
    .local p4, "other":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Lrx/internal/operators/dp$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/dp$1;-><init>(JLjava/util/concurrent/TimeUnit;)V

    new-instance v1, Lrx/internal/operators/dp$2;

    invoke-direct {v1, p1, p2, p3}, Lrx/internal/operators/dp$2;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0, v1, p4, p5}, Lrx/internal/operators/dq;-><init>(Lrx/internal/operators/dq$a;Lrx/internal/operators/dq$b;Lrx/e;Lrx/h;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lrx/l;)Lrx/l;
    .locals 1
    .param p1, "x0"    # Lrx/l;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/dp;, "Lrx/internal/operators/dp<TT;>;"
    invoke-super {p0, p1}, Lrx/internal/operators/dq;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
