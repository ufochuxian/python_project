.class public Lrx/internal/operators/cz;
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
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/cz;, "Lrx/internal/operators/cz<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-gez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput p1, p0, Lrx/internal/operators/cz;->a:I

    .line 36
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
    .line 40
    .local p0, "this":Lrx/internal/operators/cz;, "Lrx/internal/operators/cz<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/cz$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/cz$1;-><init>(Lrx/internal/operators/cz;Lrx/l;Lrx/l;)V

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/cz;, "Lrx/internal/operators/cz<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cz;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
