.class public final Lrx/internal/operators/r;
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
    .line 30
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/r;->a:Ljava/lang/Iterable;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 13
    .param p1, "s"    # Lrx/d;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 36
    new-instance v2, Lrx/i/b;

    invoke-direct {v2}, Lrx/i/b;-><init>()V

    .line 38
    .local v2, "set":Lrx/i/b;
    invoke-interface {p1, v2}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 43
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/r;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 49
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    if-nez v9, :cond_1

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The source iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 147
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v8

    .line 45
    .local v8, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v8}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/b;>;"
    :cond_1
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 55
    .local v5, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 58
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_1
    invoke-virtual {v2}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 75
    .local v6, "b":Z
    if-nez v6, :cond_3

    .line 142
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {p1}, Lrx/d;->onCompleted()V

    goto :goto_0

    .line 65
    .end local v6    # "b":Z
    :catch_1
    move-exception v8

    .line 66
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lrx/i/b;->unsubscribe()V

    .line 67
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-interface {p1, v8}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v8}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v6    # "b":Z
    :cond_3
    invoke-virtual {v2}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/b;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    .local v7, "c":Lrx/b;
    invoke-virtual {v2}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    if-nez v7, :cond_6

    .line 102
    invoke-virtual {v2}, Lrx/i/b;->unsubscribe()V

    .line 103
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {v10, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 104
    .local v10, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    invoke-interface {p1, v10}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    .end local v7    # "c":Lrx/b;
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v8

    .line 88
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Lrx/i/b;->unsubscribe()V

    .line 89
    invoke-virtual {v3, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    invoke-interface {p1, v8}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :cond_4
    invoke-static {v8}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v7    # "c":Lrx/b;
    .restart local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_5
    invoke-static {v10}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 112
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_6
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 114
    new-instance v0, Lrx/internal/operators/r$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/r$1;-><init>(Lrx/internal/operators/r;Lrx/i/b;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/d;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v0}, Lrx/b;->a(Lrx/d;)V

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/r;->a(Lrx/d;)V

    return-void
.end method
