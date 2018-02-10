.class public Lar/com/hjg/pngj/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/l;
.implements Lar/com/hjg/pngj/m;


# instance fields
.field public final a:Lar/com/hjg/pngj/s;

.field protected final b:[I

.field protected final c:I

.field protected d:Lar/com/hjg/pngj/FilterType;


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/v;-><init>(Lar/com/hjg/pngj/s;[I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/s;[I)V
    .locals 2
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;
    .param p2, "sci"    # [I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/v;->d:Lar/com/hjg/pngj/FilterType;

    .line 46
    iput-object p1, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    .line 47
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/v;->d:Lar/com/hjg/pngj/FilterType;

    .line 48
    iget v0, p1, Lar/com/hjg/pngj/s;->m:I

    iput v0, p0, Lar/com/hjg/pngj/v;->c:I

    .line 49
    if-eqz p2, :cond_0

    array-length v0, p2

    iget v1, p0, Lar/com/hjg/pngj/v;->c:I

    if-lt v0, v1, :cond_0

    .end local p2    # "sci":[I
    :goto_0
    iput-object p2, p0, Lar/com/hjg/pngj/v;->b:[I

    .line 50
    return-void

    .line 49
    .restart local p2    # "sci":[I
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/v;->c:I

    new-array p2, v0, [I

    goto :goto_0
.end method

.method public static e()Lar/com/hjg/pngj/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lar/com/hjg/pngj/n",
            "<",
            "Lar/com/hjg/pngj/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lar/com/hjg/pngj/v$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/v$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lar/com/hjg/pngj/v;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public a(Lar/com/hjg/pngj/FilterType;)V
    .locals 0
    .param p1, "ft"    # Lar/com/hjg/pngj/FilterType;

    .prologue
    .line 72
    iput-object p1, p0, Lar/com/hjg/pngj/v;->d:Lar/com/hjg/pngj/FilterType;

    .line 73
    return-void
.end method

.method public a([B)V
    .locals 10
    .param p1, "raw"    # [B

    .prologue
    .line 138
    const/4 v8, 0x0

    iget-object v9, p0, Lar/com/hjg/pngj/v;->d:Lar/com/hjg/pngj/FilterType;

    iget v9, v9, Lar/com/hjg/pngj/FilterType;->val:I

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 139
    iget-object v8, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v8, v8, Lar/com/hjg/pngj/s;->d:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v8, p0, Lar/com/hjg/pngj/v;->c:I

    if-ge v1, v8, :cond_4

    .line 141
    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Lar/com/hjg/pngj/v;->b:[I

    aget v9, v9, v1

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_0
    iget-object v8, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v8, v8, Lar/com/hjg/pngj/s;->d:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_1

    .line 144
    const/4 v1, 0x0

    .restart local v1    # "i":I
    const/4 v4, 0x1

    .local v4, "s":I
    :goto_1
    iget v8, p0, Lar/com/hjg/pngj/v;->c:I

    if-ge v1, v8, :cond_4

    .line 145
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "s":I
    .local v5, "s":I
    iget-object v8, p0, Lar/com/hjg/pngj/v;->b:[I

    aget v8, v8, v1

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 146
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    iget-object v8, p0, Lar/com/hjg/pngj/v;->b:[I

    aget v8, v8, v1

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, p1, v5

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v1    # "i":I
    .end local v4    # "s":I
    :cond_1
    iget-object v8, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v0, v8, Lar/com/hjg/pngj/s;->d:I

    .line 151
    .local v0, "bd":I
    rsub-int/lit8 v6, v0, 0x8

    .line 152
    .local v6, "shi":I
    const/4 v7, 0x0

    .line 153
    .local v7, "v":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    const/4 v2, 0x1

    .local v2, "r":I
    :goto_2
    iget v8, p0, Lar/com/hjg/pngj/v;->c:I

    if-ge v1, v8, :cond_4

    .line 154
    iget-object v8, p0, Lar/com/hjg/pngj/v;->b:[I

    aget v8, v8, v1

    shl-int/2addr v8, v6

    or-int/2addr v7, v8

    .line 155
    sub-int/2addr v6, v0

    .line 156
    if-ltz v6, :cond_2

    iget v8, p0, Lar/com/hjg/pngj/v;->c:I

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_3

    .line 157
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "r":I
    .local v3, "r":I
    int-to-byte v8, v7

    aput-byte v8, p1, v2

    .line 158
    rsub-int/lit8 v6, v0, 0x8

    .line 159
    const/4 v7, 0x0

    move v2, v3

    .line 153
    .end local v3    # "r":I
    .restart local v2    # "r":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    .end local v0    # "bd":I
    .end local v2    # "r":I
    .end local v6    # "shi":I
    .end local v7    # "v":I
    :cond_4
    return-void
.end method

.method public a([BIII)V
    .locals 16
    .param p1, "raw"    # [B
    .param p2, "len"    # I
    .param p3, "offset"    # I
    .param p4, "step"    # I

    .prologue
    .line 83
    const/4 v13, 0x0

    aget-byte v13, p1, v13

    invoke-static {v13}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lar/com/hjg/pngj/v;->a(Lar/com/hjg/pngj/FilterType;)V

    .line 84
    add-int/lit8 v5, p2, -0x1

    .line 85
    .local v5, "len1":I
    add-int/lit8 v13, p4, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v14, v14, Lar/com/hjg/pngj/s;->e:I

    mul-int v12, v13, v14

    .line 86
    .local v12, "step1":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v13, v13, Lar/com/hjg/pngj/s;->d:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    .line 87
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_0

    .line 88
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lar/com/hjg/pngj/v;->c:I

    if-ge v3, v13, :cond_9

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v14, v3, 0x1

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    aput v14, v13, v3

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "i":I
    :cond_0
    const/4 v9, 0x1

    .local v9, "s":I
    const/4 v2, 0x0

    .local v2, "c":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v13, v13, Lar/com/hjg/pngj/s;->e:I

    mul-int v3, p3, v13

    .restart local v3    # "i":I
    :goto_1
    if-gt v9, v5, :cond_9

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->b:[I

    aget-byte v14, p1, v9

    and-int/lit16 v14, v14, 0xff

    aput v14, v13, v3

    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v13, v13, Lar/com/hjg/pngj/s;->e:I

    if-ne v2, v13, :cond_1

    .line 96
    const/4 v2, 0x0

    .line 97
    add-int/2addr v3, v12

    .line 92
    :cond_1
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    .end local v2    # "c":I
    .end local v3    # "i":I
    .end local v9    # "s":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v13, v13, Lar/com/hjg/pngj/s;->d:I

    const/16 v14, 0x10

    if-ne v13, v14, :cond_6

    .line 102
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_3

    .line 103
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/4 v9, 0x1

    .restart local v9    # "s":I
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lar/com/hjg/pngj/v;->c:I

    if-ge v3, v13, :cond_9

    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "s":I
    .local v10, "s":I
    aget-byte v14, p1, v9

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "s":I
    .restart local v9    # "s":I
    aget-byte v15, p1, v10

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    aput v14, v13, v3

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 107
    .end local v3    # "i":I
    .end local v9    # "s":I
    :cond_3
    const/4 v9, 0x1

    .restart local v9    # "s":I
    const/4 v2, 0x0

    .restart local v2    # "c":I
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v13, v13, Lar/com/hjg/pngj/s;->e:I

    mul-int v3, p3, v13

    .restart local v3    # "i":I
    :goto_3
    move v10, v9

    .end local v9    # "s":I
    .restart local v10    # "s":I
    :goto_4
    if-gt v10, v5, :cond_9

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "s":I
    .restart local v9    # "s":I
    aget-byte v14, p1, v10

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    aget-byte v15, p1, v9

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    aput v14, v13, v3

    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v13, v13, Lar/com/hjg/pngj/s;->e:I

    if-ne v2, v13, :cond_4

    .line 111
    const/4 v2, 0x0

    .line 112
    add-int/2addr v3, v12

    .line 107
    :cond_4
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, 0x1

    move v10, v9

    .end local v9    # "s":I
    .restart local v10    # "s":I
    goto :goto_4

    .end local v3    # "i":I
    .end local v10    # "s":I
    .restart local v9    # "s":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 118
    .end local v2    # "c":I
    .end local v9    # "s":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v1, v13, Lar/com/hjg/pngj/s;->d:I

    .line 119
    .local v1, "bd":I
    invoke-static {v1}, Lar/com/hjg/pngj/u;->d(I)I

    move-result v7

    .line 120
    .local v7, "mask0":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v13, v13, Lar/com/hjg/pngj/s;->e:I

    mul-int v3, p3, v13

    .restart local v3    # "i":I
    const/4 v8, 0x1

    .local v8, "r":I
    const/4 v2, 0x0

    .restart local v2    # "c":I
    :goto_5
    move/from16 v0, p2

    if-ge v8, v0, :cond_9

    .line 121
    move v6, v7

    .line 122
    .local v6, "mask":I
    rsub-int/lit8 v11, v1, 0x8

    .line 124
    .local v11, "shi":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v14, p1, v8

    and-int/2addr v14, v6

    shr-int/2addr v14, v11

    aput v14, v13, v3

    .line 125
    shr-int/2addr v6, v1

    .line 126
    sub-int/2addr v11, v1

    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v13, v13, Lar/com/hjg/pngj/s;->e:I

    if-ne v2, v13, :cond_a

    .line 129
    const/4 v2, 0x0

    .line 130
    add-int v3, v4, v12

    .line 132
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_6
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lar/com/hjg/pngj/v;->c:I

    if-lt v3, v13, :cond_7

    .line 120
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 135
    .end local v1    # "bd":I
    .end local v2    # "c":I
    .end local v6    # "mask":I
    .end local v7    # "mask0":I
    .end local v8    # "r":I
    .end local v11    # "shi":I
    :cond_9
    return-void

    .end local v3    # "i":I
    .restart local v1    # "bd":I
    .restart local v2    # "c":I
    .restart local v4    # "i":I
    .restart local v6    # "mask":I
    .restart local v7    # "mask0":I
    .restart local v8    # "r":I
    .restart local v11    # "shi":I
    :cond_a
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_6
.end method

.method public b()Lar/com/hjg/pngj/s;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    return-object v0
.end method

.method public c()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lar/com/hjg/pngj/v;->d:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lar/com/hjg/pngj/v;->c:I

    return v0
.end method

.method public f()[I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lar/com/hjg/pngj/v;->b:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/v;->b:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
