.class Lrx/internal/operators/dm$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/dm;->a(Lrx/l;)Lrx/l;
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

.field final synthetic b:Lrx/internal/operators/dm;

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lrx/internal/operators/dm;Lrx/l;ZLrx/l;)V
    .locals 0
    .param p3, "x1"    # Z

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/dm$2;, "Lrx/internal/operators/dm.2;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/dm$2;->b:Lrx/internal/operators/dm;

    iput-object p4, p0, Lrx/internal/operators/dm$2;->a:Lrx/l;

    invoke-direct {p0, p2, p3}, Lrx/l;-><init>(Lrx/l;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/dm$2;, "Lrx/internal/operators/dm.2;"
    iget-boolean v0, p0, Lrx/internal/operators/dm$2;->d:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lrx/internal/operators/dm$2;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 80
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/dm$2;, "Lrx/internal/operators/dm.2;"
    iget-boolean v0, p0, Lrx/internal/operators/dm$2;->d:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lrx/internal/operators/dm$2;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/dm$2;, "Lrx/internal/operators/dm.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    .line 59
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/dm$2;->b:Lrx/internal/operators/dm;

    iget-object v2, v2, Lrx/internal/operators/dm;->a:Lrx/c/q;

    iget v3, p0, Lrx/internal/operators/dm$2;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lrx/internal/operators/dm$2;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 66
    .local v1, "isSelected":Z
    if-eqz v1, :cond_0

    .line 67
    iget-object v2, p0, Lrx/internal/operators/dm$2;->a:Lrx/l;

    invoke-virtual {v2, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 73
    .end local v1    # "isSelected":Z
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v5, p0, Lrx/internal/operators/dm$2;->d:Z

    .line 62
    iget-object v2, p0, Lrx/internal/operators/dm$2;->a:Lrx/l;

    invoke-static {v0, v2, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lrx/internal/operators/dm$2;->unsubscribe()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "isSelected":Z
    :cond_0
    iput-boolean v5, p0, Lrx/internal/operators/dm$2;->d:Z

    .line 70
    iget-object v2, p0, Lrx/internal/operators/dm$2;->a:Lrx/l;

    invoke-virtual {v2}, Lrx/l;->onCompleted()V

    .line 71
    invoke-virtual {p0}, Lrx/internal/operators/dm$2;->unsubscribe()V

    goto :goto_0
.end method
