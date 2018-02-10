.class final Lrx/h/i$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;
.implements Lrx/f;
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/e$a",
        "<TT;>;",
        "Lrx/f",
        "<TT;>;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d831d73a4227baaL


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/l",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/c/b;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Throwable;

.field volatile e:Z

.field f:Z

.field g:Z

.field volatile h:Z


# direct methods
.method public constructor <init>(ILrx/c/b;)V
    .locals 2
    .param p1, "capacityHint"    # I
    .param p2, "onTerminated"    # Lrx/c/b;

    .prologue
    .line 141
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 142
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lrx/h/i$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 143
    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Lrx/h/i$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 146
    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 147
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lrx/internal/util/a/ah;

    invoke-direct {v0, p1}, Lrx/internal/util/a/ah;-><init>(I)V

    .line 155
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_1
    iput-object v0, p0, Lrx/h/i$a;->b:Ljava/util/Queue;

    .line 156
    return-void

    .line 143
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Lrx/internal/util/atomic/g;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/g;-><init>(I)V

    goto :goto_1

    .line 151
    :cond_2
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lrx/internal/util/a/ag;

    invoke-direct {v0}, Lrx/internal/util/a/ag;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_2
    goto :goto_1

    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_3
    new-instance v0, Lrx/internal/util/atomic/f;

    invoke-direct {v0}, Lrx/internal/util/atomic/f;-><init>()V

    goto :goto_2
.end method


# virtual methods
.method a()V
    .locals 14

    .prologue
    .line 261
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    monitor-enter p0

    .line 262
    :try_start_0
    iget-boolean v12, p0, Lrx/h/i$a;->f:Z

    if-eqz v12, :cond_1

    .line 263
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/h/i$a;->g:Z

    .line 264
    monitor-exit p0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/h/i$a;->f:Z

    .line 267
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    iget-object v5, p0, Lrx/h/i$a;->b:Ljava/util/Queue;

    .line 270
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_1
    iget-object v12, p0, Lrx/h/i$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/l;

    .line 271
    .local v8, "s":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v9, 0x0

    .line 272
    .local v9, "unlimited":Z
    if-eqz v8, :cond_3

    .line 273
    iget-boolean v0, p0, Lrx/h/i$a;->e:Z

    .line 274
    .local v0, "d":Z
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 276
    .local v1, "empty":Z
    invoke-virtual {p0, v0, v1, v8}, Lrx/h/i$a;->a(ZZLrx/l;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 279
    invoke-virtual {p0}, Lrx/h/i$a;->get()J

    move-result-wide v6

    .line 280
    .local v6, "r":J
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v6, v12

    if-nez v12, :cond_5

    const/4 v9, 0x1

    .line 281
    :goto_2
    const-wide/16 v2, 0x0

    .line 283
    .local v2, "e":J
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-eqz v12, :cond_2

    .line 284
    iget-boolean v0, p0, Lrx/h/i$a;->e:Z

    .line 285
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 286
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_6

    const/4 v1, 0x1

    .line 287
    :goto_4
    invoke-virtual {p0, v0, v1, v8}, Lrx/h/i$a;->a(ZZLrx/l;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 290
    if-eqz v1, :cond_7

    .line 305
    .end local v10    # "v":Ljava/lang/Object;
    :cond_2
    if-nez v9, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_3

    .line 306
    neg-long v12, v2

    invoke-virtual {p0, v12, v13}, Lrx/h/i$a;->addAndGet(J)J

    .line 310
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v6    # "r":J
    :cond_3
    monitor-enter p0

    .line 311
    :try_start_1
    iget-boolean v12, p0, Lrx/h/i$a;->g:Z

    if-nez v12, :cond_8

    .line 312
    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 313
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/h/i$a;->h:Z

    .line 315
    :cond_4
    const/4 v12, 0x0

    iput-boolean v12, p0, Lrx/h/i$a;->f:Z

    .line 316
    monitor-exit p0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 267
    .end local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v8    # "s":Lrx/l;, "Lrx/l<-TT;>;"
    .end local v9    # "unlimited":Z
    :catchall_1
    move-exception v12

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    .line 280
    .restart local v0    # "d":Z
    .restart local v1    # "empty":Z
    .restart local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v6    # "r":J
    .restart local v8    # "s":Lrx/l;, "Lrx/l<-TT;>;"
    .restart local v9    # "unlimited":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 286
    .restart local v2    # "e":J
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 293
    :cond_7
    invoke-static {v10}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 295
    .local v11, "value":Ljava/lang/Object;, "TT;"
    :try_start_3
    invoke-virtual {v8, v11}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 302
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 303
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 304
    goto :goto_3

    .line 296
    :catch_0
    move-exception v4

    .line 297
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 298
    invoke-static {v4}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 299
    invoke-static {v4, v11}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v8, v12}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 318
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v6    # "r":J
    .end local v10    # "v":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;, "TT;"
    :cond_8
    const/4 v12, 0x0

    :try_start_4
    iput-boolean v12, p0, Lrx/h/i$a;->g:Z

    .line 319
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method a(ZZLrx/l;)Z
    .locals 3
    .param p1, "done"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/l",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    .local p3, "s":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v1, 0x1

    .line 355
    invoke-virtual {p3}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Lrx/h/i$a;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 371
    :goto_0
    return v1

    .line 359
    :cond_0
    if-eqz p1, :cond_2

    .line 360
    iget-object v0, p0, Lrx/h/i$a;->d:Ljava/lang/Throwable;

    .line 361
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 362
    iget-object v2, p0, Lrx/h/i$a;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 363
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 366
    :cond_1
    if-eqz p2, :cond_2

    .line 367
    invoke-virtual {p3}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 378
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    iget-object v1, p0, Lrx/h/i$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 379
    .local v1, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/c/b;>;"
    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/c/b;

    .line 381
    .local v0, "a":Lrx/c/b;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-interface {v0}, Lrx/c/b;->call()V

    .line 385
    .end local v0    # "a":Lrx/c/b;
    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 115
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/h/i$a;->call(Lrx/l;)V

    return-void
.end method

.method public call(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v0, p0, Lrx/h/i$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1, p0}, Lrx/l;->add(Lrx/m;)V

    .line 252
    invoke-virtual {p1, p0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single subscriber is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 343
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    iget-boolean v0, p0, Lrx/h/i$a;->e:Z

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    const/4 v0, 0x1

    .line 211
    iget-boolean v1, p0, Lrx/h/i$a;->e:Z

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lrx/h/i$a;->b()V

    .line 215
    iput-boolean v0, p0, Lrx/h/i$a;->e:Z

    .line 216
    iget-boolean v1, p0, Lrx/h/i$a;->h:Z

    if-nez v1, :cond_2

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iget-boolean v1, p0, Lrx/h/i$a;->h:Z

    if-nez v1, :cond_1

    .line 220
    .local v0, "stillReplay":Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p0}, Lrx/h/i$a;->a()V

    .line 228
    .end local v0    # "stillReplay":Z
    :cond_0
    :goto_1
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 226
    :cond_2
    iget-object v1, p0, Lrx/h/i$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    goto :goto_1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    const/4 v0, 0x1

    .line 190
    iget-boolean v1, p0, Lrx/h/i$a;->e:Z

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lrx/h/i$a;->b()V

    .line 194
    iput-object p1, p0, Lrx/h/i$a;->d:Ljava/lang/Throwable;

    .line 195
    iput-boolean v0, p0, Lrx/h/i$a;->e:Z

    .line 196
    iget-boolean v1, p0, Lrx/h/i$a;->h:Z

    if-nez v1, :cond_2

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v1, p0, Lrx/h/i$a;->h:Z

    if-nez v1, :cond_1

    .line 200
    .local v0, "stillReplay":Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lrx/h/i$a;->a()V

    .line 208
    .end local v0    # "stillReplay":Z
    :cond_0
    :goto_1
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 206
    :cond_2
    iget-object v1, p0, Lrx/h/i$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/l;

    invoke-virtual {v1, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/h/i$a;->e:Z

    if-nez v3, :cond_1

    .line 161
    iget-boolean v3, p0, Lrx/h/i$a;->h:Z

    if-nez v3, :cond_2

    .line 162
    const/4 v2, 0x0

    .line 169
    .local v2, "stillReplay":Z
    monitor-enter p0

    .line 170
    :try_start_0
    iget-boolean v3, p0, Lrx/h/i$a;->h:Z

    if-nez v3, :cond_0

    .line 171
    iget-object v3, p0, Lrx/h/i$a;->b:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 172
    const/4 v2, 0x1

    .line 174
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v2, :cond_2

    .line 176
    invoke-virtual {p0}, Lrx/h/i$a;->a()V

    .line 187
    .end local v2    # "stillReplay":Z
    :cond_1
    :goto_0
    return-void

    .line 174
    .restart local v2    # "stillReplay":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 180
    .end local v2    # "stillReplay":Z
    :cond_2
    iget-object v3, p0, Lrx/h/i$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/l;

    .line 182
    .local v1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    :try_start_2
    invoke-virtual {v1, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    const-wide/16 v2, 0x0

    .line 232
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 236
    invoke-static {p0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 237
    invoke-virtual {p0}, Lrx/h/i$a;->a()V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    iget-boolean v0, p0, Lrx/h/i$a;->e:Z

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lrx/h/i$a;->a()V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .local p0, "this":Lrx/h/i$a;, "Lrx/h/i$a<TT;>;"
    const/4 v0, 0x1

    .line 329
    invoke-virtual {p0}, Lrx/h/i$a;->b()V

    .line 331
    iput-boolean v0, p0, Lrx/h/i$a;->e:Z

    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    iget-boolean v0, p0, Lrx/h/i$a;->f:Z

    if-eqz v0, :cond_0

    .line 334
    monitor-exit p0

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/i$a;->f:Z

    .line 337
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v0, p0, Lrx/h/i$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
