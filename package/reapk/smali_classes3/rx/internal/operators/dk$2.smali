.class Lrx/internal/operators/dk$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dk;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/dk;


# direct methods
.method constructor <init>(Lrx/internal/operators/dk;Lrx/l;)V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/dk$2;, "Lrx/internal/operators/dk.2;"
    iput-object p1, p0, Lrx/internal/operators/dk$2;->b:Lrx/internal/operators/dk;

    iput-object p2, p0, Lrx/internal/operators/dk$2;->a:Lrx/l;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/dk$2;, "Lrx/internal/operators/dk.2;"
    iget-object v0, p0, Lrx/internal/operators/dk$2;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/dk$2;, "Lrx/internal/operators/dk.2;"
    iget-object v0, p0, Lrx/internal/operators/dk$2;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/dk$2;, "Lrx/internal/operators/dk.2;"
    .local p1, "t":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lrx/internal/operators/dk$2;->onCompleted()V

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/dk$2;, "Lrx/internal/operators/dk.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dk$2;->request(J)V

    .line 69
    return-void
.end method
