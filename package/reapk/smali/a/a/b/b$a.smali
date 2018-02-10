.class La/a/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:[S

.field b:[La/a/c/a;

.field c:[La/a/c/a;

.field d:La/a/c/a;

.field e:I

.field final synthetic f:La/a/b/b;


# direct methods
.method constructor <init>(La/a/b/b;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 10
    iput-object p1, p0, La/a/b/b$a;->f:La/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, La/a/b/b$a;->a:[S

    .line 13
    new-array v0, v1, [La/a/c/a;

    iput-object v0, p0, La/a/b/b$a;->b:[La/a/c/a;

    .line 14
    new-array v0, v1, [La/a/c/a;

    iput-object v0, p0, La/a/b/b$a;->c:[La/a/c/a;

    .line 15
    new-instance v0, La/a/c/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, La/a/c/a;-><init>(I)V

    iput-object v0, p0, La/a/b/b$a;->d:La/a/c/a;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, La/a/b/b$a;->e:I

    return-void
.end method


# virtual methods
.method public a(La/a/c/c;I)I
    .locals 3
    .param p1, "rangeDecoder"    # La/a/c/c;
    .param p2, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, La/a/b/b$a;->a:[S

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, La/a/c/c;->a([SI)I

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, La/a/b/b$a;->b:[La/a/c/a;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, La/a/c/a;->a(La/a/c/c;)I

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 42
    :cond_0
    const/16 v0, 0x8

    .line 43
    .local v0, "symbol":I
    iget-object v1, p0, La/a/b/b$a;->a:[S

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, La/a/c/c;->a([SI)I

    move-result v1

    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, La/a/b/b$a;->c:[La/a/c/a;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, La/a/c/a;->a(La/a/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, La/a/b/b$a;->d:La/a/c/a;

    invoke-virtual {v1, p1}, La/a/c/a;->a(La/a/c/c;)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 29
    iget-object v1, p0, La/a/b/b$a;->a:[S

    invoke-static {v1}, La/a/c/c;->a([S)V

    .line 30
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    iget v1, p0, La/a/b/b$a;->e:I

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v1, p0, La/a/b/b$a;->b:[La/a/c/a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, La/a/c/a;->a()V

    .line 33
    iget-object v1, p0, La/a/b/b$a;->c:[La/a/c/a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, La/a/c/a;->a()V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, La/a/b/b$a;->d:La/a/c/a;

    invoke-virtual {v1}, La/a/c/a;->a()V

    .line 36
    return-void
.end method

.method public a(I)V
    .locals 4
    .param p1, "numPosStates"    # I

    .prologue
    const/4 v3, 0x3

    .line 20
    :goto_0
    iget v0, p0, La/a/b/b$a;->e:I

    if-ge v0, p1, :cond_0

    .line 22
    iget-object v0, p0, La/a/b/b$a;->b:[La/a/c/a;

    iget v1, p0, La/a/b/b$a;->e:I

    new-instance v2, La/a/c/a;

    invoke-direct {v2, v3}, La/a/c/a;-><init>(I)V

    aput-object v2, v0, v1

    .line 23
    iget-object v0, p0, La/a/b/b$a;->c:[La/a/c/a;

    iget v1, p0, La/a/b/b$a;->e:I

    new-instance v2, La/a/c/a;

    invoke-direct {v2, v3}, La/a/c/a;-><init>(I)V

    aput-object v2, v0, v1

    .line 20
    iget v0, p0, La/a/b/b$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/b/b$a;->e:I

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
