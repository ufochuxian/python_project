.class public Lorg/xbill/DNS/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Lorg/xbill/DNS/Name;

.field private j:J


# direct methods
.method public constructor <init>(JJJLjava/lang/String;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "step"    # J
    .param p7, "namePattern"    # Ljava/lang/String;
    .param p8, "type"    # I
    .param p9, "dclass"    # I
    .param p10, "ttl"    # J
    .param p12, "rdataPattern"    # Ljava/lang/String;
    .param p13, "origin"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    cmp-long v2, p1, p3

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gtz v2, :cond_1

    .line 78
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid range specification"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    invoke-static {p8}, Lorg/xbill/DNS/p;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unsupported type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_2
    invoke-static {p9}, Lorg/xbill/DNS/g;->a(I)V

    .line 84
    iput-wide p1, p0, Lorg/xbill/DNS/p;->a:J

    .line 85
    iput-wide p3, p0, Lorg/xbill/DNS/p;->b:J

    .line 86
    iput-wide p5, p0, Lorg/xbill/DNS/p;->c:J

    .line 87
    iput-object p7, p0, Lorg/xbill/DNS/p;->d:Ljava/lang/String;

    .line 88
    iput p8, p0, Lorg/xbill/DNS/p;->e:I

    .line 89
    iput p9, p0, Lorg/xbill/DNS/p;->f:I

    .line 90
    iput-wide p10, p0, Lorg/xbill/DNS/p;->g:J

    .line 91
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/xbill/DNS/p;->h:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/xbill/DNS/p;->i:Lorg/xbill/DNS/Name;

    .line 93
    iput-wide p1, p0, Lorg/xbill/DNS/p;->j:J

    .line 94
    return-void
.end method

.method private a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 22
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v5, 0x0

    .line 99
    .local v5, "escaped":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 100
    .local v12, "str":[B
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v9, "sb":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_1c

    .line 103
    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 104
    .local v4, "c":C
    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    const/4 v5, 0x0

    .line 102
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/16 v20, 0x5c

    move/from16 v0, v20

    if-ne v4, v0, :cond_2

    .line 108
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 109
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    const-string v21, "invalid escape character"

    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 111
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 112
    :cond_2
    const/16 v20, 0x24

    move/from16 v0, v20

    if-ne v4, v0, :cond_1b

    .line 113
    const/4 v7, 0x0

    .line 114
    .local v7, "negative":Z
    const-wide/16 v10, 0x0

    .line 115
    .local v10, "offset":J
    const-wide/16 v16, 0x0

    .line 116
    .local v16, "width":J
    const-wide/16 v2, 0xa

    .line 117
    .local v2, "base":J
    const/4 v13, 0x0

    .line 118
    .local v13, "wantUpperCase":Z
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    add-int/lit8 v20, v6, 0x1

    aget-byte v20, v12, v20

    const/16 v21, 0x24

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 121
    add-int/lit8 v6, v6, 0x1

    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 122
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 124
    :cond_3
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    add-int/lit8 v20, v6, 0x1

    aget-byte v20, v12, v20

    const/16 v21, 0x7b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 127
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    add-int/lit8 v20, v6, 0x1

    aget-byte v20, v12, v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 128
    const/4 v7, 0x1

    .line 129
    add-int/lit8 v6, v6, 0x1

    .line 131
    :cond_4
    :goto_2
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 132
    add-int/lit8 v6, v6, 0x1

    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 133
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v4, v0, :cond_5

    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v4, v0, :cond_8

    .line 142
    :cond_5
    if-eqz v7, :cond_6

    .line 143
    neg-long v10, v10

    .line 145
    :cond_6
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    .line 146
    :goto_3
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 147
    add-int/lit8 v6, v6, 0x1

    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 148
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v4, v0, :cond_7

    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v4, v0, :cond_b

    .line 160
    :cond_7
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v4, v0, :cond_f

    .line 161
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 162
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    const-string v21, "invalid base"

    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 135
    :cond_8
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v4, v0, :cond_9

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v4, v0, :cond_a

    .line 136
    :cond_9
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    const-string v21, "invalid offset"

    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 138
    :cond_a
    add-int/lit8 v20, v4, -0x30

    move/from16 v0, v20

    int-to-char v4, v0

    .line 139
    const-wide/16 v20, 0xa

    mul-long v10, v10, v20

    .line 140
    int-to-long v0, v4

    move-wide/from16 v20, v0

    add-long v10, v10, v20

    goto/16 :goto_2

    .line 150
    :cond_b
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v4, v0, :cond_c

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v4, v0, :cond_d

    .line 151
    :cond_c
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    const-string v21, "invalid width"

    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 154
    :cond_d
    add-int/lit8 v20, v4, -0x30

    move/from16 v0, v20

    int-to-char v4, v0

    .line 155
    const-wide/16 v20, 0xa

    mul-long v16, v16, v20

    .line 156
    int-to-long v0, v4

    move-wide/from16 v20, v0

    add-long v16, v16, v20

    goto/16 :goto_3

    .line 164
    :cond_e
    add-int/lit8 v6, v6, 0x1

    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 165
    const/16 v20, 0x6f

    move/from16 v0, v20

    if-ne v4, v0, :cond_11

    .line 166
    const-wide/16 v2, 0x8

    .line 178
    :cond_f
    :goto_4
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    add-int/lit8 v20, v6, 0x1

    aget-byte v20, v12, v20

    const/16 v21, 0x7d

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    .line 179
    :cond_10
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    const-string v21, "invalid modifiers"

    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 167
    :cond_11
    const/16 v20, 0x78

    move/from16 v0, v20

    if-ne v4, v0, :cond_12

    .line 168
    const-wide/16 v2, 0x10

    goto :goto_4

    .line 169
    :cond_12
    const/16 v20, 0x58

    move/from16 v0, v20

    if-ne v4, v0, :cond_13

    .line 170
    const-wide/16 v2, 0x10

    .line 171
    const/4 v13, 0x1

    goto :goto_4

    .line 173
    :cond_13
    const/16 v20, 0x64

    move/from16 v0, v20

    if-eq v4, v0, :cond_f

    .line 174
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    const-string v21, "invalid base"

    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 181
    :cond_14
    add-int/lit8 v6, v6, 0x1

    .line 183
    :cond_15
    add-long v14, p2, v10

    .line 184
    .local v14, "v":J
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-gez v20, :cond_16

    .line 185
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    const-string v21, "invalid offset expansion"

    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 188
    :cond_16
    const-wide/16 v20, 0x8

    cmp-long v20, v2, v20

    if-nez v20, :cond_18

    .line 189
    invoke-static {v14, v15}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "number":Ljava/lang/String;
    :goto_5
    if-eqz v13, :cond_17

    .line 195
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 196
    :cond_17
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-eqz v20, :cond_1a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v16, v20

    if-lez v20, :cond_1a

    .line 197
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    sub-int v18, v20, v21

    .local v18, "zeros":I
    move/from16 v19, v18

    .line 198
    .end local v18    # "zeros":I
    .local v19, "zeros":I
    :goto_6
    add-int/lit8 v18, v19, -0x1

    .end local v19    # "zeros":I
    .restart local v18    # "zeros":I
    if-lez v19, :cond_1a

    .line 199
    const/16 v20, 0x30

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v19, v18

    .end local v18    # "zeros":I
    .restart local v19    # "zeros":I
    goto :goto_6

    .line 190
    .end local v8    # "number":Ljava/lang/String;
    .end local v19    # "zeros":I
    :cond_18
    const-wide/16 v20, 0x10

    cmp-long v20, v2, v20

    if-nez v20, :cond_19

    .line 191
    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "number":Ljava/lang/String;
    goto :goto_5

    .line 193
    .end local v8    # "number":Ljava/lang/String;
    :cond_19
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "number":Ljava/lang/String;
    goto :goto_5

    .line 201
    :cond_1a
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 203
    .end local v2    # "base":J
    .end local v7    # "negative":Z
    .end local v8    # "number":Ljava/lang/String;
    .end local v10    # "offset":J
    .end local v13    # "wantUpperCase":Z
    .end local v14    # "v":J
    .end local v16    # "width":J
    :cond_1b
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 206
    .end local v4    # "c":C
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20
.end method

.method public static a(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-static {p0}, Lorg/xbill/DNS/au;->a(I)V

    .line 52
    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x27

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/16 v1, 0x1c

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/xbill/DNS/Record;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-wide v2, p0, Lorg/xbill/DNS/p;->j:J

    iget-wide v4, p0, Lorg/xbill/DNS/p;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 217
    const/4 v2, 0x0

    .line 222
    :goto_0
    return-object v2

    .line 218
    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/p;->d:Ljava/lang/String;

    iget-wide v4, p0, Lorg/xbill/DNS/p;->j:J

    invoke-direct {p0, v2, v4, v5}, Lorg/xbill/DNS/p;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "namestr":Ljava/lang/String;
    iget-object v2, p0, Lorg/xbill/DNS/p;->i:Lorg/xbill/DNS/Name;

    invoke-static {v0, v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 220
    .local v1, "name":Lorg/xbill/DNS/Name;
    iget-object v2, p0, Lorg/xbill/DNS/p;->h:Ljava/lang/String;

    iget-wide v4, p0, Lorg/xbill/DNS/p;->j:J

    invoke-direct {p0, v2, v4, v5}, Lorg/xbill/DNS/p;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "rdata":Ljava/lang/String;
    iget-wide v2, p0, Lorg/xbill/DNS/p;->j:J

    iget-wide v4, p0, Lorg/xbill/DNS/p;->c:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xbill/DNS/p;->j:J

    .line 222
    iget v2, p0, Lorg/xbill/DNS/p;->e:I

    iget v3, p0, Lorg/xbill/DNS/p;->f:I

    iget-wide v4, p0, Lorg/xbill/DNS/p;->g:J

    iget-object v7, p0, Lorg/xbill/DNS/p;->i:Lorg/xbill/DNS/Name;

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v2

    goto :goto_0
.end method

.method public b()[Lorg/xbill/DNS/Record;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, "list":Ljava/util/List;
    iget-wide v8, p0, Lorg/xbill/DNS/p;->a:J

    .local v8, "i":J
    :goto_0
    iget-wide v2, p0, Lorg/xbill/DNS/p;->b:J

    cmp-long v2, v8, v2

    if-gez v2, :cond_0

    .line 234
    iget-object v2, p0, Lorg/xbill/DNS/p;->d:Ljava/lang/String;

    iget-wide v4, p0, Lorg/xbill/DNS/p;->j:J

    invoke-direct {p0, v2, v4, v5}, Lorg/xbill/DNS/p;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    .line 235
    .local v10, "namestr":Ljava/lang/String;
    iget-object v2, p0, Lorg/xbill/DNS/p;->i:Lorg/xbill/DNS/Name;

    invoke-static {v10, v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 236
    .local v1, "name":Lorg/xbill/DNS/Name;
    iget-object v2, p0, Lorg/xbill/DNS/p;->h:Ljava/lang/String;

    iget-wide v4, p0, Lorg/xbill/DNS/p;->j:J

    invoke-direct {p0, v2, v4, v5}, Lorg/xbill/DNS/p;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "rdata":Ljava/lang/String;
    iget v2, p0, Lorg/xbill/DNS/p;->e:I

    iget v3, p0, Lorg/xbill/DNS/p;->f:I

    iget-wide v4, p0, Lorg/xbill/DNS/p;->g:J

    iget-object v7, p0, Lorg/xbill/DNS/p;->i:Lorg/xbill/DNS/Name;

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-wide v2, p0, Lorg/xbill/DNS/p;->c:J

    add-long/2addr v8, v2

    goto :goto_0

    .line 240
    .end local v1    # "name":Lorg/xbill/DNS/Name;
    .end local v6    # "rdata":Ljava/lang/String;
    .end local v10    # "namestr":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/xbill/DNS/Record;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/xbill/DNS/Record;

    check-cast v2, [Lorg/xbill/DNS/Record;

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "$GENERATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v2, p0, Lorg/xbill/DNS/p;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lorg/xbill/DNS/p;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-wide v2, p0, Lorg/xbill/DNS/p;->c:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lorg/xbill/DNS/p;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v2, p0, Lorg/xbill/DNS/p;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget v1, p0, Lorg/xbill/DNS/p;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "noPrintIN"

    invoke-static {v1}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/p;->f:I

    invoke-static {v2}, Lorg/xbill/DNS/g;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/p;->e:I

    invoke-static {v2}, Lorg/xbill/DNS/au;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/p;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
