.class Lrx/b$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$11;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/d;

.field final synthetic b:Lrx/b$11;


# direct methods
.method constructor <init>(Lrx/b$11;Lrx/d;)V
    .locals 0

    .prologue
    .line 1368
    iput-object p1, p0, Lrx/b$11$1;->b:Lrx/b$11;

    iput-object p2, p0, Lrx/b$11$1;->a:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 1373
    :try_start_0
    iget-object v1, p0, Lrx/b$11$1;->b:Lrx/b$11;

    iget-object v1, v1, Lrx/b$11;->a:Lrx/c/b;

    invoke-interface {v1}, Lrx/c/b;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    iget-object v1, p0, Lrx/b$11$1;->a:Lrx/d;

    invoke-interface {v1}, Lrx/d;->onCompleted()V

    .line 1382
    :try_start_1
    iget-object v1, p0, Lrx/b$11$1;->b:Lrx/b$11;

    iget-object v1, v1, Lrx/b$11;->b:Lrx/c/b;

    invoke-interface {v1}, Lrx/c/b;->call()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1386
    :goto_0
    return-void

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/b$11$1;->a:Lrx/d;

    invoke-interface {v1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1383
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1384
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1391
    :try_start_0
    iget-object v2, p0, Lrx/b$11$1;->b:Lrx/b$11;

    iget-object v2, v2, Lrx/b$11;->c:Lrx/c/c;

    invoke-interface {v2, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_0
    iget-object v2, p0, Lrx/b$11$1;->a:Lrx/d;

    invoke-interface {v2, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 1399
    :try_start_1
    iget-object v2, p0, Lrx/b$11$1;->b:Lrx/b$11;

    iget-object v2, v2, Lrx/b$11;->b:Lrx/c/b;

    invoke-interface {v2}, Lrx/c/b;->call()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1403
    :goto_1
    return-void

    .line 1392
    :catch_0
    move-exception v1

    .line 1393
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 1400
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1401
    .restart local v1    # "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 3
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 1409
    :try_start_0
    iget-object v1, p0, Lrx/b$11$1;->b:Lrx/b$11;

    iget-object v1, v1, Lrx/b$11;->d:Lrx/c/c;

    invoke-interface {v1, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    iget-object v1, p0, Lrx/b$11$1;->a:Lrx/d;

    new-instance v2, Lrx/b$11$1$1;

    invoke-direct {v2, p0, p1}, Lrx/b$11$1$1;-><init>(Lrx/b$11$1;Lrx/m;)V

    invoke-static {v2}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 1428
    :goto_0
    return-void

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {p1}, Lrx/m;->unsubscribe()V

    .line 1412
    iget-object v1, p0, Lrx/b$11$1;->a:Lrx/d;

    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 1413
    iget-object v1, p0, Lrx/b$11$1;->a:Lrx/d;

    invoke-interface {v1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
