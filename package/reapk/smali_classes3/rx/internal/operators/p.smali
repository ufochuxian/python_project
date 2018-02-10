.class public final Lrx/internal/operators/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# instance fields
.field final a:[Lrx/b;


# direct methods
.method public constructor <init>([Lrx/b;)V
    .locals 0
    .param p1, "sources"    # [Lrx/b;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/p;->a:[Lrx/b;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 10
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 36
    new-instance v2, Lrx/i/b;

    invoke-direct {v2}, Lrx/i/b;-><init>()V

    .line 37
    .local v2, "set":Lrx/i/b;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lrx/internal/operators/p;->a:[Lrx/b;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 39
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 41
    .local v3, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Throwable;>;"
    invoke-interface {p1, v2}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 43
    iget-object v6, p0, Lrx/internal/operators/p;->a:[Lrx/b;

    .local v6, "arr$":[Lrx/b;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v7, v6, v8

    .line 44
    .local v7, "c":Lrx/b;
    invoke-virtual {v2}, Lrx/i/b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    .end local v7    # "c":Lrx/b;
    :cond_0
    :goto_1
    return-void

    .line 48
    .restart local v7    # "c":Lrx/b;
    :cond_1
    if-nez v7, :cond_2

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "A completable source is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 43
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lrx/internal/operators/p$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/p$1;-><init>(Lrx/internal/operators/p;Lrx/i/b;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicInteger;Lrx/d;)V

    invoke-virtual {v7, v0}, Lrx/b;->a(Lrx/d;)V

    goto :goto_2

    .line 84
    .end local v7    # "c":Lrx/b;
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-interface {p1}, Lrx/d;->onCompleted()V

    goto :goto_1

    .line 88
    :cond_4
    invoke-static {v3}, Lrx/internal/operators/n;->a(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/p;->a(Lrx/d;)V

    return-void
.end method
