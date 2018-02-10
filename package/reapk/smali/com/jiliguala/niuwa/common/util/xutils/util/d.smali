.class public Lcom/jiliguala/niuwa/common/util/xutils/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "K2:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK1;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK2;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)TV;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK1;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK2;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;TV;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 46
    .restart local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    :cond_3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 51
    .restart local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    const/4 v2, 0x0

    .line 76
    .local v2, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 77
    .local v1, "k1Set":Ljava/util/Set;, "Ljava/util/Set<TK1;>;"
    if-eqz v1, :cond_1

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .restart local v2    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "k1":Ljava/lang/Object;, "TK1;"
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 81
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v3, :cond_0

    .line 82
    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 86
    .end local v0    # "k1":Ljava/lang/Object;, "TK1;"
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    return-object v2
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 4

    .prologue
    .line 101
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 102
    const/4 v1, 0x0

    .line 108
    :cond_0
    return v1

    .line 104
    :cond_1
    const/4 v1, 0x0

    .line 105
    .local v1, "result":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 107
    goto :goto_0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 123
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    .line 127
    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 129
    :cond_1
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/util/d;, "Lcom/jiliguala/niuwa/common/util/xutils/util/d<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/util/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method
