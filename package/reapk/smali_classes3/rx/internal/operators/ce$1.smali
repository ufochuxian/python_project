.class Lrx/internal/operators/ce$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ce;->a(Lrx/l;)Lrx/l;
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
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/ce;


# direct methods
.method constructor <init>(Lrx/internal/operators/ce;Lrx/l;)V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/ce$1;, "Lrx/internal/operators/ce.1;"
    iput-object p1, p0, Lrx/internal/operators/ce$1;->b:Lrx/internal/operators/ce;

    iput-object p2, p0, Lrx/internal/operators/ce$1;->a:Lrx/l;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/ce$1;, "Lrx/internal/operators/ce.1;"
    iget-object v0, p0, Lrx/internal/operators/ce$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/ce$1;, "Lrx/internal/operators/ce.1;"
    iget-object v0, p0, Lrx/internal/operators/ce$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/ce$1;, "Lrx/internal/operators/ce.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method
