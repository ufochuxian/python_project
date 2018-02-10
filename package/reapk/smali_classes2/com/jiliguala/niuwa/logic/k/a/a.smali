.class public Lcom/jiliguala/niuwa/logic/k/a/a;
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
            "Lcom/jiliguala/niuwa/logic/db/a/a;",
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
    .line 14
    const-class v0, Lcom/jiliguala/niuwa/logic/k/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/a/a;->a:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/jiliguala/niuwa/logic/k/a/a;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->c:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->d:Ljava/util/Map;

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/db/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/a;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 36
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/db/a/a;

    .line 37
    .local v0, "data":Lcom/jiliguala/niuwa/logic/db/a/a;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "data":Lcom/jiliguala/niuwa/logic/db/a/a;
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 5
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
    .line 84
    sget-object v3, Lcom/jiliguala/niuwa/logic/k/a/a;->b:[B

    monitor-enter v3

    .line 85
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/db/a/a;

    .line 87
    .local v0, "item":Lcom/jiliguala/niuwa/logic/db/a/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a/a;->c()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v0    # "item":Lcom/jiliguala/niuwa/logic/db/a/a;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 89
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public a(Lcom/jiliguala/niuwa/logic/db/a/a;)V
    .locals 6
    .param p1, "item"    # Lcom/jiliguala/niuwa/logic/db/a/a;

    .prologue
    .line 73
    sget-object v3, Lcom/jiliguala/niuwa/logic/k/a/a;->b:[B

    monitor-enter v3

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/k/a/a;->a(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/db/a/a;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    monitor-exit v3

    .line 81
    return-void

    .line 80
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
            "Lcom/jiliguala/niuwa/logic/db/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/db/a/a;>;"
    sget-object v1, Lcom/jiliguala/niuwa/logic/k/a/a;->b:[B

    monitor-enter v1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->c:Ljava/util/ArrayList;

    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/logic/k/a/a;->b(Ljava/util/ArrayList;)V

    .line 31
    :cond_0
    monitor-exit v1

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/a/a;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v2, Lcom/jiliguala/niuwa/logic/k/a/a;->b:[B

    monitor-enter v2

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/k/a/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v1, 0x0

    monitor-exit v2

    .line 64
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/k/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/db/a/a;

    monitor-exit v2

    goto :goto_0

    .line 65
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
