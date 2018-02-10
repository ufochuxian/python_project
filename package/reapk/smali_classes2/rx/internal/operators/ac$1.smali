.class Lrx/internal/operators/ac$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/ac;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TU;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lrx/l;

.field final synthetic c:Lrx/i/e;

.field final synthetic d:Lrx/internal/operators/ac;


# direct methods
.method constructor <init>(Lrx/internal/operators/ac;Lrx/l;Lrx/i/e;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/ac$1;, "Lrx/internal/operators/ac.1;"
    iput-object p1, p0, Lrx/internal/operators/ac$1;->d:Lrx/internal/operators/ac;

    iput-object p2, p0, Lrx/internal/operators/ac$1;->b:Lrx/l;

    iput-object p3, p0, Lrx/internal/operators/ac$1;->c:Lrx/i/e;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/ac$1;, "Lrx/internal/operators/ac.1;"
    iget-boolean v0, p0, Lrx/internal/operators/ac$1;->a:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ac$1;->a:Z

    .line 72
    iget-object v0, p0, Lrx/internal/operators/ac$1;->c:Lrx/i/e;

    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/e;->a(Lrx/m;)V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/ac$1;->d:Lrx/internal/operators/ac;

    iget-object v0, v0, Lrx/internal/operators/ac;->a:Lrx/e;

    iget-object v1, p0, Lrx/internal/operators/ac$1;->b:Lrx/l;

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/ac$1;, "Lrx/internal/operators/ac.1;"
    iget-boolean v0, p0, Lrx/internal/operators/ac$1;->a:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ac$1;->a:Z

    .line 63
    iget-object v0, p0, Lrx/internal/operators/ac$1;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/ac$1;, "Lrx/internal/operators/ac.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lrx/internal/operators/ac$1;->onCompleted()V

    .line 54
    return-void
.end method
