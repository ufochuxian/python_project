.class public Lorg/xbill/DNS/A6Record;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7a554440014286e5L


# instance fields
.field private prefix:Lorg/xbill/DNS/Name;

.field private prefixBits:I

.field private suffix:Ljava/net/InetAddress;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILjava/net/InetAddress;Lorg/xbill/DNS/Name;)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "prefixBits"    # I
    .param p6, "suffix"    # Ljava/net/InetAddress;
    .param p7, "prefix"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 39
    const/16 v2, 0x26

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 40
    const-string v0, "prefixBits"

    invoke-static {v0, p5}, Lorg/xbill/DNS/A6Record;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    .line 41
    if-eqz p6, :cond_0

    invoke-static {p6}, Lorg/xbill/DNS/a;->b(Ljava/net/InetAddress;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid IPv6 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p6, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    .line 44
    if-eqz p7, :cond_1

    .line 45
    const-string v0, "prefix"

    invoke-static {v0, p7}, Lorg/xbill/DNS/A6Record;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/xbill/DNS/A6Record;

    invoke-direct {v0}, Lorg/xbill/DNS/A6Record;-><init>()V

    return-object v0
.end method

.method public getPrefix()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getPrefixBits()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    return v0
.end method

.method public getSuffix()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    return-object v0
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
    const/16 v3, 0x80

    .line 64
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    .line 65
    iget v2, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-le v2, v3, :cond_0

    .line 66
    const-string v2, "prefix bits must be [0..128]"

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 67
    :cond_0
    iget v2, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-ge v2, v3, :cond_1

    .line 68
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_0
    invoke-static {v1, v2}, Lorg/xbill/DNS/a;->c(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-lez v2, :cond_2

    .line 77
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    .line 78
    :cond_2
    return-void

    .line 72
    .restart local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "invalid IPv6 address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method rrFromWire(Lorg/xbill/DNS/h;)V
    .locals 5
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v3

    iput v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    .line 51
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    rsub-int v1, v3, 0x80

    .line 52
    .local v1, "suffixbits":I
    add-int/lit8 v3, v1, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 53
    .local v2, "suffixbytes":I
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    .line 54
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 55
    .local v0, "bytes":[B
    rsub-int/lit8 v3, v2, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/xbill/DNS/h;->a([BII)V

    .line 56
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    .line 58
    .end local v0    # "bytes":[B
    :cond_0
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-lez v3, :cond_1

    .line 59
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/h;)V

    iput-object v3, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    .line 60
    :cond_1
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 85
    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 86
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    if-eqz v1, :cond_1

    .line 90
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 5
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 116
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/i;->b(I)V

    .line 117
    iget-object v3, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    .line 118
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    rsub-int v1, v3, 0x80

    .line 119
    .local v1, "suffixbits":I
    add-int/lit8 v3, v1, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 120
    .local v2, "suffixbytes":I
    iget-object v3, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 121
    .local v0, "data":[B
    rsub-int/lit8 v3, v2, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/xbill/DNS/i;->a([BII)V

    .line 123
    .end local v0    # "data":[B
    .end local v1    # "suffixbits":I
    .end local v2    # "suffixbytes":I
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V

    .line 125
    :cond_1
    return-void
.end method
