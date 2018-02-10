.class final Lrx/internal/operators/ea$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lrx/h$a;

.field final c:Ljava/lang/Object;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field volatile f:Lrx/internal/operators/ea$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ea$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic g:Lrx/internal/operators/ea;


# direct methods
.method public constructor <init>(Lrx/internal/operators/ea;Lrx/l;Lrx/h$a;)V
    .locals 1
    .param p3, "worker"    # Lrx/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;",
            "Lrx/h$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    .local p2, "child":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/ea$b;->g:Lrx/internal/operators/ea;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 117
    new-instance v0, Lrx/e/g;

    invoke-direct {v0, p2}, Lrx/e/g;-><init>(Lrx/l;)V

    iput-object v0, p0, Lrx/internal/operators/ea$b;->a:Lrx/l;

    .line 118
    iput-object p3, p0, Lrx/internal/operators/ea$b;->b:Lrx/h$a;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    .line 120
    invoke-static {}, Lrx/internal/operators/ea$d;->c()Lrx/internal/operators/ea$d;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    .line 121
    new-instance v0, Lrx/internal/operators/ea$b$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ea$b$1;-><init>(Lrx/internal/operators/ea$b;Lrx/internal/operators/ea;)V

    invoke-static {v0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/l;->add(Lrx/m;)V

    .line 130
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 254
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    iget-object v1, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    iget-object v0, v1, Lrx/internal/operators/ea$d;->a:Lrx/f;

    .line 255
    .local v0, "s":Lrx/f;, "Lrx/f<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    invoke-virtual {v1}, Lrx/internal/operators/ea$d;->b()Lrx/internal/operators/ea$d;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    .line 259
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/ea$b;->a:Lrx/l;

    invoke-virtual {v1, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {p0}, Lrx/internal/operators/ea$b;->unsubscribe()V

    .line 261
    return-void
.end method

.method a()Z
    .locals 3

    .prologue
    .line 206
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    iget-object v2, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    iget-object v1, v2, Lrx/internal/operators/ea$d;->a:Lrx/f;

    .line 207
    .local v1, "s":Lrx/f;, "Lrx/f<TT;>;"
    if-eqz v1, :cond_0

    .line 208
    invoke-interface {v1}, Lrx/f;->onCompleted()V

    .line 211
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/ea$b;->a:Lrx/l;

    invoke-virtual {v2}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    invoke-virtual {v2}, Lrx/internal/operators/ea$d;->b()Lrx/internal/operators/ea$d;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    .line 213
    invoke-virtual {p0}, Lrx/internal/operators/ea$b;->unsubscribe()V

    .line 214
    const/4 v2, 0x0

    .line 219
    :goto_0
    return v2

    .line 216
    :cond_1
    invoke-static {}, Lrx/h/i;->K()Lrx/h/i;

    move-result-object v0

    .line 217
    .local v0, "bus":Lrx/h/i;, "Lrx/h/i<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    invoke-virtual {v2, v0, v0}, Lrx/internal/operators/ea$d;->a(Lrx/f;Lrx/e;)Lrx/internal/operators/ea$d;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    .line 218
    iget-object v2, p0, Lrx/internal/operators/ea$b;->a:Lrx/l;

    invoke-virtual {v2, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 219
    const/4 v2, 0x1

    goto :goto_0
.end method

.method a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    .line 223
    .local v0, "s":Lrx/internal/operators/ea$d;, "Lrx/internal/operators/ea$d<TT;>;"
    iget-object v1, v0, Lrx/internal/operators/ea$d;->a:Lrx/f;

    if-nez v1, :cond_1

    .line 224
    invoke-virtual {p0}, Lrx/internal/operators/ea$b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 237
    :goto_0
    return v1

    .line 227
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    .line 229
    :cond_1
    iget-object v1, v0, Lrx/internal/operators/ea$d;->a:Lrx/f;

    invoke-interface {v1, p1}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 230
    iget v1, v0, Lrx/internal/operators/ea$d;->c:I

    iget-object v2, p0, Lrx/internal/operators/ea$b;->g:Lrx/internal/operators/ea;

    iget v2, v2, Lrx/internal/operators/ea;->e:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 231
    iget-object v1, v0, Lrx/internal/operators/ea$d;->a:Lrx/f;

    invoke-interface {v1}, Lrx/f;->onCompleted()V

    .line 232
    invoke-virtual {v0}, Lrx/internal/operators/ea$d;->b()Lrx/internal/operators/ea$d;

    move-result-object v0

    .line 236
    :goto_1
    iput-object v0, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    .line 237
    const/4 v1, 0x1

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v0}, Lrx/internal/operators/ea$d;->a()Lrx/internal/operators/ea$d;

    move-result-object v0

    goto :goto_1
.end method

.method a(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 179
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v3

    .line 182
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, "o":Ljava/lang/Object;
    sget-object v5, Lrx/internal/operators/ea;->f:Ljava/lang/Object;

    if-ne v1, v5, :cond_3

    .line 184
    invoke-virtual {p0}, Lrx/internal/operators/ea$b;->a()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 185
    goto :goto_0

    .line 188
    :cond_3
    invoke-static {v1}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    invoke-static {v1}, Lrx/internal/operators/v;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lrx/internal/operators/ea$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 192
    :cond_4
    invoke-static {v1}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 193
    invoke-virtual {p0}, Lrx/internal/operators/ea$b;->b()V

    goto :goto_0

    .line 197
    :cond_5
    move-object v2, v1

    .line 198
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lrx/internal/operators/ea$b;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 199
    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 263
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    iget-object v1, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    iget-object v0, v1, Lrx/internal/operators/ea$d;->a:Lrx/f;

    .line 264
    .local v0, "s":Lrx/f;, "Lrx/f<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    invoke-virtual {v1}, Lrx/internal/operators/ea$d;->b()Lrx/internal/operators/ea$d;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/ea$b;->f:Lrx/internal/operators/ea$d;

    .line 265
    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Lrx/f;->onCompleted()V

    .line 268
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/ea$b;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    .line 269
    invoke-virtual {p0}, Lrx/internal/operators/ea$b;->unsubscribe()V

    .line 270
    return-void
.end method

.method c()V
    .locals 7

    .prologue
    .line 296
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    iget-object v0, p0, Lrx/internal/operators/ea$b;->b:Lrx/h$a;

    new-instance v1, Lrx/internal/operators/ea$b$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/ea$b$2;-><init>(Lrx/internal/operators/ea$b;)V

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lrx/internal/operators/ea$b;->g:Lrx/internal/operators/ea;

    iget-wide v4, v4, Lrx/internal/operators/ea;->a:J

    iget-object v6, p0, Lrx/internal/operators/ea$b;->g:Lrx/internal/operators/ea;

    iget-object v6, v6, Lrx/internal/operators/ea;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h$a;->a(Lrx/c/b;JJLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 304
    return-void
.end method

.method d()V
    .locals 5

    .prologue
    .line 306
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 307
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    if-eqz v2, :cond_2

    .line 308
    iget-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    if-nez v2, :cond_0

    .line 309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 311
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    sget-object v4, Lrx/internal/operators/ea;->f:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    monitor-exit v3

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 315
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, "skipFinal":Z
    :try_start_1
    invoke-virtual {p0}, Lrx/internal/operators/ea$b;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 338
    if-nez v1, :cond_1

    .line 339
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 341
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 315
    .end local v1    # "skipFinal":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 323
    .restart local v1    # "skipFinal":Z
    :cond_3
    :try_start_4
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 324
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 325
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_4

    .line 326
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 327
    const/4 v1, 0x1

    .line 328
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 338
    if-nez v1, :cond_1

    .line 339
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 341
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 330
    :cond_4
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 331
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 333
    :try_start_8
    invoke-virtual {p0, v0}, Lrx/internal/operators/ea$b;->a(Ljava/util/List;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 338
    if-nez v1, :cond_1

    .line 339
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 341
    monitor-exit v3

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 331
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 338
    :catchall_5
    move-exception v2

    if-nez v1, :cond_5

    .line 339
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 341
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_5
    throw v2

    :catchall_6
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v2
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 274
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 275
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    if-nez v2, :cond_0

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 279
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v3

    .line 293
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 283
    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 284
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 285
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    invoke-virtual {p0, v1}, Lrx/internal/operators/ea$b;->a(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    invoke-virtual {p0}, Lrx/internal/operators/ea$b;->b()V

    goto :goto_0

    .line 285
    .end local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 288
    .restart local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/ea$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 242
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    iget-object v1, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/ea$b;->e:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 246
    monitor-exit v1

    .line 252
    :goto_0
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 250
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {p0, p1}, Lrx/internal/operators/ea$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 140
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 144
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v3

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 148
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, "skipFinal":Z
    :try_start_1
    invoke-virtual {p0, p1}, Lrx/internal/operators/ea$b;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 171
    if-nez v1, :cond_1

    .line 172
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 173
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 174
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 148
    .end local v1    # "skipFinal":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 157
    .restart local v1    # "skipFinal":Z
    :cond_3
    :try_start_4
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 158
    :try_start_5
    iget-object v0, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 159
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_4

    .line 160
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 161
    const/4 v1, 0x1

    .line 162
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 171
    if-nez v1, :cond_1

    .line 172
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 173
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 174
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 164
    :cond_4
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lrx/internal/operators/ea$b;->d:Ljava/util/List;

    .line 165
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 166
    :try_start_8
    invoke-virtual {p0, v0}, Lrx/internal/operators/ea$b;->a(Ljava/util/List;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 171
    if-nez v1, :cond_1

    .line 172
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 173
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 174
    monitor-exit v3

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 165
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 171
    :catchall_5
    move-exception v2

    if-nez v1, :cond_5

    .line 172
    iget-object v3, p0, Lrx/internal/operators/ea$b;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 173
    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Lrx/internal/operators/ea$b;->e:Z

    .line 174
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_5
    throw v2

    :catchall_6
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v2
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/ea$b;, "Lrx/internal/operators/ea<TT;>.b;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ea$b;->request(J)V

    .line 135
    return-void
.end method
