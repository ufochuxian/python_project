.class public La/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/b$b;,
        La/a/b/b$a;
    }
.end annotation


# instance fields
.field a:La/a/a/c;

.field b:La/a/c/c;

.field c:[S

.field d:[S

.field e:[S

.field f:[S

.field g:[S

.field h:[S

.field i:[La/a/c/a;

.field j:[S

.field k:La/a/c/a;

.field l:La/a/b/b$a;

.field m:La/a/b/b$a;

.field n:La/a/b/b$b;

.field o:I

.field p:I

.field q:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/16 v2, 0xc

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, La/a/a/c;

    invoke-direct {v1}, La/a/a/c;-><init>()V

    iput-object v1, p0, La/a/b/b;->a:La/a/a/c;

    .line 124
    new-instance v1, La/a/c/c;

    invoke-direct {v1}, La/a/c/c;-><init>()V

    iput-object v1, p0, La/a/b/b;->b:La/a/c/c;

    .line 126
    new-array v1, v5, [S

    iput-object v1, p0, La/a/b/b;->c:[S

    .line 127
    new-array v1, v2, [S

    iput-object v1, p0, La/a/b/b;->d:[S

    .line 128
    new-array v1, v2, [S

    iput-object v1, p0, La/a/b/b;->e:[S

    .line 129
    new-array v1, v2, [S

    iput-object v1, p0, La/a/b/b;->f:[S

    .line 130
    new-array v1, v2, [S

    iput-object v1, p0, La/a/b/b;->g:[S

    .line 131
    new-array v1, v5, [S

    iput-object v1, p0, La/a/b/b;->h:[S

    .line 133
    new-array v1, v4, [La/a/c/a;

    iput-object v1, p0, La/a/b/b;->i:[La/a/c/a;

    .line 134
    const/16 v1, 0x72

    new-array v1, v1, [S

    iput-object v1, p0, La/a/b/b;->j:[S

    .line 136
    new-instance v1, La/a/c/a;

    invoke-direct {v1, v4}, La/a/c/a;-><init>(I)V

    iput-object v1, p0, La/a/b/b;->k:La/a/c/a;

    .line 138
    new-instance v1, La/a/b/b$a;

    invoke-direct {v1, p0}, La/a/b/b$a;-><init>(La/a/b/b;)V

    iput-object v1, p0, La/a/b/b;->l:La/a/b/b$a;

    .line 139
    new-instance v1, La/a/b/b$a;

    invoke-direct {v1, p0}, La/a/b/b$a;-><init>(La/a/b/b;)V

    iput-object v1, p0, La/a/b/b;->m:La/a/b/b$a;

    .line 141
    new-instance v1, La/a/b/b$b;

    invoke-direct {v1, p0}, La/a/b/b$b;-><init>(La/a/b/b;)V

    iput-object v1, p0, La/a/b/b;->n:La/a/b/b$b;

    .line 143
    iput v3, p0, La/a/b/b;->o:I

    .line 144
    iput v3, p0, La/a/b/b;->p:I

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 151
    iget-object v1, p0, La/a/b/b;->i:[La/a/c/a;

    new-instance v2, La/a/c/a;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, La/a/c/a;-><init>(I)V

    aput-object v2, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v1, p0, La/a/b/b;->a:La/a/a/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, La/a/a/c;->a(Z)V

    .line 183
    iget-object v1, p0, La/a/b/b;->c:[S

    invoke-static {v1}, La/a/c/c;->a([S)V

    .line 184
    iget-object v1, p0, La/a/b/b;->h:[S

    invoke-static {v1}, La/a/c/c;->a([S)V

    .line 185
    iget-object v1, p0, La/a/b/b;->d:[S

    invoke-static {v1}, La/a/c/c;->a([S)V

    .line 186
    iget-object v1, p0, La/a/b/b;->e:[S

    invoke-static {v1}, La/a/c/c;->a([S)V

    .line 187
    iget-object v1, p0, La/a/b/b;->f:[S

    invoke-static {v1}, La/a/c/c;->a([S)V

    .line 188
    iget-object v1, p0, La/a/b/b;->g:[S

    invoke-static {v1}, La/a/c/c;->a([S)V

    .line 189
    iget-object v1, p0, La/a/b/b;->j:[S

    invoke-static {v1}, La/a/c/c;->a([S)V

    .line 191
    iget-object v1, p0, La/a/b/b;->n:La/a/b/b$b;

    invoke-virtual {v1}, La/a/b/b$b;->a()V

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, La/a/b/b;->i:[La/a/c/a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, La/a/c/a;->a()V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, La/a/b/b;->l:La/a/b/b$a;

    invoke-virtual {v1}, La/a/b/b$a;->a()V

    .line 196
    iget-object v1, p0, La/a/b/b;->m:La/a/b/b$a;

    invoke-virtual {v1}, La/a/b/b$a;->a()V

    .line 197
    iget-object v1, p0, La/a/b/b;->k:La/a/c/a;

    invoke-virtual {v1}, La/a/c/a;->a()V

    .line 198
    iget-object v1, p0, La/a/b/b;->b:La/a/c/c;

    invoke-virtual {v1}, La/a/c/c;->b()V

    .line 199
    return-void
.end method

.method a(I)Z
    .locals 4
    .param p1, "dictionarySize"    # I

    .prologue
    const/4 v0, 0x1

    .line 156
    if-gez p1, :cond_1

    .line 157
    const/4 v0, 0x0

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget v1, p0, La/a/b/b;->o:I

    if-eq v1, p1, :cond_0

    .line 160
    iput p1, p0, La/a/b/b;->o:I

    .line 161
    iget v1, p0, La/a/b/b;->o:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, La/a/b/b;->p:I

    .line 162
    iget-object v1, p0, La/a/b/b;->a:La/a/a/c;

    iget v2, p0, La/a/b/b;->p:I

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, La/a/a/c;->a(I)V

    goto :goto_0
.end method

.method a(III)Z
    .locals 4
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 169
    const/16 v2, 0x8

    if-gt p1, v2, :cond_0

    if-gt p2, v3, :cond_0

    if-le p3, v3, :cond_1

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 176
    :goto_0
    return v1

    .line 171
    :cond_1
    iget-object v2, p0, La/a/b/b;->n:La/a/b/b$b;

    invoke-virtual {v2, p2, p1}, La/a/b/b$b;->a(II)V

    .line 172
    shl-int v0, v1, p3

    .line 173
    .local v0, "numPosStates":I
    iget-object v2, p0, La/a/b/b;->l:La/a/b/b$a;

    invoke-virtual {v2, v0}, La/a/b/b$a;->a(I)V

    .line 174
    iget-object v2, p0, La/a/b/b;->m:La/a/b/b$a;

    invoke-virtual {v2, v0}, La/a/b/b$a;->a(I)V

    .line 175
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, La/a/b/b;->q:I

    goto :goto_0
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    .locals 21
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "outSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, La/a/c/c;->a(Ljava/io/InputStream;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->a:La/a/a/c;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, La/a/a/c;->a(Ljava/io/OutputStream;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, La/a/b/b;->a()V

    .line 208
    invoke-static {}, La/a/b/a;->a()I

    move-result v17

    .line 209
    .local v17, "state":I
    const/4 v13, 0x0

    .local v13, "rep0":I
    const/4 v14, 0x0

    .local v14, "rep1":I
    const/4 v15, 0x0

    .local v15, "rep2":I
    const/16 v16, 0x0

    .line 211
    .local v16, "rep3":I
    const-wide/16 v8, 0x0

    .line 212
    .local v8, "nowPos64":J
    const/4 v12, 0x0

    .line 213
    .local v12, "prevByte":B
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, p3, v18

    if-ltz v18, :cond_0

    cmp-long v18, v8, p3

    if-gez v18, :cond_b

    .line 215
    :cond_0
    long-to-int v0, v8

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, La/a/b/b;->q:I

    move/from16 v19, v0

    and-int v11, v18, v19

    .line 216
    .local v11, "posState":I
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->c:[S

    move-object/from16 v19, v0

    shl-int/lit8 v20, v17, 0x4

    add-int v20, v20, v11

    invoke-virtual/range {v18 .. v20}, La/a/c/c;->a([SI)I

    move-result v18

    if-nez v18, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->n:La/a/b/b$b;

    move-object/from16 v18, v0

    long-to-int v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, La/a/b/b$b;->a(IB)La/a/b/b$b$a;

    move-result-object v4

    .line 219
    .local v4, "decoder2":La/a/b/b$b$a;
    invoke-static/range {v17 .. v17}, La/a/b/a;->e(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->a:La/a/a/c;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, La/a/a/c;->b(I)B

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, La/a/b/b$b$a;->a(La/a/c/c;B)B

    move-result v12

    .line 223
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->a:La/a/a/c;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, La/a/a/c;->a(B)V

    .line 224
    invoke-static/range {v17 .. v17}, La/a/b/a;->a(I)I

    move-result v17

    .line 225
    const-wide/16 v18, 0x1

    add-long v8, v8, v18

    .line 226
    goto :goto_0

    .line 222
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, La/a/b/b$b$a;->a(La/a/c/c;)B

    move-result v12

    goto :goto_1

    .line 230
    .end local v4    # "decoder2":La/a/b/b$b$a;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->d:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, La/a/c/c;->a([SI)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 232
    const/4 v6, 0x0

    .line 233
    .local v6, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->e:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, La/a/c/c;->a([SI)I

    move-result v18

    if-nez v18, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->h:[S

    move-object/from16 v19, v0

    shl-int/lit8 v20, v17, 0x4

    add-int v20, v20, v11

    invoke-virtual/range {v18 .. v20}, La/a/c/c;->a([SI)I

    move-result v18

    if-nez v18, :cond_3

    .line 237
    invoke-static/range {v17 .. v17}, La/a/b/a;->d(I)I

    move-result v17

    .line 238
    const/4 v6, 0x1

    .line 260
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->m:La/a/b/b$a;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, La/a/b/b$a;->a(La/a/c/c;I)I

    move-result v18

    add-int/lit8 v6, v18, 0x2

    .line 263
    invoke-static/range {v17 .. v17}, La/a/b/a;->c(I)I

    move-result v17

    .line 297
    :cond_4
    :goto_3
    int-to-long v0, v13

    move-wide/from16 v18, v0

    cmp-long v18, v18, v8

    if-gez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, La/a/b/b;->p:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v13, v0, :cond_e

    .line 300
    :cond_5
    const/16 v18, 0x0

    .line 310
    .end local v6    # "len":I
    .end local v11    # "posState":I
    :goto_4
    return v18

    .line 244
    .restart local v6    # "len":I
    .restart local v11    # "posState":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->f:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, La/a/c/c;->a([SI)I

    move-result v18

    if-nez v18, :cond_7

    .line 245
    move v5, v14

    .line 257
    .local v5, "distance":I
    :goto_5
    move v14, v13

    .line 258
    move v13, v5

    goto :goto_2

    .line 248
    .end local v5    # "distance":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->g:[S

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, La/a/c/c;->a([SI)I

    move-result v18

    if-nez v18, :cond_8

    .line 249
    move v5, v15

    .line 255
    .restart local v5    # "distance":I
    :goto_6
    move v15, v14

    goto :goto_5

    .line 252
    .end local v5    # "distance":I
    :cond_8
    move/from16 v5, v16

    .line 253
    .restart local v5    # "distance":I
    move/from16 v16, v15

    goto :goto_6

    .line 268
    .end local v5    # "distance":I
    .end local v6    # "len":I
    :cond_9
    move/from16 v16, v15

    .line 269
    move v15, v14

    .line 270
    move v14, v13

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->l:La/a/b/b$a;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, La/a/b/b$a;->a(La/a/c/c;I)I

    move-result v18

    add-int/lit8 v6, v18, 0x2

    .line 272
    .restart local v6    # "len":I
    invoke-static/range {v17 .. v17}, La/a/b/a;->b(I)I

    move-result v17

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->i:[La/a/c/a;

    move-object/from16 v18, v0

    invoke-static {v6}, La/a/b/a;->f(I)I

    move-result v19

    aget-object v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, La/a/c/a;->a(La/a/c/c;)I

    move-result v10

    .line 274
    .local v10, "posSlot":I
    const/16 v18, 0x4

    move/from16 v0, v18

    if-lt v10, v0, :cond_d

    .line 276
    shr-int/lit8 v18, v10, 0x1

    add-int/lit8 v7, v18, -0x1

    .line 277
    .local v7, "numDirectBits":I
    and-int/lit8 v18, v10, 0x1

    or-int/lit8 v18, v18, 0x2

    shl-int v13, v18, v7

    .line 278
    const/16 v18, 0xe

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->j:[S

    move-object/from16 v18, v0

    sub-int v19, v13, v10

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v7}, La/a/c/a;->a([SILa/a/c/c;I)I

    move-result v18

    add-int v13, v13, v18

    goto/16 :goto_3

    .line 283
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    add-int/lit8 v19, v7, -0x4

    invoke-virtual/range {v18 .. v19}, La/a/c/c;->a(I)I

    move-result v18

    shl-int/lit8 v18, v18, 0x4

    add-int v13, v13, v18

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->k:La/a/c/a;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, La/a/c/a;->b(La/a/c/c;)I

    move-result v18

    add-int v13, v13, v18

    .line 286
    if-gez v13, :cond_4

    .line 288
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    .line 307
    .end local v6    # "len":I
    .end local v7    # "numDirectBits":I
    .end local v10    # "posSlot":I
    .end local v11    # "posState":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->a:La/a/a/c;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, La/a/a/c;->b()V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->a:La/a/a/c;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, La/a/a/c;->a()V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->b:La/a/c/c;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, La/a/c/c;->a()V

    .line 310
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 290
    .restart local v6    # "len":I
    .restart local v7    # "numDirectBits":I
    .restart local v10    # "posSlot":I
    .restart local v11    # "posState":I
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 295
    .end local v7    # "numDirectBits":I
    :cond_d
    move v13, v10

    goto/16 :goto_3

    .line 302
    .end local v10    # "posSlot":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->a:La/a/a/c;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v6}, La/a/a/c;->a(II)V

    .line 303
    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, La/a/b/b;->a:La/a/a/c;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, La/a/a/c;->b(I)B

    move-result v12

    goto/16 :goto_0
.end method

.method public a([B)Z
    .locals 10
    .param p1, "properties"    # [B

    .prologue
    const/4 v7, 0x0

    .line 315
    array-length v8, p1

    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v7

    .line 317
    :cond_1
    aget-byte v8, p1, v7

    and-int/lit16 v6, v8, 0xff

    .line 318
    .local v6, "val":I
    rem-int/lit8 v2, v6, 0x9

    .line 319
    .local v2, "lc":I
    div-int/lit8 v5, v6, 0x9

    .line 320
    .local v5, "remainder":I
    rem-int/lit8 v3, v5, 0x5

    .line 321
    .local v3, "lp":I
    div-int/lit8 v4, v5, 0x5

    .line 322
    .local v4, "pb":I
    const/4 v0, 0x0

    .line 323
    .local v0, "dictionarySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v8, 0x4

    if-ge v1, v8, :cond_2

    .line 324
    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    mul-int/lit8 v9, v1, 0x8

    shl-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {p0, v2, v3, v4}, La/a/b/b;->a(III)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    invoke-virtual {p0, v0}, La/a/b/b;->a(I)Z

    move-result v7

    goto :goto_0
.end method
