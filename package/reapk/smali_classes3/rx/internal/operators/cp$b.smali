.class final Lrx/internal/operators/cp$b;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field static final d:[Lrx/internal/operators/cp$a;

.field static final e:[Lrx/internal/operators/cp$a;


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/cp$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field volatile c:Ljava/lang/Object;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lrx/internal/operators/cp$a;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field h:Z

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    new-array v0, v1, [Lrx/internal/operators/cp$a;

    sput-object v0, Lrx/internal/operators/cp$b;->d:[Lrx/internal/operators/cp$a;

    .line 230
    new-array v0, v1, [Lrx/internal/operators/cp$a;

    sput-object v0, Lrx/internal/operators/cp$b;->e:[Lrx/internal/operators/cp$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/cp$b",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/cp$b<TT;>;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 246
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/internal/util/a/z;

    sget v1, Lrx/internal/util/j;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/a/z;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lrx/internal/operators/cp$b;->a:Ljava/util/Queue;

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/cp$b;->d:[Lrx/internal/operators/cp$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/cp$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 251
    iput-object p1, p0, Lrx/internal/operators/cp$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 252
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cp$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    return-void

    .line 246
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/d;

    sget v1, Lrx/internal/util/j;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/d;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 257
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    new-instance v0, Lrx/internal/operators/cp$b$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/cp$b$1;-><init>(Lrx/internal/operators/cp$b;)V

    invoke-static {v0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/cp$b;->add(Lrx/m;)V

    .line 266
    return-void
.end method

.method a(Ljava/lang/Object;Z)Z
    .locals 8
    .param p1, "term"    # Ljava/lang/Object;
    .param p2, "empty"    # Z

    .prologue
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 401
    if-eqz p1, :cond_3

    .line 403
    invoke-static {p1}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 405
    if-eqz p2, :cond_3

    .line 408
    iget-object v6, p0, Lrx/internal/operators/cp$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    :try_start_0
    iget-object v6, p0, Lrx/internal/operators/cp$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/cp$b;->e:[Lrx/internal/operators/cp$a;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/cp$a;

    .local v0, "arr$":[Lrx/internal/operators/cp$a;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 423
    .local v2, "ip":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<*>;"
    iget-object v6, v2, Lrx/internal/operators/cp$a;->b:Lrx/l;

    invoke-virtual {v6}, Lrx/l;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v2    # "ip":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<*>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/cp$b;->unsubscribe()V

    .line 455
    .end local v0    # "arr$":[Lrx/internal/operators/cp$a;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v5

    .line 428
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lrx/internal/operators/cp$b;->unsubscribe()V

    throw v5

    .line 434
    :cond_1
    invoke-static {p1}, Lrx/internal/operators/v;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    .line 437
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lrx/internal/operators/cp$b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 442
    :try_start_1
    iget-object v6, p0, Lrx/internal/operators/cp$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lrx/internal/operators/cp$b;->e:[Lrx/internal/operators/cp$a;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/cp$a;

    .restart local v0    # "arr$":[Lrx/internal/operators/cp$a;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 443
    .restart local v2    # "ip":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<*>;"
    iget-object v6, v2, Lrx/internal/operators/cp$a;->b:Lrx/l;

    invoke-virtual {v6, v4}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 448
    .end local v2    # "ip":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<*>;"
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/cp$b;->unsubscribe()V

    goto :goto_1

    .end local v0    # "arr$":[Lrx/internal/operators/cp$a;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_1
    move-exception v5

    invoke-virtual {p0}, Lrx/internal/operators/cp$b;->unsubscribe()V

    throw v5

    .line 455
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method a(Lrx/internal/operators/cp$a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cp$a",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    .local p1, "producer":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<TT;>;"
    const/4 v3, 0x0

    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 322
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/cp$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/cp$a;

    .line 325
    .local v0, "c":[Lrx/internal/operators/cp$a;
    sget-object v4, Lrx/internal/operators/cp$b;->e:[Lrx/internal/operators/cp$a;

    if-ne v0, v4, :cond_1

    .line 335
    :goto_0
    return v3

    .line 329
    :cond_1
    array-length v1, v0

    .line 330
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lrx/internal/operators/cp$a;

    .line 331
    .local v2, "u":[Lrx/internal/operators/cp$a;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    aput-object p1, v2, v1

    .line 334
    iget-object v4, p0, Lrx/internal/operators/cp$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    const/4 v3, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 26

    .prologue
    .line 466
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    monitor-enter p0

    .line 467
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/cp$b;->h:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 468
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->i:Z

    .line 469
    monitor-exit p0

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->h:Z

    .line 473
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->i:Z

    .line 474
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 483
    const/16 v16, 0x0

    .line 494
    .local v16, "skipFinal":Z
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cp$b;->c:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 501
    .local v18, "term":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cp$b;->a:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 505
    .local v6, "empty":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lrx/internal/operators/cp$b;->a(Ljava/lang/Object;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v22

    if-eqz v22, :cond_3

    .line 506
    const/16 v16, 0x1

    .line 631
    if-nez v16, :cond_0

    .line 633
    monitor-enter p0

    .line 634
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->h:Z

    .line 635
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v22

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 474
    .end local v6    # "empty":Z
    .end local v16    # "skipFinal":Z
    .end local v18    # "term":Ljava/lang/Object;
    :catchall_1
    move-exception v22

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22

    .line 513
    .restart local v6    # "empty":Z
    .restart local v16    # "skipFinal":Z
    .restart local v18    # "term":Ljava/lang/Object;
    :cond_3
    if-nez v6, :cond_f

    .line 517
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cp$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lrx/internal/operators/cp$a;

    .line 519
    .local v11, "ps":[Lrx/internal/operators/cp$a;, "[Lrx/internal/operators/cp$a<TT;>;"
    array-length v9, v11

    .line 521
    .local v9, "len":I
    const-wide v12, 0x7fffffffffffffffL

    .line 523
    .local v12, "maxRequested":J
    const/16 v19, 0x0

    .line 528
    .local v19, "unsubscribed":I
    move-object v4, v11

    .local v4, "arr$":[Lrx/internal/operators/cp$a;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v10, :cond_6

    aget-object v8, v4, v7

    .line 529
    .local v8, "ip":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<TT;>;"
    invoke-virtual {v8}, Lrx/internal/operators/cp$a;->get()J

    move-result-wide v14

    .line 532
    .local v14, "r":J
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-ltz v22, :cond_5

    .line 533
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 528
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 536
    :cond_5
    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v22, v14, v22

    if-nez v22, :cond_4

    .line 537
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 544
    .end local v8    # "ip":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<TT;>;"
    .end local v14    # "r":J
    :cond_6
    move/from16 v0, v19

    if-ne v9, v0, :cond_a

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cp$b;->c:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cp$b;->a:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    .line 549
    .local v20, "v":Ljava/lang/Object;
    if-nez v20, :cond_7

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/cp$b;->a(Ljava/lang/Object;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v22

    if-eqz v22, :cond_8

    .line 550
    const/16 v16, 0x1

    .line 631
    if-nez v16, :cond_0

    .line 633
    monitor-enter p0

    .line 634
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->h:Z

    .line 635
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v22

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v22

    .line 549
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    .line 554
    :cond_8
    const-wide/16 v22, 0x1

    :try_start_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/cp$b;->request(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_1

    .line 631
    .end local v4    # "arr$":[Lrx/internal/operators/cp$a;
    .end local v6    # "empty":Z
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/cp$a;, "[Lrx/internal/operators/cp$a<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v18    # "term":Ljava/lang/Object;
    .end local v19    # "unsubscribed":I
    .end local v20    # "v":Ljava/lang/Object;
    :catchall_3
    move-exception v22

    if-nez v16, :cond_9

    .line 633
    monitor-enter p0

    .line 634
    const/16 v23, 0x0

    :try_start_7
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->h:Z

    .line 635
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :cond_9
    throw v22

    .line 561
    .restart local v4    # "arr$":[Lrx/internal/operators/cp$a;
    .restart local v6    # "empty":Z
    .restart local v7    # "i$":I
    .restart local v9    # "len":I
    .restart local v10    # "len$":I
    .restart local v11    # "ps":[Lrx/internal/operators/cp$a;, "[Lrx/internal/operators/cp$a<TT;>;"
    .restart local v12    # "maxRequested":J
    .restart local v18    # "term":Ljava/lang/Object;
    .restart local v19    # "unsubscribed":I
    :cond_a
    const/4 v5, 0x0

    .line 562
    .local v5, "d":I
    :goto_5
    int-to-long v0, v5

    move-wide/from16 v22, v0

    cmp-long v22, v22, v12

    if-gez v22, :cond_d

    .line 563
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cp$b;->c:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cp$b;->a:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    .line 565
    .restart local v20    # "v":Ljava/lang/Object;
    if-nez v20, :cond_b

    const/4 v6, 0x1

    .line 567
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lrx/internal/operators/cp$b;->a(Ljava/lang/Object;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v22

    if-eqz v22, :cond_c

    .line 568
    const/16 v16, 0x1

    .line 631
    if-nez v16, :cond_0

    .line 633
    monitor-enter p0

    .line 634
    const/16 v22, 0x0

    :try_start_9
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->h:Z

    .line 635
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v22

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v22

    .line 565
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 572
    :cond_c
    if-eqz v6, :cond_10

    .line 601
    .end local v20    # "v":Ljava/lang/Object;
    :cond_d
    if-lez v5, :cond_e

    .line 602
    int-to-long v0, v5

    move-wide/from16 v22, v0

    :try_start_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/cp$b;->request(J)V

    .line 607
    :cond_e
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-eqz v22, :cond_f

    if-eqz v6, :cond_2

    .line 614
    .end local v4    # "arr$":[Lrx/internal/operators/cp$a;
    .end local v5    # "d":I
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/cp$a;, "[Lrx/internal/operators/cp$a<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v19    # "unsubscribed":I
    :cond_f
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 618
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/cp$b;->i:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    .line 620
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->h:Z

    .line 622
    const/16 v16, 0x1

    .line 623
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 631
    if-nez v16, :cond_0

    .line 633
    monitor-enter p0

    .line 634
    const/16 v22, 0x0

    :try_start_c
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->h:Z

    .line 635
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v22

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v22

    .line 576
    .restart local v4    # "arr$":[Lrx/internal/operators/cp$a;
    .restart local v5    # "d":I
    .restart local v7    # "i$":I
    .restart local v9    # "len":I
    .restart local v10    # "len$":I
    .restart local v11    # "ps":[Lrx/internal/operators/cp$a;, "[Lrx/internal/operators/cp$a<TT;>;"
    .restart local v12    # "maxRequested":J
    .restart local v19    # "unsubscribed":I
    .restart local v20    # "v":Ljava/lang/Object;
    :cond_10
    :try_start_d
    invoke-static/range {v20 .. v20}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 578
    .local v21, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v11

    array-length v10, v4

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v10, :cond_12

    aget-object v8, v4, v7

    .line 583
    .restart local v8    # "ip":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<TT;>;"
    invoke-virtual {v8}, Lrx/internal/operators/cp$a;->get()J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_11

    .line 585
    :try_start_e
    iget-object v0, v8, Lrx/internal/operators/cp$a;->b:Lrx/l;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 593
    const-wide/16 v22, 0x1

    :try_start_f
    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Lrx/internal/operators/cp$a;->produced(J)J

    .line 578
    :cond_11
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 586
    :catch_0
    move-exception v17

    .line 588
    .local v17, "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Lrx/internal/operators/cp$a;->unsubscribe()V

    .line 589
    iget-object v0, v8, Lrx/internal/operators/cp$a;->b:Lrx/l;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_8

    .line 597
    .end local v8    # "ip":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<TT;>;"
    .end local v17    # "t":Ljava/lang/Throwable;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 598
    goto/16 :goto_5

    .line 626
    .end local v4    # "arr$":[Lrx/internal/operators/cp$a;
    .end local v5    # "d":I
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/cp$a;, "[Lrx/internal/operators/cp$a<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v19    # "unsubscribed":I
    .end local v20    # "v":Ljava/lang/Object;
    .end local v21    # "value":Ljava/lang/Object;, "TT;"
    :cond_13
    const/16 v22, 0x0

    :try_start_10
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/cp$b;->i:Z

    .line 627
    monitor-exit p0

    goto/16 :goto_1

    :catchall_6
    move-exception v22

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 635
    .end local v6    # "empty":Z
    .end local v18    # "term":Ljava/lang/Object;
    :catchall_7
    move-exception v22

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v22
.end method

.method b(Lrx/internal/operators/cp$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cp$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    .local p1, "producer":Lrx/internal/operators/cp$a;, "Lrx/internal/operators/cp$a<TT;>;"
    const/4 v7, 0x0

    .line 350
    :cond_0
    iget-object v5, p0, Lrx/internal/operators/cp$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/cp$a;

    .line 352
    .local v0, "c":[Lrx/internal/operators/cp$a;
    sget-object v5, Lrx/internal/operators/cp$b;->d:[Lrx/internal/operators/cp$a;

    if-eq v0, v5, :cond_1

    sget-object v5, Lrx/internal/operators/cp$b;->e:[Lrx/internal/operators/cp$a;

    if-ne v0, v5, :cond_2

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    const/4 v2, -0x1

    .line 358
    .local v2, "j":I
    array-length v3, v0

    .line 359
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 360
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 361
    move v2, v1

    .line 366
    :cond_3
    if-ltz v2, :cond_1

    .line 373
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 374
    sget-object v4, Lrx/internal/operators/cp$b;->d:[Lrx/internal/operators/cp$a;

    .line 384
    .local v4, "u":[Lrx/internal/operators/cp$a;
    :goto_2
    iget-object v5, p0, Lrx/internal/operators/cp$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 359
    .end local v4    # "u":[Lrx/internal/operators/cp$a;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    :cond_5
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lrx/internal/operators/cp$a;

    .line 379
    .restart local v4    # "u":[Lrx/internal/operators/cp$a;
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 301
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cp$b;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/cp$b;->c:Ljava/lang/Object;

    .line 305
    invoke-virtual {p0}, Lrx/internal/operators/cp$b;->b()V

    .line 307
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 290
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cp$b;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 291
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/cp$b;->c:Ljava/lang/Object;

    .line 294
    invoke-virtual {p0}, Lrx/internal/operators/cp$b;->b()V

    .line 296
    :cond_0
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
    .line 278
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/cp$b;->a:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/cp$b;->onError(Ljava/lang/Throwable;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/cp$b;->b()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/operators/cp$b;, "Lrx/internal/operators/cp$b<TT;>;"
    sget v0, Lrx/internal/util/j;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/cp$b;->request(J)V

    .line 273
    return-void
.end method
