.class public Lorg/xbill/DNS/HINFORecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x41ae88c3558074d0L


# instance fields
.field private cpu:[B

.field private os:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "cpu"    # Ljava/lang/String;
    .param p6, "os"    # Ljava/lang/String;

    .prologue
    .line 34
    const/16 v2, 0xd

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 36
    :try_start_0
    invoke-static {p5}, Lorg/xbill/DNS/HINFORecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/HINFORecord;->cpu:[B

    .line 37
    invoke-static {p6}, Lorg/xbill/DNS/HINFORecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/HINFORecord;->os:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    .line 39
    :catch_0
    move-exception v6

    .line 40
    .local v6, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCPU()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/xbill/DNS/HINFORecord;->cpu:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/HINFORecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/xbill/DNS/HINFORecord;->os:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/HINFORecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lorg/xbill/DNS/HINFORecord;

    invoke-direct {v0}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)V
    .locals 2
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/HINFORecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/HINFORecord;->cpu:[B

    .line 54
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/HINFORecord;->byteArrayFromString(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/HINFORecord;->os:[B
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
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
    .line 46
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->k()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/HINFORecord;->cpu:[B

    .line 47
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->k()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/HINFORecord;->os:[B

    .line 48
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/HINFORecord;->cpu:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/HINFORecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v1, p0, Lorg/xbill/DNS/HINFORecord;->os:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/HINFORecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
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
    .line 79
    iget-object v0, p0, Lorg/xbill/DNS/HINFORecord;->cpu:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b([B)V

    .line 80
    iget-object v0, p0, Lorg/xbill/DNS/HINFORecord;->os:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b([B)V

    .line 81
    return-void
.end method
