.class final Lokhttp3/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lokhttp3/t;

.field private final e:Ljava/lang/String;

.field private final f:Lokhttp3/Protocol;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Lokhttp3/t;

.field private final j:Lokhttp3/s;

.field private final k:J

.field private final l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/d/e;->b()Lokhttp3/internal/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/d/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/c$c;->a:Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/d/e;->b()Lokhttp3/internal/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/d/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/c$c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/ac;)V
    .locals 2
    .param p1, "response"    # Lokhttp3/ac;

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->c:Ljava/lang/String;

    .line 595
    invoke-static {p1}, Lokhttp3/internal/b/f;->c(Lokhttp3/ac;)Lokhttp3/t;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->d:Lokhttp3/t;

    .line 596
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->e:Ljava/lang/String;

    .line 597
    invoke-virtual {p1}, Lokhttp3/ac;->b()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->f:Lokhttp3/Protocol;

    .line 598
    invoke-virtual {p1}, Lokhttp3/ac;->c()I

    move-result v0

    iput v0, p0, Lokhttp3/c$c;->g:I

    .line 599
    invoke-virtual {p1}, Lokhttp3/ac;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->h:Ljava/lang/String;

    .line 600
    invoke-virtual {p1}, Lokhttp3/ac;->g()Lokhttp3/t;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->i:Lokhttp3/t;

    .line 601
    invoke-virtual {p1}, Lokhttp3/ac;->f()Lokhttp3/s;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$c;->j:Lokhttp3/s;

    .line 602
    invoke-virtual {p1}, Lokhttp3/ac;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/c$c;->k:J

    .line 603
    invoke-virtual {p1}, Lokhttp3/ac;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/c$c;->l:J

    .line 604
    return-void
.end method

.method public constructor <init>(Lokio/x;)V
    .locals 22
    .param p1, "in"    # Lokio/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 541
    :try_start_0
    invoke-static/range {p1 .. p1}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v14

    .line 542
    .local v14, "source":Lokio/e;
    invoke-interface {v14}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/c$c;->c:Ljava/lang/String;

    .line 543
    invoke-interface {v14}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/c$c;->e:Ljava/lang/String;

    .line 544
    new-instance v17, Lokhttp3/t$a;

    invoke-direct/range {v17 .. v17}, Lokhttp3/t$a;-><init>()V

    .line 545
    .local v17, "varyHeadersBuilder":Lokhttp3/t$a;
    invoke-static {v14}, Lokhttp3/c;->a(Lokio/e;)I

    move-result v18

    .line 546
    .local v18, "varyRequestHeaderLineCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 547
    invoke-interface {v14}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lokhttp3/t$a;->a(Ljava/lang/String;)Lokhttp3/t$a;

    .line 546
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lokhttp3/t$a;->a()Lokhttp3/t;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/c$c;->d:Lokhttp3/t;

    .line 551
    invoke-interface {v14}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lokhttp3/internal/b/m;->a(Ljava/lang/String;)Lokhttp3/internal/b/m;

    move-result-object v15

    .line 552
    .local v15, "statusLine":Lokhttp3/internal/b/m;
    iget-object v0, v15, Lokhttp3/internal/b/m;->d:Lokhttp3/Protocol;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/c$c;->f:Lokhttp3/Protocol;

    .line 553
    iget v0, v15, Lokhttp3/internal/b/m;->e:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lokhttp3/c$c;->g:I

    .line 554
    iget-object v0, v15, Lokhttp3/internal/b/m;->f:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/c$c;->h:Ljava/lang/String;

    .line 555
    new-instance v12, Lokhttp3/t$a;

    invoke-direct {v12}, Lokhttp3/t$a;-><init>()V

    .line 556
    .local v12, "responseHeadersBuilder":Lokhttp3/t$a;
    invoke-static {v14}, Lokhttp3/c;->a(Lokio/e;)I

    move-result v11

    .line 557
    .local v11, "responseHeaderLineCount":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_1

    .line 558
    invoke-interface {v14}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lokhttp3/t$a;->a(Ljava/lang/String;)Lokhttp3/t$a;

    .line 557
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 560
    :cond_1
    sget-object v19, Lokhttp3/c$c;->a:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lokhttp3/t$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 561
    .local v13, "sendRequestMillisString":Ljava/lang/String;
    sget-object v19, Lokhttp3/c$c;->b:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lokhttp3/t$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 562
    .local v10, "receivedResponseMillisString":Ljava/lang/String;
    sget-object v19, Lokhttp3/c$c;->a:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lokhttp3/t$a;->c(Ljava/lang/String;)Lokhttp3/t$a;

    .line 563
    sget-object v19, Lokhttp3/c$c;->b:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lokhttp3/t$a;->c(Ljava/lang/String;)Lokhttp3/t$a;

    .line 564
    if-eqz v13, :cond_2

    .line 565
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    :goto_2
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokhttp3/c$c;->k:J

    .line 567
    if-eqz v10, :cond_3

    .line 568
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    :goto_3
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lokhttp3/c$c;->l:J

    .line 570
    invoke-virtual {v12}, Lokhttp3/t$a;->a()Lokhttp3/t;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/c$c;->i:Lokhttp3/t;

    .line 572
    invoke-direct/range {p0 .. p0}, Lokhttp3/c$c;->a()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 573
    invoke-interface {v14}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, "blank":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 575
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "expected \"\" but was \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    .end local v4    # "blank":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "receivedResponseMillisString":Ljava/lang/String;
    .end local v11    # "responseHeaderLineCount":I
    .end local v12    # "responseHeadersBuilder":Lokhttp3/t$a;
    .end local v13    # "sendRequestMillisString":Ljava/lang/String;
    .end local v14    # "source":Lokio/e;
    .end local v15    # "statusLine":Lokhttp3/internal/b/m;
    .end local v17    # "varyHeadersBuilder":Lokhttp3/t$a;
    .end local v18    # "varyRequestHeaderLineCount":I
    :catchall_0
    move-exception v19

    invoke-interface/range {p1 .. p1}, Lokio/x;->close()V

    throw v19

    .line 565
    .restart local v7    # "i":I
    .restart local v10    # "receivedResponseMillisString":Ljava/lang/String;
    .restart local v11    # "responseHeaderLineCount":I
    .restart local v12    # "responseHeadersBuilder":Lokhttp3/t$a;
    .restart local v13    # "sendRequestMillisString":Ljava/lang/String;
    .restart local v14    # "source":Lokio/e;
    .restart local v15    # "statusLine":Lokhttp3/internal/b/m;
    .restart local v17    # "varyHeadersBuilder":Lokhttp3/t$a;
    .restart local v18    # "varyRequestHeaderLineCount":I
    :cond_2
    const-wide/16 v20, 0x0

    goto :goto_2

    .line 568
    :cond_3
    const-wide/16 v20, 0x0

    goto :goto_3

    .line 577
    .restart local v4    # "blank":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-interface {v14}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v6

    .line 578
    .local v6, "cipherSuiteString":Ljava/lang/String;
    invoke-static {v6}, Lokhttp3/i;->a(Ljava/lang/String;)Lokhttp3/i;

    move-result-object v5

    .line 579
    .local v5, "cipherSuite":Lokhttp3/i;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lokhttp3/c$c;->a(Lokio/e;)Ljava/util/List;

    move-result-object v9

    .line 580
    .local v9, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lokhttp3/c$c;->a(Lokio/e;)Ljava/util/List;

    move-result-object v8

    .line 581
    .local v8, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v14}, Lokio/e;->f()Z

    move-result v19

    if-nez v19, :cond_5

    .line 582
    invoke-interface {v14}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v16

    .line 584
    .local v16, "tlsVersion":Lokhttp3/TlsVersion;
    :goto_4
    move-object/from16 v0, v16

    invoke-static {v0, v5, v9, v8}, Lokhttp3/s;->a(Lokhttp3/TlsVersion;Lokhttp3/i;Ljava/util/List;Ljava/util/List;)Lokhttp3/s;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/c$c;->j:Lokhttp3/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    .end local v4    # "blank":Ljava/lang/String;
    .end local v5    # "cipherSuite":Lokhttp3/i;
    .end local v6    # "cipherSuiteString":Ljava/lang/String;
    .end local v8    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v16    # "tlsVersion":Lokhttp3/TlsVersion;
    :goto_5
    invoke-interface/range {p1 .. p1}, Lokio/x;->close()V

    .line 591
    return-void

    .line 582
    .restart local v4    # "blank":Ljava/lang/String;
    .restart local v5    # "cipherSuite":Lokhttp3/i;
    .restart local v6    # "cipherSuiteString":Ljava/lang/String;
    .restart local v8    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .restart local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_5
    const/16 v16, 0x0

    goto :goto_4

    .line 586
    .end local v4    # "blank":Ljava/lang/String;
    .end local v5    # "cipherSuite":Lokhttp3/i;
    .end local v6    # "cipherSuiteString":Ljava/lang/String;
    .end local v8    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v9    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_6
    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/c$c;->j:Lokhttp3/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
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
    .line 661
    invoke-static {p1}, Lokhttp3/c;->a(Lokio/e;)I

    move-result v4

    .line 662
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 673
    :cond_0
    return-object v6

    .line 665
    :cond_1
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 666
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 668
    invoke-interface {p1}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, "line":Ljava/lang/String;
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    .line 670
    .local v0, "bytes":Lokio/c;
    invoke-static {v5}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v0, v7}, Lokio/c;->a(Lokio/ByteString;)Lokio/c;

    .line 671
    invoke-virtual {v0}, Lokio/c;->g()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "bytes":Lokio/c;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v2

    .line 675
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
    .line 682
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-interface {p1, v6, v7}, Lokio/d;->n(J)Lokio/d;

    move-result-object v5

    const/16 v6, 0xa

    .line 683
    invoke-interface {v5, v6}, Lokio/d;->m(I)Lokio/d;

    .line 684
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 685
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 686
    .local v0, "bytes":[B
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "line":Ljava/lang/String;
    invoke-interface {p1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v5

    const/16 v6, 0xa

    .line 688
    invoke-interface {v5, v6}, Lokio/d;->m(I)Lokio/d;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    .line 691
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 693
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lokhttp3/c$c;->c:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lokhttp3/internal/a/d$c;)Lokhttp3/ac;
    .locals 6
    .param p1, "snapshot"    # Lokhttp3/internal/a/d$c;

    .prologue
    .line 702
    iget-object v3, p0, Lokhttp3/c$c;->i:Lokhttp3/t;

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "contentType":Ljava/lang/String;
    iget-object v3, p0, Lokhttp3/c$c;->i:Lokhttp3/t;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v3, Lokhttp3/aa$a;

    invoke-direct {v3}, Lokhttp3/aa$a;-><init>()V

    iget-object v4, p0, Lokhttp3/c$c;->c:Ljava/lang/String;

    .line 705
    invoke-virtual {v3, v4}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/c$c;->e:Ljava/lang/String;

    const/4 v5, 0x0

    .line 706
    invoke-virtual {v3, v4, v5}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/c$c;->d:Lokhttp3/t;

    .line 707
    invoke-virtual {v3, v4}, Lokhttp3/aa$a;->a(Lokhttp3/t;)Lokhttp3/aa$a;

    move-result-object v3

    .line 708
    invoke-virtual {v3}, Lokhttp3/aa$a;->d()Lokhttp3/aa;

    move-result-object v0

    .line 709
    .local v0, "cacheRequest":Lokhttp3/aa;
    new-instance v3, Lokhttp3/ac$a;

    invoke-direct {v3}, Lokhttp3/ac$a;-><init>()V

    .line 710
    invoke-virtual {v3, v0}, Lokhttp3/ac$a;->a(Lokhttp3/aa;)Lokhttp3/ac$a;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/c$c;->f:Lokhttp3/Protocol;

    .line 711
    invoke-virtual {v3, v4}, Lokhttp3/ac$a;->a(Lokhttp3/Protocol;)Lokhttp3/ac$a;

    move-result-object v3

    iget v4, p0, Lokhttp3/c$c;->g:I

    .line 712
    invoke-virtual {v3, v4}, Lokhttp3/ac$a;->a(I)Lokhttp3/ac$a;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/c$c;->h:Ljava/lang/String;

    .line 713
    invoke-virtual {v3, v4}, Lokhttp3/ac$a;->a(Ljava/lang/String;)Lokhttp3/ac$a;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/c$c;->i:Lokhttp3/t;

    .line 714
    invoke-virtual {v3, v4}, Lokhttp3/ac$a;->a(Lokhttp3/t;)Lokhttp3/ac$a;

    move-result-object v3

    new-instance v4, Lokhttp3/c$b;

    invoke-direct {v4, p1, v2, v1}, Lokhttp3/c$b;-><init>(Lokhttp3/internal/a/d$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v3, v4}, Lokhttp3/ac$a;->a(Lokhttp3/ad;)Lokhttp3/ac$a;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/c$c;->j:Lokhttp3/s;

    .line 716
    invoke-virtual {v3, v4}, Lokhttp3/ac$a;->a(Lokhttp3/s;)Lokhttp3/ac$a;

    move-result-object v3

    iget-wide v4, p0, Lokhttp3/c$c;->k:J

    .line 717
    invoke-virtual {v3, v4, v5}, Lokhttp3/ac$a;->a(J)Lokhttp3/ac$a;

    move-result-object v3

    iget-wide v4, p0, Lokhttp3/c$c;->l:J

    .line 718
    invoke-virtual {v3, v4, v5}, Lokhttp3/ac$a;->b(J)Lokhttp3/ac$a;

    move-result-object v3

    .line 719
    invoke-virtual {v3}, Lokhttp3/ac$a;->a()Lokhttp3/ac;

    move-result-object v3

    .line 709
    return-object v3
.end method

.method public a(Lokhttp3/internal/a/d$a;)V
    .locals 8
    .param p1, "editor"    # Lokhttp3/internal/a/d$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    .line 607
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lokhttp3/internal/a/d$a;->b(I)Lokio/w;

    move-result-object v3

    invoke-static {v3}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v1

    .line 609
    .local v1, "sink":Lokio/d;
    iget-object v3, p0, Lokhttp3/c$c;->c:Ljava/lang/String;

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    .line 610
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 611
    iget-object v3, p0, Lokhttp3/c$c;->e:Ljava/lang/String;

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    .line 612
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 613
    iget-object v3, p0, Lokhttp3/c$c;->d:Lokhttp3/t;

    invoke-virtual {v3}, Lokhttp3/t;->a()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lokio/d;->n(J)Lokio/d;

    move-result-object v3

    .line 614
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 615
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lokhttp3/c$c;->d:Lokhttp3/t;

    invoke-virtual {v3}, Lokhttp3/t;->a()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 616
    iget-object v3, p0, Lokhttp3/c$c;->d:Lokhttp3/t;

    invoke-virtual {v3, v0}, Lokhttp3/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    const-string v4, ": "

    .line 617
    invoke-interface {v3, v4}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/c$c;->d:Lokhttp3/t;

    .line 618
    invoke-virtual {v4, v0}, Lokhttp3/t;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    .line 619
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_0
    new-instance v3, Lokhttp3/internal/b/m;

    iget-object v4, p0, Lokhttp3/c$c;->f:Lokhttp3/Protocol;

    iget v5, p0, Lokhttp3/c$c;->g:I

    iget-object v6, p0, Lokhttp3/c$c;->h:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lokhttp3/internal/b/m;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/internal/b/m;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    .line 623
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 624
    iget-object v3, p0, Lokhttp3/c$c;->i:Lokhttp3/t;

    invoke-virtual {v3}, Lokhttp3/t;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lokio/d;->n(J)Lokio/d;

    move-result-object v3

    .line 625
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 626
    const/4 v0, 0x0

    iget-object v3, p0, Lokhttp3/c$c;->i:Lokhttp3/t;

    invoke-virtual {v3}, Lokhttp3/t;->a()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 627
    iget-object v3, p0, Lokhttp3/c$c;->i:Lokhttp3/t;

    invoke-virtual {v3, v0}, Lokhttp3/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    const-string v4, ": "

    .line 628
    invoke-interface {v3, v4}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/c$c;->i:Lokhttp3/t;

    .line 629
    invoke-virtual {v4, v0}, Lokhttp3/t;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    .line 630
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    :cond_1
    sget-object v3, Lokhttp3/c$c;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    const-string v4, ": "

    .line 633
    invoke-interface {v3, v4}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    iget-wide v4, p0, Lokhttp3/c$c;->k:J

    .line 634
    invoke-interface {v3, v4, v5}, Lokio/d;->n(J)Lokio/d;

    move-result-object v3

    .line 635
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 636
    sget-object v3, Lokhttp3/c$c;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    const-string v4, ": "

    .line 637
    invoke-interface {v3, v4}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    iget-wide v4, p0, Lokhttp3/c$c;->l:J

    .line 638
    invoke-interface {v3, v4, v5}, Lokio/d;->n(J)Lokio/d;

    move-result-object v3

    .line 639
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 641
    invoke-direct {p0}, Lokhttp3/c$c;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 642
    invoke-interface {v1, v7}, Lokio/d;->m(I)Lokio/d;

    .line 643
    iget-object v3, p0, Lokhttp3/c$c;->j:Lokhttp3/s;

    invoke-virtual {v3}, Lokhttp3/s;->b()Lokhttp3/i;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    .line 644
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 645
    iget-object v3, p0, Lokhttp3/c$c;->j:Lokhttp3/s;

    invoke-virtual {v3}, Lokhttp3/s;->c()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lokhttp3/c$c;->a(Lokio/d;Ljava/util/List;)V

    .line 646
    iget-object v3, p0, Lokhttp3/c$c;->j:Lokhttp3/s;

    invoke-virtual {v3}, Lokhttp3/s;->e()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lokhttp3/c$c;->a(Lokio/d;Ljava/util/List;)V

    .line 648
    iget-object v3, p0, Lokhttp3/c$c;->j:Lokhttp3/s;

    invoke-virtual {v3}, Lokhttp3/s;->a()Lokhttp3/TlsVersion;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 649
    iget-object v3, p0, Lokhttp3/c$c;->j:Lokhttp3/s;

    invoke-virtual {v3}, Lokhttp3/s;->a()Lokhttp3/TlsVersion;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    .line 650
    invoke-interface {v3, v7}, Lokio/d;->m(I)Lokio/d;

    .line 653
    :cond_2
    invoke-interface {v1}, Lokio/d;->close()V

    .line 654
    return-void
.end method

.method public a(Lokhttp3/aa;Lokhttp3/ac;)Z
    .locals 2
    .param p1, "request"    # Lokhttp3/aa;
    .param p2, "response"    # Lokhttp3/ac;

    .prologue
    .line 696
    iget-object v0, p0, Lokhttp3/c$c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/c$c;->e:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/c$c;->d:Lokhttp3/t;

    .line 698
    invoke-static {p2, v0, p1}, Lokhttp3/internal/b/f;->a(Lokhttp3/ac;Lokhttp3/t;Lokhttp3/aa;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 696
    :goto_0
    return v0

    .line 698
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
