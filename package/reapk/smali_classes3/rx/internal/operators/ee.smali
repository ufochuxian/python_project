.class public final Lrx/internal/operators/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TR;TT1;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT2;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<-TT1;-TT2;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT2;>;",
            "Lrx/c/q",
            "<-TT1;-TT2;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/ee;, "Lrx/internal/operators/ee<TT1;TT2;TR;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT2;>;"
    .local p2, "zipFunction":Lrx/c/q;, "Lrx/c/q<-TT1;-TT2;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/operators/ee;->a:Ljava/lang/Iterable;

    .line 33
    iput-object p2, p0, Lrx/internal/operators/ee;->b:Lrx/c/q;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)",
            "Lrx/l",
            "<-TT1;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/ee;, "Lrx/internal/operators/ee<TT1;TT2;TR;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TR;>;"
    iget-object v2, p0, Lrx/internal/operators/ee;->a:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT2;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {p1}, Lrx/l;->onCompleted()V

    .line 42
    invoke-static {}, Lrx/e/h;->a()Lrx/l;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    :goto_0
    return-object v2

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    .line 46
    invoke-static {}, Lrx/e/h;->a()Lrx/l;

    move-result-object v2

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance v2, Lrx/internal/operators/ee$1;

    invoke-direct {v2, p0, p1, p1, v1}, Lrx/internal/operators/ee$1;-><init>(Lrx/internal/operators/ee;Lrx/l;Lrx/l;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/ee;, "Lrx/internal/operators/ee<TT1;TT2;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ee;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
