.class Lrx/internal/operators/br$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/br;->a(Lrx/l;)Lrx/l;
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

.field final synthetic c:Lrx/i/e;

.field final synthetic d:Lrx/h$a;

.field final synthetic e:Lrx/e/g;

.field final synthetic f:Lrx/internal/operators/br;


# direct methods
.method constructor <init>(Lrx/internal/operators/br;Lrx/l;Lrx/i/e;Lrx/h$a;Lrx/e/g;)V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/br$1;, "Lrx/internal/operators/br.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/br$1;->f:Lrx/internal/operators/br;

    iput-object p3, p0, Lrx/internal/operators/br$1;->c:Lrx/i/e;

    iput-object p4, p0, Lrx/internal/operators/br$1;->d:Lrx/h$a;

    iput-object p5, p0, Lrx/internal/operators/br$1;->e:Lrx/e/g;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    .line 64
    new-instance v0, Lrx/internal/operators/br$a;

    invoke-direct {v0}, Lrx/internal/operators/br$a;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/br$1;->a:Lrx/internal/operators/br$a;

    .line 65
    iput-object p0, p0, Lrx/internal/operators/br$1;->b:Lrx/l;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/br$1;, "Lrx/internal/operators/br.1;"
    iget-object v0, p0, Lrx/internal/operators/br$1;->a:Lrx/internal/operators/br$a;

    iget-object v1, p0, Lrx/internal/operators/br$1;->e:Lrx/e/g;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/br$a;->a(Lrx/l;Lrx/l;)V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/br$1;, "Lrx/internal/operators/br.1;"
    iget-object v0, p0, Lrx/internal/operators/br$1;->e:Lrx/e/g;

    invoke-virtual {v0, p1}, Lrx/e/g;->onError(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p0}, Lrx/internal/operators/br$1;->unsubscribe()V

    .line 88
    iget-object v0, p0, Lrx/internal/operators/br$1;->a:Lrx/internal/operators/br$a;

    invoke-virtual {v0}, Lrx/internal/operators/br$a;->a()V

    .line 89
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/br$1;, "Lrx/internal/operators/br.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/br$1;->a:Lrx/internal/operators/br$a;

    invoke-virtual {v1, p1}, Lrx/internal/operators/br$a;->a(Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "index":I
    iget-object v1, p0, Lrx/internal/operators/br$1;->c:Lrx/i/e;

    iget-object v2, p0, Lrx/internal/operators/br$1;->d:Lrx/h$a;

    new-instance v3, Lrx/internal/operators/br$1$1;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/br$1$1;-><init>(Lrx/internal/operators/br$1;I)V

    iget-object v4, p0, Lrx/internal/operators/br$1;->f:Lrx/internal/operators/br;

    iget-wide v4, v4, Lrx/internal/operators/br;->a:J

    iget-object v6, p0, Lrx/internal/operators/br$1;->f:Lrx/internal/operators/br;

    iget-object v6, v6, Lrx/internal/operators/br;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/i/e;->a(Lrx/m;)V

    .line 82
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/br$1;, "Lrx/internal/operators/br.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/br$1;->request(J)V

    .line 70
    return-void
.end method
