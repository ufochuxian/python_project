.class public Lorg/xbill/DNS/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:I = 0xc

.field private static e:Ljava/util/Random;


# instance fields
.field private b:I

.field private c:I

.field private d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/xbill/DNS/r;->e:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Lorg/xbill/DNS/r;->h()V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0}, Lorg/xbill/DNS/r;->h()V

    .line 40
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/r;->d(I)V

    .line 41
    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/h;)V
    .locals 3
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/r;-><init>(I)V

    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/r;->c:I

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/r;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lorg/xbill/DNS/r;->d:[I

    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v2

    aput v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lorg/xbill/DNS/h;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/h;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/r;-><init>(Lorg/xbill/DNS/h;)V

    .line 68
    return-void
.end method

.method static a(IIZ)I
    .locals 2
    .param p0, "flags"    # I
    .param p1, "bit"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x1

    .line 98
    invoke-static {p1}, Lorg/xbill/DNS/r;->l(I)V

    .line 101
    if-eqz p2, :cond_0

    .line 102
    rsub-int/lit8 v0, p1, 0xf

    shl-int v0, v1, v0

    or-int/2addr p0, v0

    .line 104
    :goto_0
    return p0

    :cond_0
    rsub-int/lit8 v0, p1, 0xf

    shl-int v0, v1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/r;->d:[I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/r;->c:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/r;->b:I

    .line 31
    return-void
.end method

.method private static k(I)Z
    .locals 1
    .param p0, "bit"    # I

    .prologue
    .line 87
    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    invoke-static {p0}, Lorg/xbill/DNS/n;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(I)V
    .locals 3
    .param p0, "bit"    # I

    .prologue
    .line 92
    invoke-static {p0}, Lorg/xbill/DNS/r;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid flag bit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "bit"    # I

    .prologue
    .line 113
    invoke-static {p1}, Lorg/xbill/DNS/r;->l(I)V

    .line 114
    iget v0, p0, Lorg/xbill/DNS/r;->c:I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/xbill/DNS/r;->a(IIZ)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/r;->c:I

    .line 115
    return-void
.end method

.method a(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 218
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-le p2, v0, :cond_1

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DNS section count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/r;->d:[I

    aput p2, v0, p1

    .line 222
    return-void
.end method

.method a(Lorg/xbill/DNS/i;)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/i;

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/xbill/DNS/r;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/i;->c(I)V

    .line 73
    iget v1, p0, Lorg/xbill/DNS/r;->c:I

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/i;->c(I)V

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/r;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lorg/xbill/DNS/r;->d:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/i;->c(I)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public a()[B
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lorg/xbill/DNS/i;

    invoke-direct {v0}, Lorg/xbill/DNS/i;-><init>()V

    .line 81
    .local v0, "out":Lorg/xbill/DNS/i;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/r;->a(Lorg/xbill/DNS/i;)V

    .line 82
    invoke-virtual {v0}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v1

    return-object v1
.end method

.method public b(I)V
    .locals 2
    .param p1, "bit"    # I

    .prologue
    .line 123
    invoke-static {p1}, Lorg/xbill/DNS/r;->l(I)V

    .line 124
    iget v0, p0, Lorg/xbill/DNS/r;->c:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/xbill/DNS/r;->a(IIZ)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/r;->c:I

    .line 125
    return-void
.end method

.method b()[Z
    .locals 3

    .prologue
    .line 140
    const/16 v2, 0x10

    new-array v0, v2, [Z

    .line 141
    .local v0, "array":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 142
    invoke-static {v1}, Lorg/xbill/DNS/r;->k(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/r;->c(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    return-object v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lorg/xbill/DNS/r;->b:I

    if-ltz v0, :cond_0

    .line 153
    iget v0, p0, Lorg/xbill/DNS/r;->b:I

    .line 157
    :goto_0
    return v0

    .line 154
    :cond_0
    monitor-enter p0

    .line 155
    :try_start_0
    iget v0, p0, Lorg/xbill/DNS/r;->b:I

    if-gez v0, :cond_1

    .line 156
    sget-object v0, Lorg/xbill/DNS/r;->e:Ljava/util/Random;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/r;->b:I

    .line 157
    :cond_1
    iget v0, p0, Lorg/xbill/DNS/r;->b:I

    monitor-exit p0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)Z
    .locals 3
    .param p1, "bit"    # I

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-static {p1}, Lorg/xbill/DNS/r;->l(I)V

    .line 135
    iget v1, p0, Lorg/xbill/DNS/r;->c:I

    rsub-int/lit8 v2, p1, 0xf

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 293
    new-instance v0, Lorg/xbill/DNS/r;

    invoke-direct {v0}, Lorg/xbill/DNS/r;-><init>()V

    .line 294
    .local v0, "h":Lorg/xbill/DNS/r;
    iget v1, p0, Lorg/xbill/DNS/r;->b:I

    iput v1, v0, Lorg/xbill/DNS/r;->b:I

    .line 295
    iget v1, p0, Lorg/xbill/DNS/r;->c:I

    iput v1, v0, Lorg/xbill/DNS/r;->c:I

    .line 296
    iget-object v1, p0, Lorg/xbill/DNS/r;->d:[I

    iget-object v2, v0, Lorg/xbill/DNS/r;->d:[I

    iget-object v3, p0, Lorg/xbill/DNS/r;->d:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/xbill/DNS/r;->c:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public d(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 166
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DNS message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    iput p1, p0, Lorg/xbill/DNS/r;->b:I

    .line 170
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lorg/xbill/DNS/r;->c:I

    shr-int/lit8 v0, v0, 0xb

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public e(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 178
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DNS Rcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    iget v0, p0, Lorg/xbill/DNS/r;->c:I

    and-int/lit8 v0, v0, -0x10

    iput v0, p0, Lorg/xbill/DNS/r;->c:I

    .line 182
    iget v0, p0, Lorg/xbill/DNS/r;->c:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/xbill/DNS/r;->c:I

    .line 183
    return-void
.end method

.method f()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lorg/xbill/DNS/r;->c:I

    return v0
.end method

.method public f(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 200
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DNS Opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    iget v0, p0, Lorg/xbill/DNS/r;->c:I

    const v1, 0x87ff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/r;->c:I

    .line 204
    iget v0, p0, Lorg/xbill/DNS/r;->c:I

    shl-int/lit8 v1, p1, 0xb

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/r;->c:I

    .line 205
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 260
    invoke-static {v0}, Lorg/xbill/DNS/r;->k(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/r;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-static {v0}, Lorg/xbill/DNS/n;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method g(I)V
    .locals 2
    .param p1, "field"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lorg/xbill/DNS/r;->d:[I

    aget v0, v0, p1

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DNS section count cannot be incremented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/r;->d:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 230
    return-void
.end method

.method h(I)V
    .locals 2
    .param p1, "field"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lorg/xbill/DNS/r;->d:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DNS section count cannot be decremented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/r;->d:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 238
    return-void
.end method

.method public i(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lorg/xbill/DNS/r;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method j(I)Ljava/lang/String;
    .locals 4
    .param p1, "newrcode"    # I

    .prologue
    .line 269
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, ";; ->>HEADER<<- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xbill/DNS/r;->e()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/y;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ", status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Lorg/xbill/DNS/ab;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ", id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xbill/DNS/r;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ";; flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xbill/DNS/r;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 280
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Lorg/xbill/DNS/aj;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/r;->i(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/xbill/DNS/r;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/r;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
