.class La/a/b/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/c$c$a;
    }
.end annotation


# instance fields
.field a:[La/a/b/c$c$a;

.field b:I

.field c:I

.field d:I

.field final synthetic e:La/a/b/c;


# direct methods
.method constructor <init>(La/a/b/c;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, La/a/b/c$c;->e:La/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public a(IB)La/a/b/c$c$a;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "prevByte"    # B

    .prologue
    .line 164
    iget-object v0, p0, La/a/b/c$c;->a:[La/a/b/c$c$a;

    iget v1, p0, La/a/b/c$c;->d:I

    and-int/2addr v1, p1

    iget v2, p0, La/a/b/c$c;->b:I

    shl-int/2addr v1, v2

    and-int/lit16 v2, p2, 0xff

    iget v3, p0, La/a/b/c$c;->b:I

    rsub-int/lit8 v3, v3, 0x8

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 158
    const/4 v2, 0x1

    iget v3, p0, La/a/b/c$c;->b:I

    iget v4, p0, La/a/b/c$c;->c:I

    add-int/2addr v3, v4

    shl-int v1, v2, v3

    .line 159
    .local v1, "numStates":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 160
    iget-object v2, p0, La/a/b/c$c;->a:[La/a/b/c$c$a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, La/a/b/c$c$a;->a()V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 5
    .param p1, "numPosBits"    # I
    .param p2, "numPrevBits"    # I

    .prologue
    const/4 v4, 0x1

    .line 145
    iget-object v2, p0, La/a/b/c$c;->a:[La/a/b/c$c$a;

    if-eqz v2, :cond_1

    iget v2, p0, La/a/b/c$c;->b:I

    if-ne v2, p2, :cond_1

    iget v2, p0, La/a/b/c$c;->c:I

    if-ne v2, p1, :cond_1

    .line 154
    :cond_0
    return-void

    .line 147
    :cond_1
    iput p1, p0, La/a/b/c$c;->c:I

    .line 148
    shl-int v2, v4, p1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, La/a/b/c$c;->d:I

    .line 149
    iput p2, p0, La/a/b/c$c;->b:I

    .line 150
    iget v2, p0, La/a/b/c$c;->b:I

    iget v3, p0, La/a/b/c$c;->c:I

    add-int/2addr v2, v3

    shl-int v1, v4, v2

    .line 151
    .local v1, "numStates":I
    new-array v2, v1, [La/a/b/c$c$a;

    iput-object v2, p0, La/a/b/c$c;->a:[La/a/b/c$c$a;

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 153
    iget-object v2, p0, La/a/b/c$c;->a:[La/a/b/c$c$a;

    new-instance v3, La/a/b/c$c$a;

    invoke-direct {v3, p0}, La/a/b/c$c$a;-><init>(La/a/b/c$c;)V

    aput-object v3, v2, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
