.class Lcom/jiliguala/niuwa/logic/image/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:B = 0xdt

.field private static final b:B = 0xat


# instance fields
.field private final c:Ljava/io/InputStream;

.field private final d:Ljava/nio/charset/Charset;

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_1
    if-gez p2, :cond_2

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/e;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/image/d;->c:Ljava/io/InputStream;

    .line 83
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/image/d;->d:Ljava/nio/charset/Charset;

    .line 84
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 53
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/jiliguala/niuwa/logic/image/d;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/image/d;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/d;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/d;->d:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/d;->c:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 175
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 176
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 178
    :cond_0
    iput v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    .line 179
    iput v0, p0, Lcom/jiliguala/niuwa/logic/image/d;->g:I

    .line 180
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 112
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/image/d;->c:Ljava/io/InputStream;

    monitor-enter v5

    .line 113
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    if-nez v4, :cond_0

    .line 114
    new-instance v4, Ljava/io/IOException;

    const-string v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 120
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    iget v6, p0, Lcom/jiliguala/niuwa/logic/image/d;->g:I

    if-lt v4, v6, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/d;->c()V

    .line 124
    :cond_1
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->g:I

    if-eq v0, v4, :cond_4

    .line 125
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_3

    .line 126
    iget v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    if-eq v0, v4, :cond_2

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 127
    .local v1, "lineEnd":I
    :goto_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    iget v6, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    iget v7, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/image/d;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 128
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    .line 129
    monitor-exit v5

    .line 158
    .end local v1    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :goto_2
    return-object v3

    :cond_2
    move v1, v0

    .line 126
    goto :goto_1

    .line 124
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_4
    new-instance v2, Lcom/jiliguala/niuwa/logic/image/d$1;

    iget v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->g:I

    iget v6, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Lcom/jiliguala/niuwa/logic/image/d$1;-><init>(Lcom/jiliguala/niuwa/logic/image/d;I)V

    .line 147
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :cond_5
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    iget v6, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    iget v7, p0, Lcom/jiliguala/niuwa/logic/image/d;->g:I

    iget v8, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 149
    const/4 v4, -0x1

    iput v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->g:I

    .line 150
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/d;->c()V

    .line 152
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    :goto_3
    iget v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->g:I

    if-eq v0, v4, :cond_5

    .line 153
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_7

    .line 154
    iget v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    if-eq v0, v4, :cond_6

    .line 155
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    iget v6, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    iget v7, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 157
    :cond_6
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/jiliguala/niuwa/logic/image/d;->f:I

    .line 158
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 152
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/d;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/d;->c:Ljava/io/InputStream;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/d;->e:[B

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/d;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 99
    :cond_0
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
