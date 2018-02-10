.class public Lorg/xbill/DNS/DSRecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DSRecord$a;
    }
.end annotation


# static fields
.field public static final GOST3411_DIGEST_ID:I = 0x3

.field public static final SHA1_DIGEST_ID:I = 0x1

.field public static final SHA256_DIGEST_ID:I = 0x2

.field public static final SHA384_DIGEST_ID:I = 0x4

.field private static final serialVersionUID:J = -0x7cece2fc9704af55L


# instance fields
.field private alg:I

.field private digest:[B

.field private digestid:I

.field private footprint:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "footprint"    # I
    .param p6, "alg"    # I
    .param p7, "digestid"    # I
    .param p8, "digest"    # [B

    .prologue
    .line 65
    const/16 v2, 0x2b

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 66
    const-string v0, "footprint"

    invoke-static {v0, p5}, Lorg/xbill/DNS/DSRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 67
    const-string v0, "alg"

    invoke-static {v0, p6}, Lorg/xbill/DNS/DSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 68
    const-string v0, "digestid"

    invoke-static {v0, p7}, Lorg/xbill/DNS/DSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 69
    iput-object p8, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/DNSKEYRecord;)V
    .locals 13
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "digestid"    # I
    .param p6, "key"    # Lorg/xbill/DNS/DNSKEYRecord;

    .prologue
    .line 80
    invoke-virtual/range {p6 .. p6}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v9

    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->a(Lorg/xbill/DNS/DNSKEYRecord;I)[B

    move-result-object v11

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 82
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    return v0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    return-object v0
.end method

.method public getDigestID()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    return v0
.end method

.method public getFootprint()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DSRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 95
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 96
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 97
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->m()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 98
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/h;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 87
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 88
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 89
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->j()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 90
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 107
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 111
    iget-object v1, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    if-eqz v1, :cond_0

    .line 112
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v1, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    invoke-static {v1}, Lorg/xbill/DNS/b/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 154
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 155
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 156
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 157
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 159
    :cond_0
    return-void
.end method
