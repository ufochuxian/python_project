.class public final Lrx/internal/operators/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:J = -0x8000000000000000L

.field static final b:J = 0x7fffffffffffffffL


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(JJ)J
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 73
    mul-long v0, p0, p2

    .line 74
    .local v0, "u":J
    or-long v2, p0, p2

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 75
    cmp-long v2, p2, v6

    if-eqz v2, :cond_0

    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_0

    .line 76
    const-wide v0, 0x7fffffffffffffffL

    .line 79
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 5
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .prologue
    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 59
    .local v0, "current":J
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/a;->b(JJ)J

    move-result-wide v2

    .line 60
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    return-wide v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/l;)V
    .locals 1
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p2, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/l;Lrx/c/p;)V

    .line 121
    return-void
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/l;Lrx/c/p;)V
    .locals 10
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/l",
            "<-TR;>;",
            "Lrx/c/p",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p2, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    .local p3, "exitTransform":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    .line 174
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 177
    .local v0, "r":J
    and-long v4, v0, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    or-long v2, v0, v6

    .line 184
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    cmp-long v4, v0, v8

    if-eqz v4, :cond_1

    .line 189
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/l;Lrx/c/p;)V

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 4
    .param p0, "n"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 397
    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    cmp-long v0, p0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/l;)Z
    .locals 7
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "J",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/l",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p4, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/l;Lrx/c/p;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/l;Lrx/c/p;)Z
    .locals 17
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "J",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/l",
            "<-TR;>;",
            "Lrx/c/p",
            "<-TT;+TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p3, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p4, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    .local p5, "exitTransform":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-gez v12, :cond_0

    .line 220
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "n >= 0 required but it was "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 222
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-nez v12, :cond_2

    .line 223
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    const-wide/high16 v14, -0x8000000000000000L

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    const/4 v12, 0x1

    .line 249
    :goto_0
    return v12

    .line 223
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 230
    .local v6, "r":J
    const-wide/high16 v12, -0x8000000000000000L

    and-long v4, v6, v12

    .line 232
    .local v4, "c":J
    const-wide v12, 0x7fffffffffffffffL

    and-long v8, v6, v12

    .line 236
    .local v8, "u":J
    move-wide/from16 v0, p1

    invoke-static {v8, v9, v0, v1}, Lrx/internal/operators/a;->b(JJ)J

    move-result-wide v10

    .line 239
    .local v10, "v":J
    or-long/2addr v10, v4

    .line 241
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 244
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, v6, v12

    if-nez v12, :cond_3

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/l;Lrx/c/p;)V

    .line 246
    const/4 v12, 0x0

    goto :goto_0

    .line 249
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_4

    const/4 v12, 0x1

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static b(JJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 89
    add-long v0, p0, p2

    .line 90
    .local v0, "u":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 91
    const-wide v0, 0x7fffffffffffffffL

    .line 93
    :cond_0
    return-wide v0
.end method

.method public static b(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 9
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p1, "n"    # J

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 376
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 377
    .local v0, "current":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    move-wide v2, v4

    .line 385
    :goto_0
    return-wide v2

    .line 380
    :cond_1
    sub-long v2, v0, p1

    .line 381
    .local v2, "next":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 382
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced than requested: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 384
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method static b(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/l;Lrx/c/p;)V
    .locals 10
    .param p0, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lrx/l",
            "<-TR;>;",
            "Lrx/c/p",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TT;>;"
    .local p2, "subscriber":Lrx/l;, "Lrx/l<-TR;>;"
    .local p3, "exitTransform":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    const-wide v8, 0x7fffffffffffffffL

    .line 267
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 270
    .local v2, "r":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_3

    .line 272
    :goto_0
    invoke-virtual {p2}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 358
    :cond_0
    :goto_1
    return-void

    .line 276
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 278
    .local v4, "v":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_2

    .line 279
    invoke-virtual {p2}, Lrx/l;->onCompleted()V

    goto :goto_1

    .line 283
    :cond_2
    invoke-interface {p3, v4}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    const-wide/high16 v0, -0x8000000000000000L

    .line 309
    .local v0, "e":J
    :cond_4
    :goto_2
    cmp-long v5, v0, v2

    if-eqz v5, :cond_6

    .line 310
    invoke-virtual {p2}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 314
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 316
    .restart local v4    # "v":Ljava/lang/Object;, "TT;"
    if-nez v4, :cond_5

    .line 317
    invoke-virtual {p2}, Lrx/l;->onCompleted()V

    goto :goto_1

    .line 321
    :cond_5
    invoke-interface {p3, v4}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 323
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 324
    goto :goto_2

    .line 332
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    :cond_6
    cmp-long v5, v0, v2

    if-nez v5, :cond_7

    .line 333
    invoke-virtual {p2}, Lrx/l;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 336
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 337
    invoke-virtual {p2}, Lrx/l;->onCompleted()V

    goto :goto_1

    .line 346
    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 348
    cmp-long v5, v2, v0

    if-nez v5, :cond_4

    .line 355
    and-long v6, v0, v8

    neg-long v6, v6

    invoke-virtual {p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 357
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 361
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_2
.end method
