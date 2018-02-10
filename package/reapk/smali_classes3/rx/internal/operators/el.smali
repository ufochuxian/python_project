.class public final Lrx/internal/operators/el;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/el$a;
    }
.end annotation

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
.field final a:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Lrx/j",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<",
            "Lrx/j",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/el;, "Lrx/internal/operators/el<TT;>;"
    .local p1, "producer":Lrx/c/c;, "Lrx/c/c<Lrx/j<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/el;->a:Lrx/c/c;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/el;, "Lrx/internal/operators/el<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    new-instance v1, Lrx/internal/operators/el$a;

    invoke-direct {v1, p1}, Lrx/internal/operators/el$a;-><init>(Lrx/k;)V

    .line 45
    .local v1, "parent":Lrx/internal/operators/el$a;, "Lrx/internal/operators/el$a<TT;>;"
    invoke-virtual {p1, v1}, Lrx/k;->a(Lrx/m;)V

    .line 48
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/el;->a:Lrx/c/c;

    invoke-interface {v2, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 51
    invoke-virtual {v1, v0}, Lrx/internal/operators/el$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/el;, "Lrx/internal/operators/el<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/el;->a(Lrx/k;)V

    return-void
.end method
