.class final Lrx/internal/operators/ah$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lrx/internal/operators/ah$b;, "Lrx/internal/operators/ah$b<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lrx/internal/operators/ah$b;->a:Ljava/lang/Object;

    .line 328
    iput-object p2, p0, Lrx/internal/operators/ah$b;->b:Lrx/c/p;

    .line 329
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lrx/internal/operators/ah$b;, "Lrx/internal/operators/ah$b<TT;TR;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TR;>;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/ah$b;->b:Lrx/c/p;

    iget-object v5, p0, Lrx/internal/operators/ah$b;->a:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 338
    .local v2, "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 340
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 346
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lrx/l;->onCompleted()V

    .line 352
    .end local v0    # "b":Z
    .end local v2    # "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/ah$b;->a:Ljava/lang/Object;

    invoke-static {v1, p1, v4}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    .restart local v2    # "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :cond_0
    new-instance v4, Lrx/internal/operators/al$a;

    invoke-direct {v4, p1, v3}, Lrx/internal/operators/al$a;-><init>(Lrx/l;Ljava/util/Iterator;)V

    invoke-virtual {p1, v4}, Lrx/l;->setProducer(Lrx/g;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 321
    .local p0, "this":Lrx/internal/operators/ah$b;, "Lrx/internal/operators/ah$b<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ah$b;->a(Lrx/l;)V

    return-void
.end method
