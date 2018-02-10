.class public Lorg/xbill/DNS/AAAARecord;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3fadfcc386bcd552L


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

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 33
    const/16 v2, 0x1c

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 34
    invoke-static {p5}, Lorg/xbill/DNS/a;->b(Ljava/net/InetAddress;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid IPv6 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/AAAARecord;->name:Lorg/xbill/DNS/Name;

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/AAAARecord;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    invoke-static {v1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/xbill/DNS/AAAARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/AAAARecord;-><init>()V

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
    .line 46
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/at;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    .line 47
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
    .line 41
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    .line 42
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    invoke-static {v6, v7}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 60
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "0:0:0:0:0:ffff:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    const/16 v6, 0xc

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    const/16 v7, 0xd

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 62
    .local v2, "high":I
    iget-object v5, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    const/16 v6, 0xe

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    const/16 v7, 0xf

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int v3, v5, v6

    .line 63
    .local v3, "low":I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "high":I
    .end local v3    # "low":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    return-object v5

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/net/UnknownHostException;
    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lorg/xbill/DNS/AAAARecord;->address:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 88
    return-void
.end method
