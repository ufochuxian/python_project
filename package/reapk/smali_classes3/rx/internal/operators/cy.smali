.class public final Lrx/internal/operators/cy;
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
    .param p1, "n"    # I

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/cy;, "Lrx/internal/operators/cy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-gez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput p1, p0, Lrx/internal/operators/cy;->a:I

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 1
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
    .line 43
    .local p0, "this":Lrx/internal/operators/cy;, "Lrx/internal/operators/cy<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/cy$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/cy$1;-><init>(Lrx/internal/operators/cy;Lrx/l;Lrx/l;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/cy;, "Lrx/internal/operators/cy<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cy;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
