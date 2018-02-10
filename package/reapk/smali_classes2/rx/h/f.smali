.class public abstract Lrx/h/f;
.super Lrx/e;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e",
        "<TR;>;",
        "Lrx/f",
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
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lrx/h/f;, "Lrx/h/f<TT;TR;>;"
    .local p1, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TR;>;"
    invoke-direct {p0, p1}, Lrx/e;-><init>(Lrx/e$a;)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract L()Z
.end method

.method public final X()Lrx/h/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/h/e",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/h/f;, "Lrx/h/f<TT;TR;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/h/e;

    if-ne v0, v1, :cond_0

    .line 56
    check-cast p0, Lrx/h/e;

    .line 58
    .end local p0    # "this":Lrx/h/f;, "Lrx/h/f<TT;TR;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lrx/h/f;, "Lrx/h/f<TT;TR;>;"
    :cond_0
    new-instance v0, Lrx/h/e;

    invoke-direct {v0, p0}, Lrx/h/e;-><init>(Lrx/h/f;)V

    move-object p0, v0

    goto :goto_0
.end method
