.class Lrx/internal/operators/bt$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bt;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/h/c;

.field final synthetic b:Lrx/e/g;

.field final synthetic c:Lrx/internal/operators/bt;


# direct methods
.method constructor <init>(Lrx/internal/operators/bt;Lrx/l;Lrx/h/c;Lrx/e/g;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/bt$1;, "Lrx/internal/operators/bt.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/bt$1;->c:Lrx/internal/operators/bt;

    iput-object p3, p0, Lrx/internal/operators/bt$1;->a:Lrx/h/c;

    iput-object p4, p0, Lrx/internal/operators/bt$1;->b:Lrx/e/g;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/bt$1;, "Lrx/internal/operators/bt.1;"
    iget-object v0, p0, Lrx/internal/operators/bt$1;->a:Lrx/h/c;

    invoke-virtual {v0}, Lrx/h/c;->onCompleted()V

    .line 54
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/bt$1;, "Lrx/internal/operators/bt.1;"
    iget-object v0, p0, Lrx/internal/operators/bt$1;->b:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/bt$1;, "Lrx/internal/operators/bt.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/bt$1;->a:Lrx/h/c;

    iget-object v1, p0, Lrx/internal/operators/bt$1;->c:Lrx/internal/operators/bt;

    iget-object v1, v1, Lrx/internal/operators/bt;->b:Lrx/c/p;

    invoke-interface {v1, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/e;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lrx/e;->j(I)Lrx/e;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lrx/e;->c(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    new-instance v3, Lrx/internal/operators/bt$1$1;

    invoke-direct {v3, p0, p1}, Lrx/internal/operators/bt$1$1;-><init>(Lrx/internal/operators/bt$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lrx/h/c;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method
