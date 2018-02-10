.class public Lorg/xbill/DNS/d;
.super Lorg/xbill/DNS/j;
.source "SourceFile"


# static fields
.field private static final a:J = -0x35ae759da4a28cebL


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/net/InetAddress;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/xbill/DNS/j;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .locals 2
    .param p1, "sourceNetmask"    # I
    .param p2, "scopeNetmask"    # I
    .param p3, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 68
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/xbill/DNS/j;-><init>(I)V

    .line 70
    invoke-static {p3}, Lorg/xbill/DNS/a;->b(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/d;->b:I

    .line 71
    const-string v0, "source netmask"

    iget v1, p0, Lorg/xbill/DNS/d;->b:I

    invoke-static {v0, v1, p1}, Lorg/xbill/DNS/d;->a(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/d;->c:I

    .line 73
    const-string v0, "scope netmask"

    iget v1, p0, Lorg/xbill/DNS/d;->b:I

    invoke-static {v0, v1, p2}, Lorg/xbill/DNS/d;->a(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/d;->d:I

    .line 75
    invoke-static {p3, p1}, Lorg/xbill/DNS/a;->a(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/d;->e:Ljava/net/InetAddress;

    .line 77
    iget-object v0, p0, Lorg/xbill/DNS/d;->e:Ljava/net/InetAddress;

    invoke-virtual {p3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source netmask is not valid for address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 1
    .param p1, "sourceNetmask"    # I
    .param p2, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/xbill/DNS/d;-><init>(IILjava/net/InetAddress;)V

    .line 92
    return-void
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 4
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "family"    # I
    .param p2, "val"    # I

    .prologue
    .line 47
    invoke-static {p1}, Lorg/xbill/DNS/a;->a(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x8

    .line 48
    .local v0, "max":I
    if-ltz p2, :cond_0

    if-le p2, v0, :cond_1

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " must be in the range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "[0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1
    return p2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/xbill/DNS/d;->b:I

    return v0
.end method

.method a(Lorg/xbill/DNS/h;)V
    .locals 7
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 123
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v4

    iput v4, p0, Lorg/xbill/DNS/d;->b:I

    .line 124
    iget v4, p0, Lorg/xbill/DNS/d;->b:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/xbill/DNS/d;->b:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 125
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "unknown address family"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v4

    iput v4, p0, Lorg/xbill/DNS/d;->c:I

    .line 127
    iget v4, p0, Lorg/xbill/DNS/d;->c:I

    iget v5, p0, Lorg/xbill/DNS/d;->b:I

    invoke-static {v5}, Lorg/xbill/DNS/a;->a(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-le v4, v5, :cond_1

    .line 128
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid source netmask"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v4

    iput v4, p0, Lorg/xbill/DNS/d;->d:I

    .line 130
    iget v4, p0, Lorg/xbill/DNS/d;->d:I

    iget v5, p0, Lorg/xbill/DNS/d;->b:I

    invoke-static {v5}, Lorg/xbill/DNS/a;->a(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-le v4, v5, :cond_2

    .line 131
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid scope netmask"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->j()[B

    move-result-object v0

    .line 135
    .local v0, "addr":[B
    array-length v4, v0

    iget v5, p0, Lorg/xbill/DNS/d;->c:I

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    if-eq v4, v5, :cond_3

    .line 136
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid address"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_3
    iget v4, p0, Lorg/xbill/DNS/d;->b:I

    invoke-static {v4}, Lorg/xbill/DNS/a;->a(I)I

    move-result v4

    new-array v2, v4, [B

    .line 140
    .local v2, "fulladdr":[B
    array-length v4, v0

    invoke-static {v0, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Lorg/xbill/DNS/d;->e:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object v4, p0, Lorg/xbill/DNS/d;->e:Ljava/net/InetAddress;

    iget v5, p0, Lorg/xbill/DNS/d;->c:I

    invoke-static {v4, v5}, Lorg/xbill/DNS/a;->a(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    .line 149
    .local v3, "tmp":Ljava/net/InetAddress;
    iget-object v4, p0, Lorg/xbill/DNS/d;->e:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 150
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid padding"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    .end local v3    # "tmp":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid address"

    invoke-direct {v4, v5, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 151
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v3    # "tmp":Ljava/net/InetAddress;
    :cond_4
    return-void
.end method

.method a(Lorg/xbill/DNS/i;)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/i;

    .prologue
    .line 155
    iget v0, p0, Lorg/xbill/DNS/d;->b:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 156
    iget v0, p0, Lorg/xbill/DNS/d;->c:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 157
    iget v0, p0, Lorg/xbill/DNS/d;->d:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 158
    iget-object v0, p0, Lorg/xbill/DNS/d;->e:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lorg/xbill/DNS/d;->c:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/xbill/DNS/i;->a([BII)V

    .line 159
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/xbill/DNS/d;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/xbill/DNS/d;->d:I

    return v0
.end method

.method public d()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/xbill/DNS/d;->e:Ljava/net/InetAddress;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/d;->e:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget v1, p0, Lorg/xbill/DNS/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 167
    const-string v1, ", scope netmask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    iget v1, p0, Lorg/xbill/DNS/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
