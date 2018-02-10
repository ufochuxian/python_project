.class final Lrx/internal/operators/ah$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:J

.field final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile h:Z

.field i:J

.field j:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/l;Lrx/c/p;I)V
    .locals 2
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/ah$a;, "Lrx/internal/operators/ah$a<TT;TR;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    .local p2, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/internal/operators/ah$a;->a:Lrx/l;

    .line 102
    iput-object p2, p0, Lrx/internal/operators/ah$a;->b:Lrx/c/p;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ah$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ah$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ah$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 106
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    .line 107
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lrx/internal/operators/ah$a;->c:J

    .line 108
    new-instance v0, Lrx/internal/util/atomic/e;

    sget v1, Lrx/internal/util/j;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/e;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/ah$a;->d:Ljava/util/Queue;

    .line 118
    :goto_0
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ah$a;->request(J)V

    .line 119
    return-void

    .line 111
    :cond_0
    shr-int/lit8 v0, p3, 0x2

    sub-int v0, p3, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lrx/internal/operators/ah$a;->c:J

    .line 112
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lrx/internal/util/a/z;

    invoke-direct {v0, p3}, Lrx/internal/util/a/z;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/ah$a;->d:Ljava/util/Queue;

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Lrx/internal/util/atomic/d;

    invoke-direct {v0, p3}, Lrx/internal/util/atomic/d;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/ah$a;->d:Ljava/util/Queue;

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 26

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/operators/ah$a;, "Lrx/internal/operators/ah$a<TT;TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ah$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v21

    if-eqz v21, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/ah$a;->a:Lrx/l;

    .line 162
    .local v4, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ah$a;->d:Ljava/util/Queue;

    move-object/from16 v16, v0

    .line 164
    .local v16, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v13, 0x1

    .line 168
    .local v13, "missed":I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/operators/ah$a;->j:Ljava/util/Iterator;

    .line 170
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    if-nez v11, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/ah$a;->h:Z

    .line 173
    .local v6, "d":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v17

    .line 175
    .local v17, "v":Ljava/lang/Object;
    if-nez v17, :cond_9

    const/4 v7, 0x1

    .line 177
    .local v7, "empty":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v4, v1}, Lrx/internal/operators/ah$a;->a(ZZLrx/l;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 181
    if-nez v7, :cond_3

    .line 183
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/ah$a;->i:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v14, v22, v24

    .line 184
    .local v14, "p":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/ah$a;->c:J

    move-wide/from16 v22, v0

    cmp-long v21, v14, v22

    if-nez v21, :cond_a

    .line 185
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/ah$a;->i:J

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/operators/ah$a;->request(J)V

    .line 194
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ah$a;->b:Lrx/c/p;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .line 196
    .local v12, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 198
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 207
    .local v5, "b":Z
    if-eqz v5, :cond_2

    .line 211
    move-object/from16 v0, p0

    iput-object v11, v0, Lrx/internal/operators/ah$a;->j:Ljava/util/Iterator;

    .line 215
    .end local v5    # "b":Z
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v12    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .end local v14    # "p":J
    .end local v17    # "v":Ljava/lang/Object;
    :cond_3
    if-eqz v11, :cond_8

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ah$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    .line 217
    .local v18, "r":J
    const-wide/16 v8, 0x0

    .line 219
    .local v8, "e":J
    :cond_4
    cmp-long v21, v8, v18

    if-eqz v21, :cond_5

    .line 220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/ah$a;->h:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lrx/internal/operators/ah$a;->a(ZZLrx/l;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 227
    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .line 236
    .local v20, "v":Ljava/lang/Object;, "TR;"
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/ah$a;->h:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lrx/internal/operators/ah$a;->a(ZZLrx/l;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 242
    const-wide/16 v22, 0x1

    add-long v8, v8, v22

    .line 247
    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    .line 256
    .restart local v5    # "b":Z
    if-nez v5, :cond_4

    .line 257
    const/4 v11, 0x0

    .line 258
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/ah$a;->j:Ljava/util/Iterator;

    .line 263
    .end local v5    # "b":Z
    .end local v20    # "v":Ljava/lang/Object;, "TR;"
    :cond_5
    :goto_4
    cmp-long v21, v8, v18

    if-nez v21, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/ah$a;->h:Z

    move/from16 v22, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_b

    if-nez v11, :cond_b

    const/16 v21, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lrx/internal/operators/ah$a;->a(ZZLrx/l;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 269
    :cond_6
    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-eqz v21, :cond_7

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ah$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v8, v9}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 273
    :cond_7
    if-eqz v11, :cond_2

    .line 278
    .end local v8    # "e":J
    .end local v18    # "r":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/ah$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    neg-int v0, v13

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v13

    .line 279
    if-nez v13, :cond_2

    goto/16 :goto_0

    .line 175
    .restart local v6    # "d":Z
    .restart local v17    # "v":Ljava/lang/Object;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 188
    .restart local v7    # "empty":Z
    .restart local v14    # "p":J
    :cond_a
    move-object/from16 v0, p0

    iput-wide v14, v0, Lrx/internal/operators/ah$a;->i:J

    goto/16 :goto_3

    .line 199
    :catch_0
    move-exception v10

    .line 200
    .local v10, "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lrx/internal/operators/ah$a;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 228
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v14    # "p":J
    .end local v17    # "v":Ljava/lang/Object;
    .restart local v8    # "e":J
    .restart local v18    # "r":J
    :catch_1
    move-exception v10

    .line 229
    .restart local v10    # "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 230
    const/4 v11, 0x0

    .line 231
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/ah$a;->j:Ljava/util/Iterator;

    .line 232
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lrx/internal/operators/ah$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 248
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v20    # "v":Ljava/lang/Object;, "TR;"
    :catch_2
    move-exception v10

    .line 249
    .restart local v10    # "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 250
    const/4 v11, 0x0

    .line 251
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/ah$a;->j:Ljava/util/Iterator;

    .line 252
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lrx/internal/operators/ah$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 264
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v20    # "v":Ljava/lang/Object;, "TR;"
    :cond_b
    const/16 v21, 0x0

    goto :goto_5
.end method

.method a(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/ah$a;, "Lrx/internal/operators/ah$a<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 148
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 149
    iget-object v0, p0, Lrx/internal/operators/ah$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 150
    invoke-virtual {p0}, Lrx/internal/operators/ah$a;->a()V

    .line 154
    :cond_0
    return-void

    .line 151
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(ZZLrx/l;Ljava/util/Queue;)Z
    .locals 4
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/l",
            "<*>;",
            "Ljava/util/Queue",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/ah$a;, "Lrx/internal/operators/ah$a<TT;TR;>;"
    .local p3, "a":Lrx/l;, "Lrx/l<*>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 286
    invoke-virtual {p3}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 288
    iput-object v3, p0, Lrx/internal/operators/ah$a;->j:Ljava/util/Iterator;

    .line 310
    :goto_0
    return v1

    .line 292
    :cond_0
    if-eqz p1, :cond_2

    .line 293
    iget-object v2, p0, Lrx/internal/operators/ah$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 294
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 295
    iget-object v2, p0, Lrx/internal/operators/ah$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lrx/internal/operators/ah$a;->unsubscribe()V

    .line 297
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 298
    iput-object v3, p0, Lrx/internal/operators/ah$a;->j:Ljava/util/Iterator;

    .line 300
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 303
    :cond_1
    if-eqz p2, :cond_2

    .line 305
    invoke-virtual {p3}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 310
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/ah$a;, "Lrx/internal/operators/ah$a<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ah$a;->h:Z

    .line 144
    invoke-virtual {p0}, Lrx/internal/operators/ah$a;->a()V

    .line 145
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/ah$a;, "Lrx/internal/operators/ah$a<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/ah$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ah$a;->h:Z

    .line 135
    invoke-virtual {p0}, Lrx/internal/operators/ah$a;->a()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/ah$a;, "Lrx/internal/operators/ah$a<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/ah$a;->d:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lrx/internal/operators/ah$a;->unsubscribe()V

    .line 125
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/ah$a;->onError(Ljava/lang/Throwable;)V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/ah$a;->a()V

    goto :goto_0
.end method
