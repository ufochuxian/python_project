.class Lrx/internal/operators/cu$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cu;->a(Lrx/l;)Lrx/l;
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

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final synthetic c:Lrx/l;

.field final synthetic d:Lrx/internal/operators/cu;


# direct methods
.method constructor <init>(Lrx/internal/operators/cu;Lrx/l;Lrx/l;)V
    .locals 0

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/cu$2;, "Lrx/internal/operators/cu.2;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/cu$2;->d:Lrx/internal/operators/cu;

    iput-object p3, p0, Lrx/internal/operators/cu$2;->c:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/cu$2;, "Lrx/internal/operators/cu.2;"
    iget-object v0, p0, Lrx/internal/operators/cu$2;->c:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 125
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/cu$2;, "Lrx/internal/operators/cu.2;"
    iget-object v0, p0, Lrx/internal/operators/cu$2;->c:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/cu$2;, "Lrx/internal/operators/cu.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/cu$2;->a:Z

    if-nez v2, :cond_0

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/cu$2;->a:Z

    .line 105
    move-object v1, p1

    .line 115
    .local v1, "v":Ljava/lang/Object;, "TR;"
    :goto_0
    iput-object v1, p0, Lrx/internal/operators/cu$2;->b:Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lrx/internal/operators/cu$2;->c:Lrx/l;

    invoke-virtual {v2, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 117
    :goto_1
    return-void

    .line 107
    .end local v1    # "v":Ljava/lang/Object;, "TR;"
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/cu$2;->b:Ljava/lang/Object;

    .line 109
    .restart local v1    # "v":Ljava/lang/Object;, "TR;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/cu$2;->d:Lrx/internal/operators/cu;

    iget-object v2, v2, Lrx/internal/operators/cu;->a:Lrx/c/q;

    invoke-interface {v2, v1, p1}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/cu$2;->c:Lrx/l;

    invoke-static {v0, v2, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_1
.end method
