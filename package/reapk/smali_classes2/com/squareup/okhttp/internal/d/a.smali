.class final Lcom/squareup/okhttp/internal/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    .line 45
    return-void
.end method

.method private a(I)I
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0x61

    const/16 v7, 0x46

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 312
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-lt v2, v3, :cond_0

    .line 313
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    aget-char v0, v2, p1

    .line 319
    .local v0, "b1":I
    if-lt v0, v4, :cond_1

    if-gt v0, v5, :cond_1

    .line 320
    add-int/lit8 v0, v0, -0x30

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    add-int/lit8 v3, p1, 0x1

    aget-char v1, v2, v3

    .line 330
    .local v1, "b2":I
    if-lt v1, v4, :cond_4

    if-gt v1, v5, :cond_4

    .line 331
    add-int/lit8 v1, v1, -0x30

    .line 340
    :goto_1
    shl-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v1

    return v2

    .line 321
    .end local v1    # "b2":I
    :cond_1
    if-lt v0, v8, :cond_2

    const/16 v2, 0x66

    if-gt v0, v2, :cond_2

    .line 322
    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    .line 323
    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v7, :cond_3

    .line 324
    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    .line 326
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    .restart local v1    # "b2":I
    :cond_4
    if-lt v1, v8, :cond_5

    const/16 v2, 0x66

    if-gt v1, v2, :cond_5

    .line 333
    add-int/lit8 v1, v1, -0x57

    goto :goto_1

    .line 334
    :cond_5
    if-lt v1, v6, :cond_6

    if-gt v1, v7, :cond_6

    .line 335
    add-int/lit8 v1, v1, -0x37

    goto :goto_1

    .line 337
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x20

    .line 51
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto :goto_0

    .line 53
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ne v0, v1, :cond_1

    .line 54
    const/4 v0, 0x0

    .line 100
    :goto_1
    return-object v0

    .line 58
    :cond_1
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    .line 61
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 62
    :goto_2
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto :goto_2

    .line 66
    :cond_2
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-lt v0, v1, :cond_3

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_6

    .line 76
    :goto_3
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto :goto_3

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ne v0, v1, :cond_6

    .line 80
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_6
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 88
    :goto_4
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto :goto_4

    .line 93
    :cond_7
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    .line 97
    :cond_a
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    .line 100
    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 106
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    .line 107
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    .line 110
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ne v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 116
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 130
    :goto_1
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto :goto_1

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d/a;->e()C

    move-result v2

    aput-char v2, v0, v1

    .line 124
    :goto_2
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 125
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    goto :goto_2

    .line 133
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 138
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-lt v4, v5, :cond_0

    .line 140
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected end of DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_0
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iput v4, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    .line 144
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 149
    :goto_0
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v4, v4, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v4, v4, v5

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_4

    .line 151
    :cond_1
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iput v4, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    .line 172
    :cond_2
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    sub-int v1, v4, v5

    .line 173
    .local v1, "hexLen":I
    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_7

    .line 174
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected end of DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    .end local v1    # "hexLen":I
    :cond_4
    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_5

    .line 156
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iput v4, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    .line 157
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 160
    :goto_1
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v4, v4, v5

    if-ne v4, v7, :cond_2

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto :goto_1

    .line 163
    :cond_5
    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v4, v4, v5

    const/16 v5, 0x41

    if-lt v4, v5, :cond_6

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v4, v4, v5

    const/16 v5, 0x46

    if-gt v4, v5, :cond_6

    .line 164
    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v6, v4, v5

    add-int/lit8 v6, v6, 0x20

    int-to-char v6, v6

    aput-char v6, v4, v5

    .line 167
    :cond_6
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto/16 :goto_0

    .line 178
    .restart local v1    # "hexLen":I
    :cond_7
    div-int/lit8 v4, v1, 0x2

    new-array v0, v4, [B

    .line 179
    .local v0, "encoded":[B
    const/4 v2, 0x0

    .local v2, "i":I
    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    add-int/lit8 v3, v4, 0x1

    .local v3, "p":I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_8

    .line 180
    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/d/a;->a(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 179
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 183
    :cond_8
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v6, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    invoke-direct {v4, v5, v6, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 188
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    .line 189
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    .line 191
    :cond_0
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-lt v0, v1, :cond_1

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 221
    :goto_1
    return-object v0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 225
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 226
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto :goto_0

    .line 201
    :sswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 204
    :sswitch_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d/a;->e()C

    move-result v2

    aput-char v2, v0, v1

    .line 205
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto :goto_0

    .line 210
    :sswitch_2
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->f:I

    .line 212
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    aput-char v4, v0, v1

    .line 215
    :goto_2
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_2

    .line 216
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    aput-char v4, v0, v1

    .line 215
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    goto :goto_2

    .line 218
    :cond_2
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 221
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->f:I

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private e()C
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 234
    iget v0, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ne v0, v1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 257
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d/a;->f()C

    move-result v0

    :goto_0
    return v0

    .line 253
    :sswitch_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v0, v0, v1

    goto :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private f()C
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/16 v4, 0x3f

    .line 264
    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    invoke-direct {p0, v5}, Lcom/squareup/okhttp/internal/d/a;->a(I)I

    move-result v3

    .line 265
    .local v3, "res":I
    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 267
    if-ge v3, v7, :cond_1

    .line 268
    int-to-char v4, v3

    .line 301
    :cond_0
    :goto_0
    return v4

    .line 269
    :cond_1
    const/16 v5, 0xc0

    if-lt v3, v5, :cond_0

    const/16 v5, 0xf7

    if-gt v3, v5, :cond_0

    .line 272
    const/16 v5, 0xdf

    if-gt v3, v5, :cond_2

    .line 273
    const/4 v1, 0x1

    .line 274
    .local v1, "count":I
    and-int/lit8 v3, v3, 0x1f

    .line 284
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 285
    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 286
    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v6, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v6, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    .line 289
    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 291
    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    invoke-direct {p0, v5}, Lcom/squareup/okhttp/internal/d/a;->a(I)I

    move-result v0

    .line 292
    .local v0, "b":I
    iget v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 293
    and-int/lit16 v5, v0, 0xc0

    if-ne v5, v7, :cond_0

    .line 297
    shl-int/lit8 v5, v3, 0x6

    and-int/lit8 v6, v0, 0x3f

    add-int v3, v5, v6

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 275
    .end local v0    # "b":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    const/16 v5, 0xef

    if-gt v3, v5, :cond_3

    .line 276
    const/4 v1, 0x2

    .line 277
    .restart local v1    # "count":I
    and-int/lit8 v3, v3, 0xf

    goto :goto_1

    .line 279
    .end local v1    # "count":I
    :cond_3
    const/4 v1, 0x3

    .line 280
    .restart local v1    # "count":I
    and-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 299
    .restart local v2    # "i":I
    :cond_4
    int-to-char v4, v3

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "attributeType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 351
    iput v3, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 352
    iput v3, p0, Lcom/squareup/okhttp/internal/d/a;->d:I

    .line 353
    iput v3, p0, Lcom/squareup/okhttp/internal/d/a;->e:I

    .line 354
    iput v3, p0, Lcom/squareup/okhttp/internal/d/a;->f:I

    .line 355
    iget-object v3, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    .line 357
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "attType":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 392
    :cond_0
    :goto_0
    return-object v1

    .line 362
    :cond_1
    const-string v1, ""

    .line 364
    .local v1, "attValue":Ljava/lang/String;
    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-ne v3, v4, :cond_2

    move-object v1, v2

    .line 365
    goto :goto_0

    .line 368
    :cond_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 381
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 387
    :goto_1
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->b:I

    if-lt v3, v4, :cond_3

    move-object v1, v2

    .line 392
    goto :goto_0

    .line 370
    :sswitch_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 371
    goto :goto_1

    .line 373
    :sswitch_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 374
    goto :goto_1

    .line 395
    :cond_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5

    .line 400
    :cond_4
    iget v3, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    .line 401
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 402
    if-nez v0, :cond_1

    .line 403
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 396
    :cond_5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/d/a;->g:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/d/a;->c:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_4

    .line 397
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/d/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
