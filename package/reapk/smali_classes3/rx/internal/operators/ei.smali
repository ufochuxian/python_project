.class public final Lrx/internal/operators/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/i$a;Lrx/c/b;)V
    .locals 0
    .param p2, "onSubscribe"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;",
            "Lrx/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/ei;, "Lrx/internal/operators/ei<TT;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/ei;->a:Lrx/i$a;

    .line 36
    iput-object p2, p0, Lrx/internal/operators/ei;->b:Lrx/c/b;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/ei;, "Lrx/internal/operators/ei<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/ei;->b:Lrx/c/b;

    invoke-interface {v1}, Lrx/c/b;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    iget-object v1, p0, Lrx/internal/operators/ei;->a:Lrx/i$a;

    invoke-interface {v1, p1}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 51
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p1, v0}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/ei;, "Lrx/internal/operators/ei<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ei;->a(Lrx/k;)V

    return-void
.end method
