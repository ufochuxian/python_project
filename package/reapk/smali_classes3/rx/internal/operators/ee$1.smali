.class Lrx/internal/operators/ee$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ee;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/l;

.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lrx/internal/operators/ee;


# direct methods
.method constructor <init>(Lrx/internal/operators/ee;Lrx/l;Lrx/l;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/ee$1;, "Lrx/internal/operators/ee.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/ee$1;->d:Lrx/internal/operators/ee;

    iput-object p3, p0, Lrx/internal/operators/ee$1;->b:Lrx/l;

    iput-object p4, p0, Lrx/internal/operators/ee$1;->c:Ljava/util/Iterator;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/ee$1;, "Lrx/internal/operators/ee.1;"
    iget-boolean v0, p0, Lrx/internal/operators/ee$1;->a:Z

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ee$1;->a:Z

    .line 56
    iget-object v0, p0, Lrx/internal/operators/ee$1;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/ee$1;, "Lrx/internal/operators/ee.1;"
    iget-boolean v0, p0, Lrx/internal/operators/ee$1;->a:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ee$1;->a:Z

    .line 66
    iget-object v0, p0, Lrx/internal/operators/ee$1;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/ee$1;, "Lrx/internal/operators/ee.1;"
    .local p1, "t":Ljava/lang/Object;, "TT1;"
    iget-boolean v1, p0, Lrx/internal/operators/ee$1;->a:Z

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/ee$1;->b:Lrx/l;

    iget-object v2, p0, Lrx/internal/operators/ee$1;->d:Lrx/internal/operators/ee;

    iget-object v2, v2, Lrx/internal/operators/ee;->b:Lrx/c/q;

    iget-object v3, p0, Lrx/internal/operators/ee$1;->c:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Lrx/internal/operators/ee$1;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lrx/internal/operators/ee$1;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method
