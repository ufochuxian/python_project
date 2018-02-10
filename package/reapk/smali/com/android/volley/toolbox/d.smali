.class public Lcom/android/volley/toolbox/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/android/volley/toolbox/d$1;

    invoke-direct {v0}, Lcom/android/volley/toolbox/d$1;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/d;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "sizeLimit"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/d;->c:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/volley/toolbox/d;->d:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/toolbox/d;->e:I

    .line 83
    iput p1, p0, Lcom/android/volley/toolbox/d;->b:I

    .line 84
    return-void
.end method

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 131
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/volley/toolbox/d;->e:I

    iget v2, p0, Lcom/android/volley/toolbox/d;->b:I

    if-le v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/volley/toolbox/d;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 133
    .local v0, "buf":[B
    iget-object v1, p0, Lcom/android/volley/toolbox/d;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    iget v1, p0, Lcom/android/volley/toolbox/d;->e:I

    array-length v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/volley/toolbox/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "buf":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 136
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a([B)V
    .locals 3
    .param p1, "buf"    # [B

    .prologue
    .line 114
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    iget v2, p0, Lcom/android/volley/toolbox/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v1, v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/volley/toolbox/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/android/volley/toolbox/d;->d:Ljava/util/List;

    sget-object v2, Lcom/android/volley/toolbox/d;->a:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 119
    .local v0, "pos":I
    if-gez v0, :cond_2

    .line 120
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/android/volley/toolbox/d;->d:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 123
    iget v1, p0, Lcom/android/volley/toolbox/d;->e:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/volley/toolbox/d;->e:I

    .line 124
    invoke-direct {p0}, Lcom/android/volley/toolbox/d;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    .end local v0    # "pos":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(I)[B
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 95
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/volley/toolbox/d;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/volley/toolbox/d;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 97
    .local v0, "buf":[B
    array-length v2, v0

    if-lt v2, p1, :cond_0

    .line 98
    iget v2, p0, Lcom/android/volley/toolbox/d;->e:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/volley/toolbox/d;->e:I

    .line 99
    iget-object v2, p0, Lcom/android/volley/toolbox/d;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/android/volley/toolbox/d;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v0    # "buf":[B
    :goto_1
    monitor-exit p0

    return-object v0

    .line 95
    .restart local v0    # "buf":[B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "buf":[B
    :cond_1
    :try_start_1
    new-array v0, p1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
