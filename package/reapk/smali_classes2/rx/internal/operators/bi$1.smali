.class Lrx/internal/operators/bi$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bi;->a(Lrx/l;)Lrx/l;
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
.field a:Z

.field final synthetic b:Lrx/internal/producers/SingleDelayedProducer;

.field final synthetic c:Lrx/l;

.field final synthetic d:Lrx/internal/operators/bi;


# direct methods
.method constructor <init>(Lrx/internal/operators/bi;Lrx/internal/producers/SingleDelayedProducer;Lrx/l;)V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/bi$1;, "Lrx/internal/operators/bi.1;"
    iput-object p1, p0, Lrx/internal/operators/bi$1;->d:Lrx/internal/operators/bi;

    iput-object p2, p0, Lrx/internal/operators/bi$1;->b:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/bi$1;->c:Lrx/l;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/operators/bi$1;, "Lrx/internal/operators/bi.1;"
    const/4 v1, 0x1

    .line 78
    iget-boolean v0, p0, Lrx/internal/operators/bi$1;->a:Z

    if-nez v0, :cond_0

    .line 79
    iput-boolean v1, p0, Lrx/internal/operators/bi$1;->a:Z

    .line 80
    iget-object v0, p0, Lrx/internal/operators/bi$1;->b:Lrx/internal/producers/SingleDelayedProducer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/bi$1;, "Lrx/internal/operators/bi.1;"
    iget-boolean v0, p0, Lrx/internal/operators/bi$1;->a:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/bi$1;->a:Z

    .line 70
    iget-object v0, p0, Lrx/internal/operators/bi$1;->c:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/bi$1;, "Lrx/internal/operators/bi.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/bi$1;->a:Z

    if-eqz v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/bi$1;->d:Lrx/internal/operators/bi;

    iget-object v2, v2, Lrx/internal/operators/bi;->a:Lrx/c/p;

    invoke-interface {v2, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/bi$1;->a:Z

    .line 59
    iget-object v2, p0, Lrx/internal/operators/bi$1;->b:Lrx/internal/producers/SingleDelayedProducer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lrx/internal/operators/bi$1;->unsubscribe()V

    goto :goto_0

    .line 53
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0
.end method
