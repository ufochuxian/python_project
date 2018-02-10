.class Lrx/b$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$5;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lrx/m;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lrx/d;

.field final synthetic e:Lrx/b$5;


# direct methods
.method constructor <init>(Lrx/b$5;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lrx/d;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lrx/b$5$1;->e:Lrx/b$5;

    iput-object p2, p0, Lrx/b$5$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/b$5$1;->c:Ljava/lang/Object;

    iput-object p4, p0, Lrx/b$5$1;->d:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 932
    iget-object v1, p0, Lrx/b$5$1;->a:Lrx/m;

    invoke-interface {v1}, Lrx/m;->unsubscribe()V

    .line 933
    iget-object v1, p0, Lrx/b$5$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    :try_start_0
    iget-object v1, p0, Lrx/b$5$1;->e:Lrx/b$5;

    iget-object v1, v1, Lrx/b$5;->c:Lrx/c/c;

    iget-object v2, p0, Lrx/b$5$1;->c:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 4

    .prologue
    .line 944
    iget-object v1, p0, Lrx/b$5$1;->e:Lrx/b$5;

    iget-boolean v1, v1, Lrx/b$5;->d:Z

    if-eqz v1, :cond_0

    .line 945
    iget-object v1, p0, Lrx/b$5$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    :try_start_0
    iget-object v1, p0, Lrx/b$5$1;->e:Lrx/b$5;

    iget-object v1, v1, Lrx/b$5;->c:Lrx/c/c;

    iget-object v2, p0, Lrx/b$5$1;->c:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :cond_0
    iget-object v1, p0, Lrx/b$5$1;->d:Lrx/d;

    invoke-interface {v1}, Lrx/d;->onCompleted()V

    .line 957
    iget-object v1, p0, Lrx/b$5$1;->e:Lrx/b$5;

    iget-boolean v1, v1, Lrx/b$5;->d:Z

    if-nez v1, :cond_1

    .line 958
    invoke-virtual {p0}, Lrx/b$5$1;->a()V

    .line 960
    :cond_1
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/b$5$1;->d:Lrx/d;

    invoke-interface {v1, v0}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 964
    iget-object v2, p0, Lrx/b$5$1;->e:Lrx/b$5;

    iget-boolean v2, v2, Lrx/b$5;->d:Z

    if-eqz v2, :cond_0

    .line 965
    iget-object v2, p0, Lrx/b$5$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    :try_start_0
    iget-object v2, p0, Lrx/b$5$1;->e:Lrx/b$5;

    iget-object v2, v2, Lrx/b$5;->c:Lrx/c/c;

    iget-object v3, p0, Lrx/b$5$1;->c:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :cond_0
    :goto_0
    iget-object v2, p0, Lrx/b$5$1;->d:Lrx/d;

    invoke-interface {v2, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 976
    iget-object v2, p0, Lrx/b$5$1;->e:Lrx/b$5;

    iget-boolean v2, v2, Lrx/b$5;->d:Z

    if-nez v2, :cond_1

    .line 977
    invoke-virtual {p0}, Lrx/b$5$1;->a()V

    .line 979
    :cond_1
    return-void

    .line 968
    :catch_0
    move-exception v1

    .line 969
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v4

    aput-object v1, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 2
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 983
    iput-object p1, p0, Lrx/b$5$1;->a:Lrx/m;

    .line 984
    iget-object v0, p0, Lrx/b$5$1;->d:Lrx/d;

    new-instance v1, Lrx/b$5$1$1;

    invoke-direct {v1, p0}, Lrx/b$5$1$1;-><init>(Lrx/b$5$1;)V

    invoke-static {v1}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 990
    return-void
.end method
