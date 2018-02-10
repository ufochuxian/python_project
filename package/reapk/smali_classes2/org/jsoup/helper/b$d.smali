.class public Lorg/jsoup/helper/b$d;
.super Lorg/jsoup/helper/b$a;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/b$a",
        "<",
        "Lorg/jsoup/Connection$d;",
        ">;",
        "Lorg/jsoup/Connection$d;"
    }
.end annotation


# static fields
.field private static final e:I = 0x14


# instance fields
.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/nio/ByteBuffer;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:Lorg/jsoup/Connection$c;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/b$a;-><init>(Lorg/jsoup/helper/b$1;)V

    .line 406
    iput-boolean v1, p0, Lorg/jsoup/helper/b$d;->k:Z

    .line 407
    iput v1, p0, Lorg/jsoup/helper/b$d;->l:I

    .line 412
    return-void
.end method

.method private constructor <init>(Lorg/jsoup/helper/b$d;)V
    .locals 5
    .param p1, "previousResponse"    # Lorg/jsoup/helper/b$d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/b$a;-><init>(Lorg/jsoup/helper/b$1;)V

    .line 406
    iput-boolean v4, p0, Lorg/jsoup/helper/b$d;->k:Z

    .line 407
    iput v4, p0, Lorg/jsoup/helper/b$d;->l:I

    .line 416
    if-eqz p1, :cond_0

    .line 417
    iget v0, p1, Lorg/jsoup/helper/b$d;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/helper/b$d;->l:I

    .line 418
    iget v0, p0, Lorg/jsoup/helper/b$d;->l:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 419
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many redirects occurred trying to load URL %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jsoup/helper/b$d;->a()Ljava/net/URL;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    return-void
.end method

.method static a(Lorg/jsoup/Connection$c;)Lorg/jsoup/helper/b$d;
    .locals 1
    .param p0, "req"    # Lorg/jsoup/Connection$c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/helper/b$d;->a(Lorg/jsoup/Connection$c;Lorg/jsoup/helper/b$d;)Lorg/jsoup/helper/b$d;

    move-result-object v0

    return-object v0
.end method

.method static a(Lorg/jsoup/Connection$c;Lorg/jsoup/helper/b$d;)Lorg/jsoup/helper/b$d;
    .locals 14
    .param p0, "req"    # Lorg/jsoup/Connection$c;
    .param p1, "previousResponse"    # Lorg/jsoup/helper/b$d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const-string v11, "Request must not be null"

    invoke-static {p0, v11}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->a()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 430
    .local v8, "protocol":Ljava/lang/String;
    const-string v11, "http"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "https"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 431
    new-instance v11, Ljava/net/MalformedURLException;

    const-string v12, "Only http & https protocols supported"

    invoke-direct {v11, v12}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 434
    :cond_0
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->b()Lorg/jsoup/Connection$Method;

    move-result-object v11

    sget-object v12, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    if-ne v11, v12, :cond_1

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->j()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 435
    invoke-static {p0}, Lorg/jsoup/helper/b$d;->d(Lorg/jsoup/Connection$c;)V

    .line 436
    :cond_1
    invoke-static {p0}, Lorg/jsoup/helper/b$d;->b(Lorg/jsoup/Connection$c;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 439
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 440
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->b()Lorg/jsoup/Connection$Method;

    move-result-object v11

    sget-object v12, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    if-ne v11, v12, :cond_2

    .line 441
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->j()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/jsoup/helper/b$d;->a(Ljava/util/Collection;Ljava/io/OutputStream;)V

    .line 443
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 444
    .local v10, "status":I
    const/4 v7, 0x0

    .line 445
    .local v7, "needsRedirect":Z
    const/16 v11, 0xc8

    if-eq v10, v11, :cond_4

    .line 446
    const/16 v11, 0x12e

    if-eq v10, v11, :cond_3

    const/16 v11, 0x12d

    if-eq v10, v11, :cond_3

    const/16 v11, 0x12f

    if-ne v10, v11, :cond_6

    .line 447
    :cond_3
    const/4 v7, 0x1

    .line 451
    :cond_4
    new-instance v9, Lorg/jsoup/helper/b$d;

    invoke-direct {v9, p1}, Lorg/jsoup/helper/b$d;-><init>(Lorg/jsoup/helper/b$d;)V

    .line 452
    .local v9, "res":Lorg/jsoup/helper/b$d;
    invoke-direct {v9, v1, p1}, Lorg/jsoup/helper/b$d;->a(Ljava/net/HttpURLConnection;Lorg/jsoup/Connection$d;)V

    .line 453
    if-eqz v7, :cond_8

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->g()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 454
    sget-object v11, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-interface {p0, v11}, Lorg/jsoup/Connection$c;->a(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    .line 455
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->j()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->clear()V

    .line 457
    const-string v11, "Location"

    invoke-virtual {v9, v11}, Lorg/jsoup/helper/b$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "location":Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v11, "http:/"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x6

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-eq v11, v12, :cond_5

    .line 459
    const/4 v11, 0x6

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 460
    :cond_5
    new-instance v11, Ljava/net/URL;

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->a()Ljava/net/URL;

    move-result-object v12

    invoke-static {v6}, Lorg/jsoup/helper/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-interface {p0, v11}, Lorg/jsoup/Connection$c;->a(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    .line 462
    iget-object v11, v9, Lorg/jsoup/helper/b$d;->d:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 463
    .local v3, "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {p0, v11, v12}, Lorg/jsoup/Connection$c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 492
    .end local v3    # "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "needsRedirect":Z
    .end local v9    # "res":Lorg/jsoup/helper/b$d;
    .end local v10    # "status":I
    :catchall_0
    move-exception v11

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v11

    .line 448
    .restart local v7    # "needsRedirect":Z
    .restart local v10    # "status":I
    :cond_6
    :try_start_1
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->h()Z

    move-result v11

    if-nez v11, :cond_4

    .line 449
    new-instance v11, Lorg/jsoup/HttpStatusException;

    const-string v12, "HTTP error fetching URL"

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->a()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v10, v13}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v11

    .line 465
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "location":Ljava/lang/String;
    .restart local v9    # "res":Lorg/jsoup/helper/b$d;
    :cond_7
    invoke-static {p0, v9}, Lorg/jsoup/helper/b$d;->a(Lorg/jsoup/Connection$c;Lorg/jsoup/helper/b$d;)Lorg/jsoup/helper/b$d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 492
    .end local v9    # "res":Lorg/jsoup/helper/b$d;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 496
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "location":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 467
    .restart local v9    # "res":Lorg/jsoup/helper/b$d;
    :cond_8
    :try_start_2
    iput-object p0, v9, Lorg/jsoup/helper/b$d;->m:Lorg/jsoup/Connection$c;

    .line 470
    invoke-virtual {v9}, Lorg/jsoup/helper/b$d;->h()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "contentType":Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->i()Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "text/"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "application/xml"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "application/xhtml+xml"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 472
    new-instance v11, Lorg/jsoup/UnsupportedMimeTypeException;

    const-string v12, "Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml"

    invoke-interface {p0}, Lorg/jsoup/Connection$c;->a()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v2, v13}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    :cond_9
    const/4 v0, 0x0

    .line 476
    .local v0, "bodyStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 478
    .local v4, "dataStream":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 479
    :goto_2
    const-string v11, "Content-Encoding"

    invoke-virtual {v9, v11}, Lorg/jsoup/helper/b$d;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "Content-Encoding"

    invoke-virtual {v9, v11}, Lorg/jsoup/helper/b$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "gzip"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    new-instance v11, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v11

    .line 483
    :goto_3
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->f()I

    move-result v11

    invoke-static {v0, v11}, Lorg/jsoup/helper/a;->a(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iput-object v11, v9, Lorg/jsoup/helper/b$d;->h:Ljava/nio/ByteBuffer;

    .line 484
    iget-object v11, v9, Lorg/jsoup/helper/b$d;->j:Ljava/lang/String;

    invoke-static {v11}, Lorg/jsoup/helper/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 486
    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 487
    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    :cond_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 495
    const/4 v11, 0x1

    iput-boolean v11, v9, Lorg/jsoup/helper/b$d;->k:Z

    goto/16 :goto_1

    .line 478
    :cond_c
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_2

    .line 479
    :cond_d
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v11

    goto :goto_3

    .line 486
    :catchall_1
    move-exception v11

    if-eqz v0, :cond_e

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 487
    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_f
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private a(Ljava/net/HttpURLConnection;Lorg/jsoup/Connection$d;)V
    .locals 5
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "previousResponse"    # Lorg/jsoup/Connection$d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    move-result-object v3

    iput-object v3, p0, Lorg/jsoup/helper/b$d;->b:Lorg/jsoup/Connection$Method;

    .line 560
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    iput-object v3, p0, Lorg/jsoup/helper/b$d;->a:Ljava/net/URL;

    .line 561
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lorg/jsoup/helper/b$d;->f:I

    .line 562
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jsoup/helper/b$d;->g:Ljava/lang/String;

    .line 563
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jsoup/helper/b$d;->j:Ljava/lang/String;

    .line 565
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 566
    .local v2, "resHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0, v2}, Lorg/jsoup/helper/b$d;->a(Ljava/util/Map;)V

    .line 569
    if-eqz p2, :cond_1

    .line 570
    invoke-interface {p2}, Lorg/jsoup/Connection$d;->d()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 571
    .local v1, "prevCookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/jsoup/helper/b$d;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/jsoup/helper/b$d;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_0

    .line 575
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "prevCookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jsoup/Connection$b;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/Connection$b;>;"
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 607
    .local v3, "w":Ljava/io/OutputStreamWriter;
    const/4 v0, 0x1

    .line 608
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/Connection$b;

    .line 609
    .local v2, "keyVal":Lorg/jsoup/Connection$b;
    if-nez v0, :cond_0

    .line 610
    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->append(C)Ljava/io/Writer;

    .line 614
    :goto_1
    invoke-interface {v2}, Lorg/jsoup/Connection$b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 615
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 616
    invoke-interface {v2}, Lorg/jsoup/Connection$b;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 618
    .end local v2    # "keyVal":Lorg/jsoup/Connection$b;
    :cond_1
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 619
    return-void
.end method

.method private static b(Lorg/jsoup/Connection$c;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p0, "req"    # Lorg/jsoup/Connection$c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 543
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->b()Lorg/jsoup/Connection$Method;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/Connection$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 544
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 545
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 546
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 547
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->b()Lorg/jsoup/Connection$Method;

    move-result-object v3

    sget-object v4, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    if-ne v3, v4, :cond_0

    .line 548
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 549
    :cond_0
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->d()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 550
    const-string v3, "Cookie"

    invoke-static {p0}, Lorg/jsoup/helper/b$d;->c(Lorg/jsoup/Connection$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_1
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 552
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v0
.end method

.method private static c(Lorg/jsoup/Connection$c;)Ljava/lang/String;
    .locals 6
    .param p0, "req"    # Lorg/jsoup/Connection$c;

    .prologue
    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 624
    .local v1, "first":Z
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->d()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 625
    .local v0, "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 626
    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 628
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 632
    .end local v0    # "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static d(Lorg/jsoup/Connection$c;)V
    .locals 8
    .param p0, "req"    # Lorg/jsoup/Connection$c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->a()Ljava/net/URL;

    move-result-object v2

    .line 638
    .local v2, "in":Ljava/net/URL;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v4, "url":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 641
    .local v0, "first":Z
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 648
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const/4 v0, 0x0

    .line 651
    :cond_0
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->j()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/Connection$b;

    .line 652
    .local v3, "keyVal":Lorg/jsoup/Connection$b;
    if-nez v0, :cond_1

    .line 653
    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    :goto_1
    invoke-interface {v3}, Lorg/jsoup/Connection$b;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/jsoup/Connection$b;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 655
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 661
    .end local v3    # "keyVal":Lorg/jsoup/Connection$b;
    :cond_2
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v5}, Lorg/jsoup/Connection$c;->a(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    .line 662
    invoke-interface {p0}, Lorg/jsoup/Connection$c;->j()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->clear()V

    .line 663
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/net/URL;
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Lorg/jsoup/helper/b$a;->a()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "resHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 579
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 580
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 583
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 584
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "Set-Cookie"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 585
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 586
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 588
    new-instance v0, Lorg/jsoup/b/i;

    invoke-direct {v0, v7}, Lorg/jsoup/b/i;-><init>(Ljava/lang/String;)V

    .line 589
    .local v0, "cd":Lorg/jsoup/b/i;
    const-string v9, "="

    invoke-virtual {v0, v9}, Lorg/jsoup/b/i;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "cookieName":Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v0, v9}, Lorg/jsoup/b/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "cookieVal":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 592
    const-string v2, ""

    .line 595
    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 596
    invoke-virtual {p0, v1, v2}, Lorg/jsoup/helper/b$d;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_1

    .line 599
    .end local v0    # "cd":Lorg/jsoup/b/i;
    .end local v1    # "cookieName":Ljava/lang/String;
    .end local v2    # "cookieVal":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 600
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v6, v9}, Lorg/jsoup/helper/b$d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    goto :goto_0

    .line 603
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public bridge synthetic b()Lorg/jsoup/Connection$Method;
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Lorg/jsoup/helper/b$a;->b()Lorg/jsoup/Connection$Method;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Lorg/jsoup/helper/b$a;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Lorg/jsoup/helper/b$a;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lorg/jsoup/helper/b$d;->f:I

    return v0
.end method

.method public bridge synthetic e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$a;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/jsoup/helper/b$d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/jsoup/helper/b$d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lorg/jsoup/nodes/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget-boolean v1, p0, Lorg/jsoup/helper/b$d;->k:Z

    const-string v2, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    invoke-static {v1, v2}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 517
    iget-object v1, p0, Lorg/jsoup/helper/b$d;->h:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/helper/b$d;->a:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jsoup/helper/b$d;->m:Lorg/jsoup/Connection$c;

    invoke-interface {v4}, Lorg/jsoup/Connection$c;->k()Lorg/jsoup/b/f;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/jsoup/helper/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/b/f;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 518
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    iget-object v1, p0, Lorg/jsoup/helper/b$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 519
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->i()Lorg/jsoup/nodes/Document$a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$a;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    .line 520
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 524
    iget-boolean v1, p0, Lorg/jsoup/helper/b$d;->k:Z

    const-string v2, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v1, v2}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 527
    iget-object v1, p0, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 528
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/helper/b$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "body":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/jsoup/helper/b$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 532
    return-object v0

    .line 530
    .end local v0    # "body":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/helper/b$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "body":Ljava/lang/String;
    goto :goto_0
.end method

.method public k()[B
    .locals 2

    .prologue
    .line 536
    iget-boolean v0, p0, Lorg/jsoup/helper/b$d;->k:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 537
    iget-object v0, p0, Lorg/jsoup/helper/b$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
