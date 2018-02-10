.class final Lrx/internal/operators/di$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/di;
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

.field final b:J

.field final c:Lrx/h;

.field final d:I

.field final e:Ljava/util/concurrent/atomic/AtomicLong;

.field final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/l;IJLrx/h;)V
    .locals 1
    .param p2, "count"    # I
    .param p3, "ageMillis"    # J
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;IJ",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/di$a;, "Lrx/internal/operators/di$a<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 79
    iput-object p1, p0, Lrx/internal/operators/di$a;->a:Lrx/l;

    .line 80
    iput p2, p0, Lrx/internal/operators/di$a;->d:I

    .line 81
    iput-wide p3, p0, Lrx/internal/operators/di$a;->b:J

    .line 82
    iput-object p5, p0, Lrx/internal/operators/di$a;->c:Lrx/h;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/di$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/di$a;->f:Ljava/util/ArrayDeque;

    .line 85
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/di$a;->g:Ljava/util/ArrayDeque;

    .line 86
    return-void
.end method


# virtual methods
.method protected a(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/di$a;, "Lrx/internal/operators/di$a<TT;>;"
    iget-wide v4, p0, Lrx/internal/operators/di$a;->b:J

    sub-long v0, p1, v4

    .line 108
    .local v0, "minTime":J
    :goto_0
    iget-object v3, p0, Lrx/internal/operators/di$a;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 109
    .local v2, "time":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-ltz v3, :cond_1

    .line 115
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/di$a;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lrx/internal/operators/di$a;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    goto :goto_0
.end method

.method b(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/di$a;, "Lrx/internal/operators/di$a<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/di$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lrx/internal/operators/di$a;->f:Ljava/util/ArrayDeque;

    iget-object v5, p0, Lrx/internal/operators/di$a;->a:Lrx/l;

    move-wide v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/l;Lrx/c/p;)Z

    .line 140
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
    .line 135
    .local p0, "this":Lrx/internal/operators/di$a;, "Lrx/internal/operators/di$a<TT;>;"
    invoke-static {p1}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/di$a;, "Lrx/internal/operators/di$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/di$a;->c:Lrx/h;

    invoke-virtual {v0}, Lrx/h;->now()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/di$a;->a(J)V

    .line 128
    iget-object v0, p0, Lrx/internal/operators/di$a;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 130
    iget-object v0, p0, Lrx/internal/operators/di$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/internal/operators/di$a;->f:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lrx/internal/operators/di$a;->a:Lrx/l;

    invoke-static {v0, v1, v2, p0}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/l;Lrx/c/p;)V

    .line 131
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    .local p0, "this":Lrx/internal/operators/di$a;, "Lrx/internal/operators/di$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/di$a;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 120
    iget-object v0, p0, Lrx/internal/operators/di$a;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 121
    iget-object v0, p0, Lrx/internal/operators/di$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 122
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
    .line 90
    .local p0, "this":Lrx/internal/operators/di$a;, "Lrx/internal/operators/di$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lrx/internal/operators/di$a;->d:I

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lrx/internal/operators/di$a;->c:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->now()J

    move-result-wide v0

    .line 93
    .local v0, "now":J
    iget-object v2, p0, Lrx/internal/operators/di$a;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget v3, p0, Lrx/internal/operators/di$a;->d:I

    if-ne v2, v3, :cond_0

    .line 94
    iget-object v2, p0, Lrx/internal/operators/di$a;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Lrx/internal/operators/di$a;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 98
    :cond_0
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/di$a;->a(J)V

    .line 100
    iget-object v2, p0, Lrx/internal/operators/di$a;->f:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, p0, Lrx/internal/operators/di$a;->g:Ljava/util/ArrayDeque;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 103
    .end local v0    # "now":J
    :cond_1
    return-void
.end method
