.class final Lokhttp3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/z$a;
    }
.end annotation


# instance fields
.field a:Lokhttp3/aa;

.field private final b:Lokhttp3/y;

.field private final c:Lokhttp3/internal/b/l;

.field private d:Z


# direct methods
.method protected constructor <init>(Lokhttp3/y;Lokhttp3/aa;)V
    .locals 1
    .param p1, "client"    # Lokhttp3/y;
    .param p2, "originalRequest"    # Lokhttp3/aa;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/z;->b:Lokhttp3/y;

    .line 45
    iput-object p2, p0, Lokhttp3/z;->a:Lokhttp3/aa;

    .line 46
    new-instance v0, Lokhttp3/internal/b/l;

    invoke-direct {v0, p1}, Lokhttp3/internal/b/l;-><init>(Lokhttp3/y;)V

    iput-object v0, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    .line 47
    return-void
.end method

.method static synthetic a(Lokhttp3/z;)Lokhttp3/ac;
    .locals 1
    .param p0, "x0"    # Lokhttp3/z;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lokhttp3/z;->j()Lokhttp3/ac;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lokhttp3/z;)Lokhttp3/internal/b/l;
    .locals 1
    .param p0, "x0"    # Lokhttp3/z;

    .prologue
    .line 33
    iget-object v0, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/z;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokhttp3/z;

    .prologue
    .line 33
    invoke-direct {p0}, Lokhttp3/z;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lokhttp3/z;)Lokhttp3/y;
    .locals 1
    .param p0, "x0"    # Lokhttp3/z;

    .prologue
    .line 33
    iget-object v0, p0, Lokhttp3/z;->b:Lokhttp3/y;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    invoke-virtual {v1}, Lokhttp3/internal/b/l;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "canceled call"

    .line 147
    .local v0, "string":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/z;->h()Lokhttp3/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    const-string v0, "call"

    goto :goto_0
.end method

.method private j()Lokhttp3/ac;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lokhttp3/v;>;"
    iget-object v3, p0, Lokhttp3/z;->b:Lokhttp3/y;

    invoke-virtual {v3}, Lokhttp3/y;->w()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v3, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v3, Lokhttp3/internal/b/a;

    iget-object v4, p0, Lokhttp3/z;->b:Lokhttp3/y;

    invoke-virtual {v4}, Lokhttp3/y;->f()Lokhttp3/n;

    move-result-object v4

    invoke-direct {v3, v4}, Lokhttp3/internal/b/a;-><init>(Lokhttp3/n;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v3, Lokhttp3/internal/a/a;

    iget-object v4, p0, Lokhttp3/z;->b:Lokhttp3/y;

    invoke-virtual {v4}, Lokhttp3/y;->h()Lokhttp3/internal/a/f;

    move-result-object v4

    invoke-direct {v3, v4}, Lokhttp3/internal/a/a;-><init>(Lokhttp3/internal/a/f;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v3, Lokhttp3/internal/connection/a;

    iget-object v4, p0, Lokhttp3/z;->b:Lokhttp3/y;

    invoke-direct {v3, v4}, Lokhttp3/internal/connection/a;-><init>(Lokhttp3/y;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v3, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    invoke-virtual {v3}, Lokhttp3/internal/b/l;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    iget-object v3, p0, Lokhttp3/z;->b:Lokhttp3/y;

    invoke-virtual {v3}, Lokhttp3/y;->x()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_0
    new-instance v3, Lokhttp3/internal/b/b;

    iget-object v4, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    .line 166
    invoke-virtual {v4}, Lokhttp3/internal/b/l;->d()Z

    move-result v4

    invoke-direct {v3, v4}, Lokhttp3/internal/b/b;-><init>(Z)V

    .line 165
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lokhttp3/internal/b/i;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/z;->a:Lokhttp3/aa;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/b/i;-><init>(Ljava/util/List;Lokhttp3/internal/connection/f;Lokhttp3/internal/b/h;Lokhttp3/j;ILokhttp3/aa;)V

    .line 170
    .local v0, "chain":Lokhttp3/v$a;
    iget-object v2, p0, Lokhttp3/z;->a:Lokhttp3/aa;

    invoke-interface {v0, v2}, Lokhttp3/v$a;->a(Lokhttp3/aa;)Lokhttp3/ac;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public a()Lokhttp3/aa;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lokhttp3/z;->a:Lokhttp3/aa;

    return-object v0
.end method

.method public a(Lokhttp3/f;)V
    .locals 3
    .param p1, "responseCallback"    # Lokhttp3/f;

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/z;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/z;->d:Z

    .line 77
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v0, p0, Lokhttp3/z;->b:Lokhttp3/y;

    invoke-virtual {v0}, Lokhttp3/y;->t()Lokhttp3/p;

    move-result-object v0

    new-instance v1, Lokhttp3/z$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lokhttp3/z$a;-><init>(Lokhttp3/z;Lokhttp3/f;Lokhttp3/z$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/p;->a(Lokhttp3/z$a;)V

    .line 79
    return-void
.end method

.method public b()Lokhttp3/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/z;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already Executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lokhttp3/z;->d:Z

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    iget-object v1, p0, Lokhttp3/z;->b:Lokhttp3/y;

    invoke-virtual {v1}, Lokhttp3/y;->t()Lokhttp3/p;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/p;->a(Lokhttp3/z;)V

    .line 60
    invoke-direct {p0}, Lokhttp3/z;->j()Lokhttp3/ac;

    move-result-object v0

    .line 61
    .local v0, "result":Lokhttp3/ac;
    if-nez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .end local v0    # "result":Lokhttp3/ac;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lokhttp3/z;->b:Lokhttp3/y;

    invoke-virtual {v2}, Lokhttp3/y;->t()Lokhttp3/p;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/p;->b(Lokhttp3/z;)V

    throw v1

    .restart local v0    # "result":Lokhttp3/ac;
    :cond_1
    iget-object v1, p0, Lokhttp3/z;->b:Lokhttp3/y;

    invoke-virtual {v1}, Lokhttp3/y;->t()Lokhttp3/p;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/p;->b(Lokhttp3/z;)V

    .line 62
    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    invoke-virtual {v0}, Lokhttp3/internal/b/l;->a()V

    .line 83
    return-void
.end method

.method public declared-synchronized d()Z
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/z;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    invoke-virtual {v0}, Lokhttp3/internal/b/l;->b()Z

    move-result v0

    return v0
.end method

.method declared-synchronized f()V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/z;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/internal/b/l;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-void
.end method

.method g()Lokhttp3/internal/connection/f;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/z;->c:Lokhttp3/internal/b/l;

    invoke-virtual {v0}, Lokhttp3/internal/b/l;->e()Lokhttp3/internal/connection/f;

    move-result-object v0

    return-object v0
.end method

.method h()Lokhttp3/u;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lokhttp3/z;->a:Lokhttp3/aa;

    invoke-virtual {v0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v0

    const-string v1, "/..."

    invoke-virtual {v0, v1}, Lokhttp3/u;->e(Ljava/lang/String;)Lokhttp3/u;

    move-result-object v0

    return-object v0
.end method
