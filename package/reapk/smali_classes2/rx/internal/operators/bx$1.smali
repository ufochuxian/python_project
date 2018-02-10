.class Lrx/internal/operators/bx$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bx;->a(Lrx/l;)Lrx/l;
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

.field final synthetic b:Lrx/internal/operators/bx;


# direct methods
.method constructor <init>(Lrx/internal/operators/bx;Lrx/l;Lrx/l;)V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/bx$1;, "Lrx/internal/operators/bx.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/bx$1;->b:Lrx/internal/operators/bx;

    iput-object p3, p0, Lrx/internal/operators/bx$1;->a:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/bx$1;, "Lrx/internal/operators/bx.1;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/bx$1;->b:Lrx/internal/operators/bx;

    iget-object v1, v1, Lrx/internal/operators/bx;->a:Lrx/c/b;

    invoke-interface {v1}, Lrx/c/b;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 76
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/bx$1;, "Lrx/internal/operators/bx.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/bx$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lrx/internal/operators/bx$1;->a()V

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/bx$1;->a()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/bx$1;, "Lrx/internal/operators/bx.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/bx$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lrx/internal/operators/bx$1;->a()V

    .line 60
    return-void

    .line 58
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/bx$1;->a()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/bx$1;, "Lrx/internal/operators/bx.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/bx$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
