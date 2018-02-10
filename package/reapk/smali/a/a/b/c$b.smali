.class La/a/b/c$b;
.super La/a/b/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field f:[I

.field g:I

.field h:[I

.field final synthetic i:La/a/b/c;


# direct methods
.method constructor <init>(La/a/b/c;)V
    .locals 1

    .prologue
    .line 246
    iput-object p1, p0, La/a/b/c$b;->i:La/a/b/c;

    invoke-direct {p0, p1}, La/a/b/c$a;-><init>(La/a/b/c;)V

    .line 248
    const/16 v0, 0x1100

    new-array v0, v0, [I

    iput-object v0, p0, La/a/b/c$b;->f:[I

    .line 250
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, La/a/b/c$b;->h:[I

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "posState"    # I

    .prologue
    .line 256
    iget-object v0, p0, La/a/b/c$b;->f:[I

    mul-int/lit16 v1, p2, 0x110

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public a(La/a/c/d;II)V
    .locals 2
    .param p1, "rangeEncoder"    # La/a/c/d;
    .param p2, "symbol"    # I
    .param p3, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-super {p0, p1, p2, p3}, La/a/b/c$a;->a(La/a/c/d;II)V

    .line 274
    iget-object v0, p0, La/a/b/c$b;->h:[I

    aget v1, v0, p3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p3

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p0, p3}, La/a/b/c$b;->c(I)V

    .line 276
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "tableSize"    # I

    .prologue
    .line 252
    iput p1, p0, La/a/b/c$b;->g:I

    return-void
.end method

.method c(I)V
    .locals 3
    .param p1, "posState"    # I

    .prologue
    .line 261
    iget v0, p0, La/a/b/c$b;->g:I

    iget-object v1, p0, La/a/b/c$b;->f:[I

    mul-int/lit16 v2, p1, 0x110

    invoke-virtual {p0, p1, v0, v1, v2}, La/a/b/c$b;->a(II[II)V

    .line 262
    iget-object v0, p0, La/a/b/c$b;->h:[I

    iget v1, p0, La/a/b/c$b;->g:I

    aput v1, v0, p1

    .line 263
    return-void
.end method

.method public d(I)V
    .locals 1
    .param p1, "numPosStates"    # I

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 268
    invoke-virtual {p0, v0}, La/a/b/c$b;->c(I)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method
