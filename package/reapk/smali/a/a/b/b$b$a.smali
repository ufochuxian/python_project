.class La/a/b/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:[S

.field final synthetic b:La/a/b/b$b;


# direct methods
.method constructor <init>(La/a/b/b$b;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, La/a/b/b$b$a;->b:La/a/b/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x300

    new-array v0, v0, [S

    iput-object v0, p0, La/a/b/b$b$a;->a:[S

    return-void
.end method


# virtual methods
.method public a(La/a/c/c;)B
    .locals 3
    .param p1, "rangeDecoder"    # La/a/c/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    .line 66
    .local v0, "symbol":I
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    iget-object v2, p0, La/a/b/b$b$a;->a:[S

    invoke-virtual {p1, v2, v0}, La/a/c/c;->a([SI)I

    move-result v2

    or-int v0, v1, v2

    .line 67
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 68
    int-to-byte v1, v0

    return v1
.end method

.method public a(La/a/c/c;B)B
    .locals 6
    .param p1, "rangeDecoder"    # La/a/c/c;
    .param p2, "matchByte"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x100

    .line 73
    const/4 v2, 0x1

    .line 76
    .local v2, "symbol":I
    :cond_0
    shr-int/lit8 v3, p2, 0x7

    and-int/lit8 v1, v3, 0x1

    .line 77
    .local v1, "matchBit":I
    shl-int/lit8 v3, p2, 0x1

    int-to-byte p2, v3

    .line 78
    iget-object v3, p0, La/a/b/b$b$a;->a:[S

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v2

    invoke-virtual {p1, v3, v4}, La/a/c/c;->a([SI)I

    move-result v0

    .line 79
    .local v0, "bit":I
    shl-int/lit8 v3, v2, 0x1

    or-int v2, v3, v0

    .line 80
    if-eq v1, v0, :cond_1

    .line 82
    :goto_0
    if-ge v2, v5, :cond_2

    .line 83
    shl-int/lit8 v3, v2, 0x1

    iget-object v4, p0, La/a/b/b$b$a;->a:[S

    invoke-virtual {p1, v4, v2}, La/a/c/c;->a([SI)I

    move-result v4

    or-int v2, v3, v4

    goto :goto_0

    .line 87
    :cond_1
    if-lt v2, v5, :cond_0

    .line 88
    :cond_2
    int-to-byte v3, v2

    return v3
.end method

.method public a()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, La/a/b/b$b$a;->a:[S

    invoke-static {v0}, La/a/c/c;->a([S)V

    .line 60
    return-void
.end method
