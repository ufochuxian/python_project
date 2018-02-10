.class final Lrx/internal/operators/dw$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "<-",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;

.field c:Lrx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field e:Z

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 72
    new-instance v0, Lrx/e/g;

    invoke-direct {v0, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    iput-object v0, p0, Lrx/internal/operators/dw$b;->a:Lrx/l;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    .line 74
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/dw$b;->c:Lrx/f;

    .line 149
    .local v0, "s":Lrx/f;, "Lrx/f<TT;>;"
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lrx/f;->onCompleted()V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/dw$b;->b()V

    .line 153
    iget-object v1, p0, Lrx/internal/operators/dw$b;->a:Lrx/l;

    iget-object v2, p0, Lrx/internal/operators/dw$b;->d:Lrx/e;

    invoke-virtual {v1, v2}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/dw$b;->c:Lrx/f;

    .line 162
    .local v0, "s":Lrx/f;, "Lrx/f<TT;>;"
    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 165
    :cond_0
    return-void
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lrx/internal/operators/dw$b;->c:Lrx/f;

    .line 257
    .local v0, "s":Lrx/f;, "Lrx/f<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/dw$b;->c:Lrx/f;

    .line 258
    iput-object v1, p0, Lrx/internal/operators/dw$b;->d:Lrx/e;

    .line 260
    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    .line 263
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/dw$b;->a:Lrx/l;

    invoke-virtual {v1, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 264
    invoke-virtual {p0}, Lrx/internal/operators/dw$b;->unsubscribe()V

    .line 265
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "o":Ljava/lang/Object;
    sget-object v3, Lrx/internal/operators/dw;->b:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 131
    invoke-virtual {p0}, Lrx/internal/operators/dw$b;->a()V

    goto :goto_1

    .line 133
    :cond_2
    invoke-static {v1}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    invoke-static {v1}, Lrx/internal/operators/v;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lrx/internal/operators/dw$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {v1}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    invoke-virtual {p0}, Lrx/internal/operators/dw$b;->d()V

    goto :goto_0

    .line 142
    :cond_4
    move-object v2, v1

    .line 143
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lrx/internal/operators/dw$b;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method b()V
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    invoke-static {}, Lrx/h/i;->K()Lrx/h/i;

    move-result-object v0

    .line 157
    .local v0, "bus":Lrx/h/i;, "Lrx/h/i<TT;>;"
    iput-object v0, p0, Lrx/internal/operators/dw$b;->c:Lrx/f;

    .line 158
    iput-object v0, p0, Lrx/internal/operators/dw$b;->d:Lrx/e;

    .line 159
    return-void
.end method

.method c()V
    .locals 6

    .prologue
    .line 205
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 206
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    if-eqz v3, :cond_2

    .line 207
    iget-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    if-nez v3, :cond_0

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 210
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    sget-object v5, Lrx/internal/operators/dw;->b:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v4

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 214
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 215
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 216
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    const/4 v1, 0x1

    .line 218
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 221
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lrx/internal/operators/dw$b;->a(Ljava/util/List;)V

    .line 222
    if-eqz v1, :cond_4

    .line 223
    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0}, Lrx/internal/operators/dw$b;->a()V

    .line 226
    :cond_4
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 227
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 228
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 229
    if-nez v0, :cond_5

    .line 230
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 231
    const/4 v2, 0x1

    .line 232
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 237
    if-nez v2, :cond_1

    .line 238
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 239
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 240
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 216
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "once":Z
    .end local v2    # "skipFinal":Z
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 234
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 235
    :try_start_6
    iget-object v3, p0, Lrx/internal/operators/dw$b;->a:Lrx/l;

    invoke-virtual {v3}, Lrx/l;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    if-nez v2, :cond_1

    .line 238
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 239
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 240
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 234
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 237
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 238
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 239
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 240
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_6
    throw v3

    :catchall_5
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3
.end method

.method d()V
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lrx/internal/operators/dw$b;->c:Lrx/f;

    .line 246
    .local v0, "s":Lrx/f;, "Lrx/f<TT;>;"
    iput-object v1, p0, Lrx/internal/operators/dw$b;->c:Lrx/f;

    .line 247
    iput-object v1, p0, Lrx/internal/operators/dw$b;->d:Lrx/e;

    .line 249
    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Lrx/f;->onCompleted()V

    .line 252
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/dw$b;->a:Lrx/l;

    invoke-virtual {v1}, Lrx/l;->onCompleted()V

    .line 253
    invoke-virtual {p0}, Lrx/internal/operators/dw$b;->unsubscribe()V

    .line 254
    return-void
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/dw$b;->e:Z

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 188
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    invoke-static {}, Lrx/internal/operators/v;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    monitor-exit v3

    .line 202
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 192
    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 193
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 194
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    invoke-virtual {p0, v1}, Lrx/internal/operators/dw$b;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    invoke-virtual {p0}, Lrx/internal/operators/dw$b;->d()V

    goto :goto_0

    .line 194
    .end local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 197
    .restart local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/dw$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/dw$b;->e:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 172
    monitor-exit v1

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {p0, p1}, Lrx/internal/operators/dw$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_0
    iget-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    if-eqz v3, :cond_2

    .line 86
    iget-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    if-nez v3, :cond_0

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 89
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v4

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 93
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 94
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 95
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    const/4 v1, 0x1

    .line 97
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 100
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lrx/internal/operators/dw$b;->a(Ljava/util/List;)V

    .line 101
    if-eqz v1, :cond_4

    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lrx/internal/operators/dw$b;->a(Ljava/lang/Object;)V

    .line 106
    :cond_4
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 107
    :try_start_2
    iget-object v0, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 108
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/dw$b;->f:Ljava/util/List;

    .line 109
    if-nez v0, :cond_5

    .line 110
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 111
    const/4 v2, 0x1

    .line 112
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 117
    if-nez v2, :cond_1

    .line 118
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 119
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 120
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 95
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "once":Z
    .end local v2    # "skipFinal":Z
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 114
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 115
    :try_start_6
    iget-object v3, p0, Lrx/internal/operators/dw$b;->a:Lrx/l;

    invoke-virtual {v3}, Lrx/l;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    if-nez v2, :cond_1

    .line 118
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 119
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 120
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 114
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 117
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 118
    iget-object v4, p0, Lrx/internal/operators/dw$b;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 119
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lrx/internal/operators/dw$b;->e:Z

    .line 120
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_6
    throw v3

    :catchall_5
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/dw$b;, "Lrx/internal/operators/dw$b<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/dw$b;->request(J)V

    .line 79
    return-void
.end method
