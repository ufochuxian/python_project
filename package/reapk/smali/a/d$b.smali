.class La/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:La/d$d;

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, La/d$d;

    invoke-direct {v0}, La/d$d;-><init>()V

    iput-object v0, p0, La/d$b;->a:La/d$d;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4
    .param p1, "numBits"    # I

    .prologue
    const/4 v3, 0x1

    .line 39
    iget v2, p0, La/d$b;->c:I

    if-le v2, p1, :cond_0

    .line 41
    iget v2, p0, La/d$b;->b:I

    shl-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 42
    .local v0, "result":I
    iget v2, p0, La/d$b;->b:I

    ushr-int/2addr v2, p1

    iput v2, p0, La/d$b;->b:I

    .line 43
    iget v2, p0, La/d$b;->c:I

    sub-int/2addr v2, p1

    iput v2, p0, La/d$b;->c:I

    move v1, v0

    .line 52
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 46
    .end local v1    # "result":I
    :cond_0
    iget v2, p0, La/d$b;->c:I

    sub-int/2addr p1, v2

    .line 47
    iget v2, p0, La/d$b;->b:I

    shl-int v0, v2, p1

    .line 48
    .restart local v0    # "result":I
    iget-object v2, p0, La/d$b;->a:La/d$d;

    invoke-virtual {v2}, La/d$d;->b()I

    move-result v2

    iput v2, p0, La/d$b;->b:I

    .line 49
    iget v2, p0, La/d$b;->b:I

    shl-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 50
    iget v2, p0, La/d$b;->b:I

    ushr-int/2addr v2, p1

    iput v2, p0, La/d$b;->b:I

    .line 51
    rsub-int/lit8 v2, p1, 0x20

    iput v2, p0, La/d$b;->c:I

    move v1, v0

    .line 52
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput v0, p0, La/d$b;->b:I

    .line 34
    iput v0, p0, La/d$b;->c:I

    .line 35
    return-void
.end method
