.class Landroid/support/constraint/solver/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "numerator"    # I

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 24
    iput v1, p0, Landroid/support/constraint/solver/a;->b:I

    .line 42
    iput p1, p0, Landroid/support/constraint/solver/a;->a:I

    .line 43
    iput v1, p0, Landroid/support/constraint/solver/a;->b:I

    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/a;->b:I

    .line 32
    iput p1, p0, Landroid/support/constraint/solver/a;->a:I

    .line 33
    iput p2, p0, Landroid/support/constraint/solver/a;->b:I

    .line 34
    invoke-direct {p0}, Landroid/support/constraint/solver/a;->m()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/a;)V
    .locals 1
    .param p1, "amount"    # Landroid/support/constraint/solver/a;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/a;->b:I

    .line 47
    iget v0, p1, Landroid/support/constraint/solver/a;->a:I

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 48
    iget v0, p1, Landroid/support/constraint/solver/a;->b:I

    iput v0, p0, Landroid/support/constraint/solver/a;->b:I

    .line 49
    invoke-direct {p0}, Landroid/support/constraint/solver/a;->m()V

    .line 50
    return-void
.end method

.method private static b(II)I
    .locals 3
    .param p0, "u"    # I
    .param p1, "v"    # I

    .prologue
    .line 218
    if-gez p0, :cond_0

    .line 219
    mul-int/lit8 p0, p0, -0x1

    .line 222
    :cond_0
    if-gez p1, :cond_1

    .line 223
    mul-int/lit8 p1, p1, -0x1

    .line 226
    :cond_1
    if-nez p0, :cond_3

    move p0, p1

    .line 252
    .end local p0    # "u":I
    :cond_2
    :goto_0
    return p0

    .line 230
    .restart local p0    # "u":I
    :cond_3
    if-eqz p1, :cond_2

    .line 234
    const/4 v0, 0x0

    .local v0, "shift":I
    :goto_1
    or-int v2, p0, p1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    .line 235
    shr-int/lit8 p0, p0, 0x1

    .line 236
    shr-int/lit8 p1, p1, 0x1

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_4
    :goto_2
    and-int/lit8 v2, p0, 0x1

    if-nez v2, :cond_5

    .line 240
    shr-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 244
    :cond_5
    :goto_3
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_6

    .line 245
    shr-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 247
    :cond_6
    if-le p0, p1, :cond_7

    .line 248
    move v1, p1

    .local v1, "t":I
    move p1, p0

    move p0, v1

    .line 250
    .end local v1    # "t":I
    :cond_7
    sub-int/2addr p1, p0

    .line 251
    if-nez p1, :cond_5

    .line 252
    shl-int/2addr p0, v0

    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 190
    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    if-gez v1, :cond_2

    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    if-gez v1, :cond_2

    .line 191
    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/a;->a:I

    .line 192
    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/a;->b:I

    .line 197
    :cond_0
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 199
    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 200
    const/4 v0, 0x2

    .line 204
    .local v0, "commonDenominator":I
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    div-int/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/a;->a:I

    .line 205
    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    div-int/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/a;->b:I

    .line 207
    .end local v0    # "commonDenominator":I
    :cond_1
    return-void

    .line 193
    :cond_2
    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    if-gez v1, :cond_0

    .line 194
    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/a;->a:I

    .line 195
    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/a;->b:I

    goto :goto_0

    .line 202
    :cond_3
    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    iget v2, p0, Landroid/support/constraint/solver/a;->b:I

    invoke-static {v1, v2}, Landroid/support/constraint/solver/a;->b(II)I

    move-result v0

    .restart local v0    # "commonDenominator":I
    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/support/constraint/solver/a;
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 137
    .local v0, "n":I
    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    iput v1, p0, Landroid/support/constraint/solver/a;->a:I

    .line 138
    iput v0, p0, Landroid/support/constraint/solver/a;->b:I

    .line 139
    invoke-direct {p0}, Landroid/support/constraint/solver/a;->m()V

    .line 140
    return-object p0
.end method

.method public a(I)Landroid/support/constraint/solver/a;
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 85
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 86
    return-object p0
.end method

.method public a(Landroid/support/constraint/solver/a;)Landroid/support/constraint/solver/a;
    .locals 3
    .param p1, "amount"    # Landroid/support/constraint/solver/a;

    .prologue
    .line 69
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    iget v1, p1, Landroid/support/constraint/solver/a;->b:I

    if-ne v0, v1, :cond_0

    .line 70
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    iget v1, p1, Landroid/support/constraint/solver/a;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 75
    :goto_0
    invoke-direct {p0}, Landroid/support/constraint/solver/a;->m()V

    .line 76
    return-object p0

    .line 72
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    iget v1, p1, Landroid/support/constraint/solver/a;->b:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/support/constraint/solver/a;->a:I

    iget v2, p0, Landroid/support/constraint/solver/a;->b:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 73
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    iget v1, p1, Landroid/support/constraint/solver/a;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/a;->b:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 0
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    .line 58
    iput p1, p0, Landroid/support/constraint/solver/a;->a:I

    .line 59
    iput p2, p0, Landroid/support/constraint/solver/a;->b:I

    .line 60
    invoke-direct {p0}, Landroid/support/constraint/solver/a;->m()V

    .line 61
    return-void
.end method

.method public b()Landroid/support/constraint/solver/a;
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 149
    invoke-direct {p0}, Landroid/support/constraint/solver/a;->m()V

    .line 150
    return-object p0
.end method

.method public b(Landroid/support/constraint/solver/a;)Landroid/support/constraint/solver/a;
    .locals 3
    .param p1, "amount"    # Landroid/support/constraint/solver/a;

    .prologue
    .line 95
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    iget v1, p1, Landroid/support/constraint/solver/a;->b:I

    if-ne v0, v1, :cond_0

    .line 96
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    iget v1, p1, Landroid/support/constraint/solver/a;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 101
    :goto_0
    invoke-direct {p0}, Landroid/support/constraint/solver/a;->m()V

    .line 102
    return-object p0

    .line 98
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    iget v1, p1, Landroid/support/constraint/solver/a;->b:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/support/constraint/solver/a;->a:I

    iget v2, p0, Landroid/support/constraint/solver/a;->b:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 99
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    iget v1, p1, Landroid/support/constraint/solver/a;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/a;->b:I

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    return v0
.end method

.method public c(Landroid/support/constraint/solver/a;)Landroid/support/constraint/solver/a;
    .locals 2
    .param p1, "amount"    # Landroid/support/constraint/solver/a;

    .prologue
    .line 111
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    iget v1, p1, Landroid/support/constraint/solver/a;->a:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 112
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    iget v1, p1, Landroid/support/constraint/solver/a;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/a;->b:I

    .line 113
    invoke-direct {p0}, Landroid/support/constraint/solver/a;->m()V

    .line 114
    return-object p0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    return v0
.end method

.method public d(Landroid/support/constraint/solver/a;)Landroid/support/constraint/solver/a;
    .locals 4
    .param p1, "amount"    # Landroid/support/constraint/solver/a;

    .prologue
    .line 123
    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    .line 124
    .local v1, "preN":I
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    .line 125
    .local v0, "preD":I
    iget v2, p0, Landroid/support/constraint/solver/a;->a:I

    iget v3, p1, Landroid/support/constraint/solver/a;->b:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/support/constraint/solver/a;->a:I

    .line 126
    iget v2, p0, Landroid/support/constraint/solver/a;->b:I

    iget v3, p1, Landroid/support/constraint/solver/a;->a:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/support/constraint/solver/a;->b:I

    .line 127
    invoke-direct {p0}, Landroid/support/constraint/solver/a;->m()V

    .line 128
    return-object p0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 260
    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    if-ne p0, p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    instance-of v3, p1, Landroid/support/constraint/solver/a;

    if-nez v3, :cond_2

    move v1, v2

    .line 176
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 178
    check-cast v0, Landroid/support/constraint/solver/a;

    .line 179
    .local v0, "a":Landroid/support/constraint/solver/a;
    iget v3, p0, Landroid/support/constraint/solver/a;->a:I

    iget v4, v0, Landroid/support/constraint/solver/a;->a:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/support/constraint/solver/a;->b:I

    iget v4, v0, Landroid/support/constraint/solver/a;->b:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 268
    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/a;->a:I

    .line 300
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/a;->b:I

    .line 301
    return-void
.end method

.method public k()F
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 309
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 320
    iget v0, p0, Landroid/support/constraint/solver/a;->b:I

    if-ne v0, v1, :cond_3

    .line 321
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 322
    :cond_0
    const-string v0, ""

    .line 332
    :goto_0
    return-object v0

    .line 324
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    if-gez v0, :cond_2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_3
    iget v0, p0, Landroid/support/constraint/solver/a;->a:I

    if-gez v0, :cond_4

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
