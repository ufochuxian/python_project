.class Lio/fabric/sdk/android/h;
.super Lio/fabric/sdk/android/services/concurrency/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/d",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "KitInitialization"


# instance fields
.field final a:Lio/fabric/sdk/android/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/i",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/i",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lio/fabric/sdk/android/h;, "Lio/fabric/sdk/android/h<TResult;>;"
    .local p1, "kit":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/d;-><init>()V

    .line 34
    iput-object p1, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    .line 35
    return-void
.end method

.method private a(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/s;
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 91
    .local p0, "this":Lio/fabric/sdk/android/h;, "Lio/fabric/sdk/android/h<TResult;>;"
    new-instance v0, Lio/fabric/sdk/android/services/common/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    .line 92
    invoke-virtual {v2}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KitInitialization"

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v0, "timingMetric":Lio/fabric/sdk/android/services/common/s;
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/s;->a()V

    .line 94
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lio/fabric/sdk/android/h;, "Lio/fabric/sdk/android/h<TResult;>;"
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/h;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lio/fabric/sdk/android/h;, "Lio/fabric/sdk/android/h<TResult;>;"
    const-string v2, "doInBackground"

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/h;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/s;

    move-result-object v1

    .line 61
    .local v1, "timingMetric":Lio/fabric/sdk/android/services/common/s;
    const/4 v0, 0x0

    .line 62
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/h;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    invoke-virtual {v2}, Lio/fabric/sdk/android/i;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 66
    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    :cond_0
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/s;->b()V

    .line 67
    return-object v0
.end method

.method protected a()V
    .locals 7

    .prologue
    .local p0, "this":Lio/fabric/sdk/android/h;, "Lio/fabric/sdk/android/h<TResult;>;"
    const/4 v6, 0x1

    .line 39
    invoke-super {p0}, Lio/fabric/sdk/android/services/concurrency/d;->a()V

    .line 41
    const-string v3, "onPreExecute"

    invoke-direct {p0, v3}, Lio/fabric/sdk/android/h;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/s;

    move-result-object v2

    .line 42
    .local v2, "timingMetric":Lio/fabric/sdk/android/services/common/s;
    const/4 v1, 0x0

    .line 44
    .local v1, "result":Z
    :try_start_0
    iget-object v3, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    invoke-virtual {v3}, Lio/fabric/sdk/android/i;->onPreExecute()Z
    :try_end_0
    .catch Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 51
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/s;->b()V

    .line 52
    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0, v6}, Lio/fabric/sdk/android/h;->a(Z)Z

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v0    # "ex":Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/s;->b()V

    .line 52
    if-nez v1, :cond_1

    .line 53
    invoke-virtual {p0, v6}, Lio/fabric/sdk/android/h;->a(Z)Z

    :cond_1
    throw v3

    .line 48
    :catch_1
    move-exception v0

    .line 49
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Failure onPreExecute()"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/s;->b()V

    .line 52
    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0, v6}, Lio/fabric/sdk/android/h;->a(Z)Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lio/fabric/sdk/android/h;, "Lio/fabric/sdk/android/h<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/i;->onPostExecute(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    iget-object v0, v0, Lio/fabric/sdk/android/i;->initializationCallback:Lio/fabric/sdk/android/g;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/g;->a(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lio/fabric/sdk/android/h;, "Lio/fabric/sdk/android/h<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v2, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    invoke-virtual {v2, p1}, Lio/fabric/sdk/android/i;->onCancelled(Ljava/lang/Object;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    invoke-virtual {v3}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Initialization was cancelled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Lio/fabric/sdk/android/InitializationException;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/InitializationException;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "exception":Lio/fabric/sdk/android/InitializationException;
    iget-object v2, p0, Lio/fabric/sdk/android/h;->a:Lio/fabric/sdk/android/i;

    iget-object v2, v2, Lio/fabric/sdk/android/i;->initializationCallback:Lio/fabric/sdk/android/g;

    invoke-interface {v2, v0}, Lio/fabric/sdk/android/g;->a(Ljava/lang/Exception;)V

    .line 83
    return-void
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lio/fabric/sdk/android/h;, "Lio/fabric/sdk/android/h<TResult;>;"
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/Priority;->HIGH:Lio/fabric/sdk/android/services/concurrency/Priority;

    return-object v0
.end method