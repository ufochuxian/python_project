.class public abstract Lio/fabric/sdk/android/services/concurrency/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/concurrency/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/concurrency/a/a$a",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    .line 73
    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 84
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 153
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    if-nez p1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->d()Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 135
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a/a;->a()V

    .line 141
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->a(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/a/a;, "Lio/fabric/sdk/android/services/concurrency/a/a<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a/a;->a:Lio/fabric/sdk/android/services/concurrency/a/a$a;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/a/a$a;->b()Z

    move-result v0

    return v0
.end method
