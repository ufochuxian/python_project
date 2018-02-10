.class public abstract Lrx/internal/util/a/f;
.super Lrx/internal/util/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/g",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/n;
.end annotation


# static fields
.field protected static final a:I

.field protected static final b:I = 0x20

.field private static final u:J

.field private static final v:I


# instance fields
.field protected final c:J

.field protected final d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    const-string v1, "sparse.shift"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lrx/internal/util/a/f;->a:I

    .line 53
    sget-object v1, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 54
    .local v0, "scale":I
    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 55
    sget v1, Lrx/internal/util/a/f;->a:I

    add-int/lit8 v1, v1, 0x2

    sput v1, Lrx/internal/util/a/f;->v:I

    .line 62
    :goto_0
    sget-object v1, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    const/16 v2, 0x20

    sget v3, Lrx/internal/util/a/f;->v:I

    sget v4, Lrx/internal/util/a/f;->a:I

    sub-int/2addr v3, v4

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-long v2, v1

    sput-wide v2, Lrx/internal/util/a/f;->u:J

    .line 64
    return-void

    .line 56
    :cond_0
    const/16 v1, 0x8

    if-ne v1, v0, :cond_1

    .line 57
    sget v1, Lrx/internal/util/a/f;->a:I

    add-int/lit8 v1, v1, 0x3

    sput v1, Lrx/internal/util/a/f;->v:I

    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown pointer size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "capacity"    # I

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/a/g;-><init>()V

    .line 71
    invoke-static {p1}, Lrx/internal/util/a/p;->a(I)I

    move-result v0

    .line 72
    .local v0, "actualCapacity":I
    add-int/lit8 v1, v0, -0x1

    int-to-long v2, v1

    iput-wide v2, p0, Lrx/internal/util/a/f;->c:J

    .line 74
    sget v1, Lrx/internal/util/a/f;->a:I

    shl-int v1, v0, v1

    add-int/lit8 v1, v1, 0x40

    new-array v1, v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lrx/internal/util/a/f;->d:[Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method protected final a(J)J
    .locals 3
    .param p1, "index"    # J

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/a/f;->c:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lrx/internal/util/a/f;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(JJ)J
    .locals 5
    .param p1, "index"    # J
    .param p3, "mask"    # J

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    sget-wide v0, Lrx/internal/util/a/f;->u:J

    and-long v2, p1, p3

    sget v4, Lrx/internal/util/a/f;->v:I

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected final a([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a(JLjava/lang/Object;)V
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lrx/internal/util/a/f;->d:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2, p3}, Lrx/internal/util/a/f;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected final a([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 2
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JTE;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p4, "e":Ljava/lang/Object;, "TE;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 111
    return-void
.end method

.method protected final b(J)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    iget-object v0, p0, Lrx/internal/util/a/f;->d:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lrx/internal/util/a/f;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b(JLjava/lang/Object;)V
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lrx/internal/util/a/f;->d:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2, p3}, Lrx/internal/util/a/f;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 121
    return-void
.end method

.method protected final b([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 2
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JTE;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    .local p1, "buffer":[Ljava/lang/Object;, "[TE;"
    .local p4, "e":Ljava/lang/Object;, "TE;"
    sget-object v0, Lrx/internal/util/a/an;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 132
    return-void
.end method

.method protected final c(J)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    iget-object v0, p0, Lrx/internal/util/a/f;->d:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lrx/internal/util/a/f;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/a/f;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/a/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/util/a/f;, "Lrx/internal/util/a/f<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
