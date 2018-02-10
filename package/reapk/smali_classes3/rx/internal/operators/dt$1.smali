.class Lrx/internal/operators/dt$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dt;->a(Lrx/l;)Lrx/l;
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

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lrx/internal/producers/SingleDelayedProducer;

.field final synthetic d:Lrx/l;

.field final synthetic e:Lrx/internal/operators/dt;


# direct methods
.method constructor <init>(Lrx/internal/operators/dt;Lrx/internal/producers/SingleDelayedProducer;Lrx/l;)V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/dt$1;, "Lrx/internal/operators/dt.1;"
    iput-object p1, p0, Lrx/internal/operators/dt$1;->e:Lrx/internal/operators/dt;

    iput-object p2, p0, Lrx/internal/operators/dt$1;->c:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/dt$1;->d:Lrx/l;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/dt$1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/dt$1;, "Lrx/internal/operators/dt.1;"
    iget-boolean v2, p0, Lrx/internal/operators/dt$1;->a:Z

    if-nez v2, :cond_0

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/dt$1;->a:Z

    .line 92
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/dt$1;->b:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/dt$1;->b:Ljava/util/List;

    .line 98
    iget-object v2, p0, Lrx/internal/operators/dt$1;->c:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v2, v0}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 100
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/dt$1;, "Lrx/internal/operators/dt.1;"
    iget-object v0, p0, Lrx/internal/operators/dt$1;->d:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/operators/dt$1;, "Lrx/internal/operators/dt.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/dt$1;->a:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lrx/internal/operators/dt$1;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/dt$1;, "Lrx/internal/operators/dt.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dt$1;->request(J)V

    .line 69
    return-void
.end method
