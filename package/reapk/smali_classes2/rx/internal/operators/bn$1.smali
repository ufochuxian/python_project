.class Lrx/internal/operators/bn$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bn;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TTOpening;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/bn$a;

.field final synthetic b:Lrx/internal/operators/bn;


# direct methods
.method constructor <init>(Lrx/internal/operators/bn;Lrx/internal/operators/bn$a;)V
    .locals 0

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/bn$1;, "Lrx/internal/operators/bn.1;"
    iput-object p1, p0, Lrx/internal/operators/bn$1;->b:Lrx/internal/operators/bn;

    iput-object p2, p0, Lrx/internal/operators/bn$1;->a:Lrx/internal/operators/bn$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/bn$1;, "Lrx/internal/operators/bn.1;"
    iget-object v0, p0, Lrx/internal/operators/bn$1;->a:Lrx/internal/operators/bn$a;

    invoke-virtual {v0}, Lrx/internal/operators/bn$a;->onCompleted()V

    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/bn$1;, "Lrx/internal/operators/bn.1;"
    iget-object v0, p0, Lrx/internal/operators/bn$1;->a:Lrx/internal/operators/bn$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/bn$a;->onError(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOpening;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/bn$1;, "Lrx/internal/operators/bn.1;"
    .local p1, "t":Ljava/lang/Object;, "TTOpening;"
    iget-object v0, p0, Lrx/internal/operators/bn$1;->a:Lrx/internal/operators/bn$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/bn$a;->a(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
