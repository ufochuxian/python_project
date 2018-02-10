.class Lrx/internal/operators/du$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/du;->a(Lrx/l;)Lrx/l;
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
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Lrx/internal/producers/SingleDelayedProducer;

.field final synthetic d:Lrx/l;

.field final synthetic e:Lrx/internal/operators/du;


# direct methods
.method constructor <init>(Lrx/internal/operators/du;Lrx/internal/producers/SingleDelayedProducer;Lrx/l;)V
    .locals 2

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/du$2;, "Lrx/internal/operators/du.2;"
    iput-object p1, p0, Lrx/internal/operators/du$2;->e:Lrx/internal/operators/du;

    iput-object p2, p0, Lrx/internal/operators/du$2;->c:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/du$2;->d:Lrx/l;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/du$2;->e:Lrx/internal/operators/du;

    iget v1, v1, Lrx/internal/operators/du;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/du$2;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/du$2;, "Lrx/internal/operators/du.2;"
    iget-boolean v2, p0, Lrx/internal/operators/du$2;->b:Z

    if-nez v2, :cond_0

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/du$2;->b:Z

    .line 76
    iget-object v0, p0, Lrx/internal/operators/du$2;->a:Ljava/util/List;

    .line 77
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/du$2;->a:Ljava/util/List;

    .line 80
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/du$2;->e:Lrx/internal/operators/du;

    iget-object v2, v2, Lrx/internal/operators/du;->a:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v2, p0, Lrx/internal/operators/du$2;->c:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v2, v0}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 87
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/du$2;, "Lrx/internal/operators/du.2;"
    iget-object v0, p0, Lrx/internal/operators/du$2;->d:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 92
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
    .line 96
    .local p0, "this":Lrx/internal/operators/du$2;, "Lrx/internal/operators/du.2;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/du$2;->b:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lrx/internal/operators/du$2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/du$2;, "Lrx/internal/operators/du.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/du$2;->request(J)V

    .line 70
    return-void
.end method
