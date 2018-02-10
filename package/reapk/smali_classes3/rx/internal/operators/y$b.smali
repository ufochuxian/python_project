.class final Lrx/internal/operators/y$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field static final n:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x76e7117251786db1L


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/y",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final c:[Lrx/internal/operators/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/y$a",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:[Ljava/lang/Object;

.field final f:Lrx/internal/util/atomic/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/atomic/e",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Z

.field volatile h:Z

.field volatile i:Z

.field final j:Ljava/util/concurrent/atomic/AtomicLong;

.field final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/y$b;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/l;Lrx/c/y;IIZ)V
    .locals 2
    .param p3, "count"    # I
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;",
            "Lrx/c/y",
            "<+TR;>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    .local p2, "combiner":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 116
    iput-object p1, p0, Lrx/internal/operators/y$b;->a:Lrx/l;

    .line 117
    iput-object p2, p0, Lrx/internal/operators/y$b;->b:Lrx/c/y;

    .line 118
    iput p4, p0, Lrx/internal/operators/y$b;->d:I

    .line 119
    iput-boolean p5, p0, Lrx/internal/operators/y$b;->g:Z

    .line 120
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/y$b;->e:[Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lrx/internal/operators/y$b;->e:[Ljava/lang/Object;

    sget-object v1, Lrx/internal/operators/y$b;->n:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    new-array v0, p3, [Lrx/internal/operators/y$a;

    iput-object v0, p0, Lrx/internal/operators/y$b;->c:[Lrx/internal/operators/y$a;

    .line 123
    new-instance v0, Lrx/internal/util/atomic/e;

    invoke-direct {v0, p4}, Lrx/internal/util/atomic/e;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/y$b;->f:Lrx/internal/util/atomic/e;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/y$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/y$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    return-void
.end method


# virtual methods
.method a()V
    .locals 20

    .prologue
    .line 229
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/y$b;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/y$b;->f:Lrx/internal/util/atomic/e;

    .line 234
    .local v6, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/y$b;->a:Lrx/l;

    .line 235
    .local v5, "a":Lrx/l;, "Lrx/l<-TR;>;"
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lrx/internal/operators/y$b;->g:Z

    .line 236
    .local v7, "delayError":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/y$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 238
    .local v13, "localRequested":Ljava/util/concurrent/atomic/AtomicLong;
    const/4 v14, 0x1

    .line 241
    .local v14, "missed":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/y$b;->i:Z

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lrx/internal/operators/y$b;->a(ZZLrx/l;Ljava/util/Queue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    .line 246
    .local v16, "requestAmount":J
    const-wide/16 v10, 0x0

    .line 248
    .local v10, "emitted":J
    :goto_1
    cmp-long v2, v10, v16

    if-eqz v2, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/y$b;->i:Z

    .line 252
    .local v3, "d":Z
    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrx/internal/operators/y$a;

    .line 253
    .local v9, "cs":Lrx/internal/operators/y$a;, "Lrx/internal/operators/y$a<TT;TR;>;"
    if-nez v9, :cond_5

    const/4 v4, 0x1

    .local v4, "empty":Z
    :goto_2
    move-object/from16 v2, p0

    .line 255
    invoke-virtual/range {v2 .. v7}, Lrx/internal/operators/y$b;->a(ZZLrx/l;Ljava/util/Queue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    if-eqz v4, :cond_6

    .line 290
    .end local v3    # "d":Z
    .end local v4    # "empty":Z
    .end local v9    # "cs":Lrx/internal/operators/y$a;, "Lrx/internal/operators/y$a<TT;TR;>;"
    :cond_3
    const-wide/16 v18, 0x0

    cmp-long v2, v10, v18

    if-eqz v2, :cond_4

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v2, v16, v18

    if-eqz v2, :cond_4

    .line 291
    invoke-static {v13, v10, v11}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 294
    :cond_4
    neg-int v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lrx/internal/operators/y$b;->addAndGet(I)I

    move-result v14

    .line 295
    if-nez v14, :cond_2

    goto :goto_0

    .line 253
    .restart local v3    # "d":Z
    .restart local v9    # "cs":Lrx/internal/operators/y$a;, "Lrx/internal/operators/y$a<TT;TR;>;"
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 263
    .restart local v4    # "empty":Z
    :cond_6
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 264
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, [Ljava/lang/Object;

    .line 266
    .local v8, "array":[Ljava/lang/Object;
    if-nez v8, :cond_7

    .line 267
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/y$b;->h:Z

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lrx/internal/operators/y$b;->a(Ljava/util/Queue;)V

    .line 269
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v18, "Broken queue?! Sender received but not the array."

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 275
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/y$b;->b:Lrx/c/y;

    invoke-interface {v2, v8}, Lrx/c/y;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 283
    .local v15, "v":Ljava/lang/Object;, "TR;"
    invoke-virtual {v5, v15}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 285
    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lrx/internal/operators/y$a;->a(J)V

    .line 287
    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    .line 288
    goto :goto_1

    .line 276
    .end local v15    # "v":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v12

    .line 277
    .local v12, "ex":Ljava/lang/Throwable;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/y$b;->h:Z

    .line 278
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lrx/internal/operators/y$b;->a(Ljava/util/Queue;)V

    .line 279
    invoke-virtual {v5, v12}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method a(Ljava/lang/Object;I)V
    .locals 10
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 187
    iget-object v8, p0, Lrx/internal/operators/y$b;->c:[Lrx/internal/operators/y$a;

    aget-object v2, v8, p2

    .line 194
    .local v2, "combinerSubscriber":Lrx/internal/operators/y$a;, "Lrx/internal/operators/y$a<TT;TR;>;"
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v8, p0, Lrx/internal/operators/y$b;->e:[Ljava/lang/Object;

    array-length v6, v8

    .line 196
    .local v6, "sourceCount":I
    iget-object v8, p0, Lrx/internal/operators/y$b;->e:[Ljava/lang/Object;

    aget-object v5, v8, p2

    .line 197
    .local v5, "o":Ljava/lang/Object;
    iget v0, p0, Lrx/internal/operators/y$b;->l:I

    .line 198
    .local v0, "activeCount":I
    sget-object v8, Lrx/internal/operators/y$b;->n:Ljava/lang/Object;

    if-ne v5, v8, :cond_0

    .line 199
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/y$b;->l:I

    .line 201
    :cond_0
    iget v3, p0, Lrx/internal/operators/y$b;->m:I

    .line 202
    .local v3, "completedCount":I
    if-nez p1, :cond_4

    .line 203
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lrx/internal/operators/y$b;->m:I

    .line 207
    :goto_0
    if-ne v0, v6, :cond_5

    move v1, v7

    .line 209
    .local v1, "allSourcesFinished":Z
    :goto_1
    if-eq v3, v6, :cond_1

    if-nez p1, :cond_2

    sget-object v8, Lrx/internal/operators/y$b;->n:Ljava/lang/Object;

    if-ne v5, v8, :cond_2

    :cond_1
    move v4, v7

    .line 211
    .local v4, "empty":Z
    :cond_2
    if-nez v4, :cond_8

    .line 212
    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 213
    iget-object v7, p0, Lrx/internal/operators/y$b;->f:Lrx/internal/util/atomic/e;

    iget-object v8, p0, Lrx/internal/operators/y$b;->e:[Ljava/lang/Object;

    invoke-virtual {v8}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lrx/internal/util/atomic/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-nez v1, :cond_9

    if-eqz p1, :cond_9

    .line 223
    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lrx/internal/operators/y$a;->a(J)V

    .line 227
    :goto_3
    return-void

    .line 205
    .end local v1    # "allSourcesFinished":Z
    .end local v4    # "empty":Z
    :cond_4
    :try_start_1
    iget-object v8, p0, Lrx/internal/operators/y$b;->e:[Ljava/lang/Object;

    invoke-static {p1}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, p2

    goto :goto_0

    .line 221
    .end local v0    # "activeCount":I
    .end local v3    # "completedCount":I
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "sourceCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v0    # "activeCount":I
    .restart local v3    # "completedCount":I
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "sourceCount":I
    :cond_5
    move v1, v4

    .line 207
    goto :goto_1

    .line 215
    .restart local v1    # "allSourcesFinished":Z
    .restart local v4    # "empty":Z
    :cond_6
    if-nez p1, :cond_3

    :try_start_2
    iget-object v7, p0, Lrx/internal/operators/y$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-object v7, Lrx/internal/operators/y$b;->n:Ljava/lang/Object;

    if-eq v5, v7, :cond_7

    iget-boolean v7, p0, Lrx/internal/operators/y$b;->g:Z

    if-nez v7, :cond_3

    .line 216
    :cond_7
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/internal/operators/y$b;->i:Z

    goto :goto_2

    .line 219
    :cond_8
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/internal/operators/y$b;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 226
    :cond_9
    invoke-virtual {p0}, Lrx/internal/operators/y$b;->a()V

    goto :goto_3
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 335
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    iget-object v3, p0, Lrx/internal/operators/y$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 337
    .local v3, "localError":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 339
    .local v1, "curr":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 340
    instance-of v5, v1, Lrx/exceptions/CompositeException;

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 341
    check-cast v0, Lrx/exceptions/CompositeException;

    .line 342
    .local v0, "ce":Lrx/exceptions/CompositeException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    .local v2, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v4, Lrx/exceptions/CompositeException;

    invoke-direct {v4, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 351
    .end local v0    # "ce":Lrx/exceptions/CompositeException;
    .end local v2    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .local v4, "next":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    return-void

    .line 346
    .end local v4    # "next":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .restart local v4    # "next":Ljava/lang/Throwable;
    goto :goto_0

    .line 349
    .end local v4    # "next":Ljava/lang/Throwable;
    :cond_2
    move-object v4, p1

    .restart local v4    # "next":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method a(Ljava/util/Queue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    .local p1, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 175
    iget-object v0, p0, Lrx/internal/operators/y$b;->c:[Lrx/internal/operators/y$a;

    .local v0, "arr$":[Lrx/internal/operators/y$a;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 176
    .local v3, "s":Lrx/internal/operators/y$a;, "Lrx/internal/operators/y$a<TT;TR;>;"
    invoke-virtual {v3}, Lrx/internal/operators/y$a;->unsubscribe()V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "s":Lrx/internal/operators/y$a;, "Lrx/internal/operators/y$a<TT;TR;>;"
    :cond_0
    return-void
.end method

.method a(ZZLrx/l;Ljava/util/Queue;Z)Z
    .locals 3
    .param p1, "mainDone"    # Z
    .param p2, "queueEmpty"    # Z
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/l",
            "<*>;",
            "Ljava/util/Queue",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    .local p3, "childSubscriber":Lrx/l;, "Lrx/l<*>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v1, 0x1

    .line 303
    iget-boolean v2, p0, Lrx/internal/operators/y$b;->h:Z

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {p0, p4}, Lrx/internal/operators/y$b;->a(Ljava/util/Queue;)V

    .line 331
    :goto_0
    return v1

    .line 307
    :cond_0
    if-eqz p1, :cond_4

    .line 308
    if-eqz p5, :cond_2

    .line 309
    if-eqz p2, :cond_4

    .line 310
    iget-object v2, p0, Lrx/internal/operators/y$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 311
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p3}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 319
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v2, p0, Lrx/internal/operators/y$b;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 320
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {p0, p4}, Lrx/internal/operators/y$b;->a(Ljava/util/Queue;)V

    .line 322
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 325
    :cond_3
    if-eqz p2, :cond_4

    .line 326
    invoke-virtual {p3}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 331
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/y$b;->h:Z

    return v0
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 148
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lrx/internal/operators/y$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/y$b;->a()V

    .line 155
    :cond_1
    return-void
.end method

.method public subscribe([Lrx/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrx/e",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    .local p1, "sources":[Lrx/e;, "[Lrx/e<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/y$b;->c:[Lrx/internal/operators/y$a;

    .line 131
    .local v0, "as":[Lrx/l;, "[Lrx/l<TT;>;"
    array-length v2, v0

    .line 132
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 133
    new-instance v3, Lrx/internal/operators/y$a;

    invoke-direct {v3, p0, v1}, Lrx/internal/operators/y$a;-><init>(Lrx/internal/operators/y$b;I)V

    aput-object v3, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lrx/internal/operators/y$b;->lazySet(I)V

    .line 136
    iget-object v3, p0, Lrx/internal/operators/y$b;->a:Lrx/l;

    invoke-virtual {v3, p0}, Lrx/l;->add(Lrx/m;)V

    .line 137
    iget-object v3, p0, Lrx/internal/operators/y$b;->a:Lrx/l;

    invoke-virtual {v3, p0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 138
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 139
    iget-boolean v3, p0, Lrx/internal/operators/y$b;->h:Z

    if-eqz v3, :cond_2

    .line 144
    :cond_1
    return-void

    .line 142
    :cond_2
    aget-object v3, p1, v1

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/y$b;, "Lrx/internal/operators/y$b<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/y$b;->h:Z

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/y$b;->h:Z

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/y$b;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lrx/internal/operators/y$b;->f:Lrx/internal/util/atomic/e;

    invoke-virtual {p0, v0}, Lrx/internal/operators/y$b;->a(Ljava/util/Queue;)V

    .line 166
    :cond_0
    return-void
.end method
