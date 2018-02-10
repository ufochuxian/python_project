.class La/a/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/b$b$a;
    }
.end annotation


# instance fields
.field a:[La/a/b/b$b$a;

.field b:I

.field c:I

.field d:I

.field final synthetic e:La/a/b/b;


# direct methods
.method constructor <init>(La/a/b/b;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, La/a/b/b$b;->e:La/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method a(IB)La/a/b/b$b$a;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "prevByte"    # B

    .prologue
    .line 119
    iget-object v0, p0, La/a/b/b$b;->a:[La/a/b/b$b$a;

    iget v1, p0, La/a/b/b$b;->d:I

    and-int/2addr v1, p1

    iget v2, p0, La/a/b/b$b;->b:I

    shl-int/2addr v1, v2

    and-int/lit16 v2, p2, 0xff

    iget v3, p0, La/a/b/b$b;->b:I

    rsub-int/lit8 v3, v3, 0x8

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 112
    const/4 v2, 0x1

    iget v3, p0, La/a/b/b$b;->b:I

    iget v4, p0, La/a/b/b$b;->c:I

    add-int/2addr v3, v4

    shl-int v1, v2, v3

    .line 113
    .local v1, "numStates":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 114
    iget-object v2, p0, La/a/b/b$b;->a:[La/a/b/b$b$a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, La/a/b/b$b$a;->a()V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 5
    .param p1, "numPosBits"    # I
    .param p2, "numPrevBits"    # I

    .prologue
    const/4 v4, 0x1

    .line 99
    iget-object v2, p0, La/a/b/b$b;->a:[La/a/b/b$b$a;

    if-eqz v2, :cond_1

    iget v2, p0, La/a/b/b$b;->b:I

    if-ne v2, p2, :cond_1

    iget v2, p0, La/a/b/b$b;->c:I

    if-ne v2, p1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 101
    :cond_1
    iput p1, p0, La/a/b/b$b;->c:I

    .line 102
    shl-int v2, v4, p1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, La/a/b/b$b;->d:I

    .line 103
    iput p2, p0, La/a/b/b$b;->b:I

    .line 104
    iget v2, p0, La/a/b/b$b;->b:I

    iget v3, p0, La/a/b/b$b;->c:I

    add-int/2addr v2, v3

    shl-int v1, v4, v2

    .line 105
    .local v1, "numStates":I
    new-array v2, v1, [La/a/b/b$b$a;

    iput-object v2, p0, La/a/b/b$b;->a:[La/a/b/b$b$a;

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 107
    iget-object v2, p0, La/a/b/b$b;->a:[La/a/b/b$b$a;

    new-instance v3, La/a/b/b$b$a;

    invoke-direct {v3, p0}, La/a/b/b$b$a;-><init>(La/a/b/b$b;)V

    aput-object v3, v2, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
