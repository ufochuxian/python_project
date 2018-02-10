.class public Lcom/squareup/okhttp/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/e$a;,
        Lcom/squareup/okhttp/e$b;
    }
.end annotation


# instance fields
.field volatile a:Z

.field b:Lcom/squareup/okhttp/v;

.field c:Lcom/squareup/okhttp/internal/a/g;

.field private final d:Lcom/squareup/okhttp/t;

.field private e:Z


# direct methods
.method protected constructor <init>(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;)V
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/t;
    .param p2, "originalRequest"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->x()Lcom/squareup/okhttp/t;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/e;->d:Lcom/squareup/okhttp/t;

    .line 49
    iput-object p2, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/e;Z)Lcom/squareup/okhttp/x;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/e;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/e;->a(Z)Lcom/squareup/okhttp/x;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/squareup/okhttp/x;
    .locals 3
    .param p1, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lcom/squareup/okhttp/e$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/squareup/okhttp/e$a;-><init>(Lcom/squareup/okhttp/e;ILcom/squareup/okhttp/v;Z)V

    .line 199
    .local v0, "chain":Lcom/squareup/okhttp/q$a;
    iget-object v1, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/q$a;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lcom/squareup/okhttp/e;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/e;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/squareup/okhttp/e;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/e;)Lcom/squareup/okhttp/t;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/e;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/e;->d:Lcom/squareup/okhttp/t;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 6

    .prologue
    .line 188
    iget-boolean v3, p0, Lcom/squareup/okhttp/e;->a:Z

    if-eqz v3, :cond_0

    const-string v2, "canceled call"

    .line 190
    .local v2, "string":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    invoke-virtual {v4}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v4

    const-string v5, "/..."

    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "redactedUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 193
    .end local v1    # "redactedUrl":Ljava/lang/String;
    .end local v2    # "string":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 188
    :cond_0
    const-string v2, "call"

    goto :goto_0

    .line 192
    .restart local v2    # "string":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/x;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/e;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already Executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/squareup/okhttp/e;->e:Z

    .line 76
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object v1, p0, Lcom/squareup/okhttp/e;->d:Lcom/squareup/okhttp/t;

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->s()Lcom/squareup/okhttp/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/m;->a(Lcom/squareup/okhttp/e;)V

    .line 79
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/e;->a(Z)Lcom/squareup/okhttp/x;

    move-result-object v0

    .line 80
    .local v0, "result":Lcom/squareup/okhttp/x;
    if-nez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    .end local v0    # "result":Lcom/squareup/okhttp/x;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/squareup/okhttp/e;->d:Lcom/squareup/okhttp/t;

    invoke-virtual {v2}, Lcom/squareup/okhttp/t;->s()Lcom/squareup/okhttp/m;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/squareup/okhttp/m;->b(Lcom/squareup/okhttp/e;)V

    throw v1

    .restart local v0    # "result":Lcom/squareup/okhttp/x;
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/e;->d:Lcom/squareup/okhttp/t;

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->s()Lcom/squareup/okhttp/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/m;->b(Lcom/squareup/okhttp/e;)V

    return-object v0
.end method

.method a(Lcom/squareup/okhttp/v;Z)Lcom/squareup/okhttp/x;
    .locals 21
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .param p2, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/v;->f()Lcom/squareup/okhttp/w;

    move-result-object v12

    .line 240
    .local v12, "body":Lcom/squareup/okhttp/w;
    if-eqz v12, :cond_1

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/v;->h()Lcom/squareup/okhttp/v$a;

    move-result-object v19

    .line 243
    .local v19, "requestBuilder":Lcom/squareup/okhttp/v$a;
    invoke-virtual {v12}, Lcom/squareup/okhttp/w;->a()Lcom/squareup/okhttp/r;

    move-result-object v13

    .line 244
    .local v13, "contentType":Lcom/squareup/okhttp/r;
    if-eqz v13, :cond_0

    .line 245
    const-string v2, "Content-Type"

    invoke-virtual {v13}, Lcom/squareup/okhttp/r;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 248
    :cond_0
    invoke-virtual {v12}, Lcom/squareup/okhttp/w;->b()J

    move-result-wide v14

    .line 249
    .local v14, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_3

    .line 250
    const-string v2, "Content-Length"

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 251
    const-string v2, "Transfer-Encoding"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 257
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object p1

    .line 261
    .end local v13    # "contentType":Lcom/squareup/okhttp/r;
    .end local v14    # "contentLength":J
    .end local v19    # "requestBuilder":Lcom/squareup/okhttp/v$a;
    :cond_1
    new-instance v2, Lcom/squareup/okhttp/internal/a/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/e;->d:Lcom/squareup/okhttp/t;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v11}, Lcom/squareup/okhttp/internal/a/g;-><init>(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;ZZZLcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/n;Lcom/squareup/okhttp/internal/a/m;Lcom/squareup/okhttp/x;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    .line 263
    const/16 v18, 0x0

    .line 265
    .local v18, "followUpCount":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/squareup/okhttp/e;->a:Z

    if-eqz v2, :cond_4

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->k()V

    .line 267
    const/4 v11, 0x0

    .line 291
    :cond_2
    :goto_2
    return-object v11

    .line 253
    .end local v18    # "followUpCount":I
    .restart local v13    # "contentType":Lcom/squareup/okhttp/r;
    .restart local v14    # "contentLength":J
    .restart local v19    # "requestBuilder":Lcom/squareup/okhttp/v$a;
    :cond_3
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 254
    const-string v2, "Content-Length"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 271
    .end local v13    # "contentType":Lcom/squareup/okhttp/r;
    .end local v14    # "contentLength":J
    .end local v19    # "requestBuilder":Lcom/squareup/okhttp/v$a;
    .restart local v18    # "followUpCount":I
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->a()V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v11

    .line 285
    .local v11, "response":Lcom/squareup/okhttp/x;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->o()Lcom/squareup/okhttp/v;

    move-result-object v17

    .line 287
    .local v17, "followUp":Lcom/squareup/okhttp/v;
    if-nez v17, :cond_6

    .line 288
    if-nez p2, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->k()V

    goto :goto_2

    .line 273
    .end local v11    # "response":Lcom/squareup/okhttp/x;
    .end local v17    # "followUp":Lcom/squareup/okhttp/v;
    :catch_0
    move-exception v16

    .line 274
    .local v16, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/internal/a/g;->a(Ljava/io/IOException;Lokio/w;)Lcom/squareup/okhttp/internal/a/g;

    move-result-object v20

    .line 275
    .local v20, "retryEngine":Lcom/squareup/okhttp/internal/a/g;
    if-eqz v20, :cond_5

    .line 276
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    goto :goto_1

    .line 281
    :cond_5
    throw v16

    .line 294
    .end local v16    # "e":Ljava/io/IOException;
    .end local v20    # "retryEngine":Lcom/squareup/okhttp/internal/a/g;
    .restart local v11    # "response":Lcom/squareup/okhttp/x;
    .restart local v17    # "followUp":Lcom/squareup/okhttp/v;
    :cond_6
    add-int/lit8 v18, v18, 0x1

    const/16 v2, 0x14

    move/from16 v0, v18

    if-le v0, v2, :cond_7

    .line 295
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/a/g;->b(Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->k()V

    .line 302
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->m()Lcom/squareup/okhttp/i;

    move-result-object v8

    .line 303
    .local v8, "connection":Lcom/squareup/okhttp/i;
    move-object/from16 p1, v17

    .line 304
    new-instance v2, Lcom/squareup/okhttp/internal/a/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/e;->d:Lcom/squareup/okhttp/t;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v11}, Lcom/squareup/okhttp/internal/a/g;-><init>(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;ZZZLcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/n;Lcom/squareup/okhttp/internal/a/m;Lcom/squareup/okhttp/x;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    goto/16 :goto_1
.end method

.method public a(Lcom/squareup/okhttp/f;)V
    .locals 1
    .param p1, "responseCallback"    # Lcom/squareup/okhttp/f;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/e;->a(Lcom/squareup/okhttp/f;Z)V

    .line 106
    return-void
.end method

.method a(Lcom/squareup/okhttp/f;Z)V
    .locals 3
    .param p1, "responseCallback"    # Lcom/squareup/okhttp/f;
    .param p2, "forWebSocket"    # Z

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/e;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/e;->e:Z

    .line 112
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/squareup/okhttp/e;->d:Lcom/squareup/okhttp/t;

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->s()Lcom/squareup/okhttp/m;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/e$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/squareup/okhttp/e$b;-><init>(Lcom/squareup/okhttp/e;Lcom/squareup/okhttp/f;ZLcom/squareup/okhttp/e$1;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/m;->a(Lcom/squareup/okhttp/e$b;)V

    .line 114
    return-void
.end method

.method b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/e;->b:Lcom/squareup/okhttp/v;

    invoke-virtual {v0}, Lcom/squareup/okhttp/v;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/e;->a:Z

    .line 122
    iget-object v0, p0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/e;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/g;->l()V

    .line 123
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/squareup/okhttp/e;->a:Z

    return v0
.end method
