.class public final Lrx/h/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f",
        "<TT;>;"
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

.field b:Z

.field c:Z

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

.field volatile f:Z

.field private volatile g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .local p1, "actual":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/g$b;->b:Z

    .line 219
    iput-object p1, p0, Lrx/h/g$b;->a:Lrx/l;

    .line 220
    return-void
.end method


# virtual methods
.method a()Lrx/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/f",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    iget-object v0, p0, Lrx/h/g$b;->a:Lrx/l;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    .line 240
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    iget-boolean v0, p0, Lrx/h/g$b;->e:Z

    if-nez v0, :cond_2

    .line 241
    monitor-enter p0

    .line 242
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lrx/h/g$b;->b:Z

    .line 243
    iget-boolean v0, p0, Lrx/h/g$b;->c:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lrx/h/g$b;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/h/g$b;->d:Ljava/util/List;

    .line 247
    :cond_0
    iget-object v0, p0, Lrx/h/g$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit p0

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/h/g$b;->e:Z

    .line 253
    :cond_2
    iget-object v0, p0, Lrx/h/g$b;->a:Lrx/l;

    invoke-static {v0, p1}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Ljava/util/List;Ljava/lang/Object;)V
    .locals 6
    .param p2, "current"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .local p1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .line 280
    .local v2, "once":Z
    const/4 v3, 0x0

    .line 283
    .local v3, "skipFinal":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 284
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 285
    .local v1, "n":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lrx/h/g$b;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 303
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "n":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    if-nez v3, :cond_0

    .line 304
    monitor-enter p0

    .line 305
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lrx/h/g$b;->c:Z

    .line 306
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_0
    throw v4

    .line 288
    :cond_1
    if-eqz v2, :cond_2

    .line 289
    const/4 v2, 0x0

    .line 290
    :try_start_2
    invoke-virtual {p0, p2}, Lrx/h/g$b;->c(Ljava/lang/Object;)V

    .line 292
    :cond_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    :try_start_3
    iget-object p1, p0, Lrx/h/g$b;->d:Ljava/util/List;

    .line 294
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/h/g$b;->d:Ljava/util/List;

    .line 295
    if-nez p1, :cond_4

    .line 296
    const/4 v4, 0x0

    iput-boolean v4, p0, Lrx/h/g$b;->c:Z

    .line 297
    const/4 v3, 0x1

    .line 298
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 303
    if-nez v3, :cond_3

    .line 304
    monitor-enter p0

    .line 305
    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, Lrx/h/g$b;->c:Z

    .line 306
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 309
    :cond_3
    return-void

    .line 300
    :cond_4
    :try_start_5
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 306
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    :catchall_3
    move-exception v4

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">()TI;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    iget-object v0, p0, Lrx/h/g$b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method b(Ljava/lang/Object;)V
    .locals 2
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    const/4 v0, 0x0

    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    iget-boolean v1, p0, Lrx/h/g$b;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lrx/h/g$b;->c:Z

    if-eqz v1, :cond_2

    .line 263
    :cond_0
    monitor-exit p0

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/h/g$b;->b:Z

    .line 266
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lrx/h/g$b;->c:Z

    .line 267
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    if-eqz p1, :cond_1

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lrx/h/g$b;->a(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method c(Ljava/lang/Object;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/Object;

    .prologue
    .line 316
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lrx/h/g$b;->a:Lrx/l;

    invoke-static {v0, p1}, Lrx/internal/operators/v;->a(Lrx/f;Ljava/lang/Object;)Z

    .line 319
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newIndex"    # Ljava/lang/Object;

    .prologue
    .line 338
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    iput-object p1, p0, Lrx/h/g$b;->g:Ljava/lang/Object;

    .line 339
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    iget-object v0, p0, Lrx/h/g$b;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 232
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 227
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    iget-object v0, p0, Lrx/h/g$b;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/h/g$b;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 224
    return-void
.end method
