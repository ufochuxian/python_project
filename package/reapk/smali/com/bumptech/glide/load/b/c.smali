.class public Lcom/bumptech/glide/load/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/bumptech/glide/load/b/l;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/b/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/b/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/load/b/c$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/c$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/c;->c:Lcom/bumptech/glide/load/b/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/c;->b:Ljava/util/Map;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/c;->d:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    .local p3, "modelLoader":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TT;TY;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/b/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 155
    .local v0, "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;>;"
    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .restart local v0    # "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/b/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    sget-object v0, Lcom/bumptech/glide/load/b/c;->c:Lcom/bumptech/glide/load/b/l;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/b/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;)V

    .line 151
    return-void
.end method

.method private d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/b/c;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 164
    .local v0, "resourceToLoaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;>;"
    const/4 v1, 0x0

    .line 165
    .local v1, "result":Lcom/bumptech/glide/load/b/l;
    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/bumptech/glide/load/b/l;
    check-cast v1, Lcom/bumptech/glide/load/b/l;

    .line 169
    .restart local v1    # "result":Lcom/bumptech/glide/load/b/l;
    :cond_0
    return-object v1
.end method

.method private e(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/m;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/b/m",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    iget-object v5, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 174
    .local v3, "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    const/4 v4, 0x0

    .line 175
    .local v4, "result":Lcom/bumptech/glide/load/b/m;
    if-eqz v3, :cond_0

    .line 176
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/bumptech/glide/load/b/m;
    check-cast v4, Lcom/bumptech/glide/load/b/m;

    .line 179
    .restart local v4    # "result":Lcom/bumptech/glide/load/b/m;
    :cond_0
    if-nez v4, :cond_2

    .line 180
    iget-object v5, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 186
    .local v2, "registeredModelClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    iget-object v5, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 189
    .local v0, "currentResourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/bumptech/glide/load/b/m;
    check-cast v4, Lcom/bumptech/glide/load/b/m;

    .line 191
    .restart local v4    # "result":Lcom/bumptech/glide/load/b/m;
    if-eqz v4, :cond_1

    .line 199
    .end local v0    # "currentResourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "registeredModelClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :cond_2
    return-object v4
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;
    .locals 1
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;TY;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/b/c;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/b/m",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/b/c;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "result":Lcom/bumptech/glide/load/b/m;
    iget-object v2, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 54
    .local v0, "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/bumptech/glide/load/b/m;
    check-cast v1, Lcom/bumptech/glide/load/b/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .restart local v1    # "result":Lcom/bumptech/glide/load/b/m;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 50
    .end local v0    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    .end local v1    # "result":Lcom/bumptech/glide/load/b/m;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;)Lcom/bumptech/glide/load/b/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/b/m",
            "<TT;TY;>;)",
            "Lcom/bumptech/glide/load/b/m",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/b/m;, "Lcom/bumptech/glide/load/b/m<TT;TY;>;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/b/c;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v4, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 76
    .local v3, "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    if-nez v3, :cond_0

    .line 77
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 78
    .restart local v3    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    iget-object v4, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-interface {v3, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/b/m;

    .line 83
    .local v2, "previous":Lcom/bumptech/glide/load/b/m;
    if-eqz v2, :cond_2

    .line 86
    iget-object v4, p0, Lcom/bumptech/glide/load/b/c;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 87
    .local v0, "factories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const/4 v2, 0x0

    .line 94
    .end local v0    # "factories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-object v2

    .line 73
    .end local v2    # "previous":Lcom/bumptech/glide/load/b/m;
    .end local v3    # "resourceToFactories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lcom/bumptech/glide/load/b/m;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/b/l",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TY;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/c;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/l;

    move-result-object v1

    .line 127
    .local v1, "result":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TT;TY;>;"
    if-eqz v1, :cond_1

    .line 131
    sget-object v2, Lcom/bumptech/glide/load/b/c;->c:Lcom/bumptech/glide/load/b/l;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v2, 0x0

    .line 146
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    move-object v2, v1

    .line 134
    goto :goto_0

    .line 138
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/c;->e(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/m;

    move-result-object v0

    .line 139
    .local v0, "factory":Lcom/bumptech/glide/load/b/m;, "Lcom/bumptech/glide/load/b/m<TT;TY;>;"
    if-eqz v0, :cond_2

    .line 140
    iget-object v2, p0, Lcom/bumptech/glide/load/b/c;->d:Landroid/content/Context;

    invoke-interface {v0, v2, p0}, Lcom/bumptech/glide/load/b/m;->a(Landroid/content/Context;Lcom/bumptech/glide/load/b/c;)Lcom/bumptech/glide/load/b/l;

    move-result-object v1

    .line 141
    invoke-direct {p0, p1, p2, v1}, Lcom/bumptech/glide/load/b/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;)V

    :goto_1
    move-object v2, v1

    .line 146
    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/c;->c(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 126
    .end local v0    # "factory":Lcom/bumptech/glide/load/b/m;, "Lcom/bumptech/glide/load/b/m<TT;TY;>;"
    .end local v1    # "result":Lcom/bumptech/glide/load/b/l;, "Lcom/bumptech/glide/load/b/l<TT;TY;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
