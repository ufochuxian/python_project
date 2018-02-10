.class final Lrx/internal/operators/h$c;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/internal/operators/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/h$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:[Ljava/lang/Object;

.field d:I

.field e:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>(Lrx/l;Lrx/internal/operators/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/internal/operators/h$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/operators/h$c;, "Lrx/internal/operators/h$c<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    .local p2, "state":Lrx/internal/operators/h$a;, "Lrx/internal/operators/h$a<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 289
    iput-object p1, p0, Lrx/internal/operators/h$c;->a:Lrx/l;

    .line 290
    iput-object p2, p0, Lrx/internal/operators/h$c;->b:Lrx/internal/operators/h$a;

    .line 291
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 320
    .local p0, "this":Lrx/internal/operators/h$c;, "Lrx/internal/operators/h$c<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/h$c;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public produced(J)J
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 315
    .local p0, "this":Lrx/internal/operators/h$c;, "Lrx/internal/operators/h$c<TT;>;"
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/h$c;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public replay()V
    .locals 16

    .prologue
    .line 338
    .local p0, "this":Lrx/internal/operators/h$c;, "Lrx/internal/operators/h$c<TT;>;"
    monitor-enter p0

    .line 339
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    if-eqz v14, :cond_1

    .line 340
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->g:Z

    .line 341
    monitor-exit p0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    const/4 v12, 0x0

    .line 347
    .local v12, "skipFinal":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/h$c;->a:Lrx/l;

    .line 351
    .local v3, "child":Lrx/l;, "Lrx/l<-TT;>;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/h$c;->get()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-result-wide v10

    .line 353
    .local v10, "r":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gez v14, :cond_2

    .line 354
    const/4 v12, 0x1

    .line 446
    if-nez v12, :cond_0

    .line 447
    monitor-enter p0

    .line 448
    const/4 v14, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 449
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 344
    .end local v3    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .end local v10    # "r":J
    .end local v12    # "skipFinal":Z
    :catchall_1
    move-exception v14

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .line 360
    .restart local v3    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .restart local v10    # "r":J
    .restart local v12    # "skipFinal":Z
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/h$c;->b:Lrx/internal/operators/h$a;

    invoke-virtual {v14}, Lrx/internal/operators/h$a;->e()I

    move-result v9

    .line 361
    .local v9, "s":I
    if-eqz v9, :cond_c

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/h$c;->c:[Ljava/lang/Object;

    .line 365
    .local v2, "b":[Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/h$c;->b:Lrx/internal/operators/h$a;

    invoke-virtual {v14}, Lrx/internal/operators/h$a;->c()[Ljava/lang/Object;

    move-result-object v2

    .line 367
    move-object/from16 v0, p0

    iput-object v2, v0, Lrx/internal/operators/h$c;->c:[Ljava/lang/Object;

    .line 369
    :cond_3
    array-length v14, v2

    add-int/lit8 v7, v14, -0x1

    .line 370
    .local v7, "n":I
    move-object/from16 v0, p0

    iget v5, v0, Lrx/internal/operators/h$c;->e:I

    .line 371
    .local v5, "j":I
    move-object/from16 v0, p0

    iget v6, v0, Lrx/internal/operators/h$c;->d:I

    .line 373
    .local v6, "k":I
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_5

    .line 374
    aget-object v8, v2, v6

    .line 375
    .local v8, "o":Ljava/lang/Object;
    invoke-static {v8}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 376
    invoke-virtual {v3}, Lrx/l;->onCompleted()V

    .line 377
    const/4 v12, 0x1

    .line 378
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/h$c;->unsubscribe()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    .line 446
    if-nez v12, :cond_0

    .line 447
    monitor-enter p0

    .line 448
    const/4 v14, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 449
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v14

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v14

    .line 381
    :cond_4
    :try_start_6
    invoke-static {v8}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 382
    invoke-static {v8}, Lrx/internal/operators/v;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v3, v14}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 383
    const/4 v12, 0x1

    .line 384
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/h$c;->unsubscribe()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 446
    if-nez v12, :cond_0

    .line 447
    monitor-enter p0

    .line 448
    const/4 v14, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 449
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v14

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v14

    .line 388
    .end local v8    # "o":Ljava/lang/Object;
    :cond_5
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_c

    .line 389
    const/4 v13, 0x0

    .line 391
    .local v13, "valuesProduced":I
    :goto_2
    if-ge v5, v9, :cond_a

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_a

    .line 392
    :try_start_8
    invoke-virtual {v3}, Lrx/l;->isUnsubscribed()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    move-result v14

    if-eqz v14, :cond_6

    .line 393
    const/4 v12, 0x1

    .line 446
    if-nez v12, :cond_0

    .line 447
    monitor-enter p0

    .line 448
    const/4 v14, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 449
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v14

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v14

    .line 396
    :cond_6
    if-ne v6, v7, :cond_7

    .line 397
    :try_start_a
    aget-object v14, v2, v7

    check-cast v14, [Ljava/lang/Object;

    move-object v0, v14

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 398
    const/4 v6, 0x0

    .line 400
    :cond_7
    aget-object v8, v2, v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 403
    .restart local v8    # "o":Ljava/lang/Object;
    :try_start_b
    invoke-static {v3, v8}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 404
    const/4 v12, 0x1

    .line 405
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/h$c;->unsubscribe()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 446
    if-nez v12, :cond_0

    .line 447
    monitor-enter p0

    .line 448
    const/4 v14, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 449
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v14

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v14

    .line 408
    :catch_0
    move-exception v4

    .line 409
    .local v4, "err":Ljava/lang/Throwable;
    :try_start_d
    invoke-static {v4}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 410
    const/4 v12, 0x1

    .line 411
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/h$c;->unsubscribe()V

    .line 412
    invoke-static {v8}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-static {v8}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 413
    invoke-static {v8}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v4, v14}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v3, v14}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 446
    :cond_8
    if-nez v12, :cond_0

    .line 447
    monitor-enter p0

    .line 448
    const/4 v14, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 449
    monitor-exit p0

    goto/16 :goto_0

    :catchall_6
    move-exception v14

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v14

    .line 418
    .end local v4    # "err":Ljava/lang/Throwable;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 419
    add-int/lit8 v5, v5, 0x1

    .line 420
    const-wide/16 v14, 0x1

    sub-long/2addr v10, v14

    .line 421
    add-int/lit8 v13, v13, 0x1

    .line 422
    goto :goto_2

    .line 424
    .end local v8    # "o":Ljava/lang/Object;
    :cond_a
    :try_start_f
    invoke-virtual {v3}, Lrx/l;->isUnsubscribed()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move-result v14

    if-eqz v14, :cond_b

    .line 425
    const/4 v12, 0x1

    .line 446
    if-nez v12, :cond_0

    .line 447
    monitor-enter p0

    .line 448
    const/4 v14, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 449
    monitor-exit p0

    goto/16 :goto_0

    :catchall_7
    move-exception v14

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v14

    .line 429
    :cond_b
    :try_start_11
    move-object/from16 v0, p0

    iput v5, v0, Lrx/internal/operators/h$c;->e:I

    .line 430
    move-object/from16 v0, p0

    iput v6, v0, Lrx/internal/operators/h$c;->d:I

    .line 431
    move-object/from16 v0, p0

    iput-object v2, v0, Lrx/internal/operators/h$c;->c:[Ljava/lang/Object;

    .line 432
    int-to-long v14, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/operators/h$c;->produced(J)J

    .line 436
    .end local v2    # "b":[Ljava/lang/Object;
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v7    # "n":I
    .end local v13    # "valuesProduced":I
    :cond_c
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 437
    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lrx/internal/operators/h$c;->g:Z

    if-nez v14, :cond_d

    .line 438
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 439
    const/4 v12, 0x1

    .line 440
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 446
    if-nez v12, :cond_0

    .line 447
    monitor-enter p0

    .line 448
    const/4 v14, 0x0

    :try_start_13
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->f:Z

    .line 449
    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception v14

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v14

    .line 442
    :cond_d
    const/4 v14, 0x0

    :try_start_14
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lrx/internal/operators/h$c;->g:Z

    .line 443
    monitor-exit p0

    goto/16 :goto_1

    :catchall_9
    move-exception v14

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    throw v14
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 446
    .end local v3    # "child":Lrx/l;, "Lrx/l<-TT;>;"
    .end local v9    # "s":I
    .end local v10    # "r":J
    :catchall_a
    move-exception v14

    if-nez v12, :cond_e

    .line 447
    monitor-enter p0

    .line 448
    const/4 v15, 0x0

    :try_start_16
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lrx/internal/operators/h$c;->f:Z

    .line 449
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :cond_e
    throw v14

    :catchall_b
    move-exception v14

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v14
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/h$c;, "Lrx/internal/operators/h$c<TT;>;"
    const-wide/16 v6, 0x0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/h$c;->get()J

    move-result-wide v0

    .line 296
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_1
    add-long v2, v0, p1

    .line 300
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_2

    .line 301
    const-wide v2, 0x7fffffffffffffffL

    .line 303
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/h$c;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    invoke-virtual {p0}, Lrx/internal/operators/h$c;->replay()V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/h$c;, "Lrx/internal/operators/h$c<TT;>;"
    const-wide/16 v4, 0x0

    .line 324
    invoke-virtual {p0}, Lrx/internal/operators/h$c;->get()J

    move-result-wide v0

    .line 325
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    .line 326
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/h$c;->getAndSet(J)J

    move-result-wide v0

    .line 327
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    .line 328
    iget-object v2, p0, Lrx/internal/operators/h$c;->b:Lrx/internal/operators/h$a;

    invoke-virtual {v2, p0}, Lrx/internal/operators/h$a;->b(Lrx/internal/operators/h$c;)V

    .line 331
    :cond_0
    return-void
.end method
