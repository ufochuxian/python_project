.class public abstract Lorg/apache/commons/fileupload/util/LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/fileupload/util/Closeable;


# instance fields
.field private closed:Z

.field private count:J

.field private final sizeMax:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "pSizeMax"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    iput-wide p2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->sizeMax:J

    .line 56
    return-void
.end method

.method private checkLimit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    iget-wide v2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->sizeMax:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->sizeMax:J

    iget-wide v2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/fileupload/util/LimitedInputStream;->raiseError(JJ)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->closed:Z

    .line 164
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 165
    return-void
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->closed:Z

    return v0
.end method

.method protected abstract raiseError(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 102
    .local v0, "res":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 103
    iget-wide v2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/fileupload/util/LimitedInputStream;->checkLimit()V

    .line 106
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 135
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 136
    iget-wide v2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/fileupload/util/LimitedInputStream;->count:J

    .line 137
    invoke-direct {p0}, Lorg/apache/commons/fileupload/util/LimitedInputStream;->checkLimit()V

    .line 139
    :cond_0
    return v0
.end method
