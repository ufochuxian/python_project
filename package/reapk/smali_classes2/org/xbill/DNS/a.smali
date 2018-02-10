.class public final Lorg/xbill/DNS/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2
    .param p0, "family"    # I

    .prologue
    .line 385
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 386
    const/4 v0, 0x4

    .line 388
    :goto_0
    return v0

    .line 387
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 388
    const/16 v0, 0x10

    goto :goto_0

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 5
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {p0}, Lorg/xbill/DNS/ag;->a(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 357
    .local v0, "name":Lorg/xbill/DNS/Name;
    new-instance v3, Lorg/xbill/DNS/t;

    const/16 v4, 0xc

    invoke-direct {v3, v0, v4}, Lorg/xbill/DNS/t;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v3}, Lorg/xbill/DNS/t;->d()[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 358
    .local v2, "records":[Lorg/xbill/DNS/Record;
    if-nez v2, :cond_0

    .line 359
    new-instance v3, Ljava/net/UnknownHostException;

    const-string v4, "unknown address"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 360
    :cond_0
    const/4 v3, 0x0

    aget-object v1, v2, v3

    check-cast v1, Lorg/xbill/DNS/PTRRecord;

    .line 361
    .local v1, "ptr":Lorg/xbill/DNS/PTRRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # [B

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([I)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # [I

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 265
    instance-of v1, p1, Lorg/xbill/DNS/ARecord;

    if-eqz v1, :cond_0

    .line 266
    check-cast p1, Lorg/xbill/DNS/ARecord;

    .end local p1    # "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 270
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 268
    .end local v0    # "addr":Ljava/net/InetAddress;
    .restart local p1    # "r":Lorg/xbill/DNS/Record;
    :cond_0
    check-cast p1, Lorg/xbill/DNS/AAAARecord;

    .end local p1    # "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .restart local v0    # "addr":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method public static a(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 9
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "maskLength"    # I

    .prologue
    .line 401
    invoke-static {p0}, Lorg/xbill/DNS/a;->b(Ljava/net/InetAddress;)I

    move-result v3

    .line 402
    .local v3, "family":I
    invoke-static {v3}, Lorg/xbill/DNS/a;->a(I)I

    move-result v7

    mul-int/lit8 v6, v7, 0x8

    .line 403
    .local v6, "maxMaskLength":I
    if-ltz p1, :cond_0

    if-le p1, v6, :cond_1

    .line 404
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid mask length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 405
    :cond_1
    if-ne p1, v6, :cond_2

    .line 416
    .end local p0    # "address":Ljava/net/InetAddress;
    :goto_0
    return-object p0

    .line 407
    .restart local p0    # "address":Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 408
    .local v1, "bytes":[B
    div-int/lit8 v7, p1, 0x8

    add-int/lit8 v4, v7, 0x1

    .local v4, "i":I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_3

    .line 409
    const/4 v7, 0x0

    aput-byte v7, v1, v4

    .line 408
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 410
    :cond_3
    rem-int/lit8 v5, p1, 0x8

    .line 411
    .local v5, "maskBits":I
    const/4 v0, 0x0

    .line 412
    .local v0, "bitmask":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_4

    .line 413
    const/4 v7, 0x1

    rsub-int/lit8 v8, v4, 0x7

    shl-int/2addr v7, v8

    or-int/2addr v0, v7

    .line 412
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 414
    :cond_4
    div-int/lit8 v7, p1, 0x8

    aget-byte v8, v1, v7

    and-int/2addr v8, v0

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 416
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid address"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static a(Ljava/lang/String;)[I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/a;->a(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)[I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .prologue
    .line 167
    invoke-static {p0, p1}, Lorg/xbill/DNS/a;->b(Ljava/lang/String;I)[B

    move-result-object v0

    .line 168
    .local v0, "byteArray":[B
    if-nez v0, :cond_1

    .line 169
    const/4 v2, 0x0

    .line 173
    :cond_0
    return-object v2

    .line 170
    :cond_1
    array-length v3, v0

    new-array v2, v3, [I

    .line 171
    .local v2, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 172
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    new-instance v3, Lorg/xbill/DNS/t;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5}, Lorg/xbill/DNS/t;-><init>(Ljava/lang/String;I)V

    .line 238
    .local v3, "lookup":Lorg/xbill/DNS/t;
    invoke-virtual {v3}, Lorg/xbill/DNS/t;->d()[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 239
    .local v0, "a":[Lorg/xbill/DNS/Record;
    if-nez v0, :cond_2

    .line 240
    invoke-virtual {v3}, Lorg/xbill/DNS/t;->g()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 241
    new-instance v5, Lorg/xbill/DNS/t;

    const/16 v6, 0x1c

    invoke-direct {v5, p0, v6}, Lorg/xbill/DNS/t;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Lorg/xbill/DNS/t;->d()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 242
    .local v1, "aaaa":[Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 255
    .end local v0    # "a":[Lorg/xbill/DNS/Record;
    .end local v1    # "aaaa":[Lorg/xbill/DNS/Record;
    :cond_0
    :goto_0
    return-object v0

    .line 245
    .restart local v0    # "a":[Lorg/xbill/DNS/Record;
    :cond_1
    new-instance v5, Ljava/net/UnknownHostException;

    const-string v6, "unknown host"

    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "a":[Lorg/xbill/DNS/Record;
    .end local v3    # "lookup":Lorg/xbill/DNS/t;
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v5, Ljava/net/UnknownHostException;

    const-string v6, "invalid name"

    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    .end local v2    # "e":Lorg/xbill/DNS/TextParseException;
    .restart local v0    # "a":[Lorg/xbill/DNS/Record;
    .restart local v3    # "lookup":Lorg/xbill/DNS/t;
    :cond_2
    if-eqz p1, :cond_0

    .line 249
    :try_start_1
    new-instance v5, Lorg/xbill/DNS/t;

    const/16 v6, 0x1c

    invoke-direct {v5, p0, v6}, Lorg/xbill/DNS/t;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Lorg/xbill/DNS/t;->d()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 250
    .restart local v1    # "aaaa":[Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_0

    .line 252
    array-length v5, v0

    array-length v6, v1

    add-int/2addr v5, v6

    new-array v4, v5, [Lorg/xbill/DNS/Record;

    .line 253
    .local v4, "merged":[Lorg/xbill/DNS/Record;
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    const/4 v5, 0x0

    array-length v6, v0

    array-length v7, v1

    invoke-static {v1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 255
    goto :goto_0
.end method

.method public static b(Ljava/net/InetAddress;)I
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 371
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    .line 373
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 374
    const/4 v0, 0x2

    goto :goto_0

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-static {p0, v1}, Lorg/xbill/DNS/a;->b(Ljava/lang/String;I)[B

    move-result-object v0

    .line 210
    .local v0, "address":[B
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .prologue
    .line 194
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 195
    invoke-static {p0}, Lorg/xbill/DNS/a;->f(Ljava/lang/String;)[B

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 197
    invoke-static {p0}, Lorg/xbill/DNS/a;->g(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 282
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/a;->e(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 285
    :goto_0
    return-object v2

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {p0, v2}, Lorg/xbill/DNS/a;->a(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 285
    .local v1, "records":[Lorg/xbill/DNS/Record;
    aget-object v2, v1, v2

    invoke-static {p0, v2}, Lorg/xbill/DNS/a;->a(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown address family"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    invoke-static {p0, p1}, Lorg/xbill/DNS/a;->b(Ljava/lang/String;I)[B

    move-result-object v0

    .line 343
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    .line 344
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 345
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static d(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 298
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/a;->e(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 299
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/net/InetAddress;

    const/4 v5, 0x0

    aput-object v0, v1, v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    return-object v1

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/net/UnknownHostException;
    invoke-static {p0, v6}, Lorg/xbill/DNS/a;->a(Ljava/lang/String;Z)[Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 302
    .local v4, "records":[Lorg/xbill/DNS/Record;
    array-length v5, v4

    new-array v1, v5, [Ljava/net/InetAddress;

    .line 303
    .local v1, "addrs":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 304
    aget-object v5, v4, v3

    invoke-static {p0, v5}, Lorg/xbill/DNS/a;->a(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v5

    aput-object v5, v1, v3

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/xbill/DNS/a;->b(Ljava/lang/String;I)[B

    move-result-object v0

    .line 320
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 321
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    .line 324
    :goto_0
    return-object v1

    .line 322
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/xbill/DNS/a;->b(Ljava/lang/String;I)[B

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 325
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static f(Ljava/lang/String;)[B
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x4

    new-array v7, v9, [B

    .line 29
    .local v7, "values":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 31
    .local v5, "length":I
    const/4 v1, 0x0

    .line 32
    .local v1, "currentOctet":I
    const/4 v3, 0x0

    .line 33
    .local v3, "currentValue":I
    const/4 v6, 0x0

    .line 34
    .local v6, "numDigits":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "currentOctet":I
    .local v2, "currentOctet":I
    :goto_0
    if-ge v4, v5, :cond_6

    .line 35
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 36
    .local v0, "c":C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_2

    const/16 v9, 0x39

    if-gt v0, v9, :cond_2

    .line 38
    if-ne v6, v10, :cond_0

    move-object v7, v8

    .line 69
    .end local v0    # "c":C
    .end local v7    # "values":[B
    :goto_1
    return-object v7

    .line 41
    .restart local v0    # "c":C
    .restart local v7    # "values":[B
    :cond_0
    if-lez v6, :cond_1

    if-nez v3, :cond_1

    move-object v7, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 44
    mul-int/lit8 v3, v3, 0xa

    .line 45
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v3, v9

    .line 47
    const/16 v9, 0xff

    if-le v3, v9, :cond_9

    move-object v7, v8

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_5

    .line 51
    if-ne v2, v10, :cond_3

    move-object v7, v8

    .line 52
    goto :goto_1

    .line 54
    :cond_3
    if-nez v6, :cond_4

    move-object v7, v8

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "currentOctet":I
    .restart local v1    # "currentOctet":I
    int-to-byte v9, v3

    aput-byte v9, v7, v2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v6, 0x0

    .line 34
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "currentOctet":I
    .restart local v2    # "currentOctet":I
    goto :goto_0

    :cond_5
    move-object v7, v8

    .line 60
    goto :goto_1

    .line 63
    .end local v0    # "c":C
    :cond_6
    if-eq v2, v10, :cond_7

    move-object v7, v8

    .line 64
    goto :goto_1

    .line 66
    :cond_7
    if-nez v6, :cond_8

    move-object v7, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_8
    int-to-byte v8, v3

    aput-byte v8, v7, v2

    goto :goto_1

    .restart local v0    # "c":C
    :cond_9
    move v1, v2

    .end local v2    # "currentOctet":I
    .restart local v1    # "currentOctet":I
    goto :goto_2
.end method

.method private static g(Ljava/lang/String;)[B
    .locals 19
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v13, -0x1

    .line 75
    .local v13, "range":I
    const/16 v17, 0x10

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 77
    .local v4, "data":[B
    const-string v17, ":"

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 79
    .local v14, "tokens":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 80
    .local v7, "first":I
    array-length v0, v14

    move/from16 v17, v0

    add-int/lit8 v12, v17, -0x1

    .line 82
    .local v12, "last":I
    const/16 v17, 0x0

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_0

    .line 86
    sub-int v17, v12, v7

    if-lez v17, :cond_3

    const/16 v17, 0x1

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 92
    :cond_0
    aget-object v17, v14, v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 96
    sub-int v17, v12, v7

    if-lez v17, :cond_4

    add-int/lit8 v17, v12, -0x1

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    .line 97
    add-int/lit8 v12, v12, -0x1

    .line 102
    :cond_1
    sub-int v17, v12, v7

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 103
    const/4 v4, 0x0

    .line 156
    .end local v4    # "data":[B
    :cond_2
    :goto_0
    return-object v4

    .line 89
    .restart local v4    # "data":[B
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 99
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 106
    :cond_5
    move v8, v7

    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    move v10, v9

    .end local v9    # "j":I
    .local v10, "j":I
    :goto_1
    if-gt v8, v12, :cond_12

    .line 107
    aget-object v17, v14, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_7

    .line 108
    if-ltz v13, :cond_6

    .line 109
    const/4 v4, 0x0

    goto :goto_0

    .line 110
    :cond_6
    move v13, v10

    move v9, v10

    .line 106
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_1

    .line 114
    :cond_7
    aget-object v17, v14, v8

    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-ltz v17, :cond_c

    .line 116
    if-ge v8, v12, :cond_8

    .line 117
    const/4 v4, 0x0

    goto :goto_0

    .line 119
    :cond_8
    const/16 v17, 0x6

    move/from16 v0, v17

    if-le v8, v0, :cond_9

    .line 120
    const/4 v4, 0x0

    goto :goto_0

    .line 121
    :cond_9
    aget-object v17, v14, v8

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/xbill/DNS/a;->b(Ljava/lang/String;I)[B

    move-result-object v15

    .line 122
    .local v15, "v4addr":[B
    if-nez v15, :cond_a

    .line 123
    const/4 v4, 0x0

    goto :goto_0

    .line 124
    :cond_a
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_3
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v11, v0, :cond_b

    .line 125
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-byte v17, v15, v11

    aput-byte v17, v4, v10

    .line 124
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_3

    :cond_b
    move v9, v10

    .line 146
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v15    # "v4addr":[B
    .restart local v9    # "j":I
    :goto_4
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v9, v0, :cond_11

    if-gez v13, :cond_11

    .line 147
    const/4 v4, 0x0

    goto :goto_0

    .line 130
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_c
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_5
    :try_start_0
    aget-object v17, v14, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_e

    .line 131
    aget-object v17, v14, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 132
    .local v3, "c":C
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    if-gez v17, :cond_d

    .line 133
    const/4 v4, 0x0

    goto :goto_0

    .line 130
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 135
    .end local v3    # "c":C
    :cond_e
    aget-object v17, v14, v8

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 136
    .local v16, "x":I
    const v17, 0xffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_f

    if-gez v16, :cond_10

    .line 137
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 138
    :cond_10
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    ushr-int/lit8 v17, v16, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    :try_start_1
    aput-byte v17, v4, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    :try_start_2
    aput-byte v17, v4, v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move v9, v10

    .line 143
    .end local v10    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_2

    .line 141
    .end local v9    # "j":I
    .end local v16    # "x":I
    .restart local v10    # "j":I
    :catch_0
    move-exception v5

    move v9, v10

    .line 142
    .end local v10    # "j":I
    .local v5, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "j":I
    :goto_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 149
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "k":I
    :cond_11
    if-ltz v13, :cond_2

    .line 150
    rsub-int/lit8 v6, v9, 0x10

    .line 151
    .local v6, "empty":I
    add-int v17, v13, v6

    sub-int v18, v9, v13

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v13, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    move v8, v13

    :goto_7
    add-int v17, v13, v6

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 153
    const/16 v17, 0x0

    aput-byte v17, v4, v8

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 141
    .end local v6    # "empty":I
    .restart local v11    # "k":I
    .restart local v16    # "x":I
    :catch_1
    move-exception v5

    goto :goto_6

    .end local v9    # "j":I
    .end local v11    # "k":I
    .end local v16    # "x":I
    .restart local v10    # "j":I
    :cond_12
    move v9, v10

    .end local v10    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_4
.end method
