.class public final Lrx/internal/operators/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/operators/q;->a:Ljava/lang/Iterable;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 10
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 37
    new-instance v2, Lrx/i/b;

    invoke-direct {v2}, Lrx/i/b;-><init>()V

    .line 39
    .local v2, "set":Lrx/i/b;
    invoke-interface {p1, v2}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 44
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/q;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 50
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    if-nez v9, :cond_1

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The source iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 164
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v8

    .line 46
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v8}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    :cond_1
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 59
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    new-instance v3, Lrx/internal/util/a/o;

    invoke-direct {v3}, Lrx/internal/util/a/o;-><init>()V

    .line 66
    .local v3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    :goto_1
    invoke-virtual {v2}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 85
    .local v6, "b":Z
    if-nez v6, :cond_4

    .line 157
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 159
    invoke-interface {p1}, Lrx/d;->onCompleted()V

    goto :goto_0

    .line 62
    .end local v3    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    .end local v6    # "b":Z
    :cond_2
    new-instance v3, Lrx/internal/util/atomic/c;

    invoke-direct {v3}, Lrx/internal/util/atomic/c;-><init>()V

    .restart local v3    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    goto :goto_1

    .line 73
    :catch_1
    move-exception v8

    .line 74
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-interface {p1}, Lrx/d;->onCompleted()V

    goto :goto_0

    .line 79
    :cond_3
    invoke-static {v3}, Lrx/internal/operators/n;->a(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v6    # "b":Z
    :cond_4
    invoke-virtual {v2}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/b;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    .local v7, "c":Lrx/b;
    invoke-virtual {v2}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    if-nez v7, :cond_7

    .line 114
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {v8, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 115
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    invoke-interface {p1}, Lrx/d;->onCompleted()V

    goto/16 :goto_0

    .line 97
    .end local v7    # "c":Lrx/b;
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v8

    .line 98
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    invoke-interface {p1}, Lrx/d;->onCompleted()V

    goto/16 :goto_0

    .line 103
    :cond_5
    invoke-static {v3}, Lrx/internal/operators/n;->a(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 120
    .restart local v7    # "c":Lrx/b;
    .local v8, "e":Ljava/lang/NullPointerException;
    :cond_6
    invoke-static {v3}, Lrx/internal/operators/n;->a(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 126
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_7
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 128
    new-instance v0, Lrx/internal/operators/q$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/q$1;-><init>(Lrx/internal/operators/q;Lrx/i/b;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicInteger;Lrx/d;)V

    invoke-virtual {v7, v0}, Lrx/b;->a(Lrx/d;)V

    goto/16 :goto_1

    .line 161
    .end local v7    # "c":Lrx/b;
    :cond_8
    invoke-static {v3}, Lrx/internal/operators/n;->a(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/q;->a(Lrx/d;)V

    return-void
.end method
