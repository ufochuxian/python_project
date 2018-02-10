.class public final Lrx/internal/operators/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/dg;, "Lrx/internal/operators/dg<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-gez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput p1, p0, Lrx/internal/operators/dg;->a:I

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/dg;, "Lrx/internal/operators/dg<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/dg$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/dg$1;-><init>(Lrx/internal/operators/dg;Lrx/l;)V

    .line 120
    .local v0, "parent":Lrx/l;, "Lrx/l<TT;>;"
    iget v1, p0, Lrx/internal/operators/dg;->a:I

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p1}, Lrx/l;->onCompleted()V

    .line 122
    invoke-virtual {v0}, Lrx/l;->unsubscribe()V

    .line 134
    :cond_0
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 136
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/dg;, "Lrx/internal/operators/dg<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dg;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
