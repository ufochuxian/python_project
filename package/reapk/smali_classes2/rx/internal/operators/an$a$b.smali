.class final Lrx/internal/operators/an$a$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/an$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/an$a$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TTRight;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/an$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/an$a;)V
    .locals 0

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/an$a$b;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.b;"
    iput-object p1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 298
    return-void
.end method


# virtual methods
.method a(ILrx/m;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "resource"    # Lrx/m;

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/operators/an$a$b;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.b;"
    const/4 v0, 0x0

    .line 220
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    monitor-enter v2

    .line 221
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-boolean v1, v1, Lrx/internal/operators/an$a;->e:Z

    if-eqz v1, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 224
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    if-eqz v0, :cond_1

    .line 226
    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    .line 227
    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->unsubscribe()V

    .line 231
    :goto_0
    return-void

    .line 224
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 229
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v1, p2}, Lrx/i/b;->b(Lrx/m;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 4

    .prologue
    .line 282
    .local p0, "this":Lrx/internal/operators/an$a$b;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.b;"
    const/4 v0, 0x0

    .line 283
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    monitor-enter v2

    .line 284
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/an$a;->e:Z

    .line 285
    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-boolean v1, v1, Lrx/internal/operators/an$a;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    :cond_0
    const/4 v0, 0x1

    .line 288
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    if-eqz v0, :cond_2

    .line 290
    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    .line 291
    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->unsubscribe()V

    .line 295
    :goto_0
    return-void

    .line 288
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 293
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v1, p0}, Lrx/i/b;->b(Lrx/m;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 276
    .local p0, "this":Lrx/internal/operators/an$a$b;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.b;"
    iget-object v0, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v0, v0, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 277
    iget-object v0, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v0, v0, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->unsubscribe()V

    .line 278
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRight;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lrx/internal/operators/an$a$b;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.b;"
    .local p1, "args":Ljava/lang/Object;, "TTRight;"
    iget-object v12, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    monitor-enter v12

    .line 238
    :try_start_0
    iget-object v11, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget v5, v11, Lrx/internal/operators/an$a;->f:I

    add-int/lit8 v13, v5, 0x1

    iput v13, v11, Lrx/internal/operators/an$a;->f:I

    .line 239
    .local v5, "id":I
    iget-object v11, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v11, v11, Lrx/internal/operators/an$a;->g:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v11, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget v3, v11, Lrx/internal/operators/an$a;->d:I

    .line 241
    .local v3, "highLeftId":I
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    new-instance v8, Lrx/i/e;

    invoke-direct {v8}, Lrx/i/e;-><init>()V

    .line 243
    .local v8, "md":Lrx/i/e;
    iget-object v11, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v11, v11, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v11, v8}, Lrx/i/b;->a(Lrx/m;)V

    .line 247
    :try_start_1
    iget-object v11, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v11, v11, Lrx/internal/operators/an$a;->h:Lrx/internal/operators/an;

    iget-object v11, v11, Lrx/internal/operators/an;->d:Lrx/c/p;

    invoke-interface {v11, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/e;

    .line 249
    .local v1, "duration":Lrx/e;, "Lrx/e<TTRightDuration;>;"
    new-instance v0, Lrx/internal/operators/an$a$b$a;

    invoke-direct {v0, p0, v5}, Lrx/internal/operators/an$a$b$a;-><init>(Lrx/internal/operators/an$a$b;I)V

    .line 250
    .local v0, "d2":Lrx/l;, "Lrx/l<TTRightDuration;>;"
    iget-object v11, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v11, v11, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v11, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 252
    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 255
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v6, "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    iget-object v12, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    monitor-enter v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :try_start_2
    iget-object v11, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    invoke-virtual {v11}, Lrx/internal/operators/an$a;->a()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 258
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v3, :cond_0

    .line 259
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 269
    .end local v0    # "d2":Lrx/l;, "Lrx/l<TTRightDuration;>;"
    .end local v1    # "duration":Lrx/e;, "Lrx/e<TTRightDuration;>;"
    .end local v6    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    :catch_0
    move-exception v10

    .line 270
    .local v10, "t":Ljava/lang/Throwable;
    invoke-static {v10, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    .line 272
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 241
    .end local v3    # "highLeftId":I
    .end local v5    # "id":I
    .end local v8    # "md":Lrx/i/e;
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 262
    .restart local v0    # "d2":Lrx/l;, "Lrx/l<TTRightDuration;>;"
    .restart local v1    # "duration":Lrx/e;, "Lrx/e<TTRightDuration;>;"
    .restart local v3    # "highLeftId":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "id":I
    .restart local v6    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    .restart local v8    # "md":Lrx/i/e;
    :cond_2
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 264
    :try_start_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 265
    .local v7, "lv":Ljava/lang/Object;, "TTLeft;"
    iget-object v11, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v11, v11, Lrx/internal/operators/an$a;->h:Lrx/internal/operators/an;

    iget-object v11, v11, Lrx/internal/operators/an;->e:Lrx/c/q;

    invoke-interface {v11, v7, p1}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 266
    .local v9, "result":Ljava/lang/Object;, "TR;"
    iget-object v11, p0, Lrx/internal/operators/an$a$b;->a:Lrx/internal/operators/an$a;

    iget-object v11, v11, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v11, v9}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method
