.class public Lrx/h/e;
.super Lrx/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/h/f",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field private final b:Lrx/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/f",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/h/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/f",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/h/e;, "Lrx/h/e<TT;TR;>;"
    .local p1, "actual":Lrx/h/f;, "Lrx/h/f<TT;TR;>;"
    new-instance v0, Lrx/h/e$1;

    invoke-direct {v0, p1}, Lrx/h/e$1;-><init>(Lrx/h/f;)V

    invoke-direct {p0, v0}, Lrx/h/f;-><init>(Lrx/e$a;)V

    .line 51
    iput-object p1, p0, Lrx/h/e;->c:Lrx/h/f;

    .line 52
    new-instance v0, Lrx/e/f;

    invoke-direct {v0, p1}, Lrx/e/f;-><init>(Lrx/f;)V

    iput-object v0, p0, Lrx/h/e;->b:Lrx/e/f;

    .line 53
    return-void
.end method


# virtual methods
.method public L()Z
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lrx/h/e;, "Lrx/h/e<TT;TR;>;"
    iget-object v0, p0, Lrx/h/e;->c:Lrx/h/f;

    invoke-virtual {v0}, Lrx/h/f;->L()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lrx/h/e;, "Lrx/h/e<TT;TR;>;"
    iget-object v0, p0, Lrx/h/e;->b:Lrx/e/f;

    invoke-virtual {v0}, Lrx/e/f;->onCompleted()V

    .line 58
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/h/e;, "Lrx/h/e<TT;TR;>;"
    iget-object v0, p0, Lrx/h/e;->b:Lrx/e/f;

    invoke-virtual {v0, p1}, Lrx/e/f;->onError(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/h/e;, "Lrx/h/e<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/h/e;->b:Lrx/e/f;

    invoke-virtual {v0, p1}, Lrx/e/f;->onNext(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
