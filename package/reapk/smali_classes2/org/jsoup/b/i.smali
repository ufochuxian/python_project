.class public Lorg/jsoup/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:C = '\\'


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/b/i;->b:I

    .line 22
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5c

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v5, "out":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 296
    .local v3, "last":C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-char v1, v0, v2

    .line 297
    .local v1, "c":C
    if-ne v1, v6, :cond_1

    .line 298
    if-eqz v3, :cond_0

    if-ne v3, v6, :cond_0

    .line 299
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    :goto_1
    move v3, v1

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 305
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private o()I
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/b/i;->b:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(CC)Ljava/lang/String;
    .locals 6
    .param p1, "open"    # C
    .param p2, "close"    # C

    .prologue
    .line 263
    const/4 v4, -0x1

    .line 264
    .local v4, "start":I
    const/4 v2, -0x1

    .line 265
    .local v2, "end":I
    const/4 v1, 0x0

    .line 266
    .local v1, "depth":I
    const/4 v3, 0x0

    .line 269
    .local v3, "last":C
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    :goto_0
    if-ltz v2, :cond_6

    iget-object v5, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .line 270
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/b/i;->g()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 271
    .local v0, "c":Ljava/lang/Character;
    if-eqz v3, :cond_2

    const/16 v5, 0x5c

    if-eq v3, v5, :cond_3

    .line 272
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 273
    add-int/lit8 v1, v1, 0x1

    .line 274
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 275
    iget v4, p0, Lorg/jsoup/b/i;->b:I

    .line 281
    :cond_3
    :goto_2
    if-lez v1, :cond_4

    if-eqz v3, :cond_4

    .line 282
    iget v2, p0, Lorg/jsoup/b/i;->b:I

    .line 283
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 284
    if-gtz v1, :cond_0

    goto :goto_0

    .line 277
    :cond_5
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 278
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 285
    .end local v0    # "c":Ljava/lang/Character;
    :cond_6
    const-string v5, ""

    goto :goto_1
.end method

.method public a(Ljava/lang/Character;)V
    .locals 1
    .param p1, "c"    # Ljava/lang/Character;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/b/i;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/b/i;->b:I

    .line 62
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/jsoup/b/i;->o()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a([C)Z
    .locals 7
    .param p1, "seq"    # [C

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v4

    .line 100
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 101
    .local v1, "c":C
    iget-object v5, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v6, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_2

    .line 102
    const/4 v4, 0x1

    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public varargs a([Ljava/lang/String;)Z
    .locals 5
    .param p1, "seq"    # [Ljava/lang/String;

    .prologue
    .line 89
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 90
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    const/4 v4, 0x1

    .line 93
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 89
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public b()C
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public varargs b([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # [Ljava/lang/String;

    .prologue
    .line 224
    iget v1, p0, Lorg/jsoup/b/i;->b:I

    .line 225
    .local v1, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/b/i;->a([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    iget v2, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0

    .line 229
    :cond_0
    iget-object v2, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iget v2, p0, Lorg/jsoup/b/i;->b:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/jsoup/b/i;->o()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jsoup/helper/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/b/i;->b:I

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Queue did not match expected sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    .local v0, "len":I
    invoke-direct {p0}, Lorg/jsoup/b/i;->o()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Queue not long enough to consume sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_1
    iget v1, p0, Lorg/jsoup/b/i;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jsoup/b/i;->b:I

    .line 173
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v2, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 183
    iget-object v2, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jsoup/b/i;->b:I

    .line 187
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/b/i;->b:I

    .line 148
    :cond_0
    return-void
.end method

.method public g()C
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 192
    iget v4, p0, Lorg/jsoup/b/i;->b:I

    .line 193
    .local v4, "start":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "first":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 195
    .local v0, "canScan":Z
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lorg/jsoup/b/i;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    :cond_0
    iget-object v5, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v6, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "data":Ljava/lang/String;
    return-object v1

    .line 199
    .end local v1    # "data":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_4

    .line 200
    iget-object v5, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v6, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    iget v6, p0, Lorg/jsoup/b/i;->b:I

    sub-int v3, v5, v6

    .line 201
    .local v3, "skip":I
    if-nez v3, :cond_2

    .line 202
    iget v5, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0

    .line 203
    :cond_2
    if-gez v3, :cond_3

    .line 204
    iget-object v5, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0

    .line 206
    :cond_3
    iget v5, p0, Lorg/jsoup/b/i;->b:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0

    .line 209
    .end local v3    # "skip":I
    :cond_4
    iget v5, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lorg/jsoup/b/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    .line 244
    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "seen":Z
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget v1, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/b/i;->b:I

    .line 315
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    iget v0, p0, Lorg/jsoup/b/i;->b:I

    .line 326
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget v1, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lorg/jsoup/b/i;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jsoup/b/i;->d(Ljava/lang/String;)Z

    .line 250
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    iget v0, p0, Lorg/jsoup/b/i;->b:I

    .line 338
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/b/i;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/jsoup/b/i;->a([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    :cond_0
    iget v1, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0

    .line 341
    :cond_1
    iget-object v1, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 338
    :array_0
    .array-data 2
        0x3as
        0x5fs
        0x2ds
    .end array-data
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 350
    iget v0, p0, Lorg/jsoup/b/i;->b:I

    .line 351
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/b/i;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/jsoup/b/i;->a([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    :cond_0
    iget v1, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0

    .line 354
    :cond_1
    iget-object v1, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 351
    :array_0
    .array-data 2
        0x7cs
        0x5fs
        0x2ds
    .end array-data
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    iget v0, p0, Lorg/jsoup/b/i;->b:I

    .line 364
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/b/i;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/jsoup/b/i;->a([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    :cond_0
    iget v1, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0

    .line 367
    :cond_1
    iget-object v1, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 364
    :array_0
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    iget v0, p0, Lorg/jsoup/b/i;->b:I

    .line 376
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/b/i;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/b/i;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/jsoup/b/i;->a([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    iget v1, p0, Lorg/jsoup/b/i;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/b/i;->b:I

    goto :goto_0

    .line 379
    :cond_1
    iget-object v1, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 376
    :array_0
    .array-data 2
        0x2ds
        0x5fs
        0x3as
    .end array-data
.end method

.method public n()Ljava/lang/String;
    .locals 4

    .prologue
    .line 387
    iget-object v1, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/b/i;->b:I

    iget-object v3, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "remainder":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/b/i;->b:I

    .line 389
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/jsoup/b/i;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/b/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
