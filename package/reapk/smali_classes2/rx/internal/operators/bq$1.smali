.class Lrx/internal/operators/bq$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bq;->a(Lrx/l;)Lrx/l;
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
.field final a:Lrx/internal/operators/br$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/br$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic c:Lrx/e/g;

.field final synthetic d:Lrx/i/e;

.field final synthetic e:Lrx/internal/operators/bq;


# direct methods
.method constructor <init>(Lrx/internal/operators/bq;Lrx/l;Lrx/e/g;Lrx/i/e;)V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/bq$1;, "Lrx/internal/operators/bq.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/bq$1;->e:Lrx/internal/operators/bq;

    iput-object p3, p0, Lrx/internal/operators/bq$1;->c:Lrx/e/g;

    iput-object p4, p0, Lrx/internal/operators/bq$1;->d:Lrx/i/e;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    .line 46
    new-instance v0, Lrx/internal/operators/br$a;

    invoke-direct {v0}, Lrx/internal/operators/br$a;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bq$1;->a:Lrx/internal/operators/br$a;

    .line 47
    iput-object p0, p0, Lrx/internal/operators/bq$1;->b:Lrx/l;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/bq$1;, "Lrx/internal/operators/bq.1;"
    iget-object v0, p0, Lrx/internal/operators/bq$1;->a:Lrx/internal/operators/br$a;

    iget-object v1, p0, Lrx/internal/operators/bq$1;->c:Lrx/e/g;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/br$a;->a(Lrx/l;Lrx/l;)V

    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/bq$1;, "Lrx/internal/operators/bq.1;"
    iget-object v0, p0, Lrx/internal/operators/bq$1;->c:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 96
    invoke-virtual {p0}, Lrx/internal/operators/bq$1;->unsubscribe()V

    .line 97
    iget-object v0, p0, Lrx/internal/operators/bq$1;->a:Lrx/internal/operators/br$a;

    invoke-virtual {v0}, Lrx/internal/operators/br$a;->a()V

    .line 98
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
    .line 60
    .local p0, "this":Lrx/internal/operators/bq$1;, "Lrx/internal/operators/bq.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/bq$1;->e:Lrx/internal/operators/bq;

    iget-object v4, v4, Lrx/internal/operators/bq;->a:Lrx/c/p;

    invoke-interface {v4, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v1, "debouncer":Lrx/e;, "Lrx/e<TU;>;"
    iget-object v4, p0, Lrx/internal/operators/bq$1;->a:Lrx/internal/operators/br$a;

    invoke-virtual {v4, p1}, Lrx/internal/operators/br$a;->a(Ljava/lang/Object;)I

    move-result v3

    .line 69
    .local v3, "index":I
    new-instance v0, Lrx/internal/operators/bq$1$1;

    invoke-direct {v0, p0, v3}, Lrx/internal/operators/bq$1$1;-><init>(Lrx/internal/operators/bq$1;I)V

    .line 87
    .local v0, "debounceSubscriber":Lrx/l;, "Lrx/l<TU;>;"
    iget-object v4, p0, Lrx/internal/operators/bq$1;->d:Lrx/i/e;

    invoke-virtual {v4, v0}, Lrx/i/e;->a(Lrx/m;)V

    .line 89
    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 91
    .end local v0    # "debounceSubscriber":Lrx/l;, "Lrx/l<TU;>;"
    .end local v1    # "debouncer":Lrx/e;, "Lrx/e<TU;>;"
    .end local v3    # "index":I
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/bq$1;, "Lrx/internal/operators/bq.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/bq$1;->request(J)V

    .line 53
    return-void
.end method
