.class public abstract Lrx/internal/operators/u;
.super Lrx/internal/operators/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/t",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field protected i:Z


# direct methods
.method public constructor <init>(Lrx/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/u;, "Lrx/internal/operators/u<TT;TR;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/t;-><init>(Lrx/l;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/u;, "Lrx/internal/operators/u<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/u;->i:Z

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/u;->i:Z

    .line 54
    invoke-super {p0}, Lrx/internal/operators/t;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/u;, "Lrx/internal/operators/u<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/u;->i:Z

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/u;->i:Z

    .line 42
    invoke-super {p0, p1}, Lrx/internal/operators/t;->onError(Ljava/lang/Throwable;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
