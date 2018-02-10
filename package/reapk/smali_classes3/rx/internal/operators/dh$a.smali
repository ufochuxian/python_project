.class final Lrx/internal/operators/dh$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;",
        "Lrx/c/p",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lrx/l;I)V
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/dh$a;, "Lrx/internal/operators/dh$a<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/internal/operators/dh$a;->a:Lrx/l;

    .line 66
    iput p2, p0, Lrx/internal/operators/dh$a;->d:I

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/dh$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/dh$a;->c:Ljava/util/ArrayDeque;

    .line 69
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/dh$a;, "Lrx/internal/operators/dh$a<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 97
    iget-object v1, p0, Lrx/internal/operators/dh$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lrx/internal/operators/dh$a;->c:Ljava/util/ArrayDeque;

    iget-object v5, p0, Lrx/internal/operators/dh$a;->a:Lrx/l;

    move-wide v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/l;Lrx/c/p;)Z

    .line 99
    :cond_0
    return-void
.end method

.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/dh$a;, "Lrx/internal/operators/dh$a<TT;>;"
    invoke-static {p1}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/dh$a;, "Lrx/internal/operators/dh$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dh$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/internal/operators/dh$a;->c:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lrx/internal/operators/dh$a;->a:Lrx/l;

    invoke-static {v0, v1, v2, p0}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/l;Lrx/c/p;)V

    .line 88
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/dh$a;, "Lrx/internal/operators/dh$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dh$a;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 82
    iget-object v0, p0, Lrx/internal/operators/dh$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 83
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
    .line 73
    .local p0, "this":Lrx/internal/operators/dh$a;, "Lrx/internal/operators/dh$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/dh$a;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lrx/internal/operators/dh$a;->d:I

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lrx/internal/operators/dh$a;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 76
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/dh$a;->c:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method
