.class public final Lrx/internal/util/a/o;
.super Lrx/internal/util/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/a",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/n;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/util/a/o;, "Lrx/internal/util/a/o<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/a/a;-><init>()V

    .line 43
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>()V

    iput-object v0, p0, Lrx/internal/util/a/o;->r:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 44
    iget-object v0, p0, Lrx/internal/util/a/o;->r:Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-virtual {p0, v0}, Lrx/internal/util/a/o;->c(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;

    .line 45
    return-void
.end method


# virtual methods
.method protected c(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;)",
            "Lrx/internal/util/atomic/LinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/util/a/o;, "Lrx/internal/util/a/o<TE;>;"
    .local p1, "newVal":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    :cond_0
    iget-object v4, p0, Lrx/internal/util/a/o;->Z:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 52
    .local v4, "oldVal":Lrx/internal/util/atomic/LinkedQueueNode;
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/a/o;->Y:J

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    check-cast v4, Lrx/internal/util/atomic/LinkedQueueNode;

    .end local v4    # "oldVal":Lrx/internal/util/atomic/LinkedQueueNode;
    return-object v4
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/util/a/o;, "Lrx/internal/util/a/o<TE;>;"
    .local p1, "nextValue":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 75
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null elements not allowed"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/LinkedQueueNode;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/LinkedQueueNode;-><init>(Ljava/lang/Object;)V

    .line 78
    .local v0, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0, v0}, Lrx/internal/util/a/o;->c(Lrx/internal/util/atomic/LinkedQueueNode;)Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 81
    .local v1, "prevProducerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v1, v0}, Lrx/internal/util/atomic/LinkedQueueNode;->soNext(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 82
    const/4 v2, 0x1

    return v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/util/a/o;, "Lrx/internal/util/a/o<TE;>;"
    iget-object v0, p0, Lrx/internal/util/a/o;->r:Lrx/internal/util/atomic/LinkedQueueNode;

    .line 127
    .local v0, "currConsumerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 128
    .local v1, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    .line 137
    :goto_0
    return-object v2

    .line 131
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/a/o;->c()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 133
    :cond_1
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->lpValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 137
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/util/a/o;, "Lrx/internal/util/a/o<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/a/o;->b()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 104
    .local v0, "currConsumerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .line 105
    .local v1, "nextNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 108
    .local v2, "nextValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lrx/internal/util/a/o;->a(Lrx/internal/util/atomic/LinkedQueueNode;)V

    .line 121
    .end local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v2

    .line 111
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/a/o;->c()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v3

    if-eq v0, v3, :cond_2

    .line 113
    :cond_1
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1}, Lrx/internal/util/atomic/LinkedQueueNode;->getAndNullValue()Ljava/lang/Object;

    move-result-object v2

    .line 118
    .restart local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Lrx/internal/util/a/o;->r:Lrx/internal/util/atomic/LinkedQueueNode;

    goto :goto_0

    .line 121
    .end local v2    # "nextValue":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
