.class public Lrx/internal/operators/dr;
.super Lrx/internal/operators/dq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/dq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrx/c/o;Lrx/c/p;Lrx/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<TU;>;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TV;>;>;",
            "Lrx/e",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/dr;, "Lrx/internal/operators/dr<TT;TU;TV;>;"
    .local p1, "firstTimeoutSelector":Lrx/c/o;, "Lrx/c/o<+Lrx/e<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TV;>;>;"
    .local p3, "other":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v0, Lrx/internal/operators/dr$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/dr$1;-><init>(Lrx/c/o;)V

    new-instance v1, Lrx/internal/operators/dr$2;

    invoke-direct {v1, p2}, Lrx/internal/operators/dr$2;-><init>(Lrx/c/p;)V

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/h;

    move-result-object v2

    invoke-direct {p0, v0, v1, p3, v2}, Lrx/internal/operators/dq;-><init>(Lrx/internal/operators/dq$a;Lrx/internal/operators/dq$b;Lrx/e;Lrx/h;)V

    .line 109
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lrx/l;)Lrx/l;
    .locals 1
    .param p1, "x0"    # Lrx/l;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/dr;, "Lrx/internal/operators/dr<TT;TU;TV;>;"
    invoke-super {p0, p1}, Lrx/internal/operators/dq;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
