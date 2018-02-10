.class La/a/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:[S

.field b:[La/a/c/b;

.field c:[La/a/c/b;

.field d:La/a/c/b;

.field final synthetic e:La/a/b/c;


# direct methods
.method public constructor <init>(La/a/b/c;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0x10

    .line 176
    iput-object p1, p0, La/a/b/c$a;->e:La/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v1, 0x2

    new-array v1, v1, [S

    iput-object v1, p0, La/a/b/c$a;->a:[S

    .line 170
    new-array v1, v3, [La/a/c/b;

    iput-object v1, p0, La/a/b/c$a;->b:[La/a/c/b;

    .line 171
    new-array v1, v3, [La/a/c/b;

    iput-object v1, p0, La/a/b/c$a;->c:[La/a/c/b;

    .line 172
    new-instance v1, La/a/c/b;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, La/a/c/b;-><init>(I)V

    iput-object v1, p0, La/a/b/c$a;->d:La/a/c/b;

    .line 177
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 179
    iget-object v1, p0, La/a/b/c$a;->b:[La/a/c/b;

    new-instance v2, La/a/c/b;

    invoke-direct {v2, v4}, La/a/c/b;-><init>(I)V

    aput-object v2, v1, v0

    .line 180
    iget-object v1, p0, La/a/b/c$a;->c:[La/a/c/b;

    new-instance v2, La/a/c/b;

    invoke-direct {v2, v4}, La/a/c/b;-><init>(I)V

    aput-object v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .param p1, "numPosStates"    # I

    .prologue
    .line 186
    iget-object v1, p0, La/a/b/c$a;->a:[S

    invoke-static {v1}, La/a/c/d;->a([S)V

    .line 188
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 190
    iget-object v1, p0, La/a/b/c$a;->b:[La/a/c/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, La/a/c/b;->a()V

    .line 191
    iget-object v1, p0, La/a/b/c$a;->c:[La/a/c/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, La/a/c/b;->a()V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, La/a/b/c$a;->d:La/a/c/b;

    invoke-virtual {v1}, La/a/c/b;->a()V

    .line 194
    return-void
.end method

.method public a(II[II)V
    .locals 8
    .param p1, "posState"    # I
    .param p2, "numSymbols"    # I
    .param p3, "prices"    # [I
    .param p4, "st"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 222
    iget-object v5, p0, La/a/b/c$a;->a:[S

    aget-short v5, v5, v6

    invoke-static {v5}, La/a/c/d;->a(I)I

    move-result v0

    .line 223
    .local v0, "a0":I
    iget-object v5, p0, La/a/b/c$a;->a:[S

    aget-short v5, v5, v6

    invoke-static {v5}, La/a/c/d;->b(I)I

    move-result v1

    .line 224
    .local v1, "a1":I
    iget-object v5, p0, La/a/b/c$a;->a:[S

    aget-short v5, v5, v7

    invoke-static {v5}, La/a/c/d;->a(I)I

    move-result v5

    add-int v2, v1, v5

    .line 225
    .local v2, "b0":I
    iget-object v5, p0, La/a/b/c$a;->a:[S

    aget-short v5, v5, v7

    invoke-static {v5}, La/a/c/d;->b(I)I

    move-result v5

    add-int v3, v1, v5

    .line 226
    .local v3, "b1":I
    const/4 v4, 0x0

    .line 227
    .local v4, "i":I
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_3

    .line 229
    if-lt v4, p2, :cond_1

    .line 241
    :cond_0
    :goto_1
    return-void

    .line 231
    :cond_1
    add-int v5, p4, v4

    iget-object v6, p0, La/a/b/c$a;->b:[La/a/c/b;

    aget-object v6, v6, p1

    invoke-virtual {v6, v4}, La/a/c/b;->a(I)I

    move-result v6

    add-int/2addr v6, v0

    aput v6, p3, v5

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :cond_2
    add-int v5, p4, v4

    iget-object v6, p0, La/a/b/c$a;->c:[La/a/c/b;

    aget-object v6, v6, p1

    add-int/lit8 v7, v4, -0x8

    invoke-virtual {v6, v7}, La/a/c/b;->a(I)I

    move-result v6

    add-int/2addr v6, v2

    aput v6, p3, v5

    .line 233
    add-int/lit8 v4, v4, 0x1

    :cond_3
    const/16 v5, 0x10

    if-ge v4, v5, :cond_4

    .line 235
    if-lt v4, p2, :cond_2

    goto :goto_1

    .line 239
    :cond_4
    :goto_2
    if-ge v4, p2, :cond_0

    .line 240
    add-int v5, p4, v4

    iget-object v6, p0, La/a/b/c$a;->d:La/a/c/b;

    add-int/lit8 v7, v4, -0x8

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v6, v7}, La/a/c/b;->a(I)I

    move-result v6

    add-int/2addr v6, v3

    aput v6, p3, v5

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public a(La/a/c/d;II)V
    .locals 4
    .param p1, "rangeEncoder"    # La/a/c/d;
    .param p2, "symbol"    # I
    .param p3, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    if-ge p2, v3, :cond_0

    .line 200
    iget-object v0, p0, La/a/b/c$a;->a:[S

    invoke-virtual {p1, v0, v1, v1}, La/a/c/d;->a([SII)V

    .line 201
    iget-object v0, p0, La/a/b/c$a;->b:[La/a/c/b;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, La/a/c/b;->a(La/a/c/d;I)V

    .line 218
    :goto_0
    return-void

    .line 205
    :cond_0
    add-int/lit8 p2, p2, -0x8

    .line 206
    iget-object v0, p0, La/a/b/c$a;->a:[S

    invoke-virtual {p1, v0, v1, v2}, La/a/c/d;->a([SII)V

    .line 207
    if-ge p2, v3, :cond_1

    .line 209
    iget-object v0, p0, La/a/b/c$a;->a:[S

    invoke-virtual {p1, v0, v2, v1}, La/a/c/d;->a([SII)V

    .line 210
    iget-object v0, p0, La/a/b/c$a;->c:[La/a/c/b;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, La/a/c/b;->a(La/a/c/d;I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, La/a/b/c$a;->a:[S

    invoke-virtual {p1, v0, v2, v2}, La/a/c/d;->a([SII)V

    .line 215
    iget-object v0, p0, La/a/b/c$a;->d:La/a/c/b;

    add-int/lit8 v1, p2, -0x8

    invoke-virtual {v0, p1, v1}, La/a/c/b;->a(La/a/c/d;I)V

    goto :goto_0
.end method
