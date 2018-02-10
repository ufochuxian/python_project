.class Lrx/internal/operators/ad$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ad;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/ad;


# direct methods
.method constructor <init>(Lrx/internal/operators/ad;Lrx/l;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/ad$1;, "Lrx/internal/operators/ad.1;"
    iput-object p1, p0, Lrx/internal/operators/ad$1;->b:Lrx/internal/operators/ad;

    iput-object p2, p0, Lrx/internal/operators/ad$1;->a:Lrx/l;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/ad$1;, "Lrx/internal/operators/ad.1;"
    iget-object v0, p0, Lrx/internal/operators/ad$1;->b:Lrx/internal/operators/ad;

    iget-object v0, v0, Lrx/internal/operators/ad;->a:Lrx/e;

    iget-object v1, p0, Lrx/internal/operators/ad$1;->a:Lrx/l;

    invoke-static {v1}, Lrx/e/h;->a(Lrx/l;)Lrx/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 49
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/ad$1;, "Lrx/internal/operators/ad.1;"
    iget-object v0, p0, Lrx/internal/operators/ad$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/ad$1;, "Lrx/internal/operators/ad.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    return-void
.end method
