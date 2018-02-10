.class final Lrx/internal/operators/cb$c;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/internal/operators/cb$a",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field volatile e:Z

.field f:Ljava/lang/Throwable;

.field volatile g:Z

.field final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Lrx/internal/operators/cb$b;


# direct methods
.method public constructor <init>(Lrx/c/p;IILrx/l;)V
    .locals 2
    .param p2, "bufferSize"    # I
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;II",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/cb$c;, "Lrx/internal/operators/cb$c<TT;TR;>;"
    .local p1, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    .local p4, "actual":Lrx/l;, "Lrx/l<-TR;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 88
    iput-object p1, p0, Lrx/internal/operators/cb$c;->a:Lrx/c/p;

    .line 89
    iput p2, p0, Lrx/internal/operators/cb$c;->b:I

    .line 90
    iput-object p4, p0, Lrx/internal/operators/cb$c;->c:Lrx/l;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cb$c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/cb$c;->request(J)V

    .line 94
    return-void

    .line 93
    :cond_0
    int-to-long v0, p3

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/cb$c;, "Lrx/internal/operators/cb$c<TT;TR;>;"
    new-instance v0, Lrx/internal/operators/cb$b;

    invoke-direct {v0, p0}, Lrx/internal/operators/cb$b;-><init>(Lrx/internal/operators/cb$c;)V

    iput-object v0, p0, Lrx/internal/operators/cb$c;->i:Lrx/internal/operators/cb$b;

    .line 98
    new-instance v0, Lrx/internal/operators/cb$c$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/cb$c$1;-><init>(Lrx/internal/operators/cb$c;)V

    invoke-static {v0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/cb$c;->add(Lrx/m;)V

    .line 107
    iget-object v0, p0, Lrx/internal/operators/cb$c;->c:Lrx/l;

    invoke-virtual {v0, p0}, Lrx/l;->add(Lrx/m;)V

    .line 108
    iget-object v0, p0, Lrx/internal/operators/cb$c;->c:Lrx/l;

    iget-object v1, p0, Lrx/internal/operators/cb$c;->i:Lrx/internal/operators/cb$b;

    invoke-virtual {v0, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 109
    return-void
.end method

.method b()V
    .locals 5

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/cb$c;, "Lrx/internal/operators/cb$c<TT;TR;>;"
    iget-object v4, p0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    monitor-enter v4

    .line 114
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/m;>;"
    iget-object v3, p0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 116
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/m;

    .line 119
    .local v2, "s":Lrx/m;
    invoke-interface {v2}, Lrx/m;->unsubscribe()V

    goto :goto_0

    .line 116
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/m;>;"
    .end local v2    # "s":Lrx/m;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 121
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/m;>;"
    :cond_0
    return-void
.end method

.method c()V
    .locals 22

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/cb$c;, "Lrx/internal/operators/cb$c<TT;TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cb$c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v20

    if-eqz v20, :cond_0

    .line 270
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v14, 0x1

    .line 172
    .local v14, "missed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cb$c;->i:Lrx/internal/operators/cb$b;

    move-object/from16 v16, v0

    .line 173
    .local v16, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/cb$c;->c:Lrx/l;

    .line 177
    .local v4, "actualSubscriber":Lrx/l;, "Lrx/l<-TR;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/cb$c;->g:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 178
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/cb$c;->b()V

    goto :goto_0

    .line 184
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lrx/internal/operators/cb$c;->e:Z

    .line 185
    .local v15, "outerDone":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 186
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lrx/internal/operators/cb$a;

    .line 187
    .local v13, "innerSubscriber":Lrx/internal/operators/cb$a;, "Lrx/internal/operators/cb$a<TR;>;"
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-nez v13, :cond_3

    const/4 v5, 0x1

    .line 190
    .local v5, "empty":Z
    :goto_1
    if-eqz v15, :cond_5

    .line 191
    move-object/from16 v0, p0

    iget-object v8, v0, Lrx/internal/operators/cb$c;->f:Ljava/lang/Throwable;

    .line 192
    .local v8, "error":Ljava/lang/Throwable;
    if-eqz v8, :cond_4

    .line 193
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/cb$c;->b()V

    .line 194
    invoke-virtual {v4, v8}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    .end local v5    # "empty":Z
    .end local v8    # "error":Ljava/lang/Throwable;
    .end local v13    # "innerSubscriber":Lrx/internal/operators/cb$a;, "Lrx/internal/operators/cb$a<TR;>;"
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 188
    .restart local v13    # "innerSubscriber":Lrx/internal/operators/cb$a;, "Lrx/internal/operators/cb$a<TR;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 197
    .restart local v5    # "empty":Z
    .restart local v8    # "error":Ljava/lang/Throwable;
    :cond_4
    if-eqz v5, :cond_5

    .line 198
    invoke-virtual {v4}, Lrx/l;->onCompleted()V

    goto :goto_0

    .line 203
    .end local v8    # "error":Ljava/lang/Throwable;
    :cond_5
    if-nez v5, :cond_b

    .line 204
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    .line 205
    .local v18, "requestedAmount":J
    const-wide/16 v6, 0x0

    .line 207
    .local v6, "emittedAmount":J
    iget-object v12, v13, Lrx/internal/operators/cb$a;->b:Ljava/util/Queue;

    .line 208
    .local v12, "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 212
    .local v10, "innerDone":Z
    :goto_2
    iget-boolean v15, v13, Lrx/internal/operators/cb$a;->c:Z

    .line 213
    invoke-interface {v12}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v17

    .line 214
    .local v17, "v":Ljava/lang/Object;
    if-nez v17, :cond_6

    const/4 v5, 0x1

    .line 216
    :goto_3
    if-eqz v15, :cond_c

    .line 217
    iget-object v11, v13, Lrx/internal/operators/cb$a;->d:Ljava/lang/Throwable;

    .line 218
    .local v11, "innerError":Ljava/lang/Throwable;
    if-eqz v11, :cond_7

    .line 219
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/cb$c;->b()V

    .line 220
    invoke-virtual {v4, v11}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    .end local v11    # "innerError":Ljava/lang/Throwable;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 223
    .restart local v11    # "innerError":Ljava/lang/Throwable;
    :cond_7
    if-eqz v5, :cond_c

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 225
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 226
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 227
    invoke-virtual {v13}, Lrx/internal/operators/cb$a;->unsubscribe()V

    .line 228
    const/4 v10, 0x1

    .line 229
    const-wide/16 v20, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/cb$c;->request(J)V

    .line 254
    .end local v11    # "innerError":Ljava/lang/Throwable;
    :cond_8
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-eqz v20, :cond_a

    .line 255
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v18, v20

    if-eqz v20, :cond_9

    .line 256
    move-object/from16 v0, v16

    invoke-static {v0, v6, v7}, Lrx/internal/operators/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 258
    :cond_9
    if-nez v10, :cond_a

    .line 259
    invoke-virtual {v13, v6, v7}, Lrx/internal/operators/cb$a;->a(J)V

    .line 263
    :cond_a
    if-nez v10, :cond_1

    .line 268
    .end local v6    # "emittedAmount":J
    .end local v10    # "innerDone":Z
    .end local v12    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v17    # "v":Ljava/lang/Object;
    .end local v18    # "requestedAmount":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/cb$c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    neg-int v0, v14

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v14

    .line 269
    if-nez v14, :cond_1

    goto/16 :goto_0

    .line 226
    .restart local v6    # "emittedAmount":J
    .restart local v10    # "innerDone":Z
    .restart local v11    # "innerError":Ljava/lang/Throwable;
    .restart local v12    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v17    # "v":Ljava/lang/Object;
    .restart local v18    # "requestedAmount":J
    :catchall_1
    move-exception v20

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v20

    .line 234
    .end local v11    # "innerError":Ljava/lang/Throwable;
    :cond_c
    if-nez v5, :cond_8

    .line 238
    cmp-long v20, v18, v6

    if-eqz v20, :cond_8

    .line 242
    invoke-interface {v12}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 245
    :try_start_4
    invoke-static/range {v17 .. v17}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 251
    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    .line 252
    goto :goto_2

    .line 246
    :catch_0
    move-exception v9

    .line 247
    .local v9, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    invoke-static {v9, v4, v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lrx/internal/operators/cb$c;, "Lrx/internal/operators/cb$c<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cb$c;->e:Z

    .line 163
    invoke-virtual {p0}, Lrx/internal/operators/cb$c;->c()V

    .line 164
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    .local p0, "this":Lrx/internal/operators/cb$c;, "Lrx/internal/operators/cb$c<TT;TR;>;"
    iput-object p1, p0, Lrx/internal/operators/cb$c;->f:Ljava/lang/Throwable;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cb$c;->e:Z

    .line 157
    invoke-virtual {p0}, Lrx/internal/operators/cb$c;->c()V

    .line 158
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/cb$c;, "Lrx/internal/operators/cb$c<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/cb$c;->a:Lrx/c/p;

    invoke-interface {v3, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v2, "observable":Lrx/e;, "Lrx/e<+TR;>;"
    iget-boolean v3, p0, Lrx/internal/operators/cb$c;->g:Z

    if-eqz v3, :cond_1

    .line 151
    .end local v2    # "observable":Lrx/e;, "Lrx/e<+TR;>;"
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lrx/internal/operators/cb$c;->c:Lrx/l;

    invoke-static {v0, v3, p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "observable":Lrx/e;, "Lrx/e<+TR;>;"
    :cond_1
    new-instance v1, Lrx/internal/operators/cb$a;

    iget v3, p0, Lrx/internal/operators/cb$c;->b:I

    invoke-direct {v1, p0, v3}, Lrx/internal/operators/cb$a;-><init>(Lrx/internal/operators/cb$c;I)V

    .line 140
    .local v1, "inner":Lrx/internal/operators/cb$a;, "Lrx/internal/operators/cb$a<TR;>;"
    iget-object v4, p0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    monitor-enter v4

    .line 141
    :try_start_1
    iget-boolean v3, p0, Lrx/internal/operators/cb$c;->g:Z

    if-eqz v3, :cond_2

    .line 142
    monitor-exit v4

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 144
    :cond_2
    :try_start_2
    iget-object v3, p0, Lrx/internal/operators/cb$c;->d:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    iget-boolean v3, p0, Lrx/internal/operators/cb$c;->g:Z

    if-nez v3, :cond_0

    .line 149
    invoke-virtual {v2, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 150
    invoke-virtual {p0}, Lrx/internal/operators/cb$c;->c()V

    goto :goto_0
.end method
