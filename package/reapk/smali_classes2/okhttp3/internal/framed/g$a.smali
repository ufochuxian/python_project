.class final Lokhttp3/internal/framed/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:Lokio/e;


# direct methods
.method public constructor <init>(Lokio/e;)V
    .locals 0
    .param p1, "source"    # Lokio/e;

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lokhttp3/internal/framed/g$a;->f:Lokio/e;

    .line 606
    return-void
.end method

.method private a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 631
    iget v0, p0, Lokhttp3/internal/framed/g$a;->c:I

    .line 633
    .local v0, "previousStreamId":I
    iget-object v2, p0, Lokhttp3/internal/framed/g$a;->f:Lokio/e;

    invoke-static {v2}, Lokhttp3/internal/framed/g;->a(Lokio/e;)I

    move-result v2

    iput v2, p0, Lokhttp3/internal/framed/g$a;->d:I

    iput v2, p0, Lokhttp3/internal/framed/g$a;->a:I

    .line 634
    iget-object v2, p0, Lokhttp3/internal/framed/g$a;->f:Lokio/e;

    invoke-interface {v2}, Lokio/e;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 635
    .local v1, "type":B
    iget-object v2, p0, Lokhttp3/internal/framed/g$a;->f:Lokio/e;

    invoke-interface {v2}, Lokio/e;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lokhttp3/internal/framed/g$a;->b:B

    .line 636
    invoke-static {}, Lokhttp3/internal/framed/g;->c()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lokhttp3/internal/framed/g;->c()Ljava/util/logging/Logger;

    move-result-object v2

    iget v3, p0, Lokhttp3/internal/framed/g$a;->c:I

    iget v4, p0, Lokhttp3/internal/framed/g$a;->a:I

    iget-byte v5, p0, Lokhttp3/internal/framed/g$a;->b:B

    invoke-static {v7, v3, v4, v1, v5}, Lokhttp3/internal/framed/g$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 637
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/framed/g$a;->f:Lokio/e;

    invoke-interface {v2}, Lokio/e;->k()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/framed/g$a;->c:I

    .line 638
    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const-string v2, "%s != TYPE_CONTINUATION"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lokhttp3/internal/framed/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 639
    :cond_1
    iget v2, p0, Lokhttp3/internal/framed/g$a;->c:I

    if-eq v2, v0, :cond_2

    const-string v2, "TYPE_CONTINUATION streamId changed"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lokhttp3/internal/framed/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 640
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
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
    const-wide/16 v2, -0x1

    .line 609
    :goto_0
    iget v4, p0, Lokhttp3/internal/framed/g$a;->d:I

    if-nez v4, :cond_1

    .line 610
    iget-object v4, p0, Lokhttp3/internal/framed/g$a;->f:Lokio/e;

    iget-short v5, p0, Lokhttp3/internal/framed/g$a;->e:S

    int-to-long v6, v5

    invoke-interface {v4, v6, v7}, Lokio/e;->h(J)V

    .line 611
    const/4 v4, 0x0

    iput-short v4, p0, Lokhttp3/internal/framed/g$a;->e:S

    .line 612
    iget-byte v4, p0, Lokhttp3/internal/framed/g$a;->b:B

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 620
    :goto_1
    return-wide v0

    .line 613
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/framed/g$a;->a()V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v4, p0, Lokhttp3/internal/framed/g$a;->f:Lokio/e;

    iget v5, p0, Lokhttp3/internal/framed/g$a;->d:I

    int-to-long v6, v5

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lokio/e;->read(Lokio/c;J)J

    move-result-wide v0

    .line 618
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_1

    .line 619
    :cond_2
    iget v2, p0, Lokhttp3/internal/framed/g$a;->d:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lokhttp3/internal/framed/g$a;->d:I

    goto :goto_1
.end method

.method public timeout()Lokio/y;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lokhttp3/internal/framed/g$a;->f:Lokio/e;

    invoke-interface {v0}, Lokio/e;->timeout()Lokio/y;

    move-result-object v0

    return-object v0
.end method
