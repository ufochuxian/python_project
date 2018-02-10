.class public abstract Lio/fabric/sdk/android/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/fabric/sdk/android/i;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final dependsOnAnnotation:Lio/fabric/sdk/android/services/concurrency/c;

.field fabric:Lio/fabric/sdk/android/d;

.field idManager:Lio/fabric/sdk/android/services/common/IdManager;

.field initializationCallback:Lio/fabric/sdk/android/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/g",
            "<TResult;>;"
        }
    .end annotation
.end field

.field initializationTask:Lio/fabric/sdk/android/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/h",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lio/fabric/sdk/android/h;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/h;-><init>(Lio/fabric/sdk/android/i;)V

    iput-object v0, p0, Lio/fabric/sdk/android/i;->initializationTask:Lio/fabric/sdk/android/h;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/fabric/sdk/android/services/concurrency/c;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/c;

    iput-object v0, p0, Lio/fabric/sdk/android/i;->dependsOnAnnotation:Lio/fabric/sdk/android/services/concurrency/c;

    .line 47
    return-void
.end method


# virtual methods
.method public compareTo(Lio/fabric/sdk/android/i;)I
    .locals 3
    .param p1, "another"    # Lio/fabric/sdk/android/i;

    .prologue
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 145
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/i;->containsAnnotatedDependency(Lio/fabric/sdk/android/i;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-virtual {p1, p0}, Lio/fabric/sdk/android/i;->containsAnnotatedDependency(Lio/fabric/sdk/android/i;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Lio/fabric/sdk/android/i;->hasAnnotatedDependency()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lio/fabric/sdk/android/i;->hasAnnotatedDependency()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lio/fabric/sdk/android/i;->hasAnnotatedDependency()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lio/fabric/sdk/android/i;->hasAnnotatedDependency()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    check-cast p1, Lio/fabric/sdk/android/i;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/i;->compareTo(Lio/fabric/sdk/android/i;)I

    move-result v0

    return v0
.end method

.method containsAnnotatedDependency(Lio/fabric/sdk/android/i;)Z
    .locals 6
    .param p1, "target"    # Lio/fabric/sdk/android/i;

    .prologue
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    const/4 v2, 0x0

    .line 163
    invoke-virtual {p0}, Lio/fabric/sdk/android/i;->hasAnnotatedDependency()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lio/fabric/sdk/android/i;->dependsOnAnnotation:Lio/fabric/sdk/android/services/concurrency/c;

    invoke-interface {v3}, Lio/fabric/sdk/android/services/concurrency/c;->a()[Ljava/lang/Class;

    move-result-object v1

    .line 165
    .local v1, "deps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 166
    .local v0, "dep":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    const/4 v2, 0x1

    .line 171
    .end local v0    # "dep":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "deps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    return v2

    .line 165
    .restart local v0    # "dep":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "deps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/i;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getDependencies()Ljava/util/Collection;
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
    .line 183
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/i;->initializationTask:Lio/fabric/sdk/android/h;

    invoke-virtual {v0}, Lio/fabric/sdk/android/h;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFabric()Lio/fabric/sdk/android/d;
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/i;->fabric:Lio/fabric/sdk/android/d;

    return-object v0
.end method

.method protected getIdManager()Lio/fabric/sdk/android/services/common/IdManager;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/i;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    return-object v0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".Fabric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method hasAnnotatedDependency()Z
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/i;->dependsOnAnnotation:Lio/fabric/sdk/android/services/concurrency/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final initialize()V
    .locals 5

    .prologue
    .line 69
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    iget-object v1, p0, Lio/fabric/sdk/android/i;->initializationTask:Lio/fabric/sdk/android/h;

    iget-object v0, p0, Lio/fabric/sdk/android/i;->fabric:Lio/fabric/sdk/android/d;

    invoke-virtual {v0}, Lio/fabric/sdk/android/d;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/fabric/sdk/android/h;->a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/d;Lio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/common/IdManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fabric"    # Lio/fabric/sdk/android/d;
    .param p4, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/d;",
            "Lio/fabric/sdk/android/g",
            "<TResult;>;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    .local p3, "callback":Lio/fabric/sdk/android/g;, "Lio/fabric/sdk/android/g<TResult;>;"
    iput-object p2, p0, Lio/fabric/sdk/android/i;->fabric:Lio/fabric/sdk/android/d;

    .line 60
    new-instance v0, Lio/fabric/sdk/android/e;

    invoke-virtual {p0}, Lio/fabric/sdk/android/i;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/fabric/sdk/android/i;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/fabric/sdk/android/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/i;->context:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lio/fabric/sdk/android/i;->initializationCallback:Lio/fabric/sdk/android/g;

    .line 62
    iput-object p4, p0, Lio/fabric/sdk/android/i;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 63
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()Z
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lio/fabric/sdk/android/i;, "Lio/fabric/sdk/android/i<TResult;>;"
    const/4 v0, 0x1

    return v0
.end method
