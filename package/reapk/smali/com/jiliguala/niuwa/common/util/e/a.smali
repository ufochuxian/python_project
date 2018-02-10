.class public Lcom/jiliguala/niuwa/common/util/e/a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/common/util/e/a;->a:J

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/util/e/a;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 21
    .local v0, "byteValue":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 22
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/util/e/a;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jiliguala/niuwa/common/util/e/a;->a:J

    .line 24
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 6
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    .line 30
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 31
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/util/e/a;->a:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jiliguala/niuwa/common/util/e/a;->a:J

    .line 33
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
    .line 38
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 39
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 40
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/util/e/a;->a:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jiliguala/niuwa/common/util/e/a;->a:J

    .line 42
    :cond_0
    return v0
.end method
