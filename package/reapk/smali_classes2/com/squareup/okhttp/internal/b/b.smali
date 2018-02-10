.class public Lcom/squareup/okhttp/internal/b/b;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/squareup/okhttp/t;

.field protected b:Ljava/io/IOException;

.field protected c:Lcom/squareup/okhttp/internal/a/g;

.field d:Lcom/squareup/okhttp/o;

.field private f:Lcom/squareup/okhttp/p$a;

.field private g:J

.field private h:I

.field private i:Lcom/squareup/okhttp/p;

.field private j:Lcom/squareup/okhttp/z;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "OPTIONS"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "GET"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "HEAD"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "POST"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "PUT"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "DELETE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TRACE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PATCH"

    aput-object v3, v1, v2

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/squareup/okhttp/internal/b/b;->e:Ljava/util/Set;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/t;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 79
    new-instance v0, Lcom/squareup/okhttp/p$a;

    invoke-direct {v0}, Lcom/squareup/okhttp/p$a;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->f:Lcom/squareup/okhttp/p$a;

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/b/b;->g:J

    .line 103
    iput-object p2, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    .line 104
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/m;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/g;
    .locals 14
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "connection"    # Lcom/squareup/okhttp/i;
    .param p3, "requestBody"    # Lcom/squareup/okhttp/internal/a/m;
    .param p4, "priorResponse"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 317
    new-instance v0, Lcom/squareup/okhttp/v$a;

    invoke-direct {v0}, Lcom/squareup/okhttp/v$a;-><init>()V

    .line 318
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/b/b;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/v$a;->a(Ljava/net/URL;)Lcom/squareup/okhttp/v$a;

    move-result-object v0

    const/4 v4, 0x0

    .line 319
    invoke-virtual {v0, p1, v4}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    move-result-object v10

    .line 320
    .local v10, "builder":Lcom/squareup/okhttp/v$a;
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->f:Lcom/squareup/okhttp/p$a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v11

    .line 321
    .local v11, "headers":Lcom/squareup/okhttp/p;
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual {v11}, Lcom/squareup/okhttp/p;->a()I

    move-result v13

    .local v13, "size":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 322
    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 321
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 325
    :cond_0
    const/4 v3, 0x0

    .line 326
    .local v3, "bufferRequestBody":Z
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/b/b;->g:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 329
    const-string v0, "Content-Length"

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/b/b;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 337
    :goto_1
    const-string v0, "Content-Type"

    invoke-virtual {v11, v0}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 338
    const-string v0, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v10, v0, v4}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 342
    :cond_1
    const-string v0, "User-Agent"

    invoke-virtual {v11, v0}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 343
    const-string v0, "User-Agent"

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 346
    :cond_2
    invoke-virtual {v10}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v2

    .line 349
    .local v2, "request":Lcom/squareup/okhttp/v;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    .line 350
    .local v1, "engineClient":Lcom/squareup/okhttp/t;
    sget-object v0, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/b/b;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->y()Lcom/squareup/okhttp/t;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/t;->a(Lcom/squareup/okhttp/c;)Lcom/squareup/okhttp/t;

    move-result-object v1

    .line 354
    :cond_3
    new-instance v0, Lcom/squareup/okhttp/internal/a/g;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/squareup/okhttp/internal/a/g;-><init>(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;ZZZLcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/n;Lcom/squareup/okhttp/internal/a/m;Lcom/squareup/okhttp/x;)V

    return-object v0

    .line 330
    .end local v1    # "engineClient":Lcom/squareup/okhttp/t;
    .end local v2    # "request":Lcom/squareup/okhttp/v;
    :cond_4
    iget v0, p0, Lcom/squareup/okhttp/internal/b/b;->chunkLength:I

    if-lez v0, :cond_5

    .line 331
    const-string v0, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v10, v0, v4}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    goto :goto_1

    .line 333
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private a()Lcom/squareup/okhttp/p;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->i:Lcom/squareup/okhttp/p;

    if-nez v2, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->d()Lcom/squareup/okhttp/internal/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v1

    .line 147
    .local v1, "response":Lcom/squareup/okhttp/x;
    invoke-virtual {v1}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v0

    .line 149
    .local v0, "headers":Lcom/squareup/okhttp/p;
    invoke-virtual {v0}, Lcom/squareup/okhttp/p;->c()Lcom/squareup/okhttp/p$a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-Response-Source"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b/b;->a(Lcom/squareup/okhttp/x;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->i:Lcom/squareup/okhttp/p;

    .line 153
    .end local v0    # "headers":Lcom/squareup/okhttp/p;
    .end local v1    # "response":Lcom/squareup/okhttp/x;
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->i:Lcom/squareup/okhttp/p;

    return-object v2
.end method

.method private static a(Lcom/squareup/okhttp/x;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->k()Lcom/squareup/okhttp/x;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->l()Lcom/squareup/okhttp/x;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    const-string v0, "NONE"

    .line 166
    :goto_0
    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->l()Lcom/squareup/okhttp/x;

    move-result-object v0

    if-nez v0, :cond_2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONDITIONAL_CACHE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->k()Lcom/squareup/okhttp/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/x;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "protocolsString"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v2, "protocolsList":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    if-eqz p2, :cond_0

    .line 542
    iget-object v3, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v3}, Lcom/squareup/okhttp/t;->t()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 544
    :cond_0
    const-string v3, ","

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 546
    .local v1, "protocol":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 551
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/t;->a(Ljava/util/List;)Lcom/squareup/okhttp/t;

    .line 552
    return-void
.end method

.method private a(Z)Z
    .locals 3
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->a()V

    .line 426
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->j()Lcom/squareup/okhttp/z;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->j:Lcom/squareup/okhttp/z;

    .line 427
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->i()Lcom/squareup/okhttp/i;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    .line 428
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->i()Lcom/squareup/okhttp/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/i;->k()Lcom/squareup/okhttp/o;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->d:Lcom/squareup/okhttp/o;

    .line 430
    if-eqz p1, :cond_0

    .line 431
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_0
    const/4 v2, 0x1

    .line 439
    :goto_1
    return v2

    .line 428
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/a/g;->a(Ljava/io/IOException;)Lcom/squareup/okhttp/internal/a/g;

    move-result-object v1

    .line 437
    .local v1, "retryEngine":Lcom/squareup/okhttp/internal/a/g;
    if-eqz v1, :cond_2

    .line 438
    iput-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    .line 439
    const/4 v2, 0x0

    goto :goto_1

    .line 443
    :cond_2
    iput-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->b:Ljava/io/IOException;

    .line 444
    throw v0
.end method

.method private b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->b:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->b:Ljava/io/IOException;

    throw v1

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    if-eqz v1, :cond_1

    .line 313
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/b/b;->connected:Z

    .line 299
    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/b/b;->doOutput:Z

    if-eqz v1, :cond_2

    .line 300
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->method:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    const-string v1, "POST"

    iput-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->method:Ljava/lang/String;

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->method:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/b/b;->a(Ljava/lang/String;Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/m;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->b:Ljava/io/IOException;

    .line 311
    throw v0

    .line 303
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->method:Ljava/lang/String;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/h;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/b/b;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not support writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agent":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agent":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Lcom/squareup/okhttp/internal/a/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->b()V

    .line 371
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/g;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    .line 385
    :goto_0
    return-object v4

    .line 376
    :cond_0
    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/b/b;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v3

    .line 381
    .local v3, "response":Lcom/squareup/okhttp/x;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/g;->o()Lcom/squareup/okhttp/v;

    move-result-object v1

    .line 383
    .local v1, "followUp":Lcom/squareup/okhttp/v;
    if-nez v1, :cond_1

    .line 384
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/g;->k()V

    .line 385
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    goto :goto_0

    .line 388
    :cond_1
    iget v4, p0, Lcom/squareup/okhttp/internal/b/b;->h:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/b/b;->h:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_2

    .line 389
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many follow-up requests: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/squareup/okhttp/internal/b/b;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :cond_2
    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->url:Ljava/net/URL;

    .line 394
    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->e()Lcom/squareup/okhttp/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/p;->c()Lcom/squareup/okhttp/p$a;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->f:Lcom/squareup/okhttp/p$a;

    .line 399
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/g;->d()Lokio/w;

    move-result-object v2

    .line 400
    .local v2, "requestBody":Lokio/w;
    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/b/b;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 401
    const/4 v2, 0x0

    .line 404
    :cond_3
    if-eqz v2, :cond_4

    instance-of v4, v2, Lcom/squareup/okhttp/internal/a/m;

    if-nez v4, :cond_4

    .line 405
    new-instance v4, Ljava/net/HttpRetryException;

    const-string v5, "Cannot retry streamed HTTP body"

    iget v6, p0, Lcom/squareup/okhttp/internal/b/b;->responseCode:I

    invoke-direct {v4, v5, v6}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 408
    :cond_4
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/a/g;->b(Ljava/net/URL;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 409
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/g;->k()V

    .line 412
    :cond_5
    iget-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/g;->m()Lcom/squareup/okhttp/i;

    move-result-object v0

    .line 413
    .local v0, "connection":Lcom/squareup/okhttp/i;
    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Lcom/squareup/okhttp/internal/a/m;

    .end local v2    # "requestBody":Lokio/w;
    invoke-direct {p0, v4, v0, v2, v3}, Lcom/squareup/okhttp/internal/b/b;->a(Ljava/lang/String;Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/m;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/g;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    goto/16 :goto_1
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/b/b;->connected:Z

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    if-nez p1, :cond_1

    .line 513
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    if-nez p2, :cond_2

    .line 521
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/h;->a(Ljava/lang/String;)V

    .line 531
    :goto_0
    return-void

    .line 526
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 527
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/b/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 529
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->f:Lcom/squareup/okhttp/p$a;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    goto :goto_0
.end method

.method public final connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->b()V

    .line 110
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/b/b;->a(Z)Z

    move-result v0

    .line 111
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 112
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/g;->l()V

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->a()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->d()Lcom/squareup/okhttp/internal/a/g;

    move-result-object v1

    .line 134
    .local v1, "response":Lcom/squareup/okhttp/internal/a/g;
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/x;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/x;->c()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/y;->d()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 140
    .end local v1    # "response":Lcom/squareup/okhttp/internal/a/g;
    :cond_0
    :goto_0
    return-object v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->a()Lcom/squareup/okhttp/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->d()Lcom/squareup/okhttp/internal/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/p;->a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/p;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->a()Lcom/squareup/okhttp/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 198
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->a()Lcom/squareup/okhttp/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->a()Lcom/squareup/okhttp/p;

    move-result-object v1

    .line 207
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->d()Lcom/squareup/okhttp/internal/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/a/p;->a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/p;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/p;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/b/b;->doInput:Z

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "This protocol does not support input"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->d()Lcom/squareup/okhttp/internal/a/g;

    move-result-object v0

    .line 233
    .local v0, "response":Lcom/squareup/okhttp/internal/a/g;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/b/b;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 234
    new-instance v1, Ljava/io/FileNotFoundException;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/b/b;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/y;->d()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/b/b;->connect()V

    .line 243
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/g;->e()Lokio/d;

    move-result-object v0

    .line 244
    .local v0, "sink":Lokio/d;
    if-nez v0, :cond_0

    .line 245
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/b/b;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/g;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_1
    invoke-interface {v0}, Lokio/d;->c()Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/b/b;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/b/b;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/URL;)I

    move-result v1

    .line 256
    .local v1, "hostPort":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/b/b;->usingProxy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v3}, Lcom/squareup/okhttp/t;->d()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 258
    .local v2, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 261
    .end local v2    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v3, Ljava/net/SocketPermission;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "connect, resolve"

    invoke-direct {v3, v4, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->b()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/b/b;->connected:Z

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->f:Lcom/squareup/okhttp/p$a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/p;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 265
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->f:Lcom/squareup/okhttp/p$a;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/p$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->d()Lcom/squareup/okhttp/internal/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/x;->c()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/b/b;->d()Lcom/squareup/okhttp/internal/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/x;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/t;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 271
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .param p1, "contentLength"    # I

    .prologue
    .line 562
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/b/b;->setFixedLengthStreamingMode(J)V

    .line 563
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 566
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/b/b;->chunkLength:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_2
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/b/b;->g:J

    .line 570
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 571
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 7
    .param p1, "newValue"    # J

    .prologue
    .line 500
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 501
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/b/b;->ifModifiedSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->f:Lcom/squareup/okhttp/p$a;

    const-string v1, "If-Modified-Since"

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/b/b;->ifModifiedSince:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/squareup/okhttp/internal/a/f;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/p$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->f:Lcom/squareup/okhttp/p$a;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/p$a;->c(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    goto :goto_0
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/t;->b(Z)V

    .line 276
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/t;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 284
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 555
    sget-object v0, Lcom/squareup/okhttp/internal/b/b;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/squareup/okhttp/internal/b/b;->e:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/b/b;->method:Ljava/lang/String;

    .line 559
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/b/b;->connected:Z

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    if-nez p1, :cond_1

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_1
    if-nez p2, :cond_2

    .line 487
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/h;->a(Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 492
    :cond_2
    const-string v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "X-Android-Protocols"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/b/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/b;->f:Lcom/squareup/okhttp/p$a;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/p$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    goto :goto_0
.end method

.method public final usingProxy()Z
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->j:Lcom/squareup/okhttp/z;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->j:Lcom/squareup/okhttp/z;

    .line 461
    invoke-virtual {v1}, Lcom/squareup/okhttp/z;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 463
    .local v0, "proxy":Ljava/net/Proxy;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 461
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    .line 462
    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->d()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 463
    .restart local v0    # "proxy":Ljava/net/Proxy;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
