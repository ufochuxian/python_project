.class Lokhttp3/internal/framed/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lokio/n;

.field private b:I

.field private final c:Lokio/e;


# direct methods
.method public constructor <init>(Lokio/e;)V
    .locals 3
    .param p1, "source"    # Lokio/e;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Lokhttp3/internal/framed/i$1;

    invoke-direct {v1, p0, p1}, Lokhttp3/internal/framed/i$1;-><init>(Lokhttp3/internal/framed/i;Lokio/x;)V

    .line 64
    .local v1, "throttleSource":Lokio/x;
    new-instance v0, Lokhttp3/internal/framed/i$2;

    invoke-direct {v0, p0}, Lokhttp3/internal/framed/i$2;-><init>(Lokhttp3/internal/framed/i;)V

    .line 76
    .local v0, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Lokio/n;

    invoke-direct {v2, v1, v0}, Lokio/n;-><init>(Lokio/x;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lokhttp3/internal/framed/i;->a:Lokio/n;

    .line 77
    iget-object v2, p0, Lokhttp3/internal/framed/i;->a:Lokio/n;

    invoke-static {v2}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/framed/i;->c:Lokio/e;

    .line 78
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/i;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/framed/i;

    .prologue
    .line 36
    iget v0, p0, Lokhttp3/internal/framed/i;->b:I

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/framed/i;I)I
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/framed/i;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lokhttp3/internal/framed/i;->b:I

    return p1
.end method

.method private b()Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lokhttp3/internal/framed/i;->c:Lokio/e;

    invoke-interface {v1}, Lokio/e;->k()I

    move-result v0

    .line 101
    .local v0, "length":I
    iget-object v1, p0, Lokhttp3/internal/framed/i;->c:Lokio/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/e;->d(J)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method private c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget v0, p0, Lokhttp3/internal/framed/i;->b:I

    if-lez v0, :cond_0

    .line 109
    iget-object v0, p0, Lokhttp3/internal/framed/i;->a:Lokio/n;

    invoke-virtual {v0}, Lokio/n;->a()Z

    .line 110
    iget v0, p0, Lokhttp3/internal/framed/i;->b:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/framed/i;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget v5, p0, Lokhttp3/internal/framed/i;->b:I

    add-int/2addr v5, p1

    iput v5, p0, Lokhttp3/internal/framed/i;->b:I

    .line 83
    iget-object v5, p0, Lokhttp3/internal/framed/i;->c:Lokio/e;

    invoke-interface {v5}, Lokio/e;->k()I

    move-result v3

    .line 84
    .local v3, "numberOfPairs":I
    if-gez v3, :cond_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfPairs < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_0
    const/16 v5, 0x400

    if-le v3, v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfPairs > 1024: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/e;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 89
    invoke-direct {p0}, Lokhttp3/internal/framed/i;->b()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v2

    .line 90
    .local v2, "name":Lokio/ByteString;
    invoke-direct {p0}, Lokhttp3/internal/framed/i;->b()Lokio/ByteString;

    move-result-object v4

    .line 91
    .local v4, "values":Lokio/ByteString;
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/IOException;

    const-string v6, "name.size == 0"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_2
    new-instance v5, Lokhttp3/internal/framed/e;

    invoke-direct {v5, v2, v4}, Lokhttp3/internal/framed/e;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "name":Lokio/ByteString;
    .end local v4    # "values":Lokio/ByteString;
    :cond_3
    invoke-direct {p0}, Lokhttp3/internal/framed/i;->c()V

    .line 96
    return-object v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lokhttp3/internal/framed/i;->c:Lokio/e;

    invoke-interface {v0}, Lokio/e;->close()V

    .line 116
    return-void
.end method
