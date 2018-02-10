.class final Lokio/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/o;->a(Ljava/io/OutputStream;Lokio/y;)Lokio/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/y;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lokio/y;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lokio/o$1;->a:Lokio/y;

    iput-object p2, p0, Lokio/o$1;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokio/c;J)V
    .locals 8
    .param p1, "source"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    iget-wide v0, p1, Lokio/c;->c:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/z;->a(JJJ)V

    .line 74
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 75
    iget-object v0, p0, Lokio/o$1;->a:Lokio/y;

    invoke-virtual {v0}, Lokio/y;->g()V

    .line 76
    iget-object v6, p1, Lokio/c;->b:Lokio/t;

    .line 77
    .local v6, "head":Lokio/t;
    iget v0, v6, Lokio/t;->e:I

    iget v1, v6, Lokio/t;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 78
    .local v7, "toCopy":I
    iget-object v0, p0, Lokio/o$1;->b:Ljava/io/OutputStream;

    iget-object v1, v6, Lokio/t;->c:[B

    iget v4, v6, Lokio/t;->d:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    iget v0, v6, Lokio/t;->d:I

    add-int/2addr v0, v7

    iput v0, v6, Lokio/t;->d:I

    .line 81
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 82
    iget-wide v0, p1, Lokio/c;->c:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lokio/c;->c:J

    .line 84
    iget v0, v6, Lokio/t;->d:I

    iget v1, v6, Lokio/t;->e:I

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {v6}, Lokio/t;->a()Lokio/t;

    move-result-object v0

    iput-object v0, p1, Lokio/c;->b:Lokio/t;

    .line 86
    invoke-static {v6}, Lokio/u;->a(Lokio/t;)V

    goto :goto_0

    .line 89
    .end local v6    # "head":Lokio/t;
    .end local v7    # "toCopy":I
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lokio/o$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 97
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lokio/o$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    return-void
.end method

.method public timeout()Lokio/y;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lokio/o$1;->a:Lokio/y;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/o$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
