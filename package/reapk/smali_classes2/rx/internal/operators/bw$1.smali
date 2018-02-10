.class Lrx/internal/operators/bw$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bw;->a(Lrx/l;)Lrx/l;
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
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Lrx/l;

.field final synthetic d:Lrx/internal/operators/bw;


# direct methods
.method constructor <init>(Lrx/internal/operators/bw;Lrx/l;Lrx/l;)V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/bw$1;, "Lrx/internal/operators/bw.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/bw$1;->d:Lrx/internal/operators/bw;

    iput-object p3, p0, Lrx/internal/operators/bw$1;->c:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/bw$1;, "Lrx/internal/operators/bw.1;"
    iget-object v0, p0, Lrx/internal/operators/bw$1;->c:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 114
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/bw$1;, "Lrx/internal/operators/bw.1;"
    iget-object v0, p0, Lrx/internal/operators/bw$1;->c:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 109
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
    .line 77
    .local p0, "this":Lrx/internal/operators/bw$1;, "Lrx/internal/operators/bw.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/bw$1;->d:Lrx/internal/operators/bw;

    iget-object v4, v4, Lrx/internal/operators/bw;->a:Lrx/c/p;

    invoke-interface {v4, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 82
    .local v3, "key":Ljava/lang/Object;, "TU;"
    iget-object v1, p0, Lrx/internal/operators/bw$1;->a:Ljava/lang/Object;

    .line 83
    .local v1, "currentKey":Ljava/lang/Object;, "TU;"
    iput-object v3, p0, Lrx/internal/operators/bw$1;->a:Ljava/lang/Object;

    .line 85
    iget-boolean v4, p0, Lrx/internal/operators/bw$1;->b:Z

    if-eqz v4, :cond_1

    .line 89
    :try_start_1
    iget-object v4, p0, Lrx/internal/operators/bw$1;->d:Lrx/internal/operators/bw;

    iget-object v4, v4, Lrx/internal/operators/bw;->b:Lrx/c/q;

    invoke-interface {v4, v1, v3}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 95
    .local v0, "comparison":Z
    if-nez v0, :cond_0

    .line 96
    iget-object v4, p0, Lrx/internal/operators/bw$1;->c:Lrx/l;

    invoke-virtual {v4, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 104
    .end local v0    # "comparison":Z
    .end local v1    # "currentKey":Ljava/lang/Object;, "TU;"
    .end local v3    # "key":Ljava/lang/Object;, "TU;"
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/bw$1;->c:Lrx/l;

    invoke-static {v2, v4, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "currentKey":Ljava/lang/Object;, "TU;"
    .restart local v3    # "key":Ljava/lang/Object;, "TU;"
    :catch_1
    move-exception v2

    .line 91
    .restart local v2    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/bw$1;->c:Lrx/l;

    invoke-static {v2, v4, v3}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "comparison":Z
    :cond_0
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/bw$1;->request(J)V

    goto :goto_0

    .line 101
    .end local v0    # "comparison":Z
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/bw$1;->b:Z

    .line 102
    iget-object v4, p0, Lrx/internal/operators/bw$1;->c:Lrx/l;

    invoke-virtual {v4, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
