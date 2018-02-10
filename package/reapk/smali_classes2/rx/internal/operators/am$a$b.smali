.class final Lrx/internal/operators/am$a$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/am$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/am$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/am$a;)V
    .locals 0

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/am$a$b;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a.b;"
    iput-object p1, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 201
    .local p0, "this":Lrx/internal/operators/am$a$b;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a.b;"
    const/4 v0, 0x0

    .line 202
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    iget-object v3, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lrx/internal/operators/am$a;->g:Z

    .line 204
    iget-object v2, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    iget-boolean v2, v2, Lrx/internal/operators/am$a;->h:Z

    if-eqz v2, :cond_0

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    invoke-virtual {v2}, Lrx/internal/operators/am$a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    invoke-virtual {v2}, Lrx/internal/operators/am$a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 207
    iget-object v2, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    iget-object v2, v2, Lrx/internal/operators/am$a;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 209
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    iget-object v2, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    invoke-virtual {v2, v0}, Lrx/internal/operators/am$a;->a(Ljava/util/List;)V

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/f<TT2;>;>;"
    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 215
    .local p0, "this":Lrx/internal/operators/am$a$b;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a.b;"
    iget-object v0, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    invoke-virtual {v0, p1}, Lrx/internal/operators/am$a;->a(Ljava/lang/Throwable;)V

    .line 216
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/am$a$b;, "Lrx/internal/operators/am<TT1;TT2;TD1;TD2;TR;>.a.b;"
    .local p1, "args":Ljava/lang/Object;, "TT1;"
    :try_start_0
    invoke-static {}, Lrx/h/c;->K()Lrx/h/c;

    move-result-object v6

    .line 166
    .local v6, "subj":Lrx/h/f;, "Lrx/h/f<TT2;TT2;>;"
    new-instance v7, Lrx/e/f;

    invoke-direct {v7, v6}, Lrx/e/f;-><init>(Lrx/f;)V

    .line 168
    .local v7, "subjSerial":Lrx/f;, "Lrx/f<TT2;>;"
    iget-object v12, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    iget-object v11, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    iget v3, v11, Lrx/internal/operators/am$a;->d:I

    add-int/lit8 v13, v3, 0x1

    iput v13, v11, Lrx/internal/operators/am$a;->d:I

    .line 170
    .local v3, "id":I
    iget-object v11, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    invoke-virtual {v11}, Lrx/internal/operators/am$a;->a()Ljava/util/Map;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    new-instance v11, Lrx/internal/operators/am$b;

    iget-object v12, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    iget-object v12, v12, Lrx/internal/operators/am$a;->a:Lrx/i/d;

    invoke-direct {v11, v6, v12}, Lrx/internal/operators/am$b;-><init>(Lrx/e;Lrx/i/d;)V

    invoke-static {v11}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v10

    .line 175
    .local v10, "window":Lrx/e;, "Lrx/e<TT2;>;"
    iget-object v11, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    iget-object v11, v11, Lrx/internal/operators/am$a;->i:Lrx/internal/operators/am;

    iget-object v11, v11, Lrx/internal/operators/am;->c:Lrx/c/p;

    invoke-interface {v11, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/e;

    .line 177
    .local v1, "duration":Lrx/e;, "Lrx/e<TD1;>;"
    new-instance v0, Lrx/internal/operators/am$a$a;

    iget-object v11, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    invoke-direct {v0, v11, v3}, Lrx/internal/operators/am$a$a;-><init>(Lrx/internal/operators/am$a;I)V

    .line 178
    .local v0, "d1":Lrx/l;, "Lrx/l<TD1;>;"
    iget-object v11, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    iget-object v11, v11, Lrx/internal/operators/am$a;->c:Lrx/i/b;

    invoke-virtual {v11, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 179
    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 181
    iget-object v11, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    iget-object v11, v11, Lrx/internal/operators/am$a;->i:Lrx/internal/operators/am;

    iget-object v11, v11, Lrx/internal/operators/am;->e:Lrx/c/q;

    invoke-interface {v11, p1, v10}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    .local v4, "result":Ljava/lang/Object;, "TR;"
    iget-object v12, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    iget-object v11, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    iget-object v11, v11, Lrx/internal/operators/am$a;->f:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v5, "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    :try_start_4
    iget-object v11, p0, Lrx/internal/operators/am$a$b;->a:Lrx/internal/operators/am$a;

    iget-object v11, v11, Lrx/internal/operators/am$a;->b:Lrx/l;

    invoke-virtual {v11, v4}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 189
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 190
    .local v9, "t2":Ljava/lang/Object;, "TT2;"
    invoke-interface {v7, v9}, Lrx/f;->onNext(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 194
    .end local v0    # "d1":Lrx/l;, "Lrx/l<TD1;>;"
    .end local v1    # "duration":Lrx/e;, "Lrx/e<TD1;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "result":Ljava/lang/Object;, "TR;"
    .end local v5    # "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    .end local v6    # "subj":Lrx/h/f;, "Lrx/h/f<TT2;TT2;>;"
    .end local v7    # "subjSerial":Lrx/f;, "Lrx/f<TT2;>;"
    .end local v9    # "t2":Ljava/lang/Object;, "TT2;"
    .end local v10    # "window":Lrx/e;, "Lrx/e<TT2;>;"
    :catch_0
    move-exception v8

    .line 195
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v8, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    .line 197
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 171
    .restart local v6    # "subj":Lrx/h/f;, "Lrx/h/f<TT2;TT2;>;"
    .restart local v7    # "subjSerial":Lrx/f;, "Lrx/f<TT2;>;"
    :catchall_0
    move-exception v11

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 186
    .restart local v0    # "d1":Lrx/l;, "Lrx/l<TD1;>;"
    .restart local v1    # "duration":Lrx/e;, "Lrx/e<TD1;>;"
    .restart local v3    # "id":I
    .restart local v4    # "result":Ljava/lang/Object;, "TR;"
    .restart local v10    # "window":Lrx/e;, "Lrx/e<TT2;>;"
    :catchall_1
    move-exception v11

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v11
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
