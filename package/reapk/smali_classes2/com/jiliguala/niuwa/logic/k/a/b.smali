.class public Lcom/jiliguala/niuwa/logic/k/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[B


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/logic/k/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/a/b;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/a/b;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->c:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->d:Ljava/util/Map;

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/e;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/db/a/e;

    .line 41
    .local v0, "data":Lcom/jiliguala/niuwa/logic/db/a/e;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v3

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/db/a/e;
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v3, Lcom/jiliguala/niuwa/logic/k/a/b;->b:[B

    monitor-enter v3

    .line 105
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/db/a/e;

    .line 107
    .local v0, "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->e()I

    move-result v2

    const/16 v5, 0x5002

    if-ne v2, v5, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->b()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v0    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 111
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/a/e;)V
    .locals 5
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/db/a/e;

    .prologue
    .line 92
    sget-object v3, Lcom/jiliguala/niuwa/logic/k/a/b;->b:[B

    monitor-enter v3

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/k/a/b;->a(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    monitor-exit v3

    .line 100
    return-void

    .line 99
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/e;>;"
    sget-object v1, Lcom/jiliguala/niuwa/logic/k/a/b;->b:[B

    monitor-enter v1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->c:Ljava/util/ArrayList;

    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/k/a/b;->b(Ljava/util/ArrayList;)V

    .line 35
    :cond_0
    monitor-exit v1

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v2, Lcom/jiliguala/niuwa/logic/k/a/b;->b:[B

    monitor-enter v2

    .line 64
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/k/a/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    const/4 v1, 0x0

    monitor-exit v2

    .line 68
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/db/a/e;

    monitor-exit v2

    goto :goto_0

    .line 69
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v3, Lcom/jiliguala/niuwa/logic/k/a/b;->b:[B

    monitor-enter v3

    .line 118
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/db/a/e;

    .line 120
    .local v0, "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->e()I

    move-result v2

    const/16 v5, 0x5001

    if-ne v2, v5, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->b()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v0    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 124
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public c(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v2, Lcom/jiliguala/niuwa/logic/k/a/b;->b:[B

    monitor-enter v2

    .line 78
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/k/a/b;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/e;

    move-result-object v0

    .line 82
    .local v0, "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(I)V

    .line 83
    monitor-exit v2

    return-object v0

    .line 84
    .end local v0    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
