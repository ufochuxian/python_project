.class Lrx/internal/operators/dz$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dz;->a(Lrx/l;)Lrx/l;
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
.field final synthetic a:Lrx/internal/operators/dz$b;

.field final synthetic b:Lrx/internal/operators/dz;


# direct methods
.method constructor <init>(Lrx/internal/operators/dz;Lrx/internal/operators/dz$b;)V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/dz$1;, "Lrx/internal/operators/dz.1;"
    iput-object p1, p0, Lrx/internal/operators/dz$1;->b:Lrx/internal/operators/dz;

    iput-object p2, p0, Lrx/internal/operators/dz$1;->a:Lrx/internal/operators/dz$b;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/dz$1;, "Lrx/internal/operators/dz.1;"
    iget-object v0, p0, Lrx/internal/operators/dz$1;->a:Lrx/internal/operators/dz$b;

    invoke-virtual {v0}, Lrx/internal/operators/dz$b;->onCompleted()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/dz$1;, "Lrx/internal/operators/dz.1;"
    iget-object v0, p0, Lrx/internal/operators/dz$1;->a:Lrx/internal/operators/dz$b;

    invoke-virtual {v0, p1}, Lrx/internal/operators/dz$b;->onError(Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/dz$1;, "Lrx/internal/operators/dz.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/dz$1;->a:Lrx/internal/operators/dz$b;

    invoke-virtual {v0, p1}, Lrx/internal/operators/dz$b;->a(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/dz$1;, "Lrx/internal/operators/dz.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dz$1;->request(J)V

    .line 60
    return-void
.end method
