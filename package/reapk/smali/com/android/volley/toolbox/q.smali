.class public Lcom/android/volley/toolbox/q;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# static fields
.field private static final a:I = 0x100


# instance fields
.field private final b:Lcom/android/volley/toolbox/d;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/d;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/volley/toolbox/d;

    .prologue
    .line 40
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/q;-><init>(Lcom/android/volley/toolbox/d;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/d;I)V
    .locals 2
    .param p1, "pool"    # Lcom/android/volley/toolbox/d;
    .param p2, "size"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/d;

    .line 53
    iget-object v0, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/d;

    const/16 v1, 0x100

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/d;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/toolbox/q;->buf:[B

    .line 54
    return-void
.end method

.method private a(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 73
    iget v1, p0, Lcom/android/volley/toolbox/q;->count:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/volley/toolbox/q;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/d;

    iget v2, p0, Lcom/android/volley/toolbox/q;->count:I

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/d;->a(I)[B

    move-result-object v0

    .line 77
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/android/volley/toolbox/q;->buf:[B

    iget v2, p0, Lcom/android/volley/toolbox/q;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v1, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/d;

    iget-object v2, p0, Lcom/android/volley/toolbox/q;->buf:[B

    invoke-virtual {v1, v2}, Lcom/android/volley/toolbox/d;->a([B)V

    .line 79
    iput-object v0, p0, Lcom/android/volley/toolbox/q;->buf:[B

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/d;

    iget-object v1, p0, Lcom/android/volley/toolbox/q;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/d;->a([B)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/toolbox/q;->buf:[B

    .line 60
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 61
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/volley/toolbox/q;->b:Lcom/android/volley/toolbox/d;

    iget-object v1, p0, Lcom/android/volley/toolbox/q;->buf:[B

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/d;->a([B)V

    .line 66
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/q;->a(I)V

    .line 91
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/volley/toolbox/q;->a(I)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
