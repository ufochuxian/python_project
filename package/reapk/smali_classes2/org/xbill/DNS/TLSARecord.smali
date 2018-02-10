.class public Lorg/xbill/DNS/TLSARecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/TLSARecord$b;,
        Lorg/xbill/DNS/TLSARecord$c;,
        Lorg/xbill/DNS/TLSARecord$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f285a5a6b3a749L


# instance fields
.field private certificateAssociationData:[B

.field private certificateUsage:I

.field private matchingType:I

.field private selector:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "certificateUsage"    # I
    .param p6, "selector"    # I
    .param p7, "matchingType"    # I
    .param p8, "certificateAssociationData"    # [B

    .prologue
    .line 83
    const/16 v2, 0x34

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 84
    const-string v0, "certificateUsage"

    invoke-static {v0, p5}, Lorg/xbill/DNS/TLSARecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateUsage:I

    .line 85
    const-string v0, "selector"

    invoke-static {v0, p6}, Lorg/xbill/DNS/TLSARecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->selector:I

    .line 86
    const-string v0, "matchingType"

    invoke-static {v0, p7}, Lorg/xbill/DNS/TLSARecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->matchingType:I

    .line 87
    const-string v0, "certificateAssociationData"

    const v1, 0xffff

    invoke-static {v0, p8, v1}, Lorg/xbill/DNS/TLSARecord;->checkByteArrayLength(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateAssociationData:[B

    .line 91
    return-void
.end method


# virtual methods
.method public final getCertificateAssociationData()[B
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateAssociationData:[B

    return-object v0
.end method

.method public getCertificateUsage()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateUsage:I

    return v0
.end method

.method public getMatchingType()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/xbill/DNS/TLSARecord;->matchingType:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lorg/xbill/DNS/TLSARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/TLSARecord;-><init>()V

    return-object v0
.end method

.method public getSelector()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/xbill/DNS/TLSARecord;->selector:I

    return v0
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
    .line 103
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateUsage:I

    .line 104
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->selector:I

    .line 105
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->matchingType:I

    .line 106
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->m()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateAssociationData:[B

    .line 107
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
    .line 95
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateUsage:I

    .line 96
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->selector:I

    .line 97
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->matchingType:I

    .line 98
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->j()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateAssociationData:[B

    .line 99
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/TLSARecord;->certificateUsage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget v1, p0, Lorg/xbill/DNS/TLSARecord;->selector:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget v1, p0, Lorg/xbill/DNS/TLSARecord;->matchingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v1, p0, Lorg/xbill/DNS/TLSARecord;->certificateAssociationData:[B

    invoke-static {v1}, Lorg/xbill/DNS/b/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
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
    .line 126
    iget v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateUsage:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 127
    iget v0, p0, Lorg/xbill/DNS/TLSARecord;->selector:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 128
    iget v0, p0, Lorg/xbill/DNS/TLSARecord;->matchingType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 129
    iget-object v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateAssociationData:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 130
    return-void
.end method
