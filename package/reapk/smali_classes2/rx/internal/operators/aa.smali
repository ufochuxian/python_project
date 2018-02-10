.class public final Lrx/internal/operators/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
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
.field final a:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/aa;, "Lrx/internal/operators/aa<TT;>;"
    .local p1, "observableFactory":Lrx/c/o;, "Lrx/c/o<+Lrx/e<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/aa;->a:Lrx/c/o;

    .line 40
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
    .line 46
    .local p0, "this":Lrx/internal/operators/aa;, "Lrx/internal/operators/aa<TT;>;"
    .local p1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/aa;->a:Lrx/c/o;

    invoke-interface {v2}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "o":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p1}, Lrx/e/h;->a(Lrx/l;)Lrx/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 52
    .end local v0    # "o":Lrx/e;, "Lrx/e<+TT;>;"
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/aa;, "Lrx/internal/operators/aa<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/aa;->a(Lrx/l;)V

    return-void
.end method
