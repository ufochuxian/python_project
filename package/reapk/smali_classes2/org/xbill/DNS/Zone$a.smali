.class Lorg/xbill/DNS/Zone$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Zone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Iterator;

.field private b:[Lorg/xbill/DNS/RRset;

.field private c:I

.field private d:Z

.field private final e:Lorg/xbill/DNS/Zone;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/Zone;Z)V
    .locals 8
    .param p2, "axfr"    # Z

    .prologue
    .line 39
    iput-object p1, p0, Lorg/xbill/DNS/Zone$a;->e:Lorg/xbill/DNS/Zone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    invoke-static {p1}, Lorg/xbill/DNS/Zone;->access$000(Lorg/xbill/DNS/Zone;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iput-object v5, p0, Lorg/xbill/DNS/Zone$a;->a:Ljava/util/Iterator;

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iput-boolean p2, p0, Lorg/xbill/DNS/Zone$a;->d:Z

    .line 44
    invoke-static {p1}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/xbill/DNS/Zone;->access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 45
    .local v3, "sets":[Lorg/xbill/DNS/RRset;
    array-length v5, v3

    new-array v5, v5, [Lorg/xbill/DNS/RRset;

    iput-object v5, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x2

    .local v1, "j":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 47
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v4

    .line 48
    .local v4, "type":I
    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 49
    iget-object v5, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    const/4 v6, 0x0

    aget-object v7, v3, v0

    aput-object v7, v5, v6

    .line 46
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "sets":[Lorg/xbill/DNS/RRset;
    .end local v4    # "type":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 50
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "sets":[Lorg/xbill/DNS/RRset;
    .restart local v4    # "type":I
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 51
    iget-object v5, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    const/4 v6, 0x1

    aget-object v7, v3, v0

    aput-object v7, v5, v6

    goto :goto_1

    .line 53
    :cond_1
    iget-object v5, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget-object v6, v3, v0

    aput-object v6, v5, v1

    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_1

    .line 55
    .end local v4    # "type":I
    :cond_2
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xbill/DNS/Zone$a;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone$a;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 67
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    if-nez v3, :cond_2

    .line 68
    iput-boolean v6, p0, Lorg/xbill/DNS/Zone$a;->d:Z

    .line 69
    iget-object v3, p0, Lorg/xbill/DNS/Zone$a;->e:Lorg/xbill/DNS/Zone;

    iget-object v4, p0, Lorg/xbill/DNS/Zone$a;->e:Lorg/xbill/DNS/Zone;

    invoke-static {v4}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Lorg/xbill/DNS/Zone;->access$300(Lorg/xbill/DNS/Zone;Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v1

    .line 86
    :cond_1
    :goto_0
    return-object v1

    .line 71
    :cond_2
    iget-object v3, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    iget v4, p0, Lorg/xbill/DNS/Zone$a;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/xbill/DNS/Zone$a;->c:I

    aget-object v1, v3, v4

    .line 72
    .local v1, "set":Lorg/xbill/DNS/RRset;
    iget v3, p0, Lorg/xbill/DNS/Zone$a;->c:I

    iget-object v4, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 73
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    .line 74
    :cond_3
    iget-object v3, p0, Lorg/xbill/DNS/Zone$a;->a:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lorg/xbill/DNS/Zone$a;->a:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/xbill/DNS/Zone$a;->e:Lorg/xbill/DNS/Zone;

    invoke-static {v4}, Lorg/xbill/DNS/Zone;->access$400(Lorg/xbill/DNS/Zone;)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 78
    iget-object v3, p0, Lorg/xbill/DNS/Zone$a;->e:Lorg/xbill/DNS/Zone;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/xbill/DNS/Zone;->access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v2

    .line 79
    .local v2, "sets":[Lorg/xbill/DNS/RRset;
    array-length v3, v2

    if-eqz v3, :cond_3

    .line 81
    iput-object v2, p0, Lorg/xbill/DNS/Zone$a;->b:[Lorg/xbill/DNS/RRset;

    .line 82
    iput v6, p0, Lorg/xbill/DNS/Zone$a;->c:I

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
