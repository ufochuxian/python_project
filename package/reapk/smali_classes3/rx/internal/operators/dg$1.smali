.class Lrx/internal/operators/dg$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dg;->a(Lrx/l;)Lrx/l;
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
.field a:I

.field b:Z

.field final synthetic c:Lrx/l;

.field final synthetic d:Lrx/internal/operators/dg;


# direct methods
.method constructor <init>(Lrx/internal/operators/dg;Lrx/l;)V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/dg$1;, "Lrx/internal/operators/dg.1;"
    iput-object p1, p0, Lrx/internal/operators/dg$1;->d:Lrx/internal/operators/dg;

    iput-object p2, p0, Lrx/internal/operators/dg$1;->c:Lrx/l;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/dg$1;, "Lrx/internal/operators/dg.1;"
    iget-boolean v0, p0, Lrx/internal/operators/dg$1;->b:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dg$1;->b:Z

    .line 56
    iget-object v0, p0, Lrx/internal/operators/dg$1;->c:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 58
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/dg$1;, "Lrx/internal/operators/dg.1;"
    iget-boolean v0, p0, Lrx/internal/operators/dg$1;->b:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dg$1;->b:Z

    .line 65
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/dg$1;->c:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lrx/internal/operators/dg$1;->unsubscribe()V

    .line 70
    :cond_0
    return-void

    .line 67
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/dg$1;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/dg$1;, "Lrx/internal/operators/dg.1;"
    .local p1, "i":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0}, Lrx/internal/operators/dg$1;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lrx/internal/operators/dg$1;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/internal/operators/dg$1;->a:I

    iget-object v3, p0, Lrx/internal/operators/dg$1;->d:Lrx/internal/operators/dg;

    iget v3, v3, Lrx/internal/operators/dg;->a:I

    if-ge v2, v3, :cond_0

    .line 75
    iget v2, p0, Lrx/internal/operators/dg$1;->a:I

    iget-object v3, p0, Lrx/internal/operators/dg$1;->d:Lrx/internal/operators/dg;

    iget v3, v3, Lrx/internal/operators/dg;->a:I

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 76
    .local v0, "stop":Z
    :goto_0
    iget-object v2, p0, Lrx/internal/operators/dg$1;->c:Lrx/l;

    invoke-virtual {v2, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 77
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lrx/internal/operators/dg$1;->b:Z

    if-nez v2, :cond_0

    .line 78
    iput-boolean v1, p0, Lrx/internal/operators/dg$1;->b:Z

    .line 80
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/dg$1;->c:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Lrx/internal/operators/dg$1;->unsubscribe()V

    .line 86
    .end local v0    # "stop":Z
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    .restart local v0    # "stop":Z
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/operators/dg$1;->unsubscribe()V

    throw v1
.end method

.method public setProducer(Lrx/g;)V
    .locals 2
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/dg$1;, "Lrx/internal/operators/dg.1;"
    iget-object v0, p0, Lrx/internal/operators/dg$1;->c:Lrx/l;

    new-instance v1, Lrx/internal/operators/dg$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/dg$1$1;-><init>(Lrx/internal/operators/dg$1;Lrx/g;)V

    invoke-virtual {v0, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 116
    return-void
.end method
