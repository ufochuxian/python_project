.class public Lcom/jiliguala/niuwa/logic/image/b;
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


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    .prologue
    .line 70
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-gtz p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput p1, p0, Lcom/jiliguala/niuwa/logic/image/b;->c:I

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    .line 76
    return-void
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/image/b;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 252
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 86
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    .line 93
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->g:I

    .line 94
    monitor-exit p0

    move-object v0, v1

    .line 128
    :goto_0
    return-object v0

    .line 96
    :cond_1
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->h:I

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/image/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    .end local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 111
    .restart local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .restart local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2
    monitor-enter p0

    .line 112
    :try_start_2
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->e:I

    .line 113
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_3

    .line 117
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/jiliguala/niuwa/logic/image/b;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 125
    goto :goto_0

    .line 119
    :cond_3
    :try_start_3
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/logic/image/b;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    goto :goto_1

    .line 121
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 127
    :cond_4
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->c:I

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/logic/image/b;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
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
    iget v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->d:I

    .line 145
    iget v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/image/b;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    .line 146
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2

    .line 148
    iget v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/logic/image/b;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    .line 150
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz v0, :cond_3

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/jiliguala/niuwa/logic/image/b;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :cond_3
    iget v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->c:I

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/logic/image/b;->a(I)V

    .line 157
    return-object v0

    .line 150
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p2, "hasCallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    .line 209
    iget v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/logic/image/b;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    .line 211
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 214
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/jiliguala/niuwa/logic/image/b;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    :cond_2
    return-object v0

    .line 211
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
    .line 273
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/logic/image/b;->a(I)V

    .line 274
    return-void
.end method

.method public a(I)V
    .locals 6
    .param p1, "maxSize"    # I

    .prologue
    .line 171
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 172
    :try_start_0
    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    if-eqz v3, :cond_1

    .line 173
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 176
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    if-le v3, p1, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    :cond_2
    monitor-exit p0

    .line 190
    return-void

    .line 180
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 181
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    invoke-direct {p0, v0, v2}, Lcom/jiliguala/niuwa/logic/image/b;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I

    .line 185
    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->f:I

    .line 186
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/jiliguala/niuwa/logic/image/b;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
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
    .line 235
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/logic/image/b;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c()I
    .locals 1

    .prologue
    .line 291
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized d()I
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/b;->h:I
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
    .line 313
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/b;->e:I
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
    .line 320
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/b;->d:I
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
    .line 327
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/b;->f:I
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
    .line 335
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/b;->a:Ljava/util/LinkedHashMap;

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
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/b;, "Lcom/jiliguala/niuwa/logic/image/b<TK;TV;>;"
    const/4 v1, 0x0

    .line 340
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->g:I

    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/b;->h:I

    add-int v0, v2, v3

    .line 341
    .local v0, "accesses":I
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/b;->g:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 342
    .local v1, "hitPercent":I
    :cond_0
    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/jiliguala/niuwa/logic/image/b;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/jiliguala/niuwa/logic/image/b;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/jiliguala/niuwa/logic/image/b;->h:I

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

    .line 340
    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
