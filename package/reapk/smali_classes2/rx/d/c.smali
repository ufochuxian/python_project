.class public abstract Lrx/d/c;
.super Lrx/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lrx/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/d/c;, "Lrx/d/c<TT;>;"
    .local p1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    invoke-direct {p0, p1}, Lrx/e;-><init>(Lrx/e$a;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final K()Lrx/m;
    .locals 2

    .prologue
    .line 51
    .local p0, "this":Lrx/d/c;, "Lrx/d/c<TT;>;"
    const/4 v1, 0x1

    new-array v0, v1, [Lrx/m;

    .line 52
    .local v0, "out":[Lrx/m;
    new-instance v1, Lrx/d/c$1;

    invoke-direct {v1, p0, v0}, Lrx/d/c$1;-><init>(Lrx/d/c;[Lrx/m;)V

    invoke-virtual {p0, v1}, Lrx/d/c;->h(Lrx/c/c;)V

    .line 58
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public L()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/d/c;, "Lrx/d/c<TT;>;"
    new-instance v0, Lrx/internal/operators/ax;

    invoke-direct {v0, p0}, Lrx/internal/operators/ax;-><init>(Lrx/d/c;)V

    invoke-static {v0}, Lrx/d/c;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public M()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/d/c;, "Lrx/d/c<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/d/c;->o(I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public a(ILrx/c/c;)Lrx/e;
    .locals 1
    .param p1, "numberOfSubscribers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/c/c",
            "<-",
            "Lrx/m;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lrx/d/c;, "Lrx/d/c<TT;>;"
    .local p2, "connection":Lrx/c/c;, "Lrx/c/c<-Lrx/m;>;"
    if-gtz p1, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Lrx/d/c;->h(Lrx/c/c;)V

    .line 128
    .end local p0    # "this":Lrx/d/c;, "Lrx/d/c<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lrx/d/c;, "Lrx/d/c<TT;>;"
    :cond_0
    new-instance v0, Lrx/internal/operators/OnSubscribeAutoConnect;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/OnSubscribeAutoConnect;-><init>(Lrx/d/c;ILrx/c/c;)V

    invoke-static {v0}, Lrx/d/c;->a(Lrx/e$a;)Lrx/e;

    move-result-object p0

    goto :goto_0
.end method

.method public abstract h(Lrx/c/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-",
            "Lrx/m;",
            ">;)V"
        }
    .end annotation
.end method

.method public o(I)Lrx/e;
    .locals 1
    .param p1, "numberOfSubscribers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lrx/d/c;, "Lrx/d/c<TT;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lrx/d/c;->a(ILrx/c/c;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
