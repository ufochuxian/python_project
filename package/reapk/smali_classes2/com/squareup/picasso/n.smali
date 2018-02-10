.class public Lcom/squareup/picasso/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/d;


# instance fields
.field final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-gtz p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max size must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput p1, p0, Lcom/squareup/picasso/n;->c:I

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/squareup/picasso/n;->b:Ljava/util/LinkedHashMap;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/squareup/picasso/af;->c(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/n;-><init>(I)V

    .line 37
    return-void
.end method

.method private a(I)V
    .locals 6
    .param p1, "maxSize"    # I

    .prologue
    .line 88
    :goto_0
    monitor-enter p0

    .line 89
    :try_start_0
    iget v3, p0, Lcom/squareup/picasso/n;->d:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/squareup/picasso/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/squareup/picasso/n;->d:I

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
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

    .line 104
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 94
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/squareup/picasso/n;->d:I

    if-le v3, p1, :cond_2

    iget-object v3, p0, Lcom/squareup/picasso/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    :cond_2
    monitor-exit p0

    .line 106
    return-void

    .line 98
    :cond_3
    iget-object v3, p0, Lcom/squareup/picasso/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 101
    .local v2, "value":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/squareup/picasso/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget v3, p0, Lcom/squareup/picasso/n;->d:I

    invoke-static {v2}, Lcom/squareup/picasso/af;->a(Landroid/graphics/Bitmap;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/squareup/picasso/n;->d:I

    .line 103
    iget v3, p0, Lcom/squareup/picasso/n;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/picasso/n;->f:I

    .line 104
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/n;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 56
    .local v0, "mapValue":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 57
    iget v1, p0, Lcom/squareup/picasso/n;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/picasso/n;->g:I

    .line 58
    monitor-exit p0

    .line 63
    .end local v0    # "mapValue":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "mapValue":Landroid/graphics/Bitmap;
    :cond_1
    iget v1, p0, Lcom/squareup/picasso/n;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/picasso/n;->h:I

    .line 61
    monitor-exit p0

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    .end local v0    # "mapValue":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null || bitmap == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1
    monitor-enter p0

    .line 73
    :try_start_0
    iget v1, p0, Lcom/squareup/picasso/n;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/picasso/n;->e:I

    .line 74
    iget v1, p0, Lcom/squareup/picasso/n;->d:I

    invoke-static {p2}, Lcom/squareup/picasso/af;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/squareup/picasso/n;->d:I

    .line 75
    iget-object v1, p0, Lcom/squareup/picasso/n;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 76
    .local v0, "previous":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 77
    iget v1, p0, Lcom/squareup/picasso/n;->d:I

    invoke-static {v0}, Lcom/squareup/picasso/af;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/squareup/picasso/n;->d:I

    .line 79
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget v1, p0, Lcom/squareup/picasso/n;->c:I

    invoke-direct {p0, v1}, Lcom/squareup/picasso/n;->a(I)V

    .line 82
    return-void

    .line 79
    .end local v0    # "previous":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/n;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/picasso/n;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/squareup/picasso/n;->a(I)V

    .line 111
    return-void
.end method

.method public final declared-synchronized e()I
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/n;->g:I
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
    .line 134
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/n;->h:I
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
    .line 139
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/n;->e:I
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
    .line 144
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/picasso/n;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
