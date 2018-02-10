.class public Lorg/xbill/DNS/ISDNRecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x792a099a2014b2deL


# instance fields
.field private address:[B

.field private subAddress:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "address"    # Ljava/lang/String;
    .param p6, "subAddress"    # Ljava/lang/String;

    .prologue
    .line 35
    const/16 v2, 0x14

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 37
    :try_start_0
    invoke-static {p5}, Lorg/xbill/DNS/ISDNRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    .line 38
    if-eqz p6, :cond_0

    .line 39
    invoke-static {p6}, Lorg/xbill/DNS/ISDNRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    return-void

    .line 41
    :catch_0
    move-exception v6

    .line 42
    .local v6, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/xbill/DNS/ISDNRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/ISDNRecord;-><init>()V

    return-object v0
.end method

.method public getSubAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 56
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    .line 57
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v1

    .line 58
    .local v1, "t":Lorg/xbill/DNS/at$a;
    invoke-virtual {v1}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, v1, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->b()V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "t":Lorg/xbill/DNS/at$a;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
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
    .line 48
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->k()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    .line 49
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->k()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    .line 51
    :cond_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    if-eqz v1, :cond_0

    .line 99
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v1, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
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
    .line 89
    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b([B)V

    .line 90
    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b([B)V

    .line 92
    :cond_0
    return-void
.end method
