.class Lrx/internal/operators/dc$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dc;->a(Lrx/l;)Lrx/l;
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

.field b:I

.field final synthetic c:Lrx/l;

.field final synthetic d:Lrx/internal/operators/dc;


# direct methods
.method constructor <init>(Lrx/internal/operators/dc;Lrx/l;Lrx/l;)V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/dc$1;, "Lrx/internal/operators/dc.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/dc$1;->d:Lrx/internal/operators/dc;

    iput-object p3, p0, Lrx/internal/operators/dc$1;->c:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dc$1;->a:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/dc$1;, "Lrx/internal/operators/dc.1;"
    iget-object v0, p0, Lrx/internal/operators/dc$1;->c:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 68
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/dc$1;, "Lrx/internal/operators/dc.1;"
    iget-object v0, p0, Lrx/internal/operators/dc$1;->c:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/dc$1;, "Lrx/internal/operators/dc.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/dc$1;->a:Z

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p0, Lrx/internal/operators/dc$1;->c:Lrx/l;

    invoke-virtual {v2, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/dc$1;->d:Lrx/internal/operators/dc;

    iget-object v2, v2, Lrx/internal/operators/dc;->a:Lrx/c/q;

    iget v3, p0, Lrx/internal/operators/dc$1;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lrx/internal/operators/dc$1;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    .local v1, "skip":Z
    if-nez v1, :cond_1

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/dc$1;->a:Z

    .line 53
    iget-object v2, p0, Lrx/internal/operators/dc$1;->c:Lrx/l;

    invoke-virtual {v2, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    .end local v1    # "skip":Z
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/dc$1;->c:Lrx/l;

    invoke-static {v0, v2, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "skip":Z
    :cond_1
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/dc$1;->request(J)V

    goto :goto_0
.end method
