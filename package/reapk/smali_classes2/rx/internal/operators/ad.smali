.class public final Lrx/internal/operators/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/c/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/ad;, "Lrx/internal/operators/ad<TT;TU;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "subscriptionDelay":Lrx/c/o;, "Lrx/c/o<+Lrx/e<TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/ad;->a:Lrx/e;

    .line 37
    iput-object p2, p0, Lrx/internal/operators/ad;->b:Lrx/c/o;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/ad;, "Lrx/internal/operators/ad<TT;TU;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/ad;->b:Lrx/c/o;

    invoke-interface {v1}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lrx/e;->j(I)Lrx/e;

    move-result-object v1

    new-instance v2, Lrx/internal/operators/ad$1;

    invoke-direct {v2, p0, p1}, Lrx/internal/operators/ad$1;-><init>(Lrx/internal/operators/ad;Lrx/l;)V

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/l;)Lrx/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/ad;, "Lrx/internal/operators/ad<TT;TU;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ad;->a(Lrx/l;)V

    return-void
.end method
