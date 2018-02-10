.class public Lorg/xbill/DNS/DNSKEYRecord;
.super Lorg/xbill/DNS/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DNSKEYRecord$a;,
        Lorg/xbill/DNS/DNSKEYRecord$b;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7874d826330d9b3aL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/xbill/DNS/s;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIILjava/security/PublicKey;)V
    .locals 13
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "flags"    # I
    .param p6, "proto"    # I
    .param p7, "alg"    # I
    .param p8, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 75
    const/16 v4, 0x30

    move-object/from16 v0, p8

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/PublicKey;I)[B

    move-result-object v11

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/s;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    .line 77
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/xbill/DNS/DNSKEYRecord;->publicKey:Ljava/security/PublicKey;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 11
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "flags"    # I
    .param p6, "proto"    # I
    .param p7, "alg"    # I
    .param p8, "key"    # [B

    .prologue
    .line 59
    const/16 v2, 0x30

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/s;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    .line 60
    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->g()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/DNSKEYRecord;->flags:I

    .line 83
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/DNSKEYRecord;->proto:I

    .line 84
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "algString":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC$a;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/DNSKEYRecord;->alg:I

    .line 86
    iget v1, p0, Lorg/xbill/DNS/DNSKEYRecord;->alg:I

    if-gez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->l()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/DNSKEYRecord;->key:[B

    .line 89
    return-void
.end method