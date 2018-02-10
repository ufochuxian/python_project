.class public final Lrx/internal/operators/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/al$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/al;, "Lrx/internal/operators/al<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iterable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/al;->a:Ljava/lang/Iterable;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/al;, "Lrx/internal/operators/al<TT;>;"
    .local p1, "o":Lrx/l;, "Lrx/l<-TT;>;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/al;->a:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    .local v0, "b":Z
    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lrx/l;->onCompleted()V

    .line 66
    .end local v0    # "b":Z
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0

    .line 63
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_1
    new-instance v3, Lrx/internal/operators/al$a;

    invoke-direct {v3, p1, v2}, Lrx/internal/operators/al$a;-><init>(Lrx/l;Ljava/util/Iterator;)V

    invoke-virtual {p1, v3}, Lrx/l;->setProducer(Lrx/g;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/al;, "Lrx/internal/operators/al<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/al;->a(Lrx/l;)V

    return-void
.end method
