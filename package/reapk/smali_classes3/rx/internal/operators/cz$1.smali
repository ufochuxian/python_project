.class Lrx/internal/operators/cz$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cz;->a(Lrx/l;)Lrx/l;
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

.field final synthetic b:Lrx/internal/operators/cz;

.field private final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/cz;Lrx/l;Lrx/l;)V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/cz$1;, "Lrx/internal/operators/cz.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/cz$1;->b:Lrx/internal/operators/cz;

    iput-object p3, p0, Lrx/internal/operators/cz$1;->a:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    .line 45
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cz$1;->c:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/cz$1;, "Lrx/internal/operators/cz.1;"
    iget-object v0, p0, Lrx/internal/operators/cz$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 50
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/cz$1;, "Lrx/internal/operators/cz.1;"
    iget-object v0, p0, Lrx/internal/operators/cz$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/cz$1;, "Lrx/internal/operators/cz.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/cz$1;->b:Lrx/internal/operators/cz;

    iget v0, v0, Lrx/internal/operators/cz;->a:I

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lrx/internal/operators/cz$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/cz$1;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lrx/internal/operators/cz$1;->b:Lrx/internal/operators/cz;

    iget v1, v1, Lrx/internal/operators/cz;->a:I

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lrx/internal/operators/cz$1;->a:Lrx/l;

    iget-object v1, p0, Lrx/internal/operators/cz$1;->c:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 71
    :goto_1
    iget-object v0, p0, Lrx/internal/operators/cz$1;->c:Ljava/util/Deque;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/cz$1;->request(J)V

    goto :goto_1
.end method
