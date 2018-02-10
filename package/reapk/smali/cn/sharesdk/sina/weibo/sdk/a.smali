.class public Lcn/sharesdk/sina/weibo/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const/4 v1, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-array v0, v1, [I

    aput p1, v0, v4

    aput p1, v0, v5

    aput p1, v0, v6

    aput p0, v0, v7

    .line 14
    new-array v1, v1, [[I

    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v5

    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v1, v6

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v2, v1, v7

    .line 15
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 26
    const/4 v0, 0x0

    :goto_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 27
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    invoke-static {v3}, Lcom/mob/tools/c/d;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_1
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 23
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 32
    goto :goto_1
.end method

.method public static a([B)[B
    .locals 11

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 36
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 37
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v9, v0, [B

    move v0, v1

    move v2, v1

    .line 39
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 42
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 43
    shl-int/lit8 v3, v3, 0x8

    .line 44
    add-int/lit8 v4, v2, 0x1

    array-length v7, p0

    if-ge v4, v7, :cond_4

    .line 45
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v4, v5

    .line 48
    :goto_1
    shl-int/lit8 v3, v3, 0x8

    .line 49
    add-int/lit8 v7, v2, 0x2

    array-length v10, p0

    if-ge v7, v10, :cond_3

    .line 50
    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    move v7, v3

    move v3, v5

    .line 53
    :goto_2
    add-int/lit8 v10, v0, 0x3

    if-eqz v3, :cond_0

    and-int/lit8 v3, v7, 0x3f

    :goto_3
    aget-char v3, v8, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v10

    .line 54
    shr-int/lit8 v7, v7, 0x6

    .line 55
    add-int/lit8 v10, v0, 0x2

    if-eqz v4, :cond_1

    and-int/lit8 v3, v7, 0x3f

    :goto_4
    aget-char v3, v8, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v10

    .line 56
    shr-int/lit8 v3, v7, 0x6

    .line 57
    add-int/lit8 v4, v0, 0x1

    and-int/lit8 v7, v3, 0x3f

    aget-char v7, v8, v7

    int-to-byte v7, v7

    aput-byte v7, v9, v4

    .line 58
    shr-int/lit8 v3, v3, 0x6

    .line 59
    add-int/lit8 v4, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v8, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v4

    .line 60
    add-int/lit8 v2, v2, 0x3

    .line 39
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    move v3, v6

    .line 53
    goto :goto_3

    :cond_1
    move v3, v6

    .line 55
    goto :goto_4

    .line 62
    :cond_2
    return-object v9

    :cond_3
    move v7, v3

    move v3, v1

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_1
.end method
