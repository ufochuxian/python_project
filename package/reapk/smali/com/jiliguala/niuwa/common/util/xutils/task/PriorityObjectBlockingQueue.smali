.class public Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 62
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 63
    if-gtz p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    .line 66
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v3, 0x7fffffff

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;-><init>(I)V

    .line 71
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    .local v2, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "n":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 77
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 78
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v1, v4, :cond_1

    .line 79
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Queue full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_1
    new-instance v4, Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    invoke-direct {v4, v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    return-void
.end method

.method private _dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 153
    .local v1, "h":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    iget-object v0, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 154
    .local v0, "first":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    iput-object v1, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 155
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 156
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, "x":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a(Ljava/lang/Object;)V

    .line 158
    return-object v2
.end method

.method private _enqueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "node":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    const/4 v0, 0x0

    .line 129
    .local v0, "added":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 130
    .local v1, "curr":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    const/4 v2, 0x0

    .line 132
    .local v2, "temp":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :goto_0
    iget-object v3, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    if-eqz v3, :cond_0

    .line 133
    iget-object v2, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 134
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a()Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a()Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 135
    iput-object p1, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 136
    iput-object v2, p1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 137
    const/4 v0, 0x1

    .line 143
    :cond_0
    if-nez v0, :cond_1

    .line 144
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iput-object p1, v3, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 146
    :cond_1
    return-void

    .line 140
    :cond_2
    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    goto :goto_0
.end method

.method private declared-synchronized opQueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "node":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->_dequeue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v0

    .line 120
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->_enqueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 516
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 517
    new-instance v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 522
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 523
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 527
    return-void

    .line 525
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    .prologue
    .line 94
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    .local v0, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private signalNotFull()V
    .locals 2

    .prologue
    .line 107
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 108
    .local v0, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 496
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 499
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iget-object v0, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v0, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 499
    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    goto :goto_0

    .line 503
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 507
    return-void

    .line 505
    .end local v0    # "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 428
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v0, "h":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :goto_0
    iget-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v1, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    if-eqz v1, :cond_0

    .line 431
    iput-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 432
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a(Ljava/lang/Object;)V

    .line 430
    move-object v0, v1

    goto :goto_0

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iput-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 436
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v2, v3, :cond_1

    .line 437
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 441
    return-void

    .line 439
    .end local v0    # "h":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    .end local v1    # "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v1, 0x0

    .line 381
    if-nez p1, :cond_0

    .line 388
    :goto_0
    return v1

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 385
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iget-object v0, v2, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v0, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    const/4 v1, 0x1

    .line 390
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_0

    .line 385
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_0

    .end local v0    # "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 11
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 448
    if-nez p1, :cond_0

    .line 449
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 450
    :cond_0
    if-ne p1, p0, :cond_1

    .line 451
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 452
    :cond_1
    if-gtz p2, :cond_2

    .line 471
    :goto_0
    return v7

    .line 454
    :cond_2
    const/4 v4, 0x0

    .line 455
    .local v4, "signalNotFull":Z
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 456
    .local v5, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 458
    :try_start_0
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-static {p2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 460
    .local v2, "n":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 461
    .local v0, "h":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    const/4 v1, 0x0

    .line 463
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 464
    :try_start_1
    iget-object v3, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 465
    .local v3, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 466
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a(Ljava/lang/Object;)V

    .line 467
    iput-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    move-object v0, v3

    .line 469
    add-int/lit8 v1, v1, 0x1

    .line 470
    goto :goto_1

    .line 474
    .end local v3    # "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :cond_3
    if-lez v1, :cond_4

    .line 476
    :try_start_2
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 477
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v9, v1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v8

    iget v9, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v8, v9, :cond_6

    move v4, v6

    .line 481
    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 482
    if-eqz v4, :cond_5

    .line 483
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_5
    move v7, v2

    .line 471
    goto :goto_0

    :cond_6
    move v4, v7

    .line 477
    goto :goto_2

    .line 474
    :catchall_0
    move-exception v8

    if-lez v1, :cond_7

    .line 476
    :try_start_3
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 477
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v10, v1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v9

    iget v10, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v9, v10, :cond_9

    move v4, v6

    :cond_7
    :goto_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 481
    .end local v0    # "h":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 482
    if-eqz v4, :cond_8

    .line 483
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_8
    throw v6

    .restart local v0    # "h":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_9
    move v4, v7

    .line 477
    goto :goto_3
.end method

.method fullyLock()V
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 167
    return-void
.end method

.method fullyUnlock()V
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    .line 238
    if-nez p1, :cond_0

    .line 239
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 241
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v5, v6, :cond_2

    .line 259
    :cond_1
    :goto_0
    return v4

    .line 243
    :cond_2
    const/4 v0, -0x1

    .line 244
    .local v0, "c":I
    new-instance v2, Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    invoke-direct {v2, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;-><init>(Ljava/lang/Object;)V

    .line 245
    .local v2, "node":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 246
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 248
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_3

    .line 249
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 251
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_3

    .line 252
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 257
    if-nez v0, :cond_4

    .line 258
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    .line 259
    :cond_4
    if-ltz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 213
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 214
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 215
    .local v2, "nanos":J
    const/4 v0, -0x1

    .line 216
    .local v0, "c":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 217
    .local v4, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 218
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 220
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_2

    .line 221
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_1

    .line 222
    const/4 v5, 0x0

    .line 230
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 234
    :goto_1
    return v5

    .line 223
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    goto :goto_0

    .line 225
    :cond_2
    new-instance v5, Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    invoke-direct {v5, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Ljava/lang/Object;

    .line 226
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 227
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_3

    .line 228
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 232
    if-nez v0, :cond_4

    .line 233
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    .line 234
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public peek()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v2, 0x0

    .line 333
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_0

    .line 342
    :goto_0
    return-object v2

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 336
    .local v1, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 338
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iget-object v0, v3, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .local v0, "first":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    if-nez v0, :cond_1

    .line 344
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 342
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 344
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "first":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v3, 0x0

    .line 310
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 311
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-object v3

    .line 313
    :cond_1
    const/4 v3, 0x0

    .line 314
    .local v3, "x":Ljava/lang/Object;, "TE;"
    const/4 v0, -0x1

    .line 315
    .local v0, "c":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 316
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 318
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_2

    .line 319
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Ljava/lang/Object;

    move-result-object v3

    .line 320
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 321
    const/4 v4, 0x1

    if-le v0, v4, :cond_2

    .line 322
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .end local v3    # "x":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 327
    iget v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v6, 0x0

    .line 285
    const/4 v5, 0x0

    .line 286
    .local v5, "x":Ljava/lang/Object;, "TE;"
    const/4 v0, -0x1

    .line 287
    .local v0, "c":I
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 288
    .local v2, "nanos":J
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 289
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 290
    .local v4, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 292
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 293
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_1

    .line 302
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v5, v6

    .line 306
    .end local v5    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_1
    return-object v5

    .line 295
    .restart local v5    # "x":Ljava/lang/Object;, "TE;"
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    goto :goto_0

    .line 297
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Ljava/lang/Object;

    move-result-object v5

    .line 298
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 299
    const/4 v6, 0x1

    if-le v0, v6, :cond_3

    .line 300
    iget-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    iget v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v6, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    goto :goto_1

    .line 302
    .end local v5    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 187
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 190
    :cond_0
    const/4 v0, -0x1

    .line 191
    .local v0, "c":I
    new-instance v2, Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    invoke-direct {v2, p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;-><init>(Ljava/lang/Object;)V

    .line 192
    .local v2, "node":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 193
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 194
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 196
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v4, v5, :cond_1

    .line 197
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 199
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 201
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_2

    .line 202
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 206
    if-nez v0, :cond_3

    .line 207
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    .line 208
    :cond_3
    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    .prologue
    .line 182
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v2, 0x0

    .line 364
    if-nez p1, :cond_0

    .line 374
    :goto_0
    return v2

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v1, "trail":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    iget-object v0, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v0, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->unlink(Lcom/jiliguala/niuwa/common/util/xutils/task/a;Lcom/jiliguala/niuwa/common/util/xutils/task/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    const/4 v2, 0x1

    .line 376
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_0

    .line 368
    :cond_1
    move-object v1, v0

    :try_start_1
    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 376
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_0

    .end local v0    # "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    .end local v1    # "trail":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v0, -0x1

    .line 265
    .local v0, "c":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 266
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 267
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 269
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_0

    .line 270
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 272
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Ljava/lang/Object;

    move-result-object v3

    .line 273
    .local v3, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 274
    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    .line 275
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 279
    iget v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_2

    .line 280
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    .line 281
    :cond_2
    return-object v3
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 395
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 397
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 398
    .local v4, "size":I
    new-array v0, v4, [Ljava/lang/Object;

    .line 399
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 400
    .local v1, "k":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iget-object v3, v5, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v3, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_0

    .line 401
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v2

    .line 400
    iget-object v3, v3, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 402
    return-object v0

    .line 404
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v3    # "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 412
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 413
    .local v4, "size":I
    array-length v5, p1

    if-ge v5, v4, :cond_0

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 416
    :cond_0
    const/4 v1, 0x0

    .line 417
    .local v1, "k":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iget-object v3, v5, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v3, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TT;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_1

    .line 418
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v2

    .line 417
    iget-object v3, v3, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 419
    :cond_1
    array-length v5, p1

    if-le v5, v2, :cond_2

    .line 420
    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 421
    return-object p1

    .line 423
    .end local v2    # "k":I
    .end local v3    # "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TT;>;"
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v5
.end method

.method unlink(Lcom/jiliguala/niuwa/common/util/xutils/task/a;Lcom/jiliguala/niuwa/common/util/xutils/task/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    .local p2, "trail":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a(Ljava/lang/Object;)V

    .line 356
    iget-object v0, p1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iput-object v0, p2, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 357
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    if-ne v0, p1, :cond_0

    .line 358
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 361
    :cond_1
    return-void
.end method
