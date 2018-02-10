.class final Lrx/internal/operators/bo$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
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

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
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
    .line 222
    .local p0, "this":Lrx/internal/operators/bo$a;, "Lrx/internal/operators/bo<TT;>.a;"
    .local p2, "child":Lrx/l;, "Lrx/l<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/bo$a;->e:Lrx/internal/operators/bo;

    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 223
    iput-object p2, p0, Lrx/internal/operators/bo$a;->a:Lrx/l;

    .line 224
    iput-object p3, p0, Lrx/internal/operators/bo$a;->b:Lrx/h$a;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    .line 226
    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/bo$a;, "Lrx/internal/operators/bo<TT;>.a;"
    iget-object v0, p0, Lrx/internal/operators/bo$a;->b:Lrx/h$a;

    new-instance v1, Lrx/internal/operators/bo$a$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/bo$a$1;-><init>(Lrx/internal/operators/bo$a;)V

    iget-object v2, p0, Lrx/internal/operators/bo$a;->e:Lrx/internal/operators/bo;

    iget-wide v2, v2, Lrx/internal/operators/bo;->a:J

    iget-object v4, p0, Lrx/internal/operators/bo$a;->e:Lrx/internal/operators/bo;

    iget-wide v4, v4, Lrx/internal/operators/bo;->a:J

    iget-object v6, p0, Lrx/internal/operators/bo$a;->e:Lrx/internal/operators/bo;

    iget-object v6, v6, Lrx/internal/operators/bo;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h$a;->a(Lrx/c/b;JJLjava/util/concurrent/TimeUnit;)Lrx/m;

    .line 287
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 290
    .local p0, "this":Lrx/internal/operators/bo$a;, "Lrx/internal/operators/bo<TT;>.a;"
    monitor-enter p0

    .line 291
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/bo$a;->d:Z

    if-eqz v2, :cond_0

    .line 292
    monitor-exit p0

    .line 302
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    .line 295
    .local v1, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    .line 296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/bo$a;->a:Lrx/l;

    invoke-virtual {v2, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0

    .line 296
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 262
    .local p0, "this":Lrx/internal/operators/bo$a;, "Lrx/internal/operators/bo<TT;>.a;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/bo$a;->b:Lrx/h$a;

    invoke-virtual {v2}, Lrx/h$a;->unsubscribe()V

    .line 264
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/bo$a;->d:Z

    if-eqz v2, :cond_0

    .line 266
    monitor-exit p0

    .line 279
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/bo$a;->d:Z

    .line 269
    iget-object v1, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    .line 270
    .local v1, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    .line 271
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :try_start_2
    iget-object v2, p0, Lrx/internal/operators/bo$a;->a:Lrx/l;

    invoke-virtual {v2, v1}, Lrx/l;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    iget-object v2, p0, Lrx/internal/operators/bo$a;->a:Lrx/l;

    invoke-virtual {v2}, Lrx/l;->onCompleted()V

    .line 278
    invoke-virtual {p0}, Lrx/internal/operators/bo$a;->unsubscribe()V

    goto :goto_0

    .line 271
    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/bo$a;->a:Lrx/l;

    invoke-static {v0, v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/f;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    .local p0, "this":Lrx/internal/operators/bo$a;, "Lrx/internal/operators/bo<TT;>.a;"
    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/bo$a;->d:Z

    if-eqz v0, :cond_0

    .line 250
    monitor-exit p0

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/bo$a;->d:Z

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    .line 254
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v0, p0, Lrx/internal/operators/bo$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 256
    invoke-virtual {p0}, Lrx/internal/operators/bo$a;->unsubscribe()V

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/bo$a;, "Lrx/internal/operators/bo<TT;>.a;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 231
    .local v0, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 232
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/bo$a;->d:Z

    if-eqz v1, :cond_1

    .line 233
    monitor-exit p0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lrx/internal/operators/bo$a;->e:Lrx/internal/operators/bo;

    iget v2, v2, Lrx/internal/operators/bo;->d:I

    if-ne v1, v2, :cond_2

    .line 237
    iget-object v0, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/bo$a;->c:Ljava/util/List;

    .line 240
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lrx/internal/operators/bo$a;->a:Lrx/l;

    invoke-virtual {v1, v0}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
