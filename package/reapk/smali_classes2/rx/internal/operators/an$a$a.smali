.class final Lrx/internal/operators/an$a$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/an$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/an$a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT",
        "Left;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/an$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/an$a;)V
    .locals 0

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/an$a$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.a;"
    iput-object p1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 186
    return-void
.end method


# virtual methods
.method protected a(ILrx/m;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "resource"    # Lrx/m;

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/operators/an$a$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.a;"
    const/4 v0, 0x0

    .line 112
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    invoke-virtual {v1}, Lrx/internal/operators/an$a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    invoke-virtual {v1}, Lrx/internal/operators/an$a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-boolean v1, v1, Lrx/internal/operators/an$a;->c:Z

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    .line 119
    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->unsubscribe()V

    .line 123
    :goto_0
    return-void

    .line 116
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 121
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v1, p2}, Lrx/i/b;->b(Lrx/m;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 4

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/an$a$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.a;"
    const/4 v0, 0x0

    .line 171
    .local v0, "complete":Z
    iget-object v2, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/an$a;->c:Z

    .line 173
    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-boolean v1, v1, Lrx/internal/operators/an$a;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    invoke-virtual {v1}, Lrx/internal/operators/an$a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x1

    .line 176
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v0, :cond_2

    .line 178
    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    .line 179
    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->unsubscribe()V

    .line 183
    :goto_0
    return-void

    .line 176
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 181
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v1, v1, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v1, p0}, Lrx/i/b;->b(Lrx/m;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    .local p0, "this":Lrx/internal/operators/an$a$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.a;"
    iget-object v0, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v0, v0, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 165
    iget-object v0, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v0, v0, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->unsubscribe()V

    .line 166
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Left;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/an$a$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a.a;"
    .local p1, "args":Ljava/lang/Object;, "TTLeft;"
    iget-object v11, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    monitor-enter v11

    .line 131
    :try_start_0
    iget-object v10, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget v5, v10, Lrx/internal/operators/an$a;->d:I

    add-int/lit8 v12, v5, 0x1

    iput v12, v10, Lrx/internal/operators/an$a;->d:I

    .line 132
    .local v5, "id":I
    iget-object v10, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    invoke-virtual {v10}, Lrx/internal/operators/an$a;->a()Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v10, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget v3, v10, Lrx/internal/operators/an$a;->f:I

    .line 134
    .local v3, "highRightId":I
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    iget-object v10, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v10, v10, Lrx/internal/operators/an$a;->h:Lrx/internal/operators/an;

    iget-object v10, v10, Lrx/internal/operators/an;->c:Lrx/c/p;

    invoke-interface {v10, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/e;

    .line 140
    .local v1, "duration":Lrx/e;, "Lrx/e<TTLeftDuration;>;"
    new-instance v0, Lrx/internal/operators/an$a$a$a;

    invoke-direct {v0, p0, v5}, Lrx/internal/operators/an$a$a$a;-><init>(Lrx/internal/operators/an$a$a;I)V

    .line 141
    .local v0, "d1":Lrx/l;, "Lrx/l<TTLeftDuration;>;"
    iget-object v10, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v10, v10, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v10, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 143
    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 145
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v8, "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    iget-object v11, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    :try_start_2
    iget-object v10, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v10, v10, Lrx/internal/operators/an$a;->g:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 148
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v3, :cond_0

    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 157
    .end local v0    # "d1":Lrx/l;, "Lrx/l<TTLeftDuration;>;"
    .end local v1    # "duration":Lrx/e;, "Lrx/e<TTLeftDuration;>;"
    .end local v8    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :catch_0
    move-exception v9

    .line 158
    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {v9, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    .line 160
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 134
    .end local v3    # "highRightId":I
    .end local v5    # "id":I
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 152
    .restart local v0    # "d1":Lrx/l;, "Lrx/l<TTLeftDuration;>;"
    .restart local v1    # "duration":Lrx/e;, "Lrx/e<TTLeftDuration;>;"
    .restart local v3    # "highRightId":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "id":I
    .restart local v8    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :cond_2
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 154
    .local v6, "r":Ljava/lang/Object;, "TTRight;"
    iget-object v10, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v10, v10, Lrx/internal/operators/an$a;->h:Lrx/internal/operators/an;

    iget-object v10, v10, Lrx/internal/operators/an;->e:Lrx/c/q;

    invoke-interface {v10, p1, v6}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 155
    .local v7, "result":Ljava/lang/Object;, "TR;"
    iget-object v10, p0, Lrx/internal/operators/an$a$a;->a:Lrx/internal/operators/an$a;

    iget-object v10, v10, Lrx/internal/operators/an$a;->b:Lrx/l;

    invoke-virtual {v10, v7}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method
