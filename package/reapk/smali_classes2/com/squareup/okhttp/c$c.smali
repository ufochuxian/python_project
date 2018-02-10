.class final Lcom/squareup/okhttp/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/squareup/okhttp/p;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/squareup/okhttp/Protocol;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Lcom/squareup/okhttp/p;

.field private final h:Lcom/squareup/okhttp/o;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/x;)V
    .locals 1
    .param p1, "response"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/v;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c$c;->a:Ljava/lang/String;

    .line 547
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a/j;->c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/p;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c$c;->b:Lcom/squareup/okhttp/p;

    .line 548
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c$c;->c:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->b()Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c$c;->d:Lcom/squareup/okhttp/Protocol;

    .line 550
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->c()I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/c$c;->e:I

    .line 551
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c$c;->f:Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c$c;->g:Lcom/squareup/okhttp/p;

    .line 553
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->f()Lcom/squareup/okhttp/o;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c$c;->h:Lcom/squareup/okhttp/o;

    .line 554
    return-void
.end method

.method public constructor <init>(Lokio/x;)V
    .locals 14
    .param p1, "in"    # Lokio/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    :try_start_0
    invoke-static {p1}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v7

    .line 508
    .local v7, "source":Lokio/e;
    invoke-interface {v7}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/squareup/okhttp/c$c;->a:Ljava/lang/String;

    .line 509
    invoke-interface {v7}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/squareup/okhttp/c$c;->c:Ljava/lang/String;

    .line 510
    new-instance v9, Lcom/squareup/okhttp/p$a;

    invoke-direct {v9}, Lcom/squareup/okhttp/p$a;-><init>()V

    .line 511
    .local v9, "varyHeadersBuilder":Lcom/squareup/okhttp/p$a;
    invoke-static {v7}, Lcom/squareup/okhttp/c;->a(Lokio/e;)I

    move-result v10

    .line 512
    .local v10, "varyRequestHeaderLineCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 513
    invoke-interface {v7}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {v9}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v11

    iput-object v11, p0, Lcom/squareup/okhttp/c$c;->b:Lcom/squareup/okhttp/p;

    .line 517
    invoke-interface {v7}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/squareup/okhttp/internal/a/p;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v8

    .line 518
    .local v8, "statusLine":Lcom/squareup/okhttp/internal/a/p;
    iget-object v11, v8, Lcom/squareup/okhttp/internal/a/p;->d:Lcom/squareup/okhttp/Protocol;

    iput-object v11, p0, Lcom/squareup/okhttp/c$c;->d:Lcom/squareup/okhttp/Protocol;

    .line 519
    iget v11, v8, Lcom/squareup/okhttp/internal/a/p;->e:I

    iput v11, p0, Lcom/squareup/okhttp/c$c;->e:I

    .line 520
    iget-object v11, v8, Lcom/squareup/okhttp/internal/a/p;->f:Ljava/lang/String;

    iput-object v11, p0, Lcom/squareup/okhttp/c$c;->f:Ljava/lang/String;

    .line 521
    new-instance v6, Lcom/squareup/okhttp/p$a;

    invoke-direct {v6}, Lcom/squareup/okhttp/p$a;-><init>()V

    .line 522
    .local v6, "responseHeadersBuilder":Lcom/squareup/okhttp/p$a;
    invoke-static {v7}, Lcom/squareup/okhttp/c;->a(Lokio/e;)I

    move-result v5

    .line 523
    .local v5, "responseHeaderLineCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 524
    invoke-interface {v7}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 526
    :cond_1
    invoke-virtual {v6}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v11

    iput-object v11, p0, Lcom/squareup/okhttp/c$c;->g:Lcom/squareup/okhttp/p;

    .line 528
    invoke-direct {p0}, Lcom/squareup/okhttp/c$c;->a()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 529
    invoke-interface {v7}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "blank":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 531
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "expected \"\" but was \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    .end local v0    # "blank":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "responseHeaderLineCount":I
    .end local v6    # "responseHeadersBuilder":Lcom/squareup/okhttp/p$a;
    .end local v7    # "source":Lokio/e;
    .end local v8    # "statusLine":Lcom/squareup/okhttp/internal/a/p;
    .end local v9    # "varyHeadersBuilder":Lcom/squareup/okhttp/p$a;
    .end local v10    # "varyRequestHeaderLineCount":I
    :catchall_0
    move-exception v11

    invoke-interface {p1}, Lokio/x;->close()V

    throw v11

    .line 533
    .restart local v0    # "blank":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "responseHeaderLineCount":I
    .restart local v6    # "responseHeadersBuilder":Lcom/squareup/okhttp/p$a;
    .restart local v7    # "source":Lokio/e;
    .restart local v8    # "statusLine":Lcom/squareup/okhttp/internal/a/p;
    .restart local v9    # "varyHeadersBuilder":Lcom/squareup/okhttp/p$a;
    .restart local v10    # "varyRequestHeaderLineCount":I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "cipherSuite":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/squareup/okhttp/c$c;->a(Lokio/e;)Ljava/util/List;

    move-result-object v4

    .line 535
    .local v4, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0, v7}, Lcom/squareup/okhttp/c$c;->a(Lokio/e;)Ljava/util/List;

    move-result-object v3

    .line 536
    .local v3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {v1, v4, v3}, Lcom/squareup/okhttp/o;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/squareup/okhttp/o;

    move-result-object v11

    iput-object v11, p0, Lcom/squareup/okhttp/c$c;->h:Lcom/squareup/okhttp/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    .end local v0    # "blank":Ljava/lang/String;
    .end local v1    # "cipherSuite":Ljava/lang/String;
    .end local v3    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v4    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_2
    invoke-interface {p1}, Lokio/x;->close()V

    .line 543
    return-void

    .line 538
    :cond_3
    const/4 v11, 0x0

    :try_start_2
    iput-object v11, p0, Lcom/squareup/okhttp/c$c;->h:Lcom/squareup/okhttp/o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private a(Lokio/e;)Ljava/util/List;
    .locals 9
    .param p1, "source"    # Lokio/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-static {p1}, Lcom/squareup/okhttp/c;->a(Lokio/e;)I

    move-result v4

    .line 599
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 610
    :cond_0
    return-object v6

    .line 602
    :cond_1
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 603
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 604
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 605
    invoke-interface {p1}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v5

    .line 606
    .local v5, "line":Ljava/lang/String;
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    .line 607
    .local v0, "bytes":Lokio/c;
    invoke-static {v5}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v0, v7}, Lokio/c;->a(Lokio/ByteString;)Lokio/c;

    .line 608
    invoke-virtual {v0}, Lokio/c;->g()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 611
    .end local v0    # "bytes":Lokio/c;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v2

    .line 612
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private a(Lokio/d;Ljava/util/List;)V
    .locals 8
    .param p1, "sink"    # Lokio/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/d;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-interface {p1, v6, v7}, Lokio/d;->n(J)Lokio/d;

    .line 620
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Lokio/d;->m(I)Lokio/d;

    .line 621
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 622
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 623
    .local v0, "bytes":[B
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "line":Ljava/lang/String;
    invoke-interface {p1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 625
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Lokio/d;->m(I)Lokio/d;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 630
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/squareup/okhttp/c$c;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/internal/a$c;)Lcom/squareup/okhttp/x;
    .locals 6
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .param p2, "snapshot"    # Lcom/squareup/okhttp/internal/a$c;

    .prologue
    .line 639
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->g:Lcom/squareup/okhttp/p;

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, "contentType":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->g:Lcom/squareup/okhttp/p;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v3, Lcom/squareup/okhttp/v$a;

    invoke-direct {v3}, Lcom/squareup/okhttp/v$a;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/c$c;->a:Ljava/lang/String;

    .line 642
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/c$c;->c:Ljava/lang/String;

    const/4 v5, 0x0

    .line 643
    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/c$c;->b:Lcom/squareup/okhttp/p;

    .line 644
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/v$a;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/v$a;

    move-result-object v3

    .line 645
    invoke-virtual {v3}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v0

    .line 646
    .local v0, "cacheRequest":Lcom/squareup/okhttp/v;
    new-instance v3, Lcom/squareup/okhttp/x$a;

    invoke-direct {v3}, Lcom/squareup/okhttp/x$a;-><init>()V

    .line 647
    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x$a;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/c$c;->d:Lcom/squareup/okhttp/Protocol;

    .line 648
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/x$a;

    move-result-object v3

    iget v4, p0, Lcom/squareup/okhttp/c$c;->e:I

    .line 649
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/x$a;->a(I)Lcom/squareup/okhttp/x$a;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/c$c;->f:Ljava/lang/String;

    .line 650
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/x$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/x$a;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/c$c;->g:Lcom/squareup/okhttp/p;

    .line 651
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/x$a;

    move-result-object v3

    new-instance v4, Lcom/squareup/okhttp/c$b;

    invoke-direct {v4, p2, v2, v1}, Lcom/squareup/okhttp/c$b;-><init>(Lcom/squareup/okhttp/internal/a$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/y;)Lcom/squareup/okhttp/x$a;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/c$c;->h:Lcom/squareup/okhttp/o;

    .line 653
    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/x$a;

    move-result-object v3

    .line 654
    invoke-virtual {v3}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object v3

    return-object v3
.end method

.method public a(Lcom/squareup/okhttp/internal/a$a;)V
    .locals 8
    .param p1, "editor"    # Lcom/squareup/okhttp/internal/a$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    .line 557
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/internal/a$a;->b(I)Lokio/w;

    move-result-object v3

    invoke-static {v3}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v1

    .line 559
    .local v1, "sink":Lokio/d;
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 560
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 561
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->c:Ljava/lang/String;

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 562
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 563
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->b:Lcom/squareup/okhttp/p;

    invoke-virtual {v3}, Lcom/squareup/okhttp/p;->a()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lokio/d;->n(J)Lokio/d;

    .line 564
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->b:Lcom/squareup/okhttp/p;

    invoke-virtual {v3}, Lcom/squareup/okhttp/p;->a()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 566
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->b:Lcom/squareup/okhttp/p;

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 567
    const-string v3, ": "

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 568
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->b:Lcom/squareup/okhttp/p;

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 569
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_0
    new-instance v3, Lcom/squareup/okhttp/internal/a/p;

    iget-object v4, p0, Lcom/squareup/okhttp/c$c;->d:Lcom/squareup/okhttp/Protocol;

    iget v5, p0, Lcom/squareup/okhttp/c$c;->e:I

    iget-object v6, p0, Lcom/squareup/okhttp/c$c;->f:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/squareup/okhttp/internal/a/p;-><init>(Lcom/squareup/okhttp/Protocol;ILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/p;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 573
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 574
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->g:Lcom/squareup/okhttp/p;

    invoke-virtual {v3}, Lcom/squareup/okhttp/p;->a()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lokio/d;->n(J)Lokio/d;

    .line 575
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 576
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->g:Lcom/squareup/okhttp/p;

    invoke-virtual {v3}, Lcom/squareup/okhttp/p;->a()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 577
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->g:Lcom/squareup/okhttp/p;

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 578
    const-string v3, ": "

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 579
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->g:Lcom/squareup/okhttp/p;

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 580
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/c$c;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 584
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 585
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->h:Lcom/squareup/okhttp/o;

    invoke-virtual {v3}, Lcom/squareup/okhttp/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 586
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 587
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->h:Lcom/squareup/okhttp/o;

    invoke-virtual {v3}, Lcom/squareup/okhttp/o;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/squareup/okhttp/c$c;->a(Lokio/d;Ljava/util/List;)V

    .line 588
    iget-object v3, p0, Lcom/squareup/okhttp/c$c;->h:Lcom/squareup/okhttp/o;

    invoke-virtual {v3}, Lcom/squareup/okhttp/o;->d()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/squareup/okhttp/c$c;->a(Lokio/d;Ljava/util/List;)V

    .line 590
    :cond_2
    invoke-interface {v1}, Lokio/d;->close()V

    .line 591
    return-void
.end method

.method public a(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;)Z
    .locals 2
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .param p2, "response"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/squareup/okhttp/c$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/c$c;->c:Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/c$c;->b:Lcom/squareup/okhttp/p;

    .line 635
    invoke-static {p2, v0, p1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
