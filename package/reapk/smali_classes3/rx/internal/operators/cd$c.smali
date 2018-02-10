.class final Lrx/internal/operators/cd$c;
.super Lrx/d/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/d/d",
        "<TK;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/internal/operators/cd$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/cd$d",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lrx/internal/operators/cd$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/internal/operators/cd$d",
            "<TT;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lrx/internal/operators/cd$c;, "Lrx/internal/operators/cd$c<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "state":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    invoke-direct {p0, p1, p2}, Lrx/d/d;-><init>(Ljava/lang/Object;Lrx/e$a;)V

    .line 405
    iput-object p2, p0, Lrx/internal/operators/cd$c;->b:Lrx/internal/operators/cd$d;

    .line 406
    return-void
.end method

.method public static a(Ljava/lang/Object;ILrx/internal/operators/cd$b;Z)Lrx/internal/operators/cd$c;
    .locals 2
    .param p1, "bufferSize"    # I
    .param p3, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lrx/internal/operators/cd$b",
            "<*TK;TT;>;Z)",
            "Lrx/internal/operators/cd$c",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p2, "parent":Lrx/internal/operators/cd$b;, "Lrx/internal/operators/cd$b<*TK;TT;>;"
    new-instance v0, Lrx/internal/operators/cd$d;

    invoke-direct {v0, p1, p2, p0, p3}, Lrx/internal/operators/cd$d;-><init>(ILrx/internal/operators/cd$b;Ljava/lang/Object;Z)V

    .line 400
    .local v0, "state":Lrx/internal/operators/cd$d;, "Lrx/internal/operators/cd$d<TT;TK;>;"
    new-instance v1, Lrx/internal/operators/cd$c;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/cd$c;-><init>(Ljava/lang/Object;Lrx/internal/operators/cd$d;)V

    return-object v1
.end method


# virtual methods
.method public K()V
    .locals 1

    .prologue
    .line 417
    .local p0, "this":Lrx/internal/operators/cd$c;, "Lrx/internal/operators/cd$c<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cd$c;->b:Lrx/internal/operators/cd$d;

    invoke-virtual {v0}, Lrx/internal/operators/cd$d;->onComplete()V

    .line 418
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 413
    .local p0, "this":Lrx/internal/operators/cd$c;, "Lrx/internal/operators/cd$c<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cd$c;->b:Lrx/internal/operators/cd$d;

    invoke-virtual {v0, p1}, Lrx/internal/operators/cd$d;->onError(Ljava/lang/Throwable;)V

    .line 414
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lrx/internal/operators/cd$c;, "Lrx/internal/operators/cd$c<TK;TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/cd$c;->b:Lrx/internal/operators/cd$d;

    invoke-virtual {v0, p1}, Lrx/internal/operators/cd$d;->onNext(Ljava/lang/Object;)V

    .line 410
    return-void
.end method
