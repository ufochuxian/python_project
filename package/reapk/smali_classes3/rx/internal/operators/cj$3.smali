.class Lrx/internal/operators/cj$3;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cj;->h(Lrx/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/cj;


# direct methods
.method constructor <init>(Lrx/internal/operators/cj;Lrx/l;Lrx/l;)V
    .locals 0

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/cj$3;, "Lrx/internal/operators/cj.3;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/cj$3;->b:Lrx/internal/operators/cj;

    iput-object p3, p0, Lrx/internal/operators/cj$3;->a:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/cj$3;, "Lrx/internal/operators/cj.3;"
    iget-object v0, p0, Lrx/internal/operators/cj$3;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 128
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/cj$3;, "Lrx/internal/operators/cj.3;"
    iget-object v0, p0, Lrx/internal/operators/cj$3;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/cj$3;, "Lrx/internal/operators/cj.3;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/cj$3;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
