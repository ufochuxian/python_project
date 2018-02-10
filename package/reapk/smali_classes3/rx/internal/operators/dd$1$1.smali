.class Lrx/internal/operators/dd$1$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dd$1;->call()V
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
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lrx/internal/operators/dd$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/dd$1;Lrx/l;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/dd$1$1;, "Lrx/internal/operators/dd$1.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iput-object p3, p0, Lrx/internal/operators/dd$1$1;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/dd$1$1;, "Lrx/internal/operators/dd$1.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iget-object v0, v0, Lrx/internal/operators/dd$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iget-object v0, v0, Lrx/internal/operators/dd$1;->b:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iget-object v1, v1, Lrx/internal/operators/dd$1;->b:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/dd$1$1;, "Lrx/internal/operators/dd$1.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iget-object v0, v0, Lrx/internal/operators/dd$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iget-object v0, v0, Lrx/internal/operators/dd$1;->b:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iget-object v1, v1, Lrx/internal/operators/dd$1;->b:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

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
    .line 53
    .local p0, "this":Lrx/internal/operators/dd$1$1;, "Lrx/internal/operators/dd$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iget-object v0, v0, Lrx/internal/operators/dd$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 2
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/dd$1$1;, "Lrx/internal/operators/dd$1.1;"
    iget-object v0, p0, Lrx/internal/operators/dd$1$1;->b:Lrx/internal/operators/dd$1;

    iget-object v0, v0, Lrx/internal/operators/dd$1;->a:Lrx/l;

    new-instance v1, Lrx/internal/operators/dd$1$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/dd$1$1$1;-><init>(Lrx/internal/operators/dd$1$1;Lrx/g;)V

    invoke-virtual {v0, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 91
    return-void
.end method
