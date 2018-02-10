.class public Lorg/xbill/DNS/SSHFPRecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/SSHFPRecord$b;,
        Lorg/xbill/DNS/SSHFPRecord$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7079aefc33d7bf31L


# instance fields
.field private alg:I

.field private digestType:I

.field private fingerprint:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJII[B)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "alg"    # I
    .param p6, "digestType"    # I
    .param p7, "fingerprint"    # [B

    .prologue
    .line 52
    const/16 v2, 0x2c

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 53
    const-string v0, "alg"

    invoke-static {v0, p5}, Lorg/xbill/DNS/SSHFPRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    .line 54
    const-string v0, "digestType"

    invoke-static {v0, p6}, Lorg/xbill/DNS/SSHFPRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    .line 55
    iput-object p7, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    .line 56
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    return v0
.end method

.method public getDigestType()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    return v0
.end method

.method public getFingerPrint()[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/xbill/DNS/SSHFPRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SSHFPRecord;-><init>()V

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
    .line 67
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    .line 68
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/at;->b(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    .line 70
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
    .line 60
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    .line 61
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    .line 62
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->j()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    .line 63
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget v1, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-object v1, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    invoke-static {v1}, Lorg/xbill/DNS/b/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
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
    .line 103
    iget v0, p0, Lorg/xbill/DNS/SSHFPRecord;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 104
    iget v0, p0, Lorg/xbill/DNS/SSHFPRecord;->digestType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 105
    iget-object v0, p0, Lorg/xbill/DNS/SSHFPRecord;->fingerprint:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 106
    return-void
.end method
