.class public Lar/com/hjg/pngj/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/l;
.implements Lar/com/hjg/pngj/m;


# instance fields
.field public final a:Lar/com/hjg/pngj/s;

.field final b:[B

.field final c:[B

.field protected d:Lar/com/hjg/pngj/FilterType;

.field final e:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 1
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/t;-><init>(Lar/com/hjg/pngj/s;[B)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/s;[B)V
    .locals 2
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;
    .param p2, "sci"    # [B

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    .line 29
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/t;->d:Lar/com/hjg/pngj/FilterType;

    .line 30
    iget v0, p1, Lar/com/hjg/pngj/s;->m:I

    iput v0, p0, Lar/com/hjg/pngj/t;->e:I

    .line 31
    if-eqz p2, :cond_0

    array-length v0, p2

    iget v1, p0, Lar/com/hjg/pngj/t;->e:I

    if-lt v0, v1, :cond_0

    .end local p2    # "sci":[B
    :goto_0
    iput-object p2, p0, Lar/com/hjg/pngj/t;->b:[B

    .line 32
    iget v0, p1, Lar/com/hjg/pngj/s;->d:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget v0, p0, Lar/com/hjg/pngj/t;->e:I

    new-array v0, v0, [B

    :goto_1
    iput-object v0, p0, Lar/com/hjg/pngj/t;->c:[B

    .line 33
    return-void

    .line 31
    .restart local p2    # "sci":[B
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/t;->e:I

    new-array p2, v0, [B

    goto :goto_0

    .line 32
    .end local p2    # "sci":[B
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static e()Lar/com/hjg/pngj/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lar/com/hjg/pngj/n",
            "<",
            "Lar/com/hjg/pngj/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lar/com/hjg/pngj/t$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/t$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lar/com/hjg/pngj/t;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lar/com/hjg/pngj/t;->c:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public a(Lar/com/hjg/pngj/FilterType;)V
    .locals 0
    .param p1, "ft"    # Lar/com/hjg/pngj/FilterType;

    .prologue
    .line 183
    iput-object p1, p0, Lar/com/hjg/pngj/t;->d:Lar/com/hjg/pngj/FilterType;

    .line 184
    return-void
.end method

.method public a([B)V
    .locals 12
    .param p1, "raw"    # [B

    .prologue
    const/4 v11, 0x0

    .line 131
    iget-object v8, p0, Lar/com/hjg/pngj/t;->d:Lar/com/hjg/pngj/FilterType;

    iget v8, v8, Lar/com/hjg/pngj/FilterType;->val:I

    int-to-byte v8, v8

    aput-byte v8, p1, v11

    .line 132
    iget-object v8, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v8, v8, Lar/com/hjg/pngj/s;->d:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 133
    iget-object v8, p0, Lar/com/hjg/pngj/t;->b:[B

    const/4 v9, 0x1

    iget v10, p0, Lar/com/hjg/pngj/t;->e:I

    invoke-static {v8, v11, p1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v8, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v8, v8, Lar/com/hjg/pngj/s;->d:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_2

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v4, 0x1

    .local v4, "s":I
    :goto_0
    iget v8, p0, Lar/com/hjg/pngj/t;->e:I

    if-ge v1, v8, :cond_0

    .line 136
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "s":I
    .local v5, "s":I
    iget-object v8, p0, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v8, v8, v1

    aput-byte v8, p1, v4

    .line 137
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "s":I
    .restart local v4    # "s":I
    iget-object v8, p0, Lar/com/hjg/pngj/t;->c:[B

    aget-byte v8, v8, v1

    aput-byte v8, p1, v5

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    .end local v4    # "s":I
    :cond_2
    iget-object v8, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v0, v8, Lar/com/hjg/pngj/s;->d:I

    .line 142
    .local v0, "bd":I
    rsub-int/lit8 v6, v0, 0x8

    .line 143
    .local v6, "shi":I
    const/4 v7, 0x0

    .line 144
    .local v7, "v":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    const/4 v2, 0x1

    .local v2, "r":I
    :goto_1
    iget v8, p0, Lar/com/hjg/pngj/t;->e:I

    if-ge v1, v8, :cond_0

    .line 145
    iget-object v8, p0, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v8, v8, v1

    shl-int/2addr v8, v6

    or-int/2addr v7, v8

    .line 146
    sub-int/2addr v6, v0

    .line 147
    if-ltz v6, :cond_3

    iget v8, p0, Lar/com/hjg/pngj/t;->e:I

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_4

    .line 148
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "r":I
    .local v3, "r":I
    int-to-byte v8, v7

    aput-byte v8, p1, v2

    .line 149
    rsub-int/lit8 v6, v0, 0x8

    .line 150
    const/4 v7, 0x0

    move v2, v3

    .line 144
    .end local v3    # "r":I
    .restart local v2    # "r":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a([BIII)V
    .locals 15
    .param p1, "raw"    # [B
    .param p2, "len"    # I
    .param p3, "offset"    # I
    .param p4, "step"    # I

    .prologue
    .line 75
    const/4 v12, 0x0

    aget-byte v12, p1, v12

    invoke-static {v12}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v12

    iput-object v12, p0, Lar/com/hjg/pngj/t;->d:Lar/com/hjg/pngj/FilterType;

    .line 76
    add-int/lit8 v4, p2, -0x1

    .line 77
    .local v4, "len1":I
    add-int/lit8 v12, p4, -0x1

    iget-object v13, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v13, v13, Lar/com/hjg/pngj/s;->e:I

    mul-int v11, v12, v13

    .line 78
    .local v11, "step1":I
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->d:I

    const/16 v13, 0x8

    if-ne v12, v13, :cond_3

    .line 79
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_1

    .line 80
    const/4 v12, 0x1

    iget-object v13, p0, Lar/com/hjg/pngj/t;->b:[B

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    :cond_0
    return-void

    .line 82
    :cond_1
    const/4 v8, 0x1

    .local v8, "s":I
    const/4 v2, 0x0

    .local v2, "c":I
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->e:I

    mul-int v3, p3, v12

    .local v3, "i":I
    :goto_0
    if-gt v8, v4, :cond_0

    .line 83
    iget-object v12, p0, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v13, p1, v8

    aput-byte v13, v12, v3

    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->e:I

    if-ne v2, v12, :cond_2

    .line 86
    const/4 v2, 0x0

    .line 87
    add-int/2addr v3, v11

    .line 82
    :cond_2
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "c":I
    .end local v3    # "i":I
    .end local v8    # "s":I
    :cond_3
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->d:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_7

    .line 92
    const/4 v12, 0x1

    move/from16 v0, p4

    if-ne v0, v12, :cond_4

    .line 93
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/4 v8, 0x1

    .restart local v8    # "s":I
    :goto_1
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->m:I

    if-ge v3, v12, :cond_0

    .line 94
    iget-object v12, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "s":I
    .local v9, "s":I
    aget-byte v13, p1, v8

    aput-byte v13, v12, v3

    .line 95
    iget-object v12, p0, Lar/com/hjg/pngj/t;->c:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    aget-byte v13, p1, v9

    aput-byte v13, v12, v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v3    # "i":I
    .end local v8    # "s":I
    :cond_4
    const/4 v8, 0x1

    .restart local v8    # "s":I
    const/4 v2, 0x0

    .restart local v2    # "c":I
    if-eqz p3, :cond_6

    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->e:I

    mul-int v3, p3, v12

    .restart local v3    # "i":I
    :goto_2
    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    :goto_3
    if-gt v9, v4, :cond_0

    .line 99
    iget-object v12, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    aget-byte v13, p1, v9

    aput-byte v13, v12, v3

    .line 100
    iget-object v12, p0, Lar/com/hjg/pngj/t;->c:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "s":I
    .restart local v9    # "s":I
    aget-byte v13, p1, v8

    aput-byte v13, v12, v3

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->e:I

    if-ne v2, v12, :cond_5

    .line 103
    const/4 v2, 0x0

    .line 104
    add-int/2addr v3, v11

    .line 98
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 110
    .end local v2    # "c":I
    .end local v8    # "s":I
    :cond_7
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v1, v12, Lar/com/hjg/pngj/s;->d:I

    .line 111
    .local v1, "bd":I
    invoke-static {v1}, Lar/com/hjg/pngj/u;->d(I)I

    move-result v6

    .line 112
    .local v6, "mask0":I
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->e:I

    mul-int v3, p3, v12

    .restart local v3    # "i":I
    const/4 v7, 0x1

    .local v7, "r":I
    const/4 v2, 0x0

    .restart local v2    # "c":I
    :goto_4
    move/from16 v0, p2

    if-ge v7, v0, :cond_0

    .line 113
    move v5, v6

    .line 114
    .local v5, "mask":I
    rsub-int/lit8 v10, v1, 0x8

    .line 116
    .local v10, "shi":I
    :cond_8
    iget-object v12, p0, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v13, p1, v7

    and-int/2addr v13, v5

    shr-int/2addr v13, v10

    int-to-byte v13, v13

    aput-byte v13, v12, v3

    .line 117
    shr-int/2addr v5, v1

    .line 118
    sub-int/2addr v10, v1

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->e:I

    if-ne v2, v12, :cond_9

    .line 122
    const/4 v2, 0x0

    .line 123
    add-int/2addr v3, v11

    .line 125
    :cond_9
    if-eqz v5, :cond_a

    iget v12, p0, Lar/com/hjg/pngj/t;->e:I

    if-lt v3, v12, :cond_8

    .line 112
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method

.method public b()Lar/com/hjg/pngj/s;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    return-object v0
.end method

.method public c()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lar/com/hjg/pngj/t;->d:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lar/com/hjg/pngj/t;->e:I

    return v0
.end method

.method public f()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lar/com/hjg/pngj/t;->d:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public g()[B
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lar/com/hjg/pngj/t;->b:[B

    return-object v0
.end method

.method public h()[B
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lar/com/hjg/pngj/t;->c:[B

    return-object v0
.end method

.method public i()[B
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lar/com/hjg/pngj/t;->b:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/t;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
