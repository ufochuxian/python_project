.class public abstract Lio/fabric/sdk/android/services/concurrency/d;
.super Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/a;
.implements Lio/fabric/sdk/android/services/concurrency/b;
.implements Lio/fabric/sdk/android/services/concurrency/g;
.implements Lio/fabric/sdk/android/services/concurrency/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/AsyncTask",
        "<TParams;TProgress;TResult;>;",
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
.field private final a:Lio/fabric/sdk/android/services/concurrency/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;-><init>()V

    .line 37
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/i;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/i;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/d;->a:Lio/fabric/sdk/android/services/concurrency/i;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lio/fabric/sdk/android/services/concurrency/k;)V
    .locals 2
    .param p1, "task"    # Lio/fabric/sdk/android/services/concurrency/k;

    .prologue
    .line 58
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/d;->c()Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->PENDING:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/d;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/b;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/b;->addDependency(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public final varargs a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "exec"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/d$a;

    invoke-direct {v0, p1, p0}, Lio/fabric/sdk/android/services/concurrency/d$a;-><init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/d;)V

    .line 43
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-super {p0, v0, p2}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    .line 44
    return-void
.end method

.method public synthetic addDependency(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/k;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/d;->a(Lio/fabric/sdk/android/services/concurrency/k;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/d;->b()Lio/fabric/sdk/android/services/concurrency/b;

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
    .line 101
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/d;->a:Lio/fabric/sdk/android/services/concurrency/i;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 48
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/concurrency/Priority;->compareTo(Lio/fabric/sdk/android/services/concurrency/g;Ljava/lang/Object;)I

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
    .line 66
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/d;->b()Lio/fabric/sdk/android/services/concurrency/b;

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
    .line 96
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/d;->b()Lio/fabric/sdk/android/services/concurrency/b;

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
    .line 76
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/d;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/g;->getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/d;->b()Lio/fabric/sdk/android/services/concurrency/b;

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
    .line 91
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/d;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/k;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/k;->setError(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public setFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 81
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/d;, "Lio/fabric/sdk/android/services/concurrency/d<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/d;->b()Lio/fabric/sdk/android/services/concurrency/b;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/g;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/k;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/k;->setFinished(Z)V

    .line 82
    return-void
.end method
