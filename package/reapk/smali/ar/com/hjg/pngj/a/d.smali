.class public final Lar/com/hjg/pngj/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0xe

.field static final b:I = 0x6

.field static final c:I = 0x4

.field static final d:I = 0xc

.field static final e:I = 0x1000

.field static final f:I

.field static final g:I = 0x8

.field static final h:I = 0x5

.field static final i:I = 0xc

.field static final j:I = 0xd

.field static final k:I = 0x10000

.field static final l:I = 0x4

.field static final m:I = 0xf

.field static final n:I = 0x4

.field static final o:I = 0xf

.field static final p:I = 0x1000b

.field static final q:I = 0xd

.field static final r:I = 0x2000

.field static final s:I = 0xf

.field static final t:I = 0x8000

.field static final u:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lar/com/hjg/pngj/a/d;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a(I)I
    .locals 3
    .param p0, "length"    # I

    .prologue
    .line 173
    if-gez p0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be >= 0, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    div-int/lit16 v0, p0, 0xff

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method static a([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .prologue
    .line 188
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static a([BIII)I
    .locals 5
    .param p0, "b"    # [B
    .param p1, "o1"    # I
    .param p2, "o2"    # I
    .param p3, "limit"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, "count":I
    move v2, p2

    .end local p2    # "o2":I
    .local v2, "o2":I
    move v1, p1

    .line 198
    .end local p1    # "o1":I
    .local v1, "o1":I
    :goto_0
    if-ge v2, p3, :cond_0

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "o1":I
    .restart local p1    # "o1":I
    aget-byte v3, p0, v1

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "o2":I
    .restart local p2    # "o2":I
    aget-byte v4, p0, v2

    if-ne v3, v4, :cond_1

    .line 199
    add-int/lit8 v0, v0, 0x1

    move v2, p2

    .end local p2    # "o2":I
    .restart local v2    # "o2":I
    move v1, p1

    .end local p1    # "o1":I
    .restart local v1    # "o1":I
    goto :goto_0

    :cond_0
    move p2, v2

    .end local v2    # "o2":I
    .restart local p2    # "o2":I
    move p1, v1

    .line 201
    .end local v1    # "o1":I
    .restart local p1    # "o1":I
    :cond_1
    return v0
.end method

.method static a([BIIII)I
    .locals 3
    .param p0, "b"    # [B
    .param p1, "o1"    # I
    .param p2, "o2"    # I
    .param p3, "l1"    # I
    .param p4, "l2"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "count":I
    :goto_0
    if-le p1, p3, :cond_0

    if-le p2, p4, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-byte v1, p0, p1

    add-int/lit8 p2, p2, -0x1

    aget-byte v2, p0, p2

    if-ne v1, v2, :cond_0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    return v0
.end method

.method static a([SI)I
    .locals 2
    .param p0, "buf"    # [S
    .param p1, "off"    # I

    .prologue
    .line 213
    aget-short v0, p0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method static a([SII)V
    .locals 1
    .param p0, "buf"    # [S
    .param p1, "off"    # I
    .param p2, "v"    # I

    .prologue
    .line 259
    int-to-short v0, p2

    aput-short v0, p0, p1

    .line 260
    return-void
.end method

.method static b([BI)B
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .prologue
    .line 217
    aget-byte v0, p0, p1

    return v0
.end method

.method static b(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 180
    const v0, -0x61c8864f

    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method static b([BII)I
    .locals 20
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "srcLen"    # I

    .prologue
    .line 81
    add-int v16, p1, p2

    .line 82
    .local v16, "srcEnd":I
    add-int/lit8 v17, v16, -0x5

    .line 83
    .local v17, "srcLimit":I
    add-int/lit8 v11, v16, -0xc

    .line 85
    .local v11, "mflimit":I
    move/from16 v14, p1

    .local v14, "sOff":I
    const/4 v3, 0x0

    .line 87
    .local v3, "dOff":I
    move v2, v14

    .line 89
    .local v2, "anchor":I
    const/16 v18, 0xd

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 91
    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v9, v0, [S

    .line 93
    .local v9, "hashTable":[S
    add-int/lit8 v14, v14, 0x1

    .line 98
    :goto_0
    move v7, v14

    .line 101
    .local v7, "forwardOff":I
    const/16 v18, 0x1

    sget v19, Lar/com/hjg/pngj/a/d;->f:I

    shl-int v18, v18, v19

    add-int/lit8 v5, v18, 0x3

    .line 103
    .local v5, "findMatchAttempts1":I
    :goto_1
    move v14, v7

    .line 104
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "findMatchAttempts1":I
    .local v6, "findMatchAttempts1":I
    sget v18, Lar/com/hjg/pngj/a/d;->f:I

    ushr-int v18, v5, v18

    add-int v7, v7, v18

    .line 106
    if-le v7, v11, :cond_2

    .line 163
    .end local v6    # "findMatchAttempts1":I
    .end local v7    # "forwardOff":I
    .end local v9    # "hashTable":[S
    :cond_0
    :goto_2
    sub-int v13, v16, v2

    .line 164
    .local v13, "runLen":I
    const/16 v18, 0x10e

    move/from16 v0, v18

    if-lt v13, v0, :cond_1

    .line 165
    add-int/lit8 v18, v13, -0xf

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int v3, v3, v18

    .line 167
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 168
    add-int/2addr v3, v13

    .line 169
    return v3

    .line 110
    .end local v13    # "runLen":I
    .restart local v6    # "findMatchAttempts1":I
    .restart local v7    # "forwardOff":I
    .restart local v9    # "hashTable":[S
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lar/com/hjg/pngj/a/d;->f([BI)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lar/com/hjg/pngj/a/d;->c(I)I

    move-result v8

    .line 111
    .local v8, "h":I
    invoke-static {v9, v8}, Lar/com/hjg/pngj/a/d;->a([SI)I

    move-result v18

    add-int v12, p1, v18

    .line 112
    .local v12, "ref":I
    sub-int v18, v14, p1

    move/from16 v0, v18

    invoke-static {v9, v8, v0}, Lar/com/hjg/pngj/a/d;->a([SII)V

    .line 113
    move-object/from16 v0, p0

    invoke-static {v0, v12, v14}, Lar/com/hjg/pngj/a/d;->c([BII)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 116
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v12, v14, v1, v2}, Lar/com/hjg/pngj/a/d;->a([BIIII)I

    move-result v4

    .line 117
    .local v4, "excess":I
    sub-int/2addr v14, v4

    .line 118
    sub-int/2addr v12, v4

    .line 120
    sub-int v13, v14, v2

    .line 121
    .restart local v13    # "runLen":I
    add-int/lit8 v3, v3, 0x1

    .line 123
    const/16 v18, 0xf

    move/from16 v0, v18

    if-lt v13, v0, :cond_4

    .line 124
    const/16 v18, 0xf

    move/from16 v0, v18

    if-le v13, v0, :cond_3

    .line 125
    add-int/lit8 v18, v13, -0xf

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int v3, v3, v18

    .line 126
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 128
    :cond_4
    add-int/2addr v3, v13

    .line 131
    :goto_3
    add-int/lit8 v3, v3, 0x2

    .line 133
    add-int/lit8 v14, v14, 0x4

    .line 134
    add-int/lit8 v12, v12, 0x4

    .line 135
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v12, v14, v1}, Lar/com/hjg/pngj/a/d;->a([BIII)I

    move-result v10

    .line 136
    .local v10, "matchLen":I
    add-int/2addr v14, v10

    .line 138
    const/16 v18, 0xf

    move/from16 v0, v18

    if-lt v10, v0, :cond_6

    .line 139
    const/16 v18, 0x10e

    move/from16 v0, v18

    if-lt v10, v0, :cond_5

    .line 140
    add-int/lit8 v18, v10, -0xf

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int v3, v3, v18

    .line 141
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 144
    :cond_6
    if-le v14, v11, :cond_7

    .line 145
    move v2, v14

    .line 146
    goto/16 :goto_2

    .line 149
    :cond_7
    add-int/lit8 v18, v14, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lar/com/hjg/pngj/a/d;->f([BI)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lar/com/hjg/pngj/a/d;->c(I)I

    move-result v18

    add-int/lit8 v19, v14, -0x2

    sub-int v19, v19, p1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Lar/com/hjg/pngj/a/d;->a([SII)V

    .line 151
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lar/com/hjg/pngj/a/d;->f([BI)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lar/com/hjg/pngj/a/d;->c(I)I

    move-result v8

    .line 152
    invoke-static {v9, v8}, Lar/com/hjg/pngj/a/d;->a([SI)I

    move-result v18

    add-int v12, p1, v18

    .line 153
    sub-int v18, v14, p1

    move/from16 v0, v18

    invoke-static {v9, v8, v0}, Lar/com/hjg/pngj/a/d;->a([SII)V

    .line 154
    move-object/from16 v0, p0

    invoke-static {v0, v14, v12}, Lar/com/hjg/pngj/a/d;->c([BII)Z

    move-result v18

    if-nez v18, :cond_8

    .line 160
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sOff":I
    .local v15, "sOff":I
    move v2, v14

    move v14, v15

    .line 161
    .end local v15    # "sOff":I
    .restart local v14    # "sOff":I
    goto/16 :goto_0

    .line 157
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 158
    goto :goto_3

    .end local v4    # "excess":I
    .end local v10    # "matchLen":I
    .end local v13    # "runLen":I
    :cond_9
    move v5, v6

    .end local v6    # "findMatchAttempts1":I
    .restart local v5    # "findMatchAttempts1":I
    goto/16 :goto_1
.end method

.method static c(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 184
    const v0, -0x61c8864f

    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x13

    return v0
.end method

.method static c([BI)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .prologue
    .line 221
    if-ltz p1, :cond_0

    array-length v0, p0

    if-lt p1, v0, :cond_1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 224
    :cond_1
    return-void
.end method

.method static c([BII)Z
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 192
    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .prologue
    .line 241
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static d(I)V
    .locals 2
    .param p0, "len"    # I

    .prologue
    .line 235
    if-gez p0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lengths must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    return-void
.end method

.method static d([BII)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 227
    invoke-static {p2}, Lar/com/hjg/pngj/a/d;->d(I)V

    .line 228
    if-lez p2, :cond_0

    .line 229
    invoke-static {p0, p1}, Lar/com/hjg/pngj/a/d;->c([BI)V

    .line 230
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lar/com/hjg/pngj/a/d;->c([BI)V

    .line 232
    :cond_0
    return-void
.end method

.method static e([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .prologue
    .line 246
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static f([BI)I
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .prologue
    .line 252
    invoke-static {p0, p1}, Lar/com/hjg/pngj/a/d;->d([BI)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a([B)I
    .locals 2
    .param p1, "src"    # [B

    .prologue
    .line 47
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lar/com/hjg/pngj/a/d;->a([BII)I

    move-result v0

    return v0
.end method

.method public a([BII)I
    .locals 12
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I

    .prologue
    const/4 v8, 0x1

    .line 24
    const/16 v7, 0xa

    if-ge p3, v7, :cond_0

    .line 43
    .end local p3    # "srcLen":I
    :goto_0
    return p3

    .line 26
    .restart local p3    # "srcLen":I
    :cond_0
    const v6, 0x1000a

    .line 27
    .local v6, "stride":I
    add-int v7, p3, v6

    add-int/lit8 v7, v7, -0x1

    div-int v3, v7, v6

    .line 28
    .local v3, "segments":I
    div-int v6, p3, v3

    .line 29
    const v7, 0x1000a

    if-ge v6, v7, :cond_1

    mul-int v7, v6, v3

    if-gt v7, p3, :cond_1

    if-lt v3, v8, :cond_1

    if-ge v6, v8, :cond_2

    .line 30
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "?? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    .local v0, "bytesIn":I
    const/4 v1, 0x0

    .line 33
    .local v1, "bytesOut":I
    move v2, p3

    .line 34
    .local v2, "len":I
    :goto_1
    if-lez v2, :cond_4

    .line 35
    if-le v2, v6, :cond_3

    .line 36
    move v2, v6

    .line 37
    :cond_3
    invoke-static {p1, p2, v2}, Lar/com/hjg/pngj/a/d;->b([BII)I

    move-result v7

    add-int/2addr v1, v7

    .line 38
    add-int/2addr p2, v2

    .line 39
    add-int/2addr v0, v2

    .line 40
    sub-int v2, p3, v0

    goto :goto_1

    .line 42
    :cond_4
    int-to-double v8, v1

    int-to-double v10, v0

    div-double v4, v8, v10

    .line 43
    .local v4, "ratio":D
    if-ne v0, p3, :cond_5

    .end local v1    # "bytesOut":I
    :goto_2
    move p3, v1

    goto :goto_0

    .restart local v1    # "bytesOut":I
    :cond_5
    int-to-double v8, p3

    mul-double/2addr v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v1, v8

    goto :goto_2
.end method
