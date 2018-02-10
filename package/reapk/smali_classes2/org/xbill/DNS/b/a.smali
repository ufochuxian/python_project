.class public Lorg/xbill/DNS/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:B = 0x36t

.field private static final f:B = 0x5ct


# instance fields
.field private a:Ljava/security/MessageDigest;

.field private b:I

.field private c:[B

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 4
    .param p1, "digestName"    # Ljava/lang/String;
    .param p2, "blockLength"    # I
    .param p3, "key"    # [B

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    iput p2, p0, Lorg/xbill/DNS/b/a;->b:I

    .line 74
    invoke-direct {p0, p3}, Lorg/xbill/DNS/b/a;->c([B)V

    .line 75
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown digest algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "digestName"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    .line 102
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0, p2}, Lorg/xbill/DNS/b/a;-><init>(Ljava/lang/String;I[B)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/security/MessageDigest;I[B)V
    .locals 0
    .param p1, "digest"    # Ljava/security/MessageDigest;
    .param p2, "blockLength"    # I
    .param p3, "key"    # [B

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 54
    iput-object p1, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    .line 55
    iput p2, p0, Lorg/xbill/DNS/b/a;->b:I

    .line 56
    invoke-direct {p0, p3}, Lorg/xbill/DNS/b/a;->c([B)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/security/MessageDigest;[B)V
    .locals 1
    .param p1, "digest"    # Ljava/security/MessageDigest;
    .param p2, "key"    # [B

    .prologue
    .line 88
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0, p2}, Lorg/xbill/DNS/b/a;-><init>(Ljava/security/MessageDigest;I[B)V

    .line 89
    return-void
.end method

.method private c([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 28
    array-length v1, p1

    iget v2, p0, Lorg/xbill/DNS/b/a;->b:I

    if-le v1, v2, :cond_0

    .line 29
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 30
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 32
    :cond_0
    iget v1, p0, Lorg/xbill/DNS/b/a;->b:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/xbill/DNS/b/a;->c:[B

    .line 33
    iget v1, p0, Lorg/xbill/DNS/b/a;->b:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/xbill/DNS/b/a;->d:[B

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 35
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->c:[B

    aget-byte v2, p1, v0

    xor-int/lit8 v2, v2, 0x36

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 36
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->d:[B

    aget-byte v2, p1, v0

    xor-int/lit8 v2, v2, 0x5c

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    iget v1, p0, Lorg/xbill/DNS/b/a;->b:I

    if-ge v0, v1, :cond_2

    .line 39
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->c:[B

    const/16 v2, 0x36

    aput-byte v2, v1, v0

    .line 40
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->d:[B

    const/16 v2, 0x5c

    aput-byte v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_2
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/xbill/DNS/b/a;->c:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 122
    iget-object v0, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    return-void
.end method

.method public a([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 114
    return-void
.end method

.method public a([BZ)Z
    .locals 5
    .param p1, "signature"    # [B
    .param p2, "truncation_ok"    # Z

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-virtual {p0}, Lorg/xbill/DNS/b/a;->a()[B

    move-result-object v0

    .line 157
    .local v0, "expected":[B
    if-eqz p2, :cond_0

    array-length v2, p1

    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 158
    array-length v2, p1

    new-array v1, v2, [B

    .line 159
    .local v1, "truncated":[B
    array-length v2, v1

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    move-object v0, v1

    .line 162
    .end local v1    # "truncated":[B
    :cond_0
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method

.method public a()[B
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 132
    .local v0, "output":[B
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 133
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/xbill/DNS/b/a;->d:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    iget-object v1, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 171
    iget-object v0, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    iget-object v1, p0, Lorg/xbill/DNS/b/a;->c:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 172
    return-void
.end method

.method public b([B)Z
    .locals 1
    .param p1, "signature"    # [B

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/b/a;->a([BZ)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/xbill/DNS/b/a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method
