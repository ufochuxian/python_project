.class abstract Lorg/xbill/DNS/ai;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x33e19f5df1ec9a91L


# instance fields
.field protected alg:I

.field protected covered:I

.field protected expire:Ljava/util/Date;

.field protected footprint:I

.field protected labels:I

.field protected origttl:J

.field protected signature:[B

.field protected signer:Lorg/xbill/DNS/Name;

.field protected timeSigned:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J
    .param p6, "covered"    # I
    .param p7, "alg"    # I
    .param p8, "origttl"    # J
    .param p10, "expire"    # Ljava/util/Date;
    .param p11, "timeSigned"    # Ljava/util/Date;
    .param p12, "footprint"    # I
    .param p13, "signer"    # Lorg/xbill/DNS/Name;
    .param p14, "signature"    # [B

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 36
    invoke-static {p6}, Lorg/xbill/DNS/au;->a(I)V

    .line 37
    invoke-static {p8, p9}, Lorg/xbill/DNS/ar;->a(J)V

    .line 38
    iput p6, p0, Lorg/xbill/DNS/ai;->covered:I

    .line 39
    const-string v1, "alg"

    invoke-static {v1, p7}, Lorg/xbill/DNS/ai;->checkU8(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/ai;->alg:I

    .line 40
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/xbill/DNS/ai;->labels:I

    .line 41
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget v1, p0, Lorg/xbill/DNS/ai;->labels:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/xbill/DNS/ai;->labels:I

    .line 43
    :cond_0
    iput-wide p8, p0, Lorg/xbill/DNS/ai;->origttl:J

    .line 44
    iput-object p10, p0, Lorg/xbill/DNS/ai;->expire:Ljava/util/Date;

    .line 45
    iput-object p11, p0, Lorg/xbill/DNS/ai;->timeSigned:Ljava/util/Date;

    .line 46
    const-string v1, "footprint"

    move/from16 v0, p12

    invoke-static {v1, v0}, Lorg/xbill/DNS/ai;->checkU16(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/ai;->footprint:I

    .line 47
    const-string v1, "signer"

    move-object/from16 v0, p13

    invoke-static {v1, v0}, Lorg/xbill/DNS/ai;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/ai;->signer:Lorg/xbill/DNS/Name;

    .line 48
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/xbill/DNS/ai;->signature:[B

    .line 49
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/xbill/DNS/ai;->alg:I

    return v0
.end method

.method public getExpire()Ljava/util/Date;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/xbill/DNS/ai;->expire:Ljava/util/Date;

    return-object v0
.end method

.method public getFootprint()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/xbill/DNS/ai;->footprint:I

    return v0
.end method

.method public getLabels()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lorg/xbill/DNS/ai;->labels:I

    return v0
.end method

.method public getOrigTTL()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/xbill/DNS/ai;->origttl:J

    return-wide v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/xbill/DNS/ai;->signature:[B

    return-object v0
.end method

.method public getSigner()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/xbill/DNS/ai;->signer:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getTimeSigned()Ljava/util/Date;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/xbill/DNS/ai;->timeSigned:Ljava/util/Date;

    return-object v0
.end method

.method public getTypeCovered()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/xbill/DNS/ai;->covered:I

    return v0
.end method

.method rdataFromString(Lorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)V
    .locals 4
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "typeString":Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/ai;->covered:I

    .line 68
    iget v2, p0, Lorg/xbill/DNS/ai;->covered:I

    if-gez v2, :cond_0

    .line 69
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 70
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "algString":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC$a;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/ai;->alg:I

    .line 72
    iget v2, p0, Lorg/xbill/DNS/ai;->alg:I

    if-gez v2, :cond_1

    .line 73
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 74
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/ai;->labels:I

    .line 75
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/ai;->origttl:J

    .line 76
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/o;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/ai;->expire:Ljava/util/Date;

    .line 77
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/o;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/ai;->timeSigned:Ljava/util/Date;

    .line 78
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->g()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/ai;->footprint:I

    .line 79
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/ai;->signer:Lorg/xbill/DNS/Name;

    .line 80
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->l()[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/ai;->signature:[B

    .line 81
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/h;)V
    .locals 6
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x3e8

    .line 53
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ai;->covered:I

    .line 54
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ai;->alg:I

    .line 55
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ai;->labels:I

    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/ai;->origttl:J

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/h;->i()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/xbill/DNS/ai;->expire:Ljava/util/Date;

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/h;->i()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/xbill/DNS/ai;->timeSigned:Ljava/util/Date;

    .line 59
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ai;->footprint:I

    .line 60
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/h;)V

    iput-object v0, p0, Lorg/xbill/DNS/ai;->signer:Lorg/xbill/DNS/Name;

    .line 61
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->j()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ai;->signature:[B

    .line 62
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/ai;->covered:I

    invoke-static {v1}, Lorg/xbill/DNS/au;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget v1, p0, Lorg/xbill/DNS/ai;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget v1, p0, Lorg/xbill/DNS/ai;->labels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-wide v2, p0, Lorg/xbill/DNS/ai;->origttl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "(\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ai;->expire:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/o;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Lorg/xbill/DNS/ai;->timeSigned:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/o;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget v1, p0, Lorg/xbill/DNS/ai;->footprint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v1, p0, Lorg/xbill/DNS/ai;->signer:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 104
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v1, p0, Lorg/xbill/DNS/ai;->signature:[B

    const/16 v2, 0x40

    const-string v3, "\t"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/b/d;->a([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-object v1, p0, Lorg/xbill/DNS/ai;->signature:[B

    invoke-static {v1}, Lorg/xbill/DNS/b/d;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 4
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    const-wide/16 v2, 0x3e8

    .line 182
    iget v0, p0, Lorg/xbill/DNS/ai;->covered:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 183
    iget v0, p0, Lorg/xbill/DNS/ai;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 184
    iget v0, p0, Lorg/xbill/DNS/ai;->labels:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 185
    iget-wide v0, p0, Lorg/xbill/DNS/ai;->origttl:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 186
    iget-object v0, p0, Lorg/xbill/DNS/ai;->expire:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 187
    iget-object v0, p0, Lorg/xbill/DNS/ai;->timeSigned:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 188
    iget v0, p0, Lorg/xbill/DNS/ai;->footprint:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 189
    iget-object v0, p0, Lorg/xbill/DNS/ai;->signer:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V

    .line 190
    iget-object v0, p0, Lorg/xbill/DNS/ai;->signature:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 191
    return-void
.end method

.method setSignature([B)V
    .locals 0
    .param p1, "signature"    # [B

    .prologue
    .line 177
    iput-object p1, p0, Lorg/xbill/DNS/ai;->signature:[B

    .line 178
    return-void
.end method
