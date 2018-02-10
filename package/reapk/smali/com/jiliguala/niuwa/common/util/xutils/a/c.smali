.class public Lcom/jiliguala/niuwa/common/util/xutils/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    const/4 v3, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-gtz p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c:I

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    return-void
.end method

.method private b(I)V
    .locals 5
    .param p1, "maxSize"    # I

    .prologue
    .line 170
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 171
    :try_start_0
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    if-le v3, p1, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    monitor-exit p0

    .line 186
    return-void

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 176
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    invoke-direct {p0, v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    .line 181
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->f:I

    .line 182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 252
    .local v1, "result":I
    if-gtz v1, :cond_0

    .line 253
    const/4 v2, 0x0

    iput v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    .line 254
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    goto :goto_0

    .line 258
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return v1
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_0
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit p0

    move-object v1, v2

    .line 118
    :goto_0
    return-object v1

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_2

    .line 83
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->g:I

    .line 84
    monitor-exit p0

    goto :goto_0

    .line 87
    .end local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 86
    .restart local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_1
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->h:I

    .line 87
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_3

    move-object v1, v2

    .line 98
    goto :goto_0

    .line 101
    :cond_3
    monitor-enter p0

    .line 102
    :try_start_2
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->e:I

    .line 103
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_4

    .line 107
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    if-eqz v1, :cond_5

    .line 114
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_4
    :try_start_3
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    goto :goto_1

    .line 111
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 117
    :cond_5
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c:I

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b(I)V

    move-object v1, v0

    .line 118
    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 3
    .param p3, "expiryTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)TV;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    monitor-enter p0

    .line 144
    :try_start_0
    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->d:I

    .line 145
    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    .line 146
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    if-eqz v0, :cond_2

    .line 149
    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    .line 151
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    :cond_3
    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c:I

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b(I)V

    .line 158
    return-object v0

    .line 151
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 277
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b(I)V

    .line 278
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 279
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c:I

    .line 60
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b(I)V

    .line 61
    return-void
.end method

.method protected a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    if-eqz v0, :cond_1

    .line 202
    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->b:I

    .line 204
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    if-eqz v0, :cond_2

    .line 207
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    :cond_2
    return-object v0

    .line 204
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c()I
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized d()I
    .locals 1

    .prologue
    .line 303
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized e()I
    .locals 1

    .prologue
    .line 311
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()I
    .locals 1

    .prologue
    .line 318
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()I
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()I
    .locals 1

    .prologue
    .line 332
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/a/c;, "Lcom/jiliguala/niuwa/common/util/xutils/a/c<TK;TV;>;"
    const/4 v1, 0x0

    .line 344
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->g:I

    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->h:I

    add-int v0, v2, v3

    .line 345
    .local v0, "accesses":I
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->g:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 346
    .local v1, "hitPercent":I
    :cond_0
    const-string v2, "LruMemoryCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/c;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 344
    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
