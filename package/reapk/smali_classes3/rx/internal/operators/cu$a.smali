.class final Lrx/internal/operators/cu$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f",
        "<TR;>;",
        "Lrx/g;"
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

.field c:Z

.field d:Z

.field e:J

.field final f:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile g:Lrx/g;

.field volatile h:Z

.field i:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "child":Lrx/l;, "Lrx/l<-TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lrx/internal/operators/cu$a;->a:Lrx/l;

    .line 189
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    new-instance v0, Lrx/internal/util/a/ag;

    invoke-direct {v0}, Lrx/internal/util/a/ag;-><init>()V

    .line 194
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    iput-object v0, p0, Lrx/internal/operators/cu$a;->b:Ljava/util/Queue;

    .line 195
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/cu$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 197
    return-void

    .line 192
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/f;

    invoke-direct {v0}, Lrx/internal/util/atomic/f;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    monitor-enter p0

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/cu$a;->c:Z

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cu$a;->d:Z

    .line 291
    monitor-exit p0

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cu$a;->c:Z

    .line 294
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {p0}, Lrx/internal/operators/cu$a;->b()V

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lrx/g;)V
    .locals 8
    .param p1, "p"    # Lrx/g;

    .prologue
    .local p0, "this":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    const-wide/16 v6, 0x0

    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 267
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/cu$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v3

    .line 268
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/cu$a;->g:Lrx/g;

    if-eqz v2, :cond_1

    .line 269
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t set more than one Producer!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 271
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lrx/internal/operators/cu$a;->e:J

    .line 274
    .local v0, "mr":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 275
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 277
    :cond_2
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lrx/internal/operators/cu$a;->e:J

    .line 278
    iput-object p1, p0, Lrx/internal/operators/cu$a;->g:Lrx/g;

    .line 279
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    cmp-long v2, v0, v6

    if-lez v2, :cond_3

    .line 282
    invoke-interface {p1, v0, v1}, Lrx/g;->request(J)V

    .line 284
    :cond_3
    invoke-virtual {p0}, Lrx/internal/operators/cu$a;->a()V

    .line 285
    return-void
.end method

.method a(ZZLrx/l;)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/l",
            "<-TR;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    .local p3, "child":Lrx/l;, "Lrx/l<-TR;>;"
    const/4 v1, 0x1

    .line 206
    invoke-virtual {p3}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    :goto_0
    return v1

    .line 209
    :cond_0
    if-eqz p1, :cond_2

    .line 210
    iget-object v0, p0, Lrx/internal/operators/cu$a;->i:Ljava/lang/Throwable;

    .line 211
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    :cond_1
    if-eqz p2, :cond_2

    .line 216
    invoke-virtual {p3}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 220
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 14

    .prologue
    .line 299
    .local p0, "this":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    iget-object v0, p0, Lrx/internal/operators/cu$a;->a:Lrx/l;

    .line 300
    .local v0, "child":Lrx/l;, "Lrx/l<-TR;>;"
    iget-object v7, p0, Lrx/internal/operators/cu$a;->b:Ljava/util/Queue;

    .line 301
    .local v7, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v10, p0, Lrx/internal/operators/cu$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 303
    .local v10, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 305
    .local v8, "r":J
    :goto_0
    iget-boolean v1, p0, Lrx/internal/operators/cu$a;->h:Z

    .line 306
    .local v1, "d":Z
    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    .line 307
    .local v4, "empty":Z
    invoke-virtual {p0, v1, v4, v0}, Lrx/internal/operators/cu$a;->a(ZZLrx/l;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 338
    :cond_0
    :goto_1
    return-void

    .line 310
    :cond_1
    const-wide/16 v2, 0x0

    .line 311
    .local v2, "e":J
    :goto_2
    cmp-long v12, v2, v8

    if-eqz v12, :cond_2

    .line 312
    iget-boolean v1, p0, Lrx/internal/operators/cu$a;->h:Z

    .line 313
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 314
    .local v6, "o":Ljava/lang/Object;
    if-nez v6, :cond_4

    const/4 v4, 0x1

    .line 315
    :goto_3
    invoke-virtual {p0, v1, v4, v0}, Lrx/internal/operators/cu$a;->a(ZZLrx/l;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 318
    if-eqz v4, :cond_5

    .line 331
    .end local v6    # "o":Ljava/lang/Object;
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_3

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v8, v12

    if-eqz v12, :cond_3

    .line 332
    invoke-static {v10, v2, v3}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v8

    .line 335
    :cond_3
    monitor-enter p0

    .line 336
    :try_start_0
    iget-boolean v12, p0, Lrx/internal/operators/cu$a;->d:Z

    if-nez v12, :cond_6

    .line 337
    const/4 v12, 0x0

    iput-boolean v12, p0, Lrx/internal/operators/cu$a;->c:Z

    .line 338
    monitor-exit p0

    goto :goto_1

    .line 341
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 314
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 321
    :cond_5
    invoke-static {v6}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 323
    .local v11, "v":Ljava/lang/Object;, "TR;"
    :try_start_1
    invoke-virtual {v0, v11}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 329
    goto :goto_2

    .line 324
    :catch_0
    move-exception v5

    .line 325
    .local v5, "ex":Ljava/lang/Throwable;
    invoke-static {v5, v0, v11}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_1

    .line 340
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v6    # "o":Ljava/lang/Object;
    .end local v11    # "v":Ljava/lang/Object;, "TR;"
    :cond_6
    const/4 v12, 0x0

    :try_start_2
    iput-boolean v12, p0, Lrx/internal/operators/cu$a;->d:Z

    .line 341
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cu$a;->h:Z

    .line 233
    invoke-virtual {p0}, Lrx/internal/operators/cu$a;->a()V

    .line 234
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 225
    .local p0, "this":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    iput-object p1, p0, Lrx/internal/operators/cu$a;->i:Ljava/lang/Throwable;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cu$a;->h:Z

    .line 227
    invoke-virtual {p0}, Lrx/internal/operators/cu$a;->a()V

    .line 228
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/cu$a;->b:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lrx/internal/operators/cu$a;->a()V

    .line 203
    return-void
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    const-wide/16 v4, 0x0

    .line 238
    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    .line 239
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n >= required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_0
    cmp-long v3, p1, v4

    if-eqz v3, :cond_4

    .line 242
    iget-object v3, p0, Lrx/internal/operators/cu$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 243
    iget-object v2, p0, Lrx/internal/operators/cu$a;->g:Lrx/g;

    .line 244
    .local v2, "p":Lrx/g;
    if-nez v2, :cond_2

    .line 246
    iget-object v4, p0, Lrx/internal/operators/cu$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v4

    .line 247
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/cu$a;->g:Lrx/g;

    .line 248
    if-nez v2, :cond_1

    .line 249
    iget-wide v0, p0, Lrx/internal/operators/cu$a;->e:J

    .line 250
    .local v0, "mr":J
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/a;->b(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lrx/internal/operators/cu$a;->e:J

    .line 252
    .end local v0    # "mr":J
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_2
    if-eqz v2, :cond_3

    .line 255
    invoke-interface {v2, p1, p2}, Lrx/g;->request(J)V

    .line 257
    :cond_3
    invoke-virtual {p0}, Lrx/internal/operators/cu$a;->a()V

    .line 259
    .end local v2    # "p":Lrx/g;
    :cond_4
    return-void

    .line 252
    .restart local v2    # "p":Lrx/g;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
