.class public Lorg/xbill/DNS/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/b/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "alphabet"    # Ljava/lang/String;
    .param p2, "padding"    # Z
    .param p3, "lowercase"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xbill/DNS/b/c;->a:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lorg/xbill/DNS/b/c;->b:Z

    .line 40
    iput-boolean p3, p0, Lorg/xbill/DNS/b/c;->c:Z

    .line 41
    return-void
.end method

.method private static a(I)I
    .locals 1
    .param p0, "blocklen"    # I

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 57
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 47
    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 49
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 51
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 53
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static b(I)I
    .locals 1
    .param p0, "padlen"    # I

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_0

    .line 75
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 65
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 69
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 71
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 73
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 11
    .param p1, "b"    # [B

    .prologue
    .line 87
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p1

    add-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x5

    if-ge v2, v8, :cond_5

    .line 90
    const/4 v8, 0x5

    new-array v6, v8, [S

    .line 91
    .local v6, "s":[S
    const/16 v8, 0x8

    new-array v7, v8, [I

    .line 93
    .local v7, "t":[I
    const/4 v0, 0x5

    .line 94
    .local v0, "blocklen":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_1

    .line 95
    mul-int/lit8 v8, v2, 0x5

    add-int/2addr v8, v3

    array-length v9, p1

    if-ge v8, v9, :cond_0

    .line 96
    mul-int/lit8 v8, v2, 0x5

    add-int/2addr v8, v3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    aput-short v8, v6, v3

    .line 94
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    :cond_0
    const/4 v8, 0x0

    aput-short v8, v6, v3

    .line 99
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 102
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/b/c;->a(I)I

    move-result v5

    .line 107
    .local v5, "padlen":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 109
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x6

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 111
    const/4 v8, 0x2

    const/4 v9, 0x1

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x1

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 113
    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0x1

    shl-int/lit8 v9, v9, 0x4

    const/4 v10, 0x2

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 115
    const/4 v8, 0x4

    const/4 v9, 0x2

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x3

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x7

    and-int/lit8 v10, v10, 0x1

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 117
    const/4 v8, 0x5

    const/4 v9, 0x3

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 119
    const/4 v8, 0x6

    const/4 v9, 0x3

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x3

    const/4 v10, 0x4

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x5

    and-int/lit8 v10, v10, 0x7

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 121
    const/4 v8, 0x7

    const/4 v9, 0x4

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 124
    const/4 v3, 0x0

    :goto_3
    array-length v8, v7

    sub-int/2addr v8, v5

    if-ge v3, v8, :cond_3

    .line 125
    iget-object v8, p0, Lorg/xbill/DNS/b/c;->a:Ljava/lang/String;

    aget v9, v7, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 126
    .local v1, "c":C
    iget-boolean v8, p0, Lorg/xbill/DNS/b/c;->c:Z

    if-eqz v8, :cond_2

    .line 127
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 128
    :cond_2
    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 132
    .end local v1    # "c":C
    :cond_3
    iget-boolean v8, p0, Lorg/xbill/DNS/b/c;->b:Z

    if-eqz v8, :cond_4

    .line 133
    array-length v8, v7

    sub-int v3, v8, v5

    :goto_4
    array-length v8, v7

    if-ge v3, v8, :cond_4

    .line 134
    const/16 v8, 0x3d

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 89
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 138
    .end local v0    # "blocklen":I
    .end local v3    # "j":I
    .end local v5    # "padlen":I
    .end local v6    # "s":[S
    .end local v7    # "t":[I
    :cond_5
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    return-object v8
.end method

.method public a(Ljava/lang/String;)[B
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 151
    .local v8, "raw":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v8

    if-ge v4, v11, :cond_1

    .line 153
    aget-byte v11, v8, v4

    int-to-char v2, v11

    .line 154
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_0

    .line 155
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 156
    int-to-byte v11, v2

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 151
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "c":C
    :cond_1
    iget-boolean v11, p0, Lorg/xbill/DNS/b/c;->b:Z

    if-eqz v11, :cond_2

    .line 161
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    rem-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_3

    .line 162
    const/4 v11, 0x0

    .line 210
    :goto_1
    return-object v11

    .line 164
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    rem-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_3

    .line 165
    const/16 v11, 0x3d

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 168
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 170
    .local v5, "in":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 171
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 173
    .local v3, "ds":Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    :goto_3
    array-length v11, v5

    div-int/lit8 v11, v11, 0x8

    if-ge v4, v11, :cond_9

    .line 174
    const/16 v11, 0x8

    new-array v9, v11, [S

    .line 175
    .local v9, "s":[S
    const/4 v11, 0x5

    new-array v10, v11, [I

    .line 177
    .local v10, "t":[I
    const/16 v7, 0x8

    .line 178
    .local v7, "padlen":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    const/16 v11, 0x8

    if-ge v6, v11, :cond_4

    .line 179
    mul-int/lit8 v11, v4, 0x8

    add-int/2addr v11, v6

    aget-byte v11, v5, v11

    int-to-char v2, v11

    .line 180
    .restart local v2    # "c":C
    const/16 v11, 0x3d

    if-ne v2, v11, :cond_5

    .line 187
    .end local v2    # "c":C
    :cond_4
    invoke-static {v7}, Lorg/xbill/DNS/b/c;->b(I)I

    move-result v0

    .line 188
    .local v0, "blocklen":I
    if-gez v0, :cond_7

    .line 189
    const/4 v11, 0x0

    goto :goto_1

    .line 182
    .end local v0    # "blocklen":I
    .restart local v2    # "c":C
    :cond_5
    iget-object v11, p0, Lorg/xbill/DNS/b/c;->a:Ljava/lang/String;

    mul-int/lit8 v12, v4, 0x8

    add-int/2addr v12, v6

    aget-byte v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v9, v6

    .line 183
    aget-short v11, v9, v6

    if-gez v11, :cond_6

    .line 184
    const/4 v11, 0x0

    goto :goto_1

    .line 185
    :cond_6
    add-int/lit8 v7, v7, -0x1

    .line 178
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 192
    .end local v2    # "c":C
    .restart local v0    # "blocklen":I
    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-short v12, v9, v12

    shl-int/lit8 v12, v12, 0x3

    const/4 v13, 0x1

    aget-short v13, v9, v13

    shr-int/lit8 v13, v13, 0x2

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 194
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-short v12, v9, v12

    and-int/lit8 v12, v12, 0x3

    shl-int/lit8 v12, v12, 0x6

    const/4 v13, 0x2

    aget-short v13, v9, v13

    shl-int/lit8 v13, v13, 0x1

    or-int/2addr v12, v13

    const/4 v13, 0x3

    aget-short v13, v9, v13

    shr-int/lit8 v13, v13, 0x4

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 196
    const/4 v11, 0x2

    const/4 v12, 0x3

    aget-short v12, v9, v12

    and-int/lit8 v12, v12, 0xf

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x4

    aget-short v13, v9, v13

    shr-int/lit8 v13, v13, 0x1

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 198
    const/4 v11, 0x3

    const/4 v12, 0x4

    aget-short v12, v9, v12

    shl-int/lit8 v12, v12, 0x7

    const/4 v13, 0x5

    aget-short v13, v9, v13

    shl-int/lit8 v13, v13, 0x2

    or-int/2addr v12, v13

    const/4 v13, 0x6

    aget-short v13, v9, v13

    shr-int/lit8 v13, v13, 0x3

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 200
    const/4 v11, 0x4

    const/4 v12, 0x6

    aget-short v12, v9, v12

    and-int/lit8 v12, v12, 0x7

    shl-int/lit8 v12, v12, 0x5

    const/4 v13, 0x7

    aget-short v13, v9, v13

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 203
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v0, :cond_8

    .line 204
    :try_start_0
    aget v11, v10, v6

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 206
    :catch_0
    move-exception v11

    .line 173
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 210
    .end local v0    # "blocklen":I
    .end local v6    # "j":I
    .end local v7    # "padlen":I
    .end local v9    # "s":[S
    .end local v10    # "t":[I
    :cond_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    goto/16 :goto_1
.end method
