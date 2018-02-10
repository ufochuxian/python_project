.class public Lorg/apache/commons/fileupload/ParameterParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chars:[C

.field private i1:I

.field private i2:I

.field private len:I

.field private lowerCaseNames:Z

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    .line 49
    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 54
    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->len:I

    .line 59
    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 64
    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 69
    iput-boolean v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    .line 76
    return-void
.end method

.method private getToken(Z)Ljava/lang/String;
    .locals 5
    .param p1, "quoted"    # Z

    .prologue
    const/16 v3, 0x22

    .line 99
    :goto_0
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 103
    :cond_0
    :goto_1
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_5

    .line 107
    :cond_1
    if-eqz p1, :cond_2

    .line 108
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 109
    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    aget-char v1, v1, v2

    if-ne v1, v3, :cond_2

    .line 110
    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    if-ne v1, v3, :cond_2

    .line 111
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 112
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 114
    :cond_2
    const/4 v0, 0x0

    .line 115
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    if-le v1, v2, :cond_3

    .line 116
    new-instance v0, Ljava/lang/String;

    .end local v0    # "result":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    iget v4, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 118
    .restart local v0    # "result":Ljava/lang/String;
    :cond_3
    return-object v0

    .line 100
    .end local v0    # "result":Ljava/lang/String;
    :cond_4
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    goto :goto_0

    .line 104
    :cond_5
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    goto :goto_1
.end method

.method private hasChar()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->len:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOneOf(C[C)Z
    .locals 4
    .param p1, "ch"    # C
    .param p2, "charray"    # [C

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "result":Z
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 138
    :goto_1
    return v1

    .line 132
    :cond_0
    aget-char v0, p2, v2

    .line 133
    .local v0, "element":C
    if-ne p1, v0, :cond_1

    .line 134
    const/4 v1, 0x1

    .line 135
    goto :goto_1

    .line 132
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private parseQuotedToken([C)Ljava/lang/String;
    .locals 7
    .param p1, "terminators"    # [C

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 177
    iget v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 178
    iget v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "quoted":Z
    const/4 v1, 0x0

    .line 181
    .local v1, "charEscaped":Z
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    :cond_0
    invoke-direct {p0, v4}, Lorg/apache/commons/fileupload/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 182
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v6, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v0, v5, v6

    .line 183
    .local v0, "ch":C
    if-nez v2, :cond_2

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/fileupload/ParameterParser;->isOneOf(C[C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    :cond_2
    if-nez v1, :cond_3

    const/16 v5, 0x22

    if-ne v0, v5, :cond_3

    .line 187
    if-eqz v2, :cond_4

    move v2, v3

    .line 189
    :cond_3
    :goto_1
    if-nez v1, :cond_5

    const/16 v5, 0x5c

    if-ne v0, v5, :cond_5

    move v1, v4

    .line 190
    :goto_2
    iget v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 191
    iget v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    goto :goto_0

    :cond_4
    move v2, v4

    .line 187
    goto :goto_1

    :cond_5
    move v1, v3

    .line 189
    goto :goto_2
.end method

.method private parseToken([C)Ljava/lang/String;
    .locals 3
    .param p1, "terminators"    # [C

    .prologue
    .line 152
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i1:I

    .line 153
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 154
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/commons/fileupload/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v0, v1, v2

    .line 156
    .local v0, "ch":C
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/fileupload/ParameterParser;->isOneOf(C[C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->i2:I

    .line 160
    iget v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public isLowerCaseNames()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    return v0
.end method

.method public parse(Ljava/lang/String;C)Ljava/util/Map;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/fileupload/ParameterParser;->parse([CC)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;[C)Ljava/util/Map;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "separators"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 232
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 233
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 246
    :goto_0
    return-object v4

    .line 235
    :cond_1
    aget-char v1, p2, v4

    .line 236
    .local v1, "separator":C
    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 238
    .local v0, "idx":I
    array-length v5, p2

    :goto_1
    if-lt v4, v5, :cond_3

    .line 246
    .end local v0    # "idx":I
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/fileupload/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    .line 238
    .restart local v0    # "idx":I
    :cond_3
    aget-char v2, p2, v4

    .line 239
    .local v2, "separator2":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 240
    .local v3, "tmp":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_4

    if-ge v3, v0, :cond_4

    .line 241
    move v0, v3

    .line 242
    move v1, v2

    .line 238
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public parse([CC)Ljava/util/Map;
    .locals 2
    .param p1, "charArray"    # [C
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CC)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/commons/fileupload/ParameterParser;->parse([CIIC)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public parse([CIIC)Ljava/util/Map;
    .locals 7
    .param p1, "charArray"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIIC)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    if-nez p1, :cond_1

    .line 301
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 338
    :cond_0
    return-object v2

    .line 303
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/commons/fileupload/ParameterParser;->chars:[C

    .line 305
    iput p2, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 306
    iput p3, p0, Lorg/apache/commons/fileupload/ParameterParser;->len:I

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "paramName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 310
    .local v1, "paramValue":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    const/4 v3, 0x2

    new-array v3, v3, [C

    .line 312
    aput-char v6, v3, v4

    aput-char p4, v3, v5

    .line 311
    invoke-direct {p0, v3}, Lorg/apache/commons/fileupload/ParameterParser;->parseToken([C)Ljava/lang/String;

    move-result-object v0

    .line 313
    const/4 v1, 0x0

    .line 314
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, v6, :cond_3

    .line 315
    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 316
    new-array v3, v5, [C

    .line 317
    aput-char p4, v3, v4

    .line 316
    invoke-direct {p0, v3}, Lorg/apache/commons/fileupload/ParameterParser;->parseQuotedToken([C)Ljava/lang/String;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_3

    .line 321
    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 327
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/fileupload/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, p4, :cond_4

    .line 328
    iget v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->pos:I

    .line 330
    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 331
    iget-boolean v3, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    if-eqz v3, :cond_5

    .line 332
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_5
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 322
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public setLowerCaseNames(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lorg/apache/commons/fileupload/ParameterParser;->lowerCaseNames:Z

    .line 219
    return-void
.end method
