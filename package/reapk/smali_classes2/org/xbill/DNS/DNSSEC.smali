.class public Lorg/xbill/DNS/DNSSEC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DNSSEC$b;,
        Lorg/xbill/DNS/DNSSEC$NoSignatureException;,
        Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;,
        Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;,
        Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;,
        Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;,
        Lorg/xbill/DNS/DNSSEC$KeyMismatchException;,
        Lorg/xbill/DNS/DNSSEC$MalformedKeyException;,
        Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;,
        Lorg/xbill/DNS/DNSSEC$DNSSECException;,
        Lorg/xbill/DNS/DNSSEC$a;
    }
.end annotation


# static fields
.field private static final a:Lorg/xbill/DNS/DNSSEC$b;

.field private static final b:Lorg/xbill/DNS/DNSSEC$b;

.field private static final c:Lorg/xbill/DNS/DNSSEC$b;

.field private static final d:I = 0x30

.field private static final e:I = 0x2

.field private static final f:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v1, 0x20

    .line 469
    new-instance v0, Lorg/xbill/DNS/DNSSEC$b;

    const-string v2, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97"

    const-string v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD94"

    const-string v4, "A6"

    const-string v5, "1"

    const-string v6, "8D91E471E0989CDA27DF505A453F2B7635294F2DDF23E3B122ACC99C9E9F1E14"

    const-string v7, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C611070995AD10045841B09B761B893"

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/DNSSEC$b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->a:Lorg/xbill/DNS/DNSSEC$b;

    .line 478
    new-instance v0, Lorg/xbill/DNS/DNSSEC$b;

    const-string v2, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    const-string v3, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    const-string v4, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    const-string v5, "6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"

    const-string v6, "4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    const-string v7, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/DNSSEC$b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->b:Lorg/xbill/DNS/DNSSEC$b;

    .line 487
    new-instance v0, Lorg/xbill/DNS/DNSSEC$b;

    const/16 v1, 0x30

    const-string v2, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    const-string v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    const-string v4, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    const-string v5, "AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"

    const-string v6, "3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    const-string v7, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/DNSSEC$b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->c:Lorg/xbill/DNS/DNSSEC$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/math/BigInteger;)I
    .locals 1
    .param p0, "i"    # Ljava/math/BigInteger;

    .prologue
    .line 335
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .prologue
    .line 662
    packed-switch p0, :pswitch_data_0

    .line 682
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 664
    :pswitch_1
    const-string v0, "MD5withRSA"

    .line 680
    :goto_0
    return-object v0

    .line 667
    :pswitch_2
    const-string v0, "SHA1withDSA"

    goto :goto_0

    .line 670
    :pswitch_3
    const-string v0, "SHA1withRSA"

    goto :goto_0

    .line 672
    :pswitch_4
    const-string v0, "SHA256withRSA"

    goto :goto_0

    .line 674
    :pswitch_5
    const-string v0, "SHA512withRSA"

    goto :goto_0

    .line 676
    :pswitch_6
    const-string v0, "GOST3411withECGOST3410"

    goto :goto_0

    .line 678
    :pswitch_7
    const-string v0, "SHA256withECDSA"

    goto :goto_0

    .line 680
    :pswitch_8
    const-string v0, "SHA384withECDSA"

    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Lorg/xbill/DNS/h;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/h;

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/xbill/DNS/h;->j()[B

    move-result-object v0

    .line 347
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static a(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/h;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v0

    .line 341
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method static a(Lorg/xbill/DNS/s;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "r"    # Lorg/xbill/DNS/s;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Lorg/xbill/DNS/s;->getAlgorithm()I

    move-result v0

    .line 529
    .local v0, "alg":I
    packed-switch v0, :pswitch_data_0

    .line 546
    :pswitch_0
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/s;)V

    throw v2

    .line 535
    .end local v1    # "e":Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->b(Lorg/xbill/DNS/s;)Ljava/security/PublicKey;

    move-result-object v2

    .line 544
    :goto_0
    return-object v2

    .line 538
    :pswitch_2
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->c(Lorg/xbill/DNS/s;)Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_0

    .line 540
    :pswitch_3
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->a:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {p0, v2}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/s;Lorg/xbill/DNS/DNSSEC$b;)Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_0

    .line 542
    :pswitch_4
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->b:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {p0, v2}, Lorg/xbill/DNS/DNSSEC;->b(Lorg/xbill/DNS/s;Lorg/xbill/DNS/DNSSEC$b;)Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_0

    .line 544
    :pswitch_5
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->c:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {p0, v2}, Lorg/xbill/DNS/DNSSEC;->b(Lorg/xbill/DNS/s;Lorg/xbill/DNS/DNSSEC$b;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 552
    :catch_1
    move-exception v1

    .line 553
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Lorg/xbill/DNS/s;Lorg/xbill/DNS/DNSSEC$b;)Ljava/security/PublicKey;
    .locals 7
    .param p0, "r"    # Lorg/xbill/DNS/s;
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .prologue
    .line 499
    new-instance v1, Lorg/xbill/DNS/h;

    invoke-virtual {p0}, Lorg/xbill/DNS/s;->getKey()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xbill/DNS/h;-><init>([B)V

    .line 501
    .local v1, "in":Lorg/xbill/DNS/h;
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->b(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 502
    .local v3, "x":Ljava/math/BigInteger;
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->b(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 503
    .local v4, "y":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 505
    .local v2, "q":Ljava/security/spec/ECPoint;
    const-string v5, "ECGOST3410"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 506
    .local v0, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    iget-object v6, p1, Lorg/xbill/DNS/DNSSEC$b;->i:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v5, v2, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method public static a(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 6
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "inception"    # Ljava/util/Date;
    .param p4, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 1037
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 17
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "inception"    # Ljava/util/Date;
    .param p4, "expiration"    # Ljava/util/Date;
    .param p5, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 1059
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v9

    .line 1060
    .local v9, "alg":I
    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/PrivateKey;I)V

    .line 1062
    new-instance v3, Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v12, p4

    move-object/from16 v13, p3

    invoke-direct/range {v3 .. v16}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 1069
    .local v3, "rrsig":Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v2, v9, v4, v1}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/RRSIGRecord;->setSignature([B)V

    .line 1071
    return-object v3
.end method

.method static a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/SIGRecord;
    .locals 17
    .param p0, "message"    # Lorg/xbill/DNS/v;
    .param p1, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/KEYRecord;
    .param p3, "privkey"    # Ljava/security/PrivateKey;
    .param p4, "inception"    # Ljava/util/Date;
    .param p5, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 1079
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v9

    .line 1080
    .local v9, "alg":I
    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/PrivateKey;I)V

    .line 1082
    new-instance v3, Lorg/xbill/DNS/SIGRecord;

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getFootprint()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v12, p5

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v16}, Lorg/xbill/DNS/SIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 1086
    .local v3, "sig":Lorg/xbill/DNS/SIGRecord;
    new-instance v2, Lorg/xbill/DNS/i;

    invoke-direct {v2}, Lorg/xbill/DNS/i;-><init>()V

    .line 1087
    .local v2, "out":Lorg/xbill/DNS/i;
    invoke-static {v2, v3}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Lorg/xbill/DNS/ai;)V

    .line 1088
    if-eqz p1, :cond_0

    .line 1089
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/i;->a([B)V

    .line 1090
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/v;->h()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/i;->a([B)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v2}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v4, v9, v5, v6}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/SIGRecord;->setSignature([B)V

    .line 1094
    return-object v3
.end method

.method static a(Ljava/security/PrivateKey;I)V
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .prologue
    .line 995
    packed-switch p1, :pswitch_data_0

    .line 1016
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 1001
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 1002
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 1006
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 1012
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 1018
    :cond_0
    return-void

    .line 995
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/security/PublicKey;I[B[B)V
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .param p2, "data"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 857
    instance-of v2, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v2, :cond_1

    .line 859
    :try_start_0
    invoke-static {p3}, Lorg/xbill/DNS/DNSSEC;->c([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    .line 889
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 890
    .local v1, "s":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 891
    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    .line 892
    invoke-virtual {v1, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 893
    new-instance v2, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 895
    .end local v1    # "s":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 861
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 862
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 864
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    instance-of v2, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_0

    .line 866
    packed-switch p1, :pswitch_data_0

    .line 880
    :try_start_2
    new-instance v2, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v2, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 883
    :catch_2
    move-exception v0

    .line 884
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 868
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_0
    :try_start_3
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->a:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {p3, v2}, Lorg/xbill/DNS/DNSSEC;->a([BLorg/xbill/DNS/DNSSEC$b;)[B

    move-result-object p3

    .line 870
    goto :goto_0

    .line 872
    :pswitch_1
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->b:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {p3, v2}, Lorg/xbill/DNS/DNSSEC;->b([BLorg/xbill/DNS/DNSSEC$b;)[B

    move-result-object p3

    .line 874
    goto :goto_0

    .line 876
    :pswitch_2
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->c:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {p3, v2}, Lorg/xbill/DNS/DNSSEC;->b([BLorg/xbill/DNS/DNSSEC$b;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p3

    .line 878
    goto :goto_0

    .line 898
    .restart local v1    # "s":Ljava/security/Signature;
    :cond_2
    return-void

    .line 866
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;)V
    .locals 5
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 924
    invoke-static {p1, p2}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/ai;Lorg/xbill/DNS/s;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 925
    new-instance v1, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v1, p2, p1}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/s;Lorg/xbill/DNS/ai;)V

    throw v1

    .line 927
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 928
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_1

    .line 929
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 930
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gez v1, :cond_2

    .line 931
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 934
    :cond_2
    invoke-virtual {p2}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v2

    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/PublicKey;I[B[B)V

    .line 936
    return-void
.end method

.method private static a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;)V
    .locals 2
    .param p0, "out"    # Lorg/xbill/DNS/i;
    .param p1, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 380
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->a([B)[B

    move-result-object v0

    .line 381
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 382
    return-void
.end method

.method private static a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;I)V
    .locals 3
    .param p0, "out"    # Lorg/xbill/DNS/i;
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "len"    # I

    .prologue
    .line 386
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/DNSSEC;->a([B)[B

    move-result-object v0

    .line 388
    .local v0, "b":[B
    array-length v2, v0

    if-le v2, p2, :cond_0

    .line 389
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 391
    :cond_0
    array-length v2, v0

    if-ge v2, p2, :cond_1

    .line 392
    array-length v2, v0

    sub-int v2, p2, v2

    new-array v1, v2, [B

    .line 393
    .local v1, "pad":[B
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/i;->a([B)V

    .line 396
    .end local v1    # "pad":[B
    :cond_1
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 397
    return-void
.end method

.method private static a(Lorg/xbill/DNS/i;Lorg/xbill/DNS/ai;)V
    .locals 4
    .param p0, "out"    # Lorg/xbill/DNS/i;
    .param p1, "sig"    # Lorg/xbill/DNS/ai;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 121
    invoke-virtual {p1}, Lorg/xbill/DNS/ai;->getTypeCovered()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 122
    invoke-virtual {p1}, Lorg/xbill/DNS/ai;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 123
    invoke-virtual {p1}, Lorg/xbill/DNS/ai;->getLabels()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 124
    invoke-virtual {p1}, Lorg/xbill/DNS/ai;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 125
    invoke-virtual {p1}, Lorg/xbill/DNS/ai;->getExpire()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 126
    invoke-virtual {p1}, Lorg/xbill/DNS/ai;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 127
    invoke-virtual {p1}, Lorg/xbill/DNS/ai;->getFootprint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 128
    invoke-virtual {p1}, Lorg/xbill/DNS/ai;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/i;)V

    .line 129
    return-void
.end method

.method static a(Lorg/xbill/DNS/v;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;)V
    .locals 7
    .param p0, "message"    # Lorg/xbill/DNS/v;
    .param p1, "bytes"    # [B
    .param p2, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p3, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p4, "key"    # Lorg/xbill/DNS/KEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 1101
    iget v3, p0, Lorg/xbill/DNS/v;->d:I

    if-nez v3, :cond_0

    .line 1102
    new-instance v3, Lorg/xbill/DNS/DNSSEC$NoSignatureException;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSSEC$NoSignatureException;-><init>()V

    throw v3

    .line 1104
    :cond_0
    invoke-static {p2, p4}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/ai;Lorg/xbill/DNS/s;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1105
    new-instance v3, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v3, p4, p2}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/s;Lorg/xbill/DNS/ai;)V

    throw v3

    .line 1107
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1109
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_2

    .line 1110
    new-instance v3, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v3

    .line 1111
    :cond_2
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_3

    .line 1112
    new-instance v3, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v3

    .line 1115
    :cond_3
    new-instance v2, Lorg/xbill/DNS/i;

    invoke-direct {v2}, Lorg/xbill/DNS/i;-><init>()V

    .line 1116
    .local v2, "out":Lorg/xbill/DNS/i;
    invoke-static {v2, p2}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Lorg/xbill/DNS/ai;)V

    .line 1117
    if-eqz p3, :cond_4

    .line 1118
    invoke-virtual {p3}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/i;->a([B)V

    .line 1120
    :cond_4
    invoke-virtual {p0}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/r;

    .line 1121
    .local v0, "header":Lorg/xbill/DNS/r;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/r;->h(I)V

    .line 1122
    invoke-virtual {v0}, Lorg/xbill/DNS/r;->a()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/i;->a([B)V

    .line 1124
    const/16 v3, 0xc

    iget v4, p0, Lorg/xbill/DNS/v;->d:I

    add-int/lit8 v4, v4, -0xc

    invoke-virtual {v2, p1, v3, v4}, Lorg/xbill/DNS/i;->a([BII)V

    .line 1127
    invoke-virtual {p4}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getAlgorithm()I

    move-result v4

    invoke-virtual {v2}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v5

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/PublicKey;I[B[B)V

    .line 1129
    return-void
.end method

.method private static a(Lorg/xbill/DNS/ai;Lorg/xbill/DNS/s;)Z
    .locals 2
    .param p0, "sig"    # Lorg/xbill/DNS/ai;
    .param p1, "key"    # Lorg/xbill/DNS/s;

    .prologue
    .line 903
    invoke-virtual {p1}, Lorg/xbill/DNS/s;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/ai;->getAlgorithm()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/s;->getFootprint()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/ai;->getFootprint()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/s;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbill/DNS/ai;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B
    .locals 9
    .param p0, "privkey"    # Ljava/security/PrivateKey;
    .param p1, "pubkey"    # Ljava/security/PublicKey;
    .param p2, "alg"    # I
    .param p3, "data"    # [B
    .param p4, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 945
    if-eqz p4, :cond_1

    .line 946
    :try_start_0
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 949
    .local v4, "s":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v4, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 950
    invoke-virtual {v4, p3}, Ljava/security/Signature;->update([B)V

    .line 951
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 957
    .local v5, "signature":[B
    instance-of v7, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_2

    .line 959
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v2, v0

    .line 960
    .local v2, "dsa":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 961
    .local v1, "P":Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/math/BigInteger;)I

    move-result v7

    add-int/lit8 v7, v7, -0x40

    div-int/lit8 v6, v7, 0x8

    .line 962
    .local v6, "t":I
    invoke-static {v5, v6}, Lorg/xbill/DNS/DNSSEC;->a([BI)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 990
    .end local v1    # "P":Ljava/math/BigInteger;
    .end local v2    # "dsa":Ljava/security/interfaces/DSAPublicKey;
    .end local v6    # "t":I
    :cond_0
    :goto_1
    :pswitch_0
    return-object v5

    .line 948
    .end local v4    # "s":Ljava/security/Signature;
    .end local v5    # "signature":[B
    :cond_1
    :try_start_2
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .restart local v4    # "s":Ljava/security/Signature;
    goto :goto_0

    .line 953
    .end local v4    # "s":Ljava/security/Signature;
    :catch_0
    move-exception v3

    .line 954
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v7, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 964
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .restart local v4    # "s":Ljava/security/Signature;
    .restart local v5    # "signature":[B
    :catch_1
    move-exception v3

    .line 965
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 967
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    instance-of v7, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v7, :cond_0

    .line 969
    packed-switch p2, :pswitch_data_0

    .line 982
    :try_start_3
    new-instance v7, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v7, p2}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 985
    :catch_2
    move-exception v3

    .line 986
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 974
    .end local v3    # "e":Ljava/io/IOException;
    :pswitch_1
    :try_start_4
    sget-object v7, Lorg/xbill/DNS/DNSSEC;->b:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {v5, v7}, Lorg/xbill/DNS/DNSSEC;->c([BLorg/xbill/DNS/DNSSEC$b;)[B

    move-result-object v5

    .line 976
    goto :goto_1

    .line 978
    :pswitch_2
    sget-object v7, Lorg/xbill/DNS/DNSSEC;->c:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {v5, v7}, Lorg/xbill/DNS/DNSSEC;->c([BLorg/xbill/DNS/DNSSEC$b;)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 980
    goto :goto_1

    .line 969
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Ljava/security/PublicKey;I)[B
    .locals 1
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 624
    packed-switch p1, :pswitch_data_0

    .line 651
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 630
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    .line 631
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 632
    :cond_0
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    .line 635
    .restart local p0    # "key":Ljava/security/PublicKey;
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-nez v0, :cond_1

    .line 636
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 637
    :cond_1
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object v0

    goto :goto_0

    .line 639
    .restart local p0    # "key":Ljava/security/PublicKey;
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_2

    .line 640
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 641
    :cond_2
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    sget-object v0, Lorg/xbill/DNS/DNSSEC;->a:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {p0, v0}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$b;)[B

    move-result-object v0

    goto :goto_0

    .line 643
    .restart local p0    # "key":Ljava/security/PublicKey;
    :pswitch_4
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_3

    .line 644
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 645
    :cond_3
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    sget-object v0, Lorg/xbill/DNS/DNSSEC;->b:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {p0, v0}, Lorg/xbill/DNS/DNSSEC;->b(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$b;)[B

    move-result-object v0

    goto :goto_0

    .line 647
    .restart local p0    # "key":Ljava/security/PublicKey;
    :pswitch_5
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_4

    .line 648
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 649
    :cond_4
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    sget-object v0, Lorg/xbill/DNS/DNSSEC;->c:Lorg/xbill/DNS/DNSSEC$b;

    invoke-static {p0, v0}, Lorg/xbill/DNS/DNSSEC;->b(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$b;)[B

    move-result-object v0

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 7
    .param p0, "key"    # Ljava/security/interfaces/DSAPublicKey;

    .prologue
    .line 578
    new-instance v1, Lorg/xbill/DNS/i;

    invoke-direct {v1}, Lorg/xbill/DNS/i;-><init>()V

    .line 579
    .local v1, "out":Lorg/xbill/DNS/i;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 580
    .local v3, "q":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 581
    .local v2, "p":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 582
    .local v0, "g":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    .line 583
    .local v5, "y":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x40

    div-int/lit8 v4, v6, 0x8

    .line 585
    .local v4, "t":I
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/i;->b(I)V

    .line 586
    invoke-static {v1, v3}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;)V

    .line 587
    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;)V

    .line 588
    mul-int/lit8 v6, v4, 0x8

    add-int/lit8 v6, v6, 0x40

    invoke-static {v1, v0, v6}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;I)V

    .line 589
    mul-int/lit8 v6, v4, 0x8

    add-int/lit8 v6, v6, 0x40

    invoke-static {v1, v5, v6}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;I)V

    .line 591
    invoke-virtual {v1}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v6

    return-object v6
.end method

.method private static a(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$b;)[B
    .locals 4
    .param p0, "key"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$b;

    .prologue
    .line 596
    new-instance v0, Lorg/xbill/DNS/i;

    invoke-direct {v0}, Lorg/xbill/DNS/i;-><init>()V

    .line 598
    .local v0, "out":Lorg/xbill/DNS/i;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 599
    .local v1, "x":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 601
    .local v2, "y":Ljava/math/BigInteger;
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-static {v0, v1, v3}, Lorg/xbill/DNS/DNSSEC;->b(Lorg/xbill/DNS/i;Ljava/math/BigInteger;I)V

    .line 602
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-static {v0, v2, v3}, Lorg/xbill/DNS/DNSSEC;->b(Lorg/xbill/DNS/i;Ljava/math/BigInteger;I)V

    .line 604
    invoke-virtual {v0}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v3

    return-object v3
.end method

.method private static a(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 5
    .param p0, "key"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 559
    new-instance v3, Lorg/xbill/DNS/i;

    invoke-direct {v3}, Lorg/xbill/DNS/i;-><init>()V

    .line 560
    .local v3, "out":Lorg/xbill/DNS/i;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 561
    .local v0, "exponent":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 562
    .local v2, "modulus":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/math/BigInteger;)I

    move-result v1

    .line 564
    .local v1, "exponentLength":I
    const/16 v4, 0x100

    if-ge v1, v4, :cond_0

    .line 565
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/i;->b(I)V

    .line 570
    :goto_0
    invoke-static {v3, v0}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;)V

    .line 571
    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;)V

    .line 573
    invoke-virtual {v3}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v4

    return-object v4

    .line 567
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/i;->b(I)V

    .line 568
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/i;->c(I)V

    goto :goto_0
.end method

.method static a(Lorg/xbill/DNS/DNSKEYRecord;I)[B
    .locals 5
    .param p0, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p1, "digestid"    # I

    .prologue
    .line 1142
    packed-switch p1, :pswitch_data_0

    .line 1156
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "unknown DS digest type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :catch_0
    move-exception v1

    .line 1161
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "no message digest support"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1144
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :pswitch_0
    :try_start_1
    const-string v2, "sha-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1163
    .local v0, "digest":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1164
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->rdataToWireCanonical()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1165
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    .line 1147
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :pswitch_1
    :try_start_2
    const-string v2, "sha-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1148
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 1150
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :pswitch_2
    const-string v2, "GOST3411"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1151
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 1153
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :pswitch_3
    const-string v2, "sha-384"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1154
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 1142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B
    .locals 14
    .param p0, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 141
    new-instance v5, Lorg/xbill/DNS/i;

    invoke-direct {v5}, Lorg/xbill/DNS/i;-><init>()V

    .line 142
    .local v5, "out":Lorg/xbill/DNS/i;
    invoke-static {v5, p0}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Lorg/xbill/DNS/ai;)V

    .line 144
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v9

    .line 145
    .local v9, "size":I
    new-array v6, v9, [Lorg/xbill/DNS/Record;

    .line 147
    .local v6, "records":[Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v2

    .line 148
    .local v2, "it":Ljava/util/Iterator;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 149
    .local v4, "name":Lorg/xbill/DNS/Name;
    const/4 v10, 0x0

    .line 150
    .local v10, "wild":Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v11

    add-int/lit8 v8, v11, 0x1

    .line 151
    .local v8, "sigLabels":I
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    if-le v11, v8, :cond_0

    .line 152
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v4, v11}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 153
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 154
    add-int/lit8 v9, v9, -0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/xbill/DNS/Record;

    aput-object v11, v6, v9

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 157
    new-instance v0, Lorg/xbill/DNS/i;

    invoke-direct {v0}, Lorg/xbill/DNS/i;-><init>()V

    .line 158
    .local v0, "header":Lorg/xbill/DNS/i;
    if-eqz v10, :cond_2

    .line 159
    invoke-virtual {v10, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/i;)V

    .line 162
    :goto_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/i;->c(I)V

    .line 163
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/i;->c(I)V

    .line 164
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getOrigTTL()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lorg/xbill/DNS/i;->a(J)V

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v11, v6

    if-ge v1, v11, :cond_3

    .line 166
    invoke-virtual {v0}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/i;->a([B)V

    .line 167
    invoke-virtual {v5}, Lorg/xbill/DNS/i;->a()I

    move-result v3

    .line 168
    .local v3, "lengthPosition":I
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/i;->c(I)V

    .line 169
    aget-object v11, v6, v1

    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/i;->a([B)V

    .line 170
    invoke-virtual {v5}, Lorg/xbill/DNS/i;->a()I

    move-result v11

    sub-int/2addr v11, v3

    add-int/lit8 v7, v11, -0x2

    .line 171
    .local v7, "rrlength":I
    invoke-virtual {v5}, Lorg/xbill/DNS/i;->b()V

    .line 172
    invoke-virtual {v5, v3}, Lorg/xbill/DNS/i;->a(I)V

    .line 173
    invoke-virtual {v5, v7}, Lorg/xbill/DNS/i;->c(I)V

    .line 174
    invoke-virtual {v5}, Lorg/xbill/DNS/i;->c()V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 161
    .end local v1    # "i":I
    .end local v3    # "lengthPosition":I
    .end local v7    # "rrlength":I
    :cond_2
    invoke-virtual {v4, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/i;)V

    goto :goto_1

    .line 176
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v5}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v11

    return-object v11
.end method

.method public static a(Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/v;[B)[B
    .locals 2
    .param p0, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p1, "msg"    # Lorg/xbill/DNS/v;
    .param p2, "previous"    # [B

    .prologue
    .line 190
    new-instance v0, Lorg/xbill/DNS/i;

    invoke-direct {v0}, Lorg/xbill/DNS/i;-><init>()V

    .line 191
    .local v0, "out":Lorg/xbill/DNS/i;
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Lorg/xbill/DNS/ai;)V

    .line 193
    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/i;->a([B)V

    .line 196
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/i;)V

    .line 197
    invoke-virtual {v0}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v1

    return-object v1
.end method

.method private static a([B)[B
    .locals 4
    .param p0, "array"    # [B

    .prologue
    const/4 v3, 0x0

    .line 352
    aget-byte v1, p0, v3

    if-nez v1, :cond_0

    .line 353
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [B

    .line 354
    .local v0, "trimmedArray":[B
    const/4 v1, 0x1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    .end local v0    # "trimmedArray":[B
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static a([BI)[B
    .locals 11
    .param p0, "signature"    # [B
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x15

    const/4 v9, 0x2

    const/16 v8, 0x14

    .line 731
    new-instance v1, Lorg/xbill/DNS/h;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/h;-><init>([B)V

    .line 732
    .local v1, "in":Lorg/xbill/DNS/h;
    new-instance v2, Lorg/xbill/DNS/i;

    invoke-direct {v2}, Lorg/xbill/DNS/i;-><init>()V

    .line 734
    .local v2, "out":Lorg/xbill/DNS/i;
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/i;->b(I)V

    .line 736
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v6

    .line 737
    .local v6, "tmp":I
    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    .line 738
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 739
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v4

    .line 741
    .local v4, "seqlen":I
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v6

    .line 742
    if-eq v6, v9, :cond_1

    .line 743
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 744
    :cond_1
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v3

    .line 745
    .local v3, "rlen":I
    if-ne v3, v10, :cond_2

    .line 746
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v7

    if-eqz v7, :cond_3

    .line 747
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 748
    :cond_2
    if-eq v3, v8, :cond_3

    .line 749
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 750
    :cond_3
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v0

    .line 751
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 753
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v6

    .line 754
    if-eq v6, v9, :cond_4

    .line 755
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 756
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v5

    .line 757
    .local v5, "slen":I
    if-ne v5, v10, :cond_5

    .line 758
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v7

    if-eqz v7, :cond_6

    .line 759
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 760
    :cond_5
    if-eq v5, v8, :cond_6

    .line 761
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 762
    :cond_6
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v0

    .line 763
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 765
    invoke-virtual {v2}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v7

    return-object v7
.end method

.method private static a([BLorg/xbill/DNS/DNSSEC$b;)[B
    .locals 2
    .param p0, "signature"    # [B
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    array-length v0, p0

    iget v1, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    .line 773
    new-instance v0, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v0

    .line 775
    :cond_0
    return-object p0
.end method

.method private static b(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/h;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v0

    .line 374
    .local v0, "b":[B
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->b([B)V

    .line 375
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static b(Lorg/xbill/DNS/s;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "r"    # Lorg/xbill/DNS/s;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 417
    new-instance v3, Lorg/xbill/DNS/h;

    invoke-virtual {p0}, Lorg/xbill/DNS/s;->getKey()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xbill/DNS/h;-><init>([B)V

    .line 418
    .local v3, "in":Lorg/xbill/DNS/h;
    invoke-virtual {v3}, Lorg/xbill/DNS/h;->g()I

    move-result v1

    .line 419
    .local v1, "exponentLength":I
    if-nez v1, :cond_0

    .line 420
    invoke-virtual {v3}, Lorg/xbill/DNS/h;->h()I

    move-result v1

    .line 421
    :cond_0
    invoke-static {v3, v1}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 422
    .local v0, "exponent":Ljava/math/BigInteger;
    invoke-static {v3}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/h;)Ljava/math/BigInteger;

    move-result-object v4

    .line 424
    .local v4, "modulus":Ljava/math/BigInteger;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 425
    .local v2, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v4, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method private static b(Lorg/xbill/DNS/s;Lorg/xbill/DNS/DNSSEC$b;)Ljava/security/PublicKey;
    .locals 7
    .param p0, "r"    # Lorg/xbill/DNS/s;
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .prologue
    .line 513
    new-instance v1, Lorg/xbill/DNS/h;

    invoke-virtual {p0}, Lorg/xbill/DNS/s;->getKey()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xbill/DNS/h;-><init>([B)V

    .line 516
    .local v1, "in":Lorg/xbill/DNS/h;
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 517
    .local v3, "x":Ljava/math/BigInteger;
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 518
    .local v4, "y":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 520
    .local v2, "q":Ljava/security/spec/ECPoint;
    const-string v5, "EC"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 521
    .local v0, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    iget-object v6, p1, Lorg/xbill/DNS/DNSSEC$b;->i:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v5, v2, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method private static b(Lorg/xbill/DNS/i;Ljava/math/BigInteger;I)V
    .locals 3
    .param p0, "out"    # Lorg/xbill/DNS/i;
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "len"    # I

    .prologue
    .line 401
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/DNSSEC;->a([B)[B

    move-result-object v0

    .line 403
    .local v0, "b":[B
    array-length v2, v0

    if-le v2, p2, :cond_0

    .line 404
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 406
    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->b([B)V

    .line 407
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 409
    array-length v2, v0

    if-ge v2, p2, :cond_1

    .line 410
    array-length v2, v0

    sub-int v2, p2, v2

    new-array v1, v2, [B

    .line 411
    .local v1, "pad":[B
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/i;->a([B)V

    .line 413
    .end local v1    # "pad":[B
    :cond_1
    return-void
.end method

.method private static b([B)V
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_0

    .line 364
    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 365
    .local v1, "j":I
    aget-byte v2, p0, v0

    .line 366
    .local v2, "tmp":B
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 367
    aput-byte v2, p0, v1

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "j":I
    .end local v2    # "tmp":B
    :cond_0
    return-void
.end method

.method private static b(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$b;)[B
    .locals 4
    .param p0, "key"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$b;

    .prologue
    .line 609
    new-instance v0, Lorg/xbill/DNS/i;

    invoke-direct {v0}, Lorg/xbill/DNS/i;-><init>()V

    .line 611
    .local v0, "out":Lorg/xbill/DNS/i;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 612
    .local v1, "x":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 614
    .local v2, "y":Ljava/math/BigInteger;
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-static {v0, v1, v3}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;I)V

    .line 615
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-static {v0, v2, v3}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/i;Ljava/math/BigInteger;I)V

    .line 617
    invoke-virtual {v0}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v3

    return-object v3
.end method

.method private static b([BLorg/xbill/DNS/DNSSEC$b;)[B
    .locals 10
    .param p0, "signature"    # [B
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 782
    array-length v6, p0

    iget v7, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    mul-int/lit8 v7, v7, 0x2

    if-eq v6, v7, :cond_0

    .line 783
    new-instance v6, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v6}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v6

    .line 785
    :cond_0
    new-instance v0, Lorg/xbill/DNS/h;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/h;-><init>([B)V

    .line 786
    .local v0, "in":Lorg/xbill/DNS/h;
    new-instance v1, Lorg/xbill/DNS/i;

    invoke-direct {v1}, Lorg/xbill/DNS/i;-><init>()V

    .line 788
    .local v1, "out":Lorg/xbill/DNS/i;
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v2

    .line 789
    .local v2, "r":[B
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    .line 790
    .local v3, "rlen":I
    aget-byte v6, v2, v8

    if-gez v6, :cond_1

    .line 791
    add-int/lit8 v3, v3, 0x1

    .line 793
    :cond_1
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v4

    .line 794
    .local v4, "s":[B
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    .line 795
    .local v5, "slen":I
    aget-byte v6, v4, v8

    if-gez v6, :cond_2

    .line 796
    add-int/lit8 v5, v5, 0x1

    .line 798
    :cond_2
    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/i;->b(I)V

    .line 799
    add-int v6, v3, v5

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/i;->b(I)V

    .line 801
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/i;->b(I)V

    .line 802
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/i;->b(I)V

    .line 803
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    if-le v3, v6, :cond_3

    .line 804
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/i;->b(I)V

    .line 805
    :cond_3
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/i;->a([B)V

    .line 807
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/i;->b(I)V

    .line 808
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/i;->b(I)V

    .line 809
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    if-le v5, v6, :cond_4

    .line 810
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/i;->b(I)V

    .line 811
    :cond_4
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/i;->a([B)V

    .line 813
    invoke-virtual {v1}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v6

    return-object v6
.end method

.method private static c(Lorg/xbill/DNS/s;)Ljava/security/PublicKey;
    .locals 8
    .param p0, "r"    # Lorg/xbill/DNS/s;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v2, Lorg/xbill/DNS/h;

    invoke-virtual {p0}, Lorg/xbill/DNS/s;->getKey()[B

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/xbill/DNS/h;-><init>([B)V

    .line 434
    .local v2, "in":Lorg/xbill/DNS/h;
    invoke-virtual {v2}, Lorg/xbill/DNS/h;->g()I

    move-result v5

    .line 435
    .local v5, "t":I
    const/16 v7, 0x8

    if-le v5, v7, :cond_0

    .line 436
    new-instance v7, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v7, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/s;)V

    throw v7

    .line 438
    :cond_0
    const/16 v7, 0x14

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 439
    .local v4, "q":Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 440
    .local v3, "p":Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 441
    .local v1, "g":Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/h;I)Ljava/math/BigInteger;

    move-result-object v6

    .line 443
    .local v6, "y":Ljava/math/BigInteger;
    const-string v7, "DSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 444
    .local v0, "factory":Ljava/security/KeyFactory;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v7, v6, v3, v4, v1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    return-object v7
.end method

.method private static c([B)[B
    .locals 12
    .param p0, "dns"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x14

    const/4 v9, 0x0

    .line 693
    array-length v7, p0

    const/16 v8, 0x29

    if-eq v7, v8, :cond_0

    .line 694
    new-instance v7, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v7}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v7

    .line 696
    :cond_0
    new-instance v0, Lorg/xbill/DNS/h;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/h;-><init>([B)V

    .line 697
    .local v0, "in":Lorg/xbill/DNS/h;
    new-instance v1, Lorg/xbill/DNS/i;

    invoke-direct {v1}, Lorg/xbill/DNS/i;-><init>()V

    .line 699
    .local v1, "out":Lorg/xbill/DNS/i;
    invoke-virtual {v0}, Lorg/xbill/DNS/h;->g()I

    move-result v6

    .line 701
    .local v6, "t":I
    invoke-virtual {v0, v10}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v2

    .line 702
    .local v2, "r":[B
    const/16 v3, 0x14

    .line 703
    .local v3, "rlen":I
    aget-byte v7, v2, v9

    if-gez v7, :cond_1

    .line 704
    add-int/lit8 v3, v3, 0x1

    .line 706
    :cond_1
    invoke-virtual {v0, v10}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v4

    .line 707
    .local v4, "s":[B
    const/16 v5, 0x14

    .line 708
    .local v5, "slen":I
    aget-byte v7, v4, v9

    if-gez v7, :cond_2

    .line 709
    add-int/lit8 v5, v5, 0x1

    .line 711
    :cond_2
    const/16 v7, 0x30

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/i;->b(I)V

    .line 712
    add-int v7, v3, v5

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/i;->b(I)V

    .line 714
    invoke-virtual {v1, v11}, Lorg/xbill/DNS/i;->b(I)V

    .line 715
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/i;->b(I)V

    .line 716
    if-le v3, v10, :cond_3

    .line 717
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/i;->b(I)V

    .line 718
    :cond_3
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/i;->a([B)V

    .line 720
    invoke-virtual {v1, v11}, Lorg/xbill/DNS/i;->b(I)V

    .line 721
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/i;->b(I)V

    .line 722
    if-le v5, v10, :cond_4

    .line 723
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/i;->b(I)V

    .line 724
    :cond_4
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/i;->a([B)V

    .line 726
    invoke-virtual {v1}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v7

    return-object v7
.end method

.method private static c([BLorg/xbill/DNS/DNSSEC$b;)[B
    .locals 9
    .param p0, "signature"    # [B
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 818
    new-instance v1, Lorg/xbill/DNS/h;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/h;-><init>([B)V

    .line 819
    .local v1, "in":Lorg/xbill/DNS/h;
    new-instance v2, Lorg/xbill/DNS/i;

    invoke-direct {v2}, Lorg/xbill/DNS/i;-><init>()V

    .line 821
    .local v2, "out":Lorg/xbill/DNS/i;
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v6

    .line 822
    .local v6, "tmp":I
    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    .line 823
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 824
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v4

    .line 826
    .local v4, "seqlen":I
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v6

    .line 827
    if-eq v6, v8, :cond_1

    .line 828
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 829
    :cond_1
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v3

    .line 830
    .local v3, "rlen":I
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    add-int/lit8 v7, v7, 0x1

    if-ne v3, v7, :cond_2

    .line 831
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v7

    if-eqz v7, :cond_3

    .line 832
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 833
    :cond_2
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    if-eq v3, v7, :cond_3

    .line 834
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 835
    :cond_3
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v0

    .line 836
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 838
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v6

    .line 839
    if-eq v6, v8, :cond_4

    .line 840
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 841
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v5

    .line 842
    .local v5, "slen":I
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    add-int/lit8 v7, v7, 0x1

    if-ne v5, v7, :cond_5

    .line 843
    invoke-virtual {v1}, Lorg/xbill/DNS/h;->g()I

    move-result v7

    if-eqz v7, :cond_6

    .line 844
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 845
    :cond_5
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    if-eq v5, v7, :cond_6

    .line 846
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 847
    :cond_6
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$b;->a:I

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v0

    .line 848
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 850
    invoke-virtual {v2}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v7

    return-object v7
.end method
