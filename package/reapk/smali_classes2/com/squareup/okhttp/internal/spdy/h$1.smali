.class Lcom/squareup/okhttp/internal/spdy/h$1;
.super Lokio/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/h;-><init>(Lokio/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/spdy/h;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/h;Lokio/x;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/spdy/h;
    .param p2, "x0"    # Lokio/x;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/h$1;->a:Lcom/squareup/okhttp/internal/spdy/h;

    invoke-direct {p0, p2}, Lokio/h;-><init>(Lokio/x;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/c;J)J
    .locals 6
    .param p1, "sink"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 56
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/h$1;->a:Lcom/squareup/okhttp/internal/spdy/h;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/h;->a(Lcom/squareup/okhttp/internal/spdy/h;)I

    move-result v4

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 60
    :goto_0
    return-wide v0

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/h$1;->a:Lcom/squareup/okhttp/internal/spdy/h;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/h;->a(Lcom/squareup/okhttp/internal/spdy/h;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-super {p0, p1, v4, v5}, Lokio/h;->read(Lokio/c;J)J

    move-result-wide v0

    .line 58
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/h$1;->a:Lcom/squareup/okhttp/internal/spdy/h;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/h$1;->a:Lcom/squareup/okhttp/internal/spdy/h;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Lcom/squareup/okhttp/internal/spdy/h;)I

    move-result v3

    int-to-long v4, v3

    sub-long/2addr v4, v0

    long-to-int v3, v4

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Lcom/squareup/okhttp/internal/spdy/h;I)I

    goto :goto_0
.end method
