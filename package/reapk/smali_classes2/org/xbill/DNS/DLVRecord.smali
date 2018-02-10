.class public Lorg/xbill/DNS/DLVRecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field public static final SHA1_DIGEST_ID:I = 0x1

.field public static final SHA256_DIGEST_ID:I = 0x1

.field private static final serialVersionUID:J = 0x1b35f4cd5e509fc4L


# instance fields
.field private alg:I

.field private digest:[B

.field private digestid:I

.field private footprint:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
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
    .line 48
    const v2, 0x8001

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 49
    const-string v0, "footprint"

    invoke-static {v0, p5}, Lorg/xbill/DNS/DLVRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DLVRecord;->footprint:I

    .line 50
    const-string v0, "alg"

    invoke-static {v0, p6}, Lorg/xbill/DNS/DLVRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DLVRecord;->alg:I

    .line 51
    const-string v0, "digestid"

    invoke-static {v0, p7}, Lorg/xbill/DNS/DLVRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DLVRecord;->digestid:I

    .line 52
    iput-object p8, p0, Lorg/xbill/DNS/DLVRecord;->digest:[B

    .line 53
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/xbill/DNS/DLVRecord;->alg:I

    return v0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/xbill/DNS/DLVRecord;->digest:[B

    return-object v0
.end method

.method public getDigestID()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/xbill/DNS/DLVRecord;->digestid:I

    return v0
.end method

.method public getFootprint()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/xbill/DNS/DLVRecord;->footprint:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/xbill/DNS/DLVRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DLVRecord;-><init>()V

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
    .line 65
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DLVRecord;->footprint:I

    .line 66
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DLVRecord;->alg:I

    .line 67
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DLVRecord;->digestid:I

    .line 68
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->m()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DLVRecord;->digest:[B

    .line 69
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
    .line 57
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DLVRecord;->footprint:I

    .line 58
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DLVRecord;->alg:I

    .line 59
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DLVRecord;->digestid:I

    .line 60
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->j()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DLVRecord;->digest:[B

    .line 61
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/DLVRecord;->footprint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget v1, p0, Lorg/xbill/DNS/DLVRecord;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget v1, p0, Lorg/xbill/DNS/DLVRecord;->digestid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 82
    iget-object v1, p0, Lorg/xbill/DNS/DLVRecord;->digest:[B

    if-eqz v1, :cond_0

    .line 83
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v1, p0, Lorg/xbill/DNS/DLVRecord;->digest:[B

    invoke-static {v1}, Lorg/xbill/DNS/b/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
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
    .line 125
    iget v0, p0, Lorg/xbill/DNS/DLVRecord;->footprint:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 126
    iget v0, p0, Lorg/xbill/DNS/DLVRecord;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 127
    iget v0, p0, Lorg/xbill/DNS/DLVRecord;->digestid:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 128
    iget-object v0, p0, Lorg/xbill/DNS/DLVRecord;->digest:[B

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/xbill/DNS/DLVRecord;->digest:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 130
    :cond_0
    return-void
.end method
