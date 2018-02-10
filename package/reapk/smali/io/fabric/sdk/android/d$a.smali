.class public Lio/fabric/sdk/android/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:[Lio/fabric/sdk/android/i;

.field private c:Lio/fabric/sdk/android/services/concurrency/j;

.field private d:Landroid/os/Handler;

.field private e:Lio/fabric/sdk/android/l;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lio/fabric/sdk/android/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/g",
            "<",
            "Lio/fabric/sdk/android/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lio/fabric/sdk/android/d$a;->a:Landroid/content/Context;

    .line 96
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;)Lio/fabric/sdk/android/d$a;
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    return-object p0
.end method

.method public a(Lio/fabric/sdk/android/g;)Lio/fabric/sdk/android/d$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/g",
            "<",
            "Lio/fabric/sdk/android/d;",
            ">;)",
            "Lio/fabric/sdk/android/d$a;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "initializationCallback":Lio/fabric/sdk/android/g;, "Lio/fabric/sdk/android/g<Lio/fabric/sdk/android/d;>;"
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initializationCallback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->i:Lio/fabric/sdk/android/g;

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initializationCallback already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/d$a;->i:Lio/fabric/sdk/android/g;

    .line 220
    return-object p0
.end method

.method public a(Lio/fabric/sdk/android/l;)Lio/fabric/sdk/android/d$a;
    .locals 2
    .param p1, "logger"    # Lio/fabric/sdk/android/l;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Logger must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->e:Lio/fabric/sdk/android/l;

    if-eqz v0, :cond_1

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Logger already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/d$a;->e:Lio/fabric/sdk/android/l;

    .line 155
    return-object p0
.end method

.method public a(Lio/fabric/sdk/android/services/concurrency/j;)Lio/fabric/sdk/android/d$a;
    .locals 2
    .param p1, "threadPoolExecutor"    # Lio/fabric/sdk/android/services/concurrency/j;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PriorityThreadPoolExecutor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->c:Lio/fabric/sdk/android/services/concurrency/j;

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PriorityThreadPoolExecutor already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/d$a;->c:Lio/fabric/sdk/android/services/concurrency/j;

    .line 131
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lio/fabric/sdk/android/d$a;
    .locals 2
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appIdentifier must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "appIdentifier already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/d$a;->h:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)Lio/fabric/sdk/android/d$a;
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    return-object p0
.end method

.method public a(Z)Lio/fabric/sdk/android/d$a;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lio/fabric/sdk/android/d$a;->f:Z

    .line 203
    return-object p0
.end method

.method public varargs a([Lio/fabric/sdk/android/i;)Lio/fabric/sdk/android/d$a;
    .locals 2
    .param p1, "kits"    # [Lio/fabric/sdk/android/i;

    .prologue
    .line 102
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->b:[Lio/fabric/sdk/android/i;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Lio/fabric/sdk/android/d$a;->b:[Lio/fabric/sdk/android/i;

    .line 107
    return-object p0
.end method

.method public a()Lio/fabric/sdk/android/d;
    .locals 10

    .prologue
    .line 227
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->c:Lio/fabric/sdk/android/services/concurrency/j;

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lio/fabric/sdk/android/services/concurrency/j;->a()Lio/fabric/sdk/android/services/concurrency/j;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/d$a;->c:Lio/fabric/sdk/android/services/concurrency/j;

    .line 231
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/fabric/sdk/android/d$a;->d:Landroid/os/Handler;

    .line 235
    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->e:Lio/fabric/sdk/android/l;

    if-nez v0, :cond_2

    .line 236
    iget-boolean v0, p0, Lio/fabric/sdk/android/d$a;->f:Z

    if-eqz v0, :cond_5

    .line 237
    new-instance v0, Lio/fabric/sdk/android/c;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lio/fabric/sdk/android/c;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/d$a;->e:Lio/fabric/sdk/android/l;

    .line 244
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 245
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/d$a;->h:Ljava/lang/String;

    .line 248
    :cond_3
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->i:Lio/fabric/sdk/android/g;

    if-nez v0, :cond_4

    .line 249
    sget-object v0, Lio/fabric/sdk/android/g;->d:Lio/fabric/sdk/android/g;

    iput-object v0, p0, Lio/fabric/sdk/android/d$a;->i:Lio/fabric/sdk/android/g;

    .line 253
    :cond_4
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->b:[Lio/fabric/sdk/android/i;

    if-nez v0, :cond_6

    .line 254
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v2, "kitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/fabric/sdk/android/i;>;Lio/fabric/sdk/android/i;>;"
    :goto_1
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 261
    .local v1, "appContext":Landroid/content/Context;
    new-instance v8, Lio/fabric/sdk/android/services/common/IdManager;

    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->h:Ljava/lang/String;

    iget-object v3, p0, Lio/fabric/sdk/android/d$a;->g:Ljava/lang/String;

    .line 262
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v1, v0, v3, v4}, Lio/fabric/sdk/android/services/common/IdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 264
    .local v8, "idManager":Lio/fabric/sdk/android/services/common/IdManager;
    new-instance v0, Lio/fabric/sdk/android/d;

    iget-object v3, p0, Lio/fabric/sdk/android/d$a;->c:Lio/fabric/sdk/android/services/concurrency/j;

    iget-object v4, p0, Lio/fabric/sdk/android/d$a;->d:Landroid/os/Handler;

    iget-object v5, p0, Lio/fabric/sdk/android/d$a;->e:Lio/fabric/sdk/android/l;

    iget-boolean v6, p0, Lio/fabric/sdk/android/d$a;->f:Z

    iget-object v7, p0, Lio/fabric/sdk/android/d$a;->i:Lio/fabric/sdk/android/g;

    iget-object v9, p0, Lio/fabric/sdk/android/d$a;->a:Landroid/content/Context;

    .line 265
    invoke-static {v9}, Lio/fabric/sdk/android/d;->c(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lio/fabric/sdk/android/d;-><init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/j;Landroid/os/Handler;Lio/fabric/sdk/android/l;ZLio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/common/IdManager;Landroid/app/Activity;)V

    .line 264
    return-object v0

    .line 239
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "kitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/fabric/sdk/android/i;>;Lio/fabric/sdk/android/i;>;"
    .end local v8    # "idManager":Lio/fabric/sdk/android/services/common/IdManager;
    :cond_5
    new-instance v0, Lio/fabric/sdk/android/c;

    invoke-direct {v0}, Lio/fabric/sdk/android/c;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/d$a;->e:Lio/fabric/sdk/android/l;

    goto :goto_0

    .line 256
    :cond_6
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->b:[Lio/fabric/sdk/android/i;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/d;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .restart local v2    # "kitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/fabric/sdk/android/i;>;Lio/fabric/sdk/android/i;>;"
    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lio/fabric/sdk/android/d$a;
    .locals 2
    .param p1, "appInstallIdentifier"    # Ljava/lang/String;

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appInstallIdentifier must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/d$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "appInstallIdentifier already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/d$a;->g:Ljava/lang/String;

    .line 195
    return-object p0
.end method
