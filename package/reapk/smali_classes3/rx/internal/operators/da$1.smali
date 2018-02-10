.class Lrx/internal/operators/da$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/da;->a(Lrx/l;)Lrx/l;
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

.field final synthetic b:Lrx/internal/operators/da;

.field private c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lrx/schedulers/c",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/da;Lrx/l;Lrx/l;)V
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/da$1;, "Lrx/internal/operators/da.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/da$1;->b:Lrx/internal/operators/da;

    iput-object p3, p0, Lrx/internal/operators/da$1;->a:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    .line 43
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/da$1;->c:Ljava/util/Deque;

    return-void
.end method

.method private a(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/da$1;, "Lrx/internal/operators/da.1;"
    iget-object v3, p0, Lrx/internal/operators/da$1;->b:Lrx/internal/operators/da;

    iget-wide v4, v3, Lrx/internal/operators/da;->a:J

    sub-long v0, p1, v4

    .line 47
    .local v0, "limit":J
    :goto_0
    iget-object v3, p0, Lrx/internal/operators/da$1;->c:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    iget-object v3, p0, Lrx/internal/operators/da$1;->c:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/schedulers/c;

    .line 49
    .local v2, "v":Lrx/schedulers/c;, "Lrx/schedulers/c<TT;>;"
    invoke-virtual {v2}, Lrx/schedulers/c;->a()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 50
    iget-object v3, p0, Lrx/internal/operators/da$1;->c:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lrx/internal/operators/da$1;->a:Lrx/l;

    invoke-virtual {v2}, Lrx/schedulers/c;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    .end local v2    # "v":Lrx/schedulers/c;, "Lrx/schedulers/c<TT;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/da$1;, "Lrx/internal/operators/da.1;"
    iget-object v0, p0, Lrx/internal/operators/da$1;->b:Lrx/internal/operators/da;

    iget-object v0, v0, Lrx/internal/operators/da;->b:Lrx/h;

    invoke-virtual {v0}, Lrx/h;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lrx/internal/operators/da$1;->a(J)V

    .line 73
    iget-object v0, p0, Lrx/internal/operators/da$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/da$1;, "Lrx/internal/operators/da.1;"
    iget-object v0, p0, Lrx/internal/operators/da$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/da$1;, "Lrx/internal/operators/da.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/da$1;->b:Lrx/internal/operators/da;

    iget-object v2, v2, Lrx/internal/operators/da;->b:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->now()J

    move-result-wide v0

    .line 61
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lrx/internal/operators/da$1;->a(J)V

    .line 62
    iget-object v2, p0, Lrx/internal/operators/da$1;->c:Ljava/util/Deque;

    new-instance v3, Lrx/schedulers/c;

    invoke-direct {v3, v0, v1, p1}, Lrx/schedulers/c;-><init>(JLjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
