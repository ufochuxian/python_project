.class public final Lokhttp3/internal/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lokhttp3/internal/b/b;->a:Z

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/ac;
    .locals 14
    .param p1, "chain"    # Lokhttp3/v$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v9, p1

    check-cast v9, Lokhttp3/internal/b/i;

    invoke-virtual {v9}, Lokhttp3/internal/b/i;->d()Lokhttp3/internal/b/h;

    move-result-object v2

    .local v2, "httpStream":Lokhttp3/internal/b/h;
    move-object v9, p1

    .line 38
    check-cast v9, Lokhttp3/internal/b/i;

    invoke-virtual {v9}, Lokhttp3/internal/b/i;->c()Lokhttp3/internal/connection/f;

    move-result-object v8

    .line 39
    .local v8, "streamAllocation":Lokhttp3/internal/connection/f;
    invoke-interface {p1}, Lokhttp3/v$a;->a()Lokhttp3/aa;

    move-result-object v3

    .line 41
    .local v3, "request":Lokhttp3/aa;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 42
    .local v6, "sentRequestMillis":J
    invoke-interface {v2, v3}, Lokhttp3/internal/b/h;->a(Lokhttp3/aa;)V

    .line 44
    invoke-virtual {v3}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lokhttp3/internal/b/g;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 45
    invoke-virtual {v3}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ab;->contentLength()J

    move-result-wide v10

    invoke-interface {v2, v3, v10, v11}, Lokhttp3/internal/b/h;->a(Lokhttp3/aa;J)Lokio/w;

    move-result-object v4

    .line 46
    .local v4, "requestBodyOut":Lokio/w;
    invoke-static {v4}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v0

    .line 47
    .local v0, "bufferedRequestBody":Lokio/d;
    invoke-virtual {v3}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v9

    invoke-virtual {v9, v0}, Lokhttp3/ab;->writeTo(Lokio/d;)V

    .line 48
    invoke-interface {v0}, Lokio/d;->close()V

    .line 51
    .end local v0    # "bufferedRequestBody":Lokio/d;
    .end local v4    # "requestBodyOut":Lokio/w;
    :cond_0
    invoke-interface {v2}, Lokhttp3/internal/b/h;->d()V

    .line 53
    invoke-interface {v2}, Lokhttp3/internal/b/h;->b()Lokhttp3/ac$a;

    move-result-object v9

    .line 54
    invoke-virtual {v9, v3}, Lokhttp3/ac$a;->a(Lokhttp3/aa;)Lokhttp3/ac$a;

    move-result-object v9

    .line 55
    invoke-virtual {v8}, Lokhttp3/internal/connection/f;->b()Lokhttp3/internal/connection/c;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/internal/connection/c;->c()Lokhttp3/s;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/ac$a;->a(Lokhttp3/s;)Lokhttp3/ac$a;

    move-result-object v9

    .line 56
    invoke-virtual {v9, v6, v7}, Lokhttp3/ac$a;->a(J)Lokhttp3/ac$a;

    move-result-object v9

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lokhttp3/ac$a;->b(J)Lokhttp3/ac$a;

    move-result-object v9

    .line 58
    invoke-virtual {v9}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v5

    .line 60
    .local v5, "response":Lokhttp3/ac;
    iget-boolean v9, p0, Lokhttp3/internal/b/b;->a:Z

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Lokhttp3/ac;->c()I

    move-result v9

    const/16 v10, 0x65

    if-eq v9, v10, :cond_2

    .line 61
    :cond_1
    invoke-virtual {v5}, Lokhttp3/ac;->i()Lokhttp3/ac$a;

    move-result-object v9

    .line 62
    invoke-interface {v2, v5}, Lokhttp3/internal/b/h;->a(Lokhttp3/ac;)Lokhttp3/ad;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/ac$a;->a(Lokhttp3/ad;)Lokhttp3/ac$a;

    move-result-object v9

    .line 63
    invoke-virtual {v9}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v5

    .line 66
    :cond_2
    const-string v9, "close"

    invoke-virtual {v5}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v10

    const-string v11, "Connection"

    invoke-virtual {v10, v11}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "close"

    const-string v10, "Connection"

    .line 67
    invoke-virtual {v5, v10}, Lokhttp3/ac;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 68
    :cond_3
    invoke-virtual {v8}, Lokhttp3/internal/connection/f;->d()V

    .line 71
    :cond_4
    invoke-virtual {v5}, Lokhttp3/ac;->c()I

    move-result v1

    .line 72
    .local v1, "code":I
    const/16 v9, 0xcc

    if-eq v1, v9, :cond_5

    const/16 v9, 0xcd

    if-ne v1, v9, :cond_6

    :cond_5
    invoke-virtual {v5}, Lokhttp3/ac;->h()Lokhttp3/ad;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ad;->contentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    .line 73
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " had non-zero Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 74
    invoke-virtual {v5}, Lokhttp3/ac;->h()Lokhttp3/ad;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/ad;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 77
    :cond_6
    return-object v5
.end method
