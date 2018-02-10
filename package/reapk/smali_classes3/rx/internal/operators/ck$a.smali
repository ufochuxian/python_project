.class final Lrx/internal/operators/ck$a;
.super Lrx/l;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ck;
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
        "Lrx/l",
        "<TT;>;",
        "Lrx/c/b;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/h$a;

.field final c:Z

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

.field final e:I

.field volatile f:Z

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field i:Ljava/lang/Throwable;

.field j:J


# direct methods
.method public constructor <init>(Lrx/h;Lrx/l;ZI)V
    .locals 4
    .param p1, "scheduler"    # Lrx/h;
    .param p3, "delayError"    # Z
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            "Lrx/l",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    .local p2, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/ck$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 105
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/ck$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 119
    iput-object p2, p0, Lrx/internal/operators/ck$a;->a:Lrx/l;

    .line 120
    invoke-virtual {p1}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/ck$a;->b:Lrx/h$a;

    .line 121
    iput-boolean p3, p0, Lrx/internal/operators/ck$a;->c:Z

    .line 122
    if-lez p4, :cond_0

    move v0, p4

    .line 124
    .local v0, "calculatedSize":I
    :goto_0
    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lrx/internal/operators/ck$a;->e:I

    .line 125
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Lrx/internal/util/a/z;

    invoke-direct {v1, v0}, Lrx/internal/util/a/z;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/ck$a;->d:Ljava/util/Queue;

    .line 131
    :goto_1
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/ck$a;->request(J)V

    .line 132
    return-void

    .line 122
    .end local v0    # "calculatedSize":I
    :cond_0
    sget v0, Lrx/internal/util/j;->b:I

    goto :goto_0

    .line 128
    .restart local v0    # "calculatedSize":I
    :cond_1
    new-instance v1, Lrx/internal/util/atomic/d;

    invoke-direct {v1, v0}, Lrx/internal/util/atomic/d;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/ck$a;->d:Ljava/util/Queue;

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 137
    .local p0, "this":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ck$a;->a:Lrx/l;

    .line 139
    .local v0, "localChild":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v1, Lrx/internal/operators/ck$a$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/ck$a$1;-><init>(Lrx/internal/operators/ck$a;)V

    invoke-virtual {v0, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 150
    iget-object v1, p0, Lrx/internal/operators/ck$a;->b:Lrx/h$a;

    invoke-virtual {v0, v1}, Lrx/l;->add(Lrx/m;)V

    .line 151
    invoke-virtual {v0, p0}, Lrx/l;->add(Lrx/m;)V

    .line 152
    return-void
.end method

.method a(ZZLrx/l;Ljava/util/Queue;)Z
    .locals 3
    .param p1, "done"    # Z
    .param p2, "isEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/l",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    .local p3, "a":Lrx/l;, "Lrx/l<-TT;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .line 249
    invoke-virtual {p3}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 291
    :goto_0
    return v1

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    .line 255
    iget-boolean v2, p0, Lrx/internal/operators/ck$a;->c:Z

    if-eqz v2, :cond_3

    .line 256
    if-eqz p2, :cond_1

    .line 257
    iget-object v0, p0, Lrx/internal/operators/ck$a;->i:Ljava/lang/Throwable;

    .line 259
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 260
    :try_start_0
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_1
    iget-object v1, p0, Lrx/internal/operators/ck$a;->b:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

    .line 291
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 262
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Lrx/l;->onCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/ck$a;->b:Lrx/h$a;

    invoke-virtual {v2}, Lrx/h$a;->unsubscribe()V

    throw v1

    .line 269
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Lrx/internal/operators/ck$a;->i:Ljava/lang/Throwable;

    .line 270
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 271
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 273
    :try_start_2
    invoke-virtual {p3, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    iget-object v2, p0, Lrx/internal/operators/ck$a;->b:Lrx/h$a;

    invoke-virtual {v2}, Lrx/h$a;->unsubscribe()V

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/ck$a;->b:Lrx/h$a;

    invoke-virtual {v2}, Lrx/h$a;->unsubscribe()V

    throw v1

    .line 279
    :cond_4
    if-eqz p2, :cond_1

    .line 281
    :try_start_3
    invoke-virtual {p3}, Lrx/l;->onCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 283
    iget-object v2, p0, Lrx/internal/operators/ck$a;->b:Lrx/h$a;

    invoke-virtual {v2}, Lrx/h$a;->unsubscribe()V

    goto :goto_0

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/ck$a;->b:Lrx/h$a;

    invoke-virtual {v2}, Lrx/h$a;->unsubscribe()V

    throw v1
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ck$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lrx/internal/operators/ck$a;->b:Lrx/h$a;

    invoke-virtual {v0, p0}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 190
    :cond_0
    return-void
.end method

.method public call()V
    .locals 14

    .prologue
    .line 195
    .local p0, "this":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    const-wide/16 v6, 0x1

    .line 196
    .local v6, "missed":J
    iget-wide v0, p0, Lrx/internal/operators/ck$a;->j:J

    .line 201
    .local v0, "currentEmission":J
    iget-object v5, p0, Lrx/internal/operators/ck$a;->d:Ljava/util/Queue;

    .line 202
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v4, p0, Lrx/internal/operators/ck$a;->a:Lrx/l;

    .line 209
    .local v4, "localChild":Lrx/l;, "Lrx/l<-TT;>;"
    :cond_0
    iget-object v11, p0, Lrx/internal/operators/ck$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 211
    .local v8, "requestAmount":J
    :cond_1
    :goto_0
    cmp-long v11, v8, v0

    if-eqz v11, :cond_5

    .line 212
    iget-boolean v2, p0, Lrx/internal/operators/ck$a;->f:Z

    .line 213
    .local v2, "done":Z
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 214
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_3

    const/4 v3, 0x1

    .line 216
    .local v3, "empty":Z
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/operators/ck$a;->a(ZZLrx/l;Ljava/util/Queue;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 246
    .end local v2    # "done":Z
    .end local v3    # "empty":Z
    .end local v10    # "v":Ljava/lang/Object;
    :cond_2
    :goto_2
    return-void

    .line 214
    .restart local v2    # "done":Z
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 220
    .restart local v3    # "empty":Z
    :cond_4
    if-eqz v3, :cond_7

    .line 234
    .end local v2    # "done":Z
    .end local v3    # "empty":Z
    .end local v10    # "v":Ljava/lang/Object;
    :cond_5
    cmp-long v11, v8, v0

    if-nez v11, :cond_6

    .line 235
    iget-boolean v11, p0, Lrx/internal/operators/ck$a;->f:Z

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v4, v5}, Lrx/internal/operators/ck$a;->a(ZZLrx/l;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 240
    :cond_6
    iput-wide v0, p0, Lrx/internal/operators/ck$a;->j:J

    .line 241
    iget-object v11, p0, Lrx/internal/operators/ck$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    .line 242
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-nez v11, :cond_0

    goto :goto_2

    .line 224
    .restart local v2    # "done":Z
    .restart local v3    # "empty":Z
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_7
    invoke-static {v10}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 226
    const-wide/16 v12, 0x1

    add-long/2addr v0, v12

    .line 227
    iget v11, p0, Lrx/internal/operators/ck$a;->e:I

    int-to-long v12, v11

    cmp-long v11, v0, v12

    if-nez v11, :cond_1

    .line 228
    iget-object v11, p0, Lrx/internal/operators/ck$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v11, v0, v1}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v8

    .line 229
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ck$a;->request(J)V

    .line 230
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/ck$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/ck$a;->f:Z

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ck$a;->f:Z

    .line 172
    invoke-virtual {p0}, Lrx/internal/operators/ck$a;->b()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 177
    .local p0, "this":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/ck$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/ck$a;->f:Z

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_1
    iput-object p1, p0, Lrx/internal/operators/ck$a;->i:Ljava/lang/Throwable;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ck$a;->f:Z

    .line 183
    invoke-virtual {p0}, Lrx/internal/operators/ck$a;->b()V

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
    .line 156
    .local p0, "this":Lrx/internal/operators/ck$a;, "Lrx/internal/operators/ck$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/internal/operators/ck$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/ck$a;->f:Z

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/ck$a;->d:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/ck$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/ck$a;->b()V

    goto :goto_0
.end method
