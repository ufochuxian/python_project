.class final Lrx/internal/operators/bo$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/bo;
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
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Lrx/h$a;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field d:Z

.field final synthetic e:Lrx/internal/operators/bo;


# direct methods
.method public constructor <init>(Lrx/internal/operators/bo;Lrx/l;Lrx/h$a;)V
    .locals 1
    .param p3, "inner"    # Lrx/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;",
            "Lrx/h$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/bo$b;, "Lrx/internal/operators/bo<TT;>.b;"
    .local p2, "child":Lrx/l;, "Lrx/l<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/bo$b;->e:Lrx/internal/operators/bo;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 99
    iput-object p2, p0, Lrx/internal/operators/bo$b;->a:Lrx/l;

    .line 100
    iput-object p3, p0, Lrx/internal/operators/bo$b;->b:Lrx/h$a;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bo$b;->c:Ljava/util/List;

    .line 102
    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/bo$b;, "Lrx/internal/operators/bo<TT;>.b;"
    iget-object v0, p0, Lrx/internal/operators/bo$b;->b:Lrx/h$a;

    new-instance v1, Lrx/internal/operators/bo$b$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/bo$b$1;-><init>(Lrx/internal/operators/bo$b;)V

    iget-object v2, p0, Lrx/internal/operators/bo$b;->e:Lrx/internal/operators/bo;

    iget-wide v2, v2, Lrx/internal/operators/bo;->b:J

    iget-object v4, p0, Lrx/internal/operators/bo$b;->e:Lrx/internal/operators/bo;

    iget-wide v4, v4, Lrx/internal/operators/bo;->b:J

    iget-object v6, p0, Lrx/internal/operators/bo$b;->e:Lrx/internal/operators/bo;

    iget-object v6, v6, Lrx/internal/operators/bo;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h$a;->a(Lrx/c/b;JJLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 173
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/bo$b;, "Lrx/internal/operators/bo<TT;>.b;"
    .local p1, "chunkToEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 191
    .local v1, "emit":Z
    monitor-enter p0

    .line 192
    :try_start_0
    iget-boolean v4, p0, Lrx/internal/operators/bo$b;->d:Z

    if-eqz v4, :cond_1

    .line 193
    monitor-exit p0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/bo$b;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 196
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 198
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ne v0, p1, :cond_2

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 200
    const/4 v1, 0x1

    .line 204
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-eqz v1, :cond_0

    .line 207
    :try_start_1
    iget-object v4, p0, Lrx/internal/operators/bo$b;->a:Lrx/l;

    invoke-virtual {v4, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0

    .line 204
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method b()V
    .locals 6

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/operators/bo$b;, "Lrx/internal/operators/bo<TT;>.b;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/bo$b;->d:Z

    if-eqz v1, :cond_0

    .line 178
    monitor-exit p0

    .line 188
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/bo$b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v1, p0, Lrx/internal/operators/bo$b;->b:Lrx/h$a;

    new-instance v2, Lrx/internal/operators/bo$b$2;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/bo$b$2;-><init>(Lrx/internal/operators/bo$b;Ljava/util/List;)V

    iget-object v3, p0, Lrx/internal/operators/bo$b;->e:Lrx/internal/operators/bo;

    iget-wide v4, v3, Lrx/internal/operators/bo;->a:J

    iget-object v3, p0, Lrx/internal/operators/bo$b;->e:Lrx/internal/operators/bo;

    iget-object v3, v3, Lrx/internal/operators/bo;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/bo$b;, "Lrx/internal/operators/bo<TT;>.b;"
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    iget-boolean v4, p0, Lrx/internal/operators/bo$b;->d:Z

    if-eqz v4, :cond_0

    .line 150
    monitor-exit p0

    .line 165
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/bo$b;->d:Z

    .line 153
    new-instance v2, Ljava/util/LinkedList;

    iget-object v4, p0, Lrx/internal/operators/bo$b;->c:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v2, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/bo$b;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 155
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 157
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/bo$b;->a:Lrx/l;

    invoke-virtual {v4, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 159
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catch_0
    move-exception v3

    .line 160
    .local v3, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/bo$b;->a:Lrx/l;

    invoke-static {v3, v4}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0

    .line 155
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 163
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/bo$b;->a:Lrx/l;

    invoke-virtual {v4}, Lrx/l;->onCompleted()V

    .line 164
    invoke-virtual {p0}, Lrx/internal/operators/bo$b;->unsubscribe()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/bo$b;, "Lrx/internal/operators/bo<TT;>.b;"
    monitor-enter p0

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/bo$b;->d:Z

    if-eqz v0, :cond_0

    .line 135
    monitor-exit p0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/bo$b;->d:Z

    .line 138
    iget-object v0, p0, Lrx/internal/operators/bo$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, p0, Lrx/internal/operators/bo$b;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 141
    invoke-virtual {p0}, Lrx/internal/operators/bo$b;->unsubscribe()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/bo$b;, "Lrx/internal/operators/bo<TT;>.b;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 107
    .local v3, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v5, p0, Lrx/internal/operators/bo$b;->d:Z

    if-eqz v5, :cond_0

    .line 109
    monitor-exit p0

    .line 129
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v5, p0, Lrx/internal/operators/bo$b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    move-object v4, v3

    .line 112
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .local v4, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lrx/internal/operators/bo$b;->e:Lrx/internal/operators/bo;

    iget v6, v6, Lrx/internal/operators/bo;->d:I

    if-ne v5, v6, :cond_4

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 117
    if-nez v4, :cond_3

    .line 118
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :goto_2
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move-object v4, v3

    .line 122
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_1

    .line 123
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    if-eqz v4, :cond_2

    .line 125
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 126
    .restart local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/bo$b;->a:Lrx/l;

    invoke-virtual {v5, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    .line 123
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catchall_0
    move-exception v5

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_2
    move-object v3, v4

    .line 129
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_0

    .line 123
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_5

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_3
    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_2

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_4
    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_3
.end method
