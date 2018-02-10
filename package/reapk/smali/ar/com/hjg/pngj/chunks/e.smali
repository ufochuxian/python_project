.class public Lar/com/hjg/pngj/chunks/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/lang/String;

.field public d:[B

.field public e:[B

.field private f:J

.field private g:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "len"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "alloc"    # Z

    .prologue
    const/4 v4, 0x4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/e;->d:[B

    .line 39
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lar/com/hjg/pngj/chunks/e;->f:J

    .line 45
    new-array v1, v4, [B

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/e;->e:[B

    .line 50
    iput p1, p0, Lar/com/hjg/pngj/chunks/e;->a:I

    .line 51
    iput-object p2, p0, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/e;->b:[B

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 54
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/e;->b:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/e;->b:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/e;->b:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/e;->b:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x61

    if-ge v1, v2, :cond_1

    .line 55
    :cond_0
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad id chunk: must be ascii letters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    if-eqz p3, :cond_3

    .line 58
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/e;->a()V

    .line 59
    :cond_3
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "idbytes"    # [B
    .param p3, "alloc"    # Z

    .prologue
    .line 62
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/c;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lar/com/hjg/pngj/chunks/e;-><init>(ILjava/lang/String;Z)V

    .line 63
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/e;->g:Ljava/util/zip/CRC32;

    .line 75
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->g:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/e;->b:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 76
    iget v0, p0, Lar/com/hjg/pngj/chunks/e;->a:I

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->g:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/e;->d:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/e;->a:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 78
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/e;->e:[B

    invoke-static {v0, v1, v3}, Lar/com/hjg/pngj/x;->b(I[BI)V

    .line 79
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->d:[B

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/chunks/e;->a:I

    if-ge v0, v1, :cond_1

    .line 67
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/e;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/e;->d:[B

    .line 68
    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 134
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/e;->f:J

    .line 135
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/e;->b(Ljava/io/OutputStream;)V

    .line 88
    iget v0, p0, Lar/com/hjg/pngj/chunks/e;->a:I

    if-lez v0, :cond_1

    .line 89
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->d:[B

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot write chunk, raw chunk data is null ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->d:[B

    const/4 v1, 0x0

    iget v2, p0, Lar/com/hjg/pngj/chunks/e;->a:I

    invoke-static {p1, v0, v1, v2}, Lar/com/hjg/pngj/x;->a(Ljava/io/OutputStream;[BII)V

    .line 93
    :cond_1
    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/e;->e()V

    .line 94
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/e;->c(Ljava/io/OutputStream;)V

    .line 95
    return-void
.end method

.method public a([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->g:Ljava/util/zip/CRC32;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/e;->g:Ljava/util/zip/CRC32;

    .line 119
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 120
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 109
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/e;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v0, v2

    .line 110
    .local v0, "crcComputed":I
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/e;->e:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lar/com/hjg/pngj/x;->c([BI)I

    move-result v1

    .line 111
    .local v1, "crcExpected":I
    if-eq v0, v1, :cond_0

    .line 112
    new-instance v2, Lar/com/hjg/pngj/PngjBadCrcException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjBadCrcException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    return-void
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 98
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->b:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 99
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunkid ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/e;->a:I

    invoke-static {p1, v0}, Lar/com/hjg/pngj/x;->b(Ljava/io/OutputStream;I)V

    .line 101
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->b:[B

    invoke-static {p1, v0}, Lar/com/hjg/pngj/x;->b(Ljava/io/OutputStream;[B)V

    .line 102
    return-void
.end method

.method c()Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/e;->d:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public c(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 105
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/e;->e:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lar/com/hjg/pngj/x;->a(Ljava/io/OutputStream;[BII)V

    .line 106
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/e;->f:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    if-ne p0, p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 155
    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 157
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 158
    check-cast v0, Lar/com/hjg/pngj/chunks/e;

    .line 159
    .local v0, "other":Lar/com/hjg/pngj/chunks/e;
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 160
    iget-object v3, v0, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 161
    goto :goto_0

    .line 162
    :cond_4
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    iget-object v4, v0, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 163
    goto :goto_0

    .line 164
    :cond_5
    iget-wide v4, p0, Lar/com/hjg/pngj/chunks/e;->f:J

    iget-wide v6, v0, Lar/com/hjg/pngj/chunks/e;->f:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    .line 165
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 143
    const/16 v0, 0x1f

    .line 144
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 145
    .local v1, "result":I
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 146
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lar/com/hjg/pngj/chunks/e;->f:J

    iget-wide v6, p0, Lar/com/hjg/pngj/chunks/e;->f:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 147
    return v1

    .line 145
    :cond_0
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/e;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunkid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/e;->b:[B

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/chunks/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
