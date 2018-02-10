.class public Lio/fabric/sdk/android/services/concurrency/f;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/a;
.implements Lio/fabric/sdk/android/services/concurrency/b;
.implements Lio/fabric/sdk/android/services/concurrency/g;
.implements Lio/fabric/sdk/android/services/concurrency/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Lio/fabric/sdk/android/services/concurrency/a;",
        "Lio/fabric/sdk/android/services/concurrency/b",
        "<",
        "Lio/fabric/sdk/android/services/concurrency/k;",
        ">;",
        "Lio/fabric/sdk/android/services/concurrency/g;",
        "Lio/fabric/sdk/android/services/concurrency/k;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/f;->a(Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/f;->b:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 40
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/f;->a(Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/f;->b:Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/b;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/b",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/k;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/g;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/k;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-static {p1}, Lio/fabric/sdk/android/services/concurrency/i;->isProperDelegate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/b;

    .line 105
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    new-instance p1, Lio/fabric/sdk/android/services/concurrency/i;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p1}, Lio/fabric/sdk/android/services/concurrency/i;-><init>()V

    goto :goto_0
.end method

.method public a(Lio/fabric/sdk/android/services/concurrency/k;)V
    .locals 1
    .param p1, "task"    # Lio/fabric/sdk/android/services/concurrency/k;

    .prologue
    .line 55
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/b;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/b;->addDependency(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public synthetic addDependency(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/k;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/f;->a(Lio/fabric/sdk/android/services/concurrency/k;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/b;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/b;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public b()Lio/fabric/sdk/android/services/concurrency/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/b",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/k;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/g;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/k;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/f;->b:Ljava/lang/Object;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/b;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 50
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/g;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDependencies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/b;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/b;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/k;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/k;->getError()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/g;->getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/k;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/k;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/k;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/k;->setError(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public setFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 75
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/f;, "Lio/fabric/sdk/android/services/concurrency/f<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/f;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/k;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/k;->setFinished(Z)V

    .line 76
    return-void
.end method
