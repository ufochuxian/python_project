.class final Lrx/internal/operators/cq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cq;->c(Lrx/c/o;Lrx/c/p;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/o;

.field final synthetic b:Lrx/c/p;


# direct methods
.method constructor <init>(Lrx/c/o;Lrx/c/p;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lrx/internal/operators/cq$2;->a:Lrx/c/o;

    iput-object p2, p0, Lrx/internal/operators/cq$2;->b:Lrx/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/cq$2;->a:Lrx/c/o;

    invoke-interface {v3}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d/c;

    .line 68
    .local v0, "co":Lrx/d/c;, "Lrx/d/c<TU;>;"
    iget-object v3, p0, Lrx/internal/operators/cq$2;->b:Lrx/c/p;

    invoke-interface {v3, v0}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v2, "observable":Lrx/e;, "Lrx/e<TR;>;"
    invoke-virtual {v2, p1}, Lrx/e;->b(Lrx/l;)Lrx/m;

    .line 76
    new-instance v3, Lrx/internal/operators/cq$2$1;

    invoke-direct {v3, p0, p1}, Lrx/internal/operators/cq$2$1;-><init>(Lrx/internal/operators/cq$2;Lrx/l;)V

    invoke-virtual {v0, v3}, Lrx/d/c;->h(Lrx/c/c;)V

    .line 82
    .end local v0    # "co":Lrx/d/c;, "Lrx/d/c<TU;>;"
    .end local v2    # "observable":Lrx/e;, "Lrx/e<TR;>;"
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cq$2;->a(Lrx/l;)V

    return-void
.end method
