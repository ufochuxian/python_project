.class public final Lrx/internal/operators/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/m$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lrx/internal/operators/m;->a:Ljava/lang/Iterable;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 5
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 39
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/m;->a:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    if-nez v2, :cond_0

    .line 47
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v3

    invoke-interface {p1, v3}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 48
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The iterator returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 55
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v3

    invoke-interface {p1, v3}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 42
    invoke-interface {p1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    :cond_0
    new-instance v1, Lrx/internal/operators/m$a;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/m$a;-><init>(Lrx/d;Ljava/util/Iterator;)V

    .line 53
    .local v1, "inner":Lrx/internal/operators/m$a;
    iget-object v3, v1, Lrx/internal/operators/m$a;->c:Lrx/i/e;

    invoke-interface {p1, v3}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 54
    invoke-virtual {v1}, Lrx/internal/operators/m$a;->a()V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/m;->a(Lrx/d;)V

    return-void
.end method
