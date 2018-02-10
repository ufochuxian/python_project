.class final Lokio/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/o;->a(Ljava/io/InputStream;Lokio/y;)Lokio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/y;

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lokio/y;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lokio/o$2;->a:Lokio/y;

    iput-object p2, p0, Lokio/o$2;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 150
    iget-object v0, p0, Lokio/o$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 151
    return-void
.end method

.method public read(Lokio/c;J)J
    .locals 8
    .param p1, "sink"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 132
    cmp-long v6, p2, v4

    if-gez v6, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_0
    cmp-long v6, p2, v4

    if-nez v6, :cond_1

    .line 142
    :goto_0
    return-wide v4

    .line 135
    :cond_1
    :try_start_0
    iget-object v4, p0, Lokio/o$2;->a:Lokio/y;

    invoke-virtual {v4}, Lokio/y;->g()V

    .line 136
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lokio/c;->g(I)Lokio/t;

    move-result-object v3

    .line 137
    .local v3, "tail":Lokio/t;
    iget v4, v3, Lokio/t;->e:I

    rsub-int v4, v4, 0x2000

    int-to-long v4, v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 138
    .local v2, "maxToCopy":I
    iget-object v4, p0, Lokio/o$2;->b:Ljava/io/InputStream;

    iget-object v5, v3, Lokio/t;->c:[B

    iget v6, v3, Lokio/t;->e:I

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 139
    .local v0, "bytesRead":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    const-wide/16 v4, -0x1

    goto :goto_0

    .line 140
    :cond_2
    iget v4, v3, Lokio/t;->e:I

    add-int/2addr v4, v0

    iput v4, v3, Lokio/t;->e:I

    .line 141
    iget-wide v4, p1, Lokio/c;->c:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lokio/c;->c:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    int-to-long v4, v0

    goto :goto_0

    .line 143
    .end local v0    # "bytesRead":I
    .end local v2    # "maxToCopy":I
    .end local v3    # "tail":Lokio/t;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/AssertionError;
    invoke-static {v1}, Lokio/o;->a(Ljava/lang/AssertionError;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 145
    :cond_3
    throw v1
.end method

.method public timeout()Lokio/y;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lokio/o$2;->a:Lokio/y;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/o$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
