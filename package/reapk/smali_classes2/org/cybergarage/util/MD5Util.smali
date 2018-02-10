.class public Lorg/cybergarage/util/MD5Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMd5([BI)Ljava/lang/String;
    .locals 11
    .param p0, "bytes"    # [B
    .param p1, "count"    # I

    .prologue
    .line 14
    const/16 v10, 0x10

    new-array v2, v10, [C

    fill-array-data v2, :array_0

    .line 17
    .local v2, "hexDigits":[C
    :try_start_0
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 18
    .local v8, "mdInst":Ljava/security/MessageDigest;
    const/4 v10, 0x0

    invoke-virtual {v8, p0, v10, p1}, Ljava/security/MessageDigest;->update([BII)V

    .line 19
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 21
    .local v7, "md":[B
    array-length v4, v7

    .line 22
    .local v4, "j":I
    mul-int/lit8 v10, v4, 0x2

    new-array v9, v10, [C

    .line 23
    .local v9, "str":[C
    const/4 v5, 0x0

    .line 24
    .local v5, "k":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v6, v5

    .end local v5    # "k":I
    .local v6, "k":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 30
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([C)V

    .line 34
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v7    # "md":[B
    .end local v8    # "mdInst":Ljava/security/MessageDigest;
    .end local v9    # "str":[C
    :goto_1
    return-object v10

    .line 26
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v6    # "k":I
    .restart local v7    # "md":[B
    .restart local v8    # "mdInst":Ljava/security/MessageDigest;
    .restart local v9    # "str":[C
    :cond_0
    aget-byte v0, v7, v3

    .line 27
    .local v0, "byte0":B
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "k":I
    .restart local v5    # "k":I
    ushr-int/lit8 v10, v0, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v2, v10

    aput-char v10, v9, v6

    .line 28
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "k":I
    .restart local v6    # "k":I
    and-int/lit8 v10, v0, 0xf

    aget-char v10, v2, v10

    aput-char v10, v9, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "byte0":B
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v7    # "md":[B
    .end local v8    # "mdInst":Ljava/security/MessageDigest;
    .end local v9    # "str":[C
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    const/4 v10, 0x0

    goto :goto_1

    .line 14
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final isSameMd5(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "md51"    # Ljava/lang/String;
    .param p1, "md52"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 49
    goto :goto_0
.end method
