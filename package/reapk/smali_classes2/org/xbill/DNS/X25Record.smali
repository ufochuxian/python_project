.class public Lorg/xbill/DNS/X25Record;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x3b3979fdac5ae274L


# instance fields
.field private address:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "address"    # Ljava/lang/String;

    .prologue
    .line 47
    const/16 v2, 0x13

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 48
    invoke-static {p5}, Lorg/xbill/DNS/X25Record;->checkAndConvertAddress(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/X25Record;->address:[B

    .line 49
    iget-object v0, p0, Lorg/xbill/DNS/X25Record;->address:[B

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid PSDN address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method

.method private static final checkAndConvertAddress(Ljava/lang/String;)[B
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 30
    .local v2, "length":I
    new-array v3, v2, [B

    .line 31
    .local v3, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 33
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 34
    const/4 v3, 0x0

    .line 37
    .end local v0    # "c":C
    .end local v3    # "out":[B
    :cond_0
    return-object v3

    .line 35
    .restart local v0    # "c":C
    .restart local v3    # "out":[B
    :cond_1
    int-to-byte v4, v0

    aput-byte v4, v3, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/xbill/DNS/X25Record;->address:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/X25Record;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/xbill/DNS/X25Record;

    invoke-direct {v0}, Lorg/xbill/DNS/X25Record;-><init>()V

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
    .line 62
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/X25Record;->checkAndConvertAddress(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/X25Record;->address:[B

    .line 64
    iget-object v1, p0, Lorg/xbill/DNS/X25Record;->address:[B

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid PSDN address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 66
    :cond_0
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
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->k()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/X25Record;->address:[B

    .line 58
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/xbill/DNS/X25Record;->address:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xbill/DNS/X25Record;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xbill/DNS/X25Record;->address:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b([B)V

    .line 79
    return-void
.end method
