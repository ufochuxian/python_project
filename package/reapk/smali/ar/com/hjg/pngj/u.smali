.class public Lar/com/hjg/pngj/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:[I

.field static b:[I

.field static c:[I

.field static d:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lar/com/hjg/pngj/u;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IB)B
    .locals 1
    .param p0, "bitdepth"    # I
    .param p1, "v"    # B

    .prologue
    .line 82
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    sget-object v0, Lar/com/hjg/pngj/u;->d:[[I

    aget-object v0, v0, p0

    aget v0, v0, p1

    int-to-byte p1, v0

    .end local p1    # "v":B
    :cond_0
    return p1
.end method

.method public static a(Lar/com/hjg/pngj/v;I)D
    .locals 4
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "p"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->d:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    int-to-double v0, p1

    const-wide v2, 0x40efffe000000000L    # 65535.0

    div-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public static a(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    const/16 v0, 0xff

    .line 441
    if-le p0, v0, :cond_1

    move p0, v0

    .end local p0    # "i":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "i":I
    :cond_1
    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(IIIIDD)I
    .locals 8
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I
    .param p3, "d"    # I
    .param p4, "dx"    # D
    .param p6, "dy"    # D

    .prologue
    .line 414
    int-to-double v4, p0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, p4

    mul-double/2addr v4, v6

    int-to-double v6, p1

    mul-double/2addr v6, p4

    add-double v0, v4, v6

    .line 415
    .local v0, "e":D
    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, p4

    mul-double/2addr v4, v6

    int-to-double v6, p3

    mul-double/2addr v6, p4

    add-double v2, v4, v6

    .line 416
    .local v2, "f":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p6

    mul-double/2addr v4, v0

    mul-double v6, v2, p6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method public static a(Lar/com/hjg/pngj/l;I)I
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/l;
    .param p1, "column"    # I

    .prologue
    .line 339
    instance-of v2, p0, Lar/com/hjg/pngj/v;

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 340
    check-cast v2, Lar/com/hjg/pngj/v;

    iget-object v2, v2, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->e:I

    mul-int v0, p1, v2

    .line 341
    .local v0, "offset":I
    check-cast p0, Lar/com/hjg/pngj/v;

    .end local p0    # "line":Lar/com/hjg/pngj/l;
    invoke-virtual {p0}, Lar/com/hjg/pngj/v;->f()[I

    move-result-object v1

    .line 342
    .local v1, "scanline":[I
    aget v2, v1, v0

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget v3, v1, v3

    or-int/2addr v2, v3

    .line 346
    .end local v1    # "scanline":[I
    :goto_0
    return v2

    .line 343
    .end local v0    # "offset":I
    .restart local p0    # "line":Lar/com/hjg/pngj/l;
    :cond_0
    instance-of v2, p0, Lar/com/hjg/pngj/t;

    if-eqz v2, :cond_1

    move-object v2, p0

    .line 344
    check-cast v2, Lar/com/hjg/pngj/t;

    iget-object v2, v2, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->e:I

    mul-int v0, p1, v2

    .line 345
    .restart local v0    # "offset":I
    check-cast p0, Lar/com/hjg/pngj/t;

    .end local p0    # "line":Lar/com/hjg/pngj/l;
    invoke-virtual {p0}, Lar/com/hjg/pngj/t;->i()[B

    move-result-object v1

    .line 346
    .local v1, "scanline":[B
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    goto :goto_0

    .line 349
    .end local v0    # "offset":I
    .end local v1    # "scanline":[B
    .restart local p0    # "line":Lar/com/hjg/pngj/l;
    :cond_1
    new-instance v2, Lar/com/hjg/pngj/PngjException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static a(Lar/com/hjg/pngj/v;D)I
    .locals 9
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "d"    # D

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/16 v0, 0x0

    .line 431
    cmpg-double v4, p1, v0

    if-gtz v4, :cond_1

    move-wide p1, v0

    .line 432
    :cond_0
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->d:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const-wide v0, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v0, p1

    add-double/2addr v0, v6

    double-to-int v0, v0

    :goto_1
    return v0

    .line 431
    :cond_1
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_0

    move-wide p1, v2

    goto :goto_0

    .line 432
    :cond_2
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p1

    add-double/2addr v0, v6

    double-to-int v0, v0

    goto :goto_1
.end method

.method public static a(Lar/com/hjg/pngj/v;)Ljava/lang/String;
    .locals 6
    .param p0, "line"    # Lar/com/hjg/pngj/v;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->e:I

    if-ne v0, v4, :cond_0

    const-string v0, "first=(%d) last=(%d)"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lar/com/hjg/pngj/v;->b:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lar/com/hjg/pngj/v;->b:[I

    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "first=(%d %d %d) last=(%d %d %d)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lar/com/hjg/pngj/v;->b:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lar/com/hjg/pngj/v;->b:[I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lar/com/hjg/pngj/v;->b:[I

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    iget-object v4, p0, Lar/com/hjg/pngj/v;->b:[I

    array-length v4, v4

    iget-object v5, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v5, v5, Lar/com/hjg/pngj/s;->e:I

    sub-int/2addr v4, v5

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    iget-object v4, p0, Lar/com/hjg/pngj/v;->b:[I

    array-length v4, v4

    iget-object v5, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v5, v5, Lar/com/hjg/pngj/s;->e:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    iget-object v4, p0, Lar/com/hjg/pngj/v;->b:[I

    array-length v4, v4

    iget-object v5, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v5, v5, Lar/com/hjg/pngj/s;->e:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 28
    new-array v1, v4, [I

    sput-object v1, Lar/com/hjg/pngj/u;->a:[I

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 30
    sget-object v1, Lar/com/hjg/pngj/u;->a:[I

    mul-int/lit16 v2, v0, 0xff

    aput v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    new-array v1, v5, [I

    sput-object v1, Lar/com/hjg/pngj/u;->b:[I

    .line 32
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 33
    sget-object v1, Lar/com/hjg/pngj/u;->b:[I

    mul-int/lit16 v2, v0, 0xff

    div-int/lit8 v2, v2, 0x3

    aput v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_1
    new-array v1, v3, [I

    sput-object v1, Lar/com/hjg/pngj/u;->c:[I

    .line 35
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    .line 36
    sget-object v1, Lar/com/hjg/pngj/u;->c:[I

    mul-int/lit16 v2, v0, 0xff

    div-int/lit8 v2, v2, 0xf

    aput v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 37
    :cond_2
    const/4 v1, 0x5

    new-array v1, v1, [[I

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lar/com/hjg/pngj/u;->a:[I

    aput-object v3, v1, v2

    sget-object v2, Lar/com/hjg/pngj/u;->b:[I

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v6, v1, v2

    sget-object v2, Lar/com/hjg/pngj/u;->c:[I

    aput-object v2, v1, v5

    sput-object v1, Lar/com/hjg/pngj/u;->d:[[I

    .line 38
    return-void
.end method

.method public static a(Lar/com/hjg/pngj/m;)V
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/m;

    .prologue
    .line 45
    invoke-interface {p0}, Lar/com/hjg/pngj/m;->b()Lar/com/hjg/pngj/s;

    move-result-object v3

    iget-boolean v3, v3, Lar/com/hjg/pngj/s;->h:Z

    if-nez v3, :cond_0

    invoke-interface {p0}, Lar/com/hjg/pngj/m;->b()Lar/com/hjg/pngj/s;

    move-result-object v3

    iget v3, v3, Lar/com/hjg/pngj/s;->d:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 58
    :cond_0
    return-void

    .line 47
    :cond_1
    sget-object v3, Lar/com/hjg/pngj/u;->d:[[I

    invoke-interface {p0}, Lar/com/hjg/pngj/m;->b()Lar/com/hjg/pngj/s;

    move-result-object v4

    iget v4, v4, Lar/com/hjg/pngj/s;->d:I

    aget-object v2, v3, v4

    .line 48
    .local v2, "scaleArray":[I
    instance-of v3, p0, Lar/com/hjg/pngj/v;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 49
    check-cast v1, Lar/com/hjg/pngj/v;

    .line 50
    .local v1, "iline":Lar/com/hjg/pngj/v;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lar/com/hjg/pngj/v;->d()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 51
    iget-object v3, v1, Lar/com/hjg/pngj/v;->b:[I

    iget-object v4, v1, Lar/com/hjg/pngj/v;->b:[I

    aget v4, v4, v0

    aget v4, v2, v4

    aput v4, v3, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    .end local v1    # "iline":Lar/com/hjg/pngj/v;
    :cond_2
    instance-of v3, p0, Lar/com/hjg/pngj/t;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 53
    check-cast v1, Lar/com/hjg/pngj/t;

    .line 54
    .local v1, "iline":Lar/com/hjg/pngj/t;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v1}, Lar/com/hjg/pngj/t;->d()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 55
    iget-object v3, v1, Lar/com/hjg/pngj/t;->b:[B

    iget-object v4, v1, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v4, v4, v0

    aget v4, v2, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "i":I
    .end local v1    # "iline":Lar/com/hjg/pngj/t;
    :cond_3
    new-instance v3, Lar/com/hjg/pngj/PngjException;

    const-string v4, "not implemented"

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static a(Lar/com/hjg/pngj/v;ID)V
    .locals 2
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "i"    # I
    .param p2, "d"    # D

    .prologue
    .line 408
    iget-object v0, p0, Lar/com/hjg/pngj/v;->b:[I

    invoke-static {p0, p2, p3}, Lar/com/hjg/pngj/u;->a(Lar/com/hjg/pngj/v;D)I

    move-result v1

    aput v1, v0, p1

    .line 409
    return-void
.end method

.method public static a(Lar/com/hjg/pngj/v;II)V
    .locals 3
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "col"    # I
    .param p2, "rgb"    # I

    .prologue
    .line 383
    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p2, 0xff

    invoke-static {p0, p1, v0, v1, v2}, Lar/com/hjg/pngj/u;->a(Lar/com/hjg/pngj/v;IIII)V

    .line 384
    return-void
.end method

.method public static a(Lar/com/hjg/pngj/v;IIII)V
    .locals 2
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "col"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 376
    iget-object v1, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->e:I

    mul-int/2addr p1, v1

    .line 377
    iget-object v1, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "col":I
    .local v0, "col":I
    aput p2, v1, p1

    .line 378
    iget-object v1, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "col":I
    .restart local p1    # "col":I
    aput p3, v1, v0

    .line 379
    iget-object v1, p0, Lar/com/hjg/pngj/v;->b:[I

    aput p4, v1, p1

    .line 380
    return-void
.end method

.method public static a(Lar/com/hjg/pngj/v;IIIII)V
    .locals 2
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "col"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I
    .param p5, "a"    # I

    .prologue
    .line 396
    iget-object v1, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->e:I

    mul-int/2addr p1, v1

    .line 397
    iget-object v1, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "col":I
    .local v0, "col":I
    aput p2, v1, p1

    .line 398
    iget-object v1, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "col":I
    .restart local p1    # "col":I
    aput p3, v1, v0

    .line 399
    iget-object v1, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "col":I
    .restart local v0    # "col":I
    aput p4, v1, p1

    .line 400
    iget-object v1, p0, Lar/com/hjg/pngj/v;->b:[I

    aput p5, v1, v0

    .line 401
    return-void
.end method

.method public static a(Lar/com/hjg/pngj/v;[I)V
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "rgb"    # [I

    .prologue
    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->b:I

    if-ge v0, v3, :cond_0

    .line 369
    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 370
    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 371
    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 368
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method

.method static a(Lar/com/hjg/pngj/t;Lar/com/hjg/pngj/chunks/w;Lar/com/hjg/pngj/chunks/ae;[B)[B
    .locals 16
    .param p0, "line"    # Lar/com/hjg/pngj/t;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/w;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/ae;
    .param p3, "buf"    # [B

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget-boolean v1, v13, Lar/com/hjg/pngj/s;->f:Z

    .line 144
    .local v1, "alphachannel":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v7, v13, Lar/com/hjg/pngj/s;->b:I

    .line 145
    .local v7, "cols":I
    mul-int/lit8 v4, v7, 0x4

    .line 146
    .local v4, "bytes":I
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v13, v4, :cond_1

    .line 147
    :cond_0
    new-array v0, v4, [B

    move-object/from16 p3, v0

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget-boolean v13, v13, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v13, :cond_4

    .line 151
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->m()[I

    move-result-object v13

    array-length v10, v13

    .line 152
    .local v10, "nindexesWithAlpha":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "c":I
    const/4 v2, 0x0

    .local v2, "b":I
    move v3, v2

    .end local v2    # "b":I
    .local v3, "b":I
    :goto_1
    if-ge v5, v7, :cond_9

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v13, v13, v5

    and-int/lit16 v9, v13, 0xff

    .line 154
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lar/com/hjg/pngj/chunks/w;->c(I)I

    move-result v11

    .line 155
    .local v11, "rgb":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    shr-int/lit8 v13, v11, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, p3, v3

    .line 156
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .restart local v3    # "b":I
    shr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, p3, v2

    .line 157
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    and-int/lit16 v13, v11, 0xff

    int-to-byte v13, v13

    aput-byte v13, p3, v3

    .line 158
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .restart local v3    # "b":I
    if-ge v9, v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->m()[I

    move-result-object v13

    aget v13, v13, v9

    :goto_2
    int-to-byte v13, v13

    aput-byte v13, p3, v2

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    .end local v3    # "b":I
    .end local v5    # "c":I
    .end local v9    # "index":I
    .end local v10    # "nindexesWithAlpha":I
    .end local v11    # "rgb":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 158
    .restart local v3    # "b":I
    .restart local v5    # "c":I
    .restart local v9    # "index":I
    .restart local v10    # "nindexesWithAlpha":I
    .restart local v11    # "rgb":I
    :cond_3
    const/16 v13, 0xff

    goto :goto_2

    .line 160
    .end local v3    # "b":I
    .end local v5    # "c":I
    .end local v9    # "index":I
    .end local v10    # "nindexesWithAlpha":I
    .end local v11    # "rgb":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget-boolean v13, v13, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v13, :cond_8

    .line 161
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->l()I

    move-result v8

    .line 162
    .local v8, "ga":I
    :goto_3
    const/4 v5, 0x0

    .restart local v5    # "c":I
    const/4 v2, 0x0

    .restart local v2    # "b":I
    move v3, v2

    .end local v2    # "b":I
    .restart local v3    # "b":I
    move v6, v5

    .end local v5    # "c":I
    .local v6, "c":I
    :goto_4
    if-ge v3, v4, :cond_9

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "c":I
    .restart local v5    # "c":I
    aget-byte v12, v13, v6

    .line 164
    .local v12, "val":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    aput-byte v12, p3, v3

    .line 165
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .restart local v3    # "b":I
    aput-byte v12, p3, v2

    .line 166
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    aput-byte v12, p3, v3

    .line 167
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .restart local v3    # "b":I
    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "c":I
    .restart local v6    # "c":I
    aget-byte v13, v13, v5

    move v5, v6

    .end local v6    # "c":I
    .restart local v5    # "c":I
    :goto_5
    aput-byte v13, p3, v2

    move v6, v5

    .end local v5    # "c":I
    .restart local v6    # "c":I
    goto :goto_4

    .line 161
    .end local v3    # "b":I
    .end local v6    # "c":I
    .end local v8    # "ga":I
    .end local v12    # "val":B
    :cond_5
    const/4 v8, -0x1

    goto :goto_3

    .line 167
    .restart local v3    # "b":I
    .restart local v5    # "c":I
    .restart local v8    # "ga":I
    .restart local v12    # "val":B
    :cond_6
    and-int/lit16 v13, v12, 0xff

    if-ne v13, v8, :cond_7

    const/4 v13, 0x0

    goto :goto_5

    :cond_7
    const/4 v13, -0x1

    goto :goto_5

    .line 171
    .end local v3    # "b":I
    .end local v5    # "c":I
    .end local v8    # "ga":I
    .end local v12    # "val":B
    :cond_8
    if-eqz v1, :cond_a

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->b:[B

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-static {v13, v14, v0, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :cond_9
    return-object p3

    .line 174
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "c":I
    const/4 v2, 0x0

    .restart local v2    # "b":I
    move v3, v2

    .end local v2    # "b":I
    .restart local v3    # "b":I
    move v6, v5

    .end local v5    # "c":I
    .restart local v6    # "c":I
    :goto_6
    if-ge v3, v4, :cond_9

    .line 175
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "c":I
    .restart local v5    # "c":I
    aget-byte v13, v13, v6

    aput-byte v13, p3, v3

    .line 176
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .restart local v3    # "b":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "c":I
    .restart local v6    # "c":I
    aget-byte v13, v13, v5

    aput-byte v13, p3, v2

    .line 177
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "c":I
    .restart local v5    # "c":I
    aget-byte v13, v13, v6

    aput-byte v13, p3, v3

    .line 178
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .restart local v3    # "b":I
    const/4 v13, -0x1

    aput-byte v13, p3, v2

    .line 179
    if-eqz p2, :cond_b

    add-int/lit8 v13, v3, -0x3

    aget-byte v13, p3, v13

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->j()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-byte v14, v14

    if-ne v13, v14, :cond_b

    add-int/lit8 v13, v3, -0x2

    aget-byte v13, p3, v13

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->j()[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-byte v14, v14

    if-ne v13, v14, :cond_b

    add-int/lit8 v13, v3, -0x1

    aget-byte v13, p3, v13

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->j()[I

    move-result-object v14

    const/4 v15, 0x2

    aget v14, v14, v15

    int-to-byte v14, v14

    if-ne v13, v14, :cond_b

    .line 186
    add-int/lit8 v13, v3, -0x1

    const/4 v14, 0x0

    aput-byte v14, p3, v13

    move v6, v5

    .end local v5    # "c":I
    .restart local v6    # "c":I
    goto :goto_6

    .end local v6    # "c":I
    .restart local v5    # "c":I
    :cond_b
    move v6, v5

    .end local v5    # "c":I
    .restart local v6    # "c":I
    goto :goto_6
.end method

.method static a(Lar/com/hjg/pngj/t;Lar/com/hjg/pngj/chunks/w;[B)[B
    .locals 11
    .param p0, "line"    # Lar/com/hjg/pngj/t;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/w;
    .param p2, "buf"    # [B

    .prologue
    const/4 v10, 0x0

    .line 194
    iget-object v9, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget-boolean v0, v9, Lar/com/hjg/pngj/s;->f:Z

    .line 195
    .local v0, "alphachannel":Z
    iget-object v9, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v6, v9, Lar/com/hjg/pngj/s;->b:I

    .line 196
    .local v6, "cols":I
    mul-int/lit8 v3, v6, 0x3

    .line 197
    .local v3, "bytes":I
    if-eqz p2, :cond_0

    array-length v9, p2

    if-ge v9, v3, :cond_1

    .line 198
    :cond_0
    new-array p2, v3, [B

    .line 200
    :cond_1
    const/4 v9, 0x3

    new-array v7, v9, [I

    .line 201
    .local v7, "rgb":[I
    iget-object v9, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget-boolean v9, v9, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v9, :cond_2

    .line 202
    const/4 v4, 0x0

    .local v4, "c":I
    const/4 v1, 0x0

    .local v1, "b":I
    move v2, v1

    .end local v1    # "b":I
    .local v2, "b":I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 203
    iget-object v9, p0, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v9, v9, v4

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {p1, v9, v7}, Lar/com/hjg/pngj/chunks/w;->a(I[I)V

    .line 204
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "b":I
    .restart local v1    # "b":I
    aget v9, v7, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v2

    .line 205
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "b":I
    .restart local v2    # "b":I
    const/4 v9, 0x1

    aget v9, v7, v9

    int-to-byte v9, v9

    aput-byte v9, p2, v1

    .line 206
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "b":I
    .restart local v1    # "b":I
    const/4 v9, 0x2

    aget v9, v7, v9

    int-to-byte v9, v9

    aput-byte v9, p2, v2

    .line 202
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "b":I
    .restart local v2    # "b":I
    goto :goto_0

    .line 208
    .end local v2    # "b":I
    .end local v4    # "c":I
    :cond_2
    iget-object v9, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget-boolean v9, v9, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v9, :cond_3

    .line 209
    const/4 v4, 0x0

    .restart local v4    # "c":I
    const/4 v1, 0x0

    .restart local v1    # "b":I
    move v2, v1

    .end local v1    # "b":I
    .restart local v2    # "b":I
    move v5, v4

    .end local v4    # "c":I
    .local v5, "c":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 210
    iget-object v9, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "c":I
    .restart local v4    # "c":I
    aget-byte v8, v9, v5

    .line 211
    .local v8, "val":B
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "b":I
    .restart local v1    # "b":I
    aput-byte v8, p2, v2

    .line 212
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "b":I
    .restart local v2    # "b":I
    aput-byte v8, p2, v1

    .line 213
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "b":I
    .restart local v1    # "b":I
    aput-byte v8, p2, v2

    .line 214
    if-eqz v0, :cond_6

    .line 215
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "b":I
    .restart local v2    # "b":I
    move v5, v4

    .end local v4    # "c":I
    .restart local v5    # "c":I
    goto :goto_1

    .line 218
    .end local v2    # "b":I
    .end local v5    # "c":I
    .end local v8    # "val":B
    :cond_3
    if-nez v0, :cond_5

    .line 219
    iget-object v9, p0, Lar/com/hjg/pngj/t;->b:[B

    invoke-static {v9, v10, p2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :cond_4
    return-object p2

    .line 221
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "c":I
    const/4 v1, 0x0

    .restart local v1    # "b":I
    move v2, v1

    .end local v1    # "b":I
    .restart local v2    # "b":I
    move v5, v4

    .end local v4    # "c":I
    .restart local v5    # "c":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 222
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "b":I
    .restart local v1    # "b":I
    iget-object v9, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "c":I
    .restart local v4    # "c":I
    aget-byte v9, v9, v5

    aput-byte v9, p2, v2

    .line 223
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "b":I
    .restart local v2    # "b":I
    iget-object v9, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "c":I
    .restart local v5    # "c":I
    aget-byte v9, v9, v4

    aput-byte v9, p2, v1

    .line 224
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "b":I
    .restart local v1    # "b":I
    iget-object v9, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "c":I
    .restart local v4    # "c":I
    aget-byte v9, v9, v5

    aput-byte v9, p2, v2

    .line 225
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "b":I
    .restart local v2    # "b":I
    move v5, v4

    .end local v4    # "c":I
    .restart local v5    # "c":I
    goto :goto_2

    .end local v2    # "b":I
    .end local v5    # "c":I
    .restart local v1    # "b":I
    .restart local v4    # "c":I
    .restart local v8    # "val":B
    :cond_6
    move v2, v1

    .end local v1    # "b":I
    .restart local v2    # "b":I
    move v5, v4

    .end local v4    # "c":I
    .restart local v5    # "c":I
    goto :goto_1
.end method

.method private static a(Lar/com/hjg/pngj/l;Lar/com/hjg/pngj/chunks/w;Lar/com/hjg/pngj/chunks/ae;[IZ)[I
    .locals 12
    .param p0, "line"    # Lar/com/hjg/pngj/l;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/w;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/ae;
    .param p3, "buf"    # [I
    .param p4, "alphaForced"    # Z

    .prologue
    .line 298
    if-eqz p2, :cond_3

    const/4 v5, 0x1

    .line 299
    .local v5, "isalpha":Z
    :goto_0
    if-eqz v5, :cond_4

    const/4 v2, 0x4

    .line 300
    .local v2, "channels":I
    :goto_1
    instance-of v11, p0, Lar/com/hjg/pngj/v;

    if-eqz v11, :cond_5

    move-object v11, p0

    :goto_2
    check-cast v11, Lar/com/hjg/pngj/v;

    move-object v8, v11

    check-cast v8, Lar/com/hjg/pngj/v;

    .line 301
    .local v8, "linei":Lar/com/hjg/pngj/v;
    instance-of v11, p0, Lar/com/hjg/pngj/t;

    if-eqz v11, :cond_6

    move-object v11, p0

    :goto_3
    check-cast v11, Lar/com/hjg/pngj/t;

    move-object v7, v11

    check-cast v7, Lar/com/hjg/pngj/t;

    .line 302
    .local v7, "lineb":Lar/com/hjg/pngj/t;
    if-eqz v7, :cond_7

    const/4 v6, 0x1

    .line 303
    .local v6, "isbyte":Z
    :goto_4
    if-eqz v8, :cond_8

    iget-object v11, v8, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v3, v11, Lar/com/hjg/pngj/s;->b:I

    .line 304
    .local v3, "cols":I
    :goto_5
    mul-int v10, v3, v2

    .line 305
    .local v10, "nsamples":I
    if-eqz p3, :cond_0

    array-length v11, p3

    if-ge v11, v10, :cond_1

    .line 306
    :cond_0
    new-array p3, v10, [I

    .line 307
    :cond_1
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/ae;->m()[I

    move-result-object v11

    array-length v9, v11

    .line 308
    .local v9, "nindexesWithAlpha":I
    :goto_6
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_7
    if-ge v1, v3, :cond_c

    .line 309
    if-eqz v6, :cond_a

    iget-object v11, v7, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v11, v11, v1

    and-int/lit16 v4, v11, 0xff

    .line 310
    .local v4, "index":I
    :goto_8
    mul-int v11, v1, v2

    invoke-virtual {p1, v4, p3, v11}, Lar/com/hjg/pngj/chunks/w;->a(I[II)V

    .line 311
    if-eqz v5, :cond_2

    .line 312
    if-ge v4, v9, :cond_b

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/ae;->m()[I

    move-result-object v11

    aget v0, v11, v4

    .line 313
    .local v0, "alpha":I
    :goto_9
    mul-int v11, v1, v2

    add-int/lit8 v11, v11, 0x3

    aput v0, p3, v11

    .line 308
    .end local v0    # "alpha":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 298
    .end local v1    # "c":I
    .end local v2    # "channels":I
    .end local v3    # "cols":I
    .end local v4    # "index":I
    .end local v5    # "isalpha":Z
    .end local v6    # "isbyte":Z
    .end local v7    # "lineb":Lar/com/hjg/pngj/t;
    .end local v8    # "linei":Lar/com/hjg/pngj/v;
    .end local v9    # "nindexesWithAlpha":I
    .end local v10    # "nsamples":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 299
    .restart local v5    # "isalpha":Z
    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    .line 300
    .restart local v2    # "channels":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 301
    .restart local v8    # "linei":Lar/com/hjg/pngj/v;
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 302
    .restart local v7    # "lineb":Lar/com/hjg/pngj/t;
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 303
    .restart local v6    # "isbyte":Z
    :cond_8
    iget-object v11, v7, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v3, v11, Lar/com/hjg/pngj/s;->b:I

    goto :goto_5

    .line 307
    .restart local v3    # "cols":I
    .restart local v10    # "nsamples":I
    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    .line 309
    .restart local v1    # "c":I
    .restart local v9    # "nindexesWithAlpha":I
    :cond_a
    iget-object v11, v8, Lar/com/hjg/pngj/v;->b:[I

    aget v4, v11, v1

    goto :goto_8

    .line 312
    .restart local v4    # "index":I
    :cond_b
    const/16 v0, 0xff

    goto :goto_9

    .line 316
    .end local v4    # "index":I
    :cond_c
    return-object p3
.end method

.method public static a(Lar/com/hjg/pngj/m;Lar/com/hjg/pngj/chunks/w;Lar/com/hjg/pngj/chunks/ae;[I)[I
    .locals 14
    .param p0, "line"    # Lar/com/hjg/pngj/m;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/w;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/ae;
    .param p3, "buf"    # [I

    .prologue
    .line 252
    invoke-interface {p0}, Lar/com/hjg/pngj/m;->b()Lar/com/hjg/pngj/s;

    move-result-object v3

    .line 253
    .local v3, "imi":Lar/com/hjg/pngj/s;
    iget v12, v3, Lar/com/hjg/pngj/s;->b:I

    mul-int/lit8 v6, v12, 0x4

    .line 254
    .local v6, "nsamples":I
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v12, v6, :cond_1

    .line 255
    :cond_0
    new-array v0, v6, [I

    move-object/from16 p3, v0

    .line 256
    :cond_1
    iget v12, v3, Lar/com/hjg/pngj/s;->d:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_3

    const v5, 0xffff

    .line 257
    .local v5, "maxval":I
    :goto_0
    move-object/from16 v0, p3

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([II)V

    .line 259
    iget-boolean v12, v3, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v12, :cond_5

    .line 260
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->m()[I

    move-result-object v12

    array-length v10, v12

    .line 261
    .local v10, "tlen":I
    :goto_1
    const/4 v8, 0x0

    .local v8, "s":I
    :goto_2
    iget v12, v3, Lar/com/hjg/pngj/s;->b:I

    if-ge v8, v12, :cond_c

    .line 262
    invoke-interface {p0, v8}, Lar/com/hjg/pngj/m;->a(I)I

    move-result v4

    .line 263
    .local v4, "index":I
    mul-int/lit8 v12, v8, 0x4

    move-object/from16 v0, p3

    invoke-virtual {p1, v4, v0, v12}, Lar/com/hjg/pngj/chunks/w;->a(I[II)V

    .line 264
    if-ge v4, v10, :cond_2

    .line 265
    mul-int/lit8 v12, v8, 0x4

    add-int/lit8 v12, v12, 0x3

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->m()[I

    move-result-object v13

    aget v13, v13, v4

    aput v13, p3, v12

    .line 261
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 256
    .end local v4    # "index":I
    .end local v5    # "maxval":I
    .end local v8    # "s":I
    .end local v10    # "tlen":I
    :cond_3
    const/16 v5, 0xff

    goto :goto_0

    .line 260
    .restart local v5    # "maxval":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 268
    :cond_5
    iget-boolean v12, v3, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v12, :cond_a

    .line 269
    const/4 v11, 0x0

    .line 270
    .local v11, "unpack":[I
    iget v12, v3, Lar/com/hjg/pngj/s;->d:I

    const/16 v13, 0x8

    if-ge v12, v13, :cond_6

    .line 271
    sget-object v12, Lar/com/hjg/pngj/u;->d:[[I

    iget v13, v3, Lar/com/hjg/pngj/s;->d:I

    aget-object v11, v12, v13

    .line 272
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_3
    iget v12, v3, Lar/com/hjg/pngj/s;->b:I

    if-ge v7, v12, :cond_c

    .line 273
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "s":I
    .local v9, "s":I
    if-eqz v11, :cond_7

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p0, v1}, Lar/com/hjg/pngj/m;->a(I)I

    move-result v12

    aget v12, v11, v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_4
    aput v12, p3, v8

    .line 274
    add-int/lit8 v12, v9, -0x1

    aget v12, p3, v12

    aput v12, p3, v9

    .line 275
    add-int/lit8 v8, v9, 0x1

    .line 276
    .end local v9    # "s":I
    .restart local v8    # "s":I
    add-int/lit8 v12, v8, -0x1

    aget v12, p3, v12

    aput v12, p3, v8

    .line 277
    add-int/lit8 v8, v8, 0x1

    .line 278
    iget v12, v3, Lar/com/hjg/pngj/s;->e:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_9

    .line 279
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "s":I
    .restart local v9    # "s":I
    if-eqz v11, :cond_8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Lar/com/hjg/pngj/m;->a(I)I

    move-result v12

    aget v12, v11, v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_5
    aput v12, p3, v8

    move v8, v9

    .line 272
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 273
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_7
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Lar/com/hjg/pngj/m;->a(I)I

    move-result v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 279
    :cond_8
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Lar/com/hjg/pngj/m;->a(I)I

    move-result v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_5

    .line 281
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_9
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "s":I
    .restart local v9    # "s":I
    aput v5, p3, v8

    move v8, v9

    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_6

    .line 284
    .end local v1    # "i":I
    .end local v7    # "p":I
    .end local v8    # "s":I
    .end local v11    # "unpack":[I
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "s":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    const/4 v7, 0x0

    .restart local v7    # "p":I
    :goto_7
    iget v12, v3, Lar/com/hjg/pngj/s;->b:I

    if-ge v7, v12, :cond_c

    .line 285
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "s":I
    .restart local v9    # "s":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Lar/com/hjg/pngj/m;->a(I)I

    move-result v12

    aput v12, p3, v8

    .line 286
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-interface {p0, v2}, Lar/com/hjg/pngj/m;->a(I)I

    move-result v12

    aput v12, p3, v9

    .line 287
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "s":I
    .restart local v9    # "s":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Lar/com/hjg/pngj/m;->a(I)I

    move-result v12

    aput v12, p3, v8

    .line 288
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    iget-boolean v12, v3, Lar/com/hjg/pngj/s;->f:Z

    if-eqz v12, :cond_b

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-interface {p0, v2}, Lar/com/hjg/pngj/m;->a(I)I

    move-result v12

    :goto_8
    aput v12, p3, v9

    .line 284
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_b
    move v12, v5

    move v1, v2

    .line 288
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_8

    .line 291
    .end local v1    # "i":I
    .end local v7    # "p":I
    :cond_c
    return-object p3
.end method

.method static a(Lar/com/hjg/pngj/t;Lar/com/hjg/pngj/chunks/w;Lar/com/hjg/pngj/chunks/ae;[I)[I
    .locals 14
    .param p0, "line"    # Lar/com/hjg/pngj/t;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/w;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/ae;
    .param p3, "buf"    # [I

    .prologue
    .line 106
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget-boolean v2, v12, Lar/com/hjg/pngj/s;->f:Z

    .line 107
    .local v2, "alphachannel":Z
    invoke-virtual {p0}, Lar/com/hjg/pngj/t;->b()Lar/com/hjg/pngj/s;

    move-result-object v12

    iget v6, v12, Lar/com/hjg/pngj/s;->b:I

    .line 108
    .local v6, "cols":I
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v12, v6, :cond_1

    .line 109
    :cond_0
    new-array v0, v6, [I

    move-object/from16 p3, v0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lar/com/hjg/pngj/t;->b()Lar/com/hjg/pngj/s;

    move-result-object v12

    iget-boolean v12, v12, Lar/com/hjg/pngj/s;->h:Z

    if-eqz v12, :cond_4

    .line 112
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->m()[I

    move-result-object v12

    array-length v10, v12

    .line 113
    .local v10, "nindexesWithAlpha":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    if-ge v3, v6, :cond_c

    .line 114
    iget-object v12, p0, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v12, v12, v3

    and-int/lit16 v9, v12, 0xff

    .line 115
    .local v9, "index":I
    invoke-virtual {p1, v9}, Lar/com/hjg/pngj/chunks/w;->c(I)I

    move-result v11

    .line 116
    .local v11, "rgb":I
    if-ge v9, v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->m()[I

    move-result-object v12

    aget v1, v12, v9

    .line 117
    .local v1, "alpha":I
    :goto_2
    shl-int/lit8 v12, v1, 0x18

    or-int/2addr v12, v11

    aput v12, p3, v3

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    .end local v1    # "alpha":I
    .end local v3    # "c":I
    .end local v9    # "index":I
    .end local v10    # "nindexesWithAlpha":I
    .end local v11    # "rgb":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 116
    .restart local v3    # "c":I
    .restart local v9    # "index":I
    .restart local v10    # "nindexesWithAlpha":I
    .restart local v11    # "rgb":I
    :cond_3
    const/16 v1, 0xff

    goto :goto_2

    .line 119
    .end local v3    # "c":I
    .end local v9    # "index":I
    .end local v10    # "nindexesWithAlpha":I
    .end local v11    # "rgb":I
    :cond_4
    iget-object v12, p0, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget-boolean v12, v12, Lar/com/hjg/pngj/s;->g:Z

    if-eqz v12, :cond_8

    .line 120
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->l()I

    move-result v8

    .line 121
    .local v8, "ga":I
    :goto_3
    const/4 v3, 0x0

    .restart local v3    # "c":I
    const/4 v4, 0x0

    .local v4, "c2":I
    move v5, v4

    .end local v4    # "c2":I
    .local v5, "c2":I
    :goto_4
    if-ge v3, v6, :cond_c

    .line 122
    iget-object v12, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "c2":I
    .restart local v4    # "c2":I
    aget-byte v12, v12, v5

    and-int/lit16 v7, v12, 0xff

    .line 123
    .local v7, "g":I
    if-eqz v2, :cond_6

    iget-object v12, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "c2":I
    .restart local v5    # "c2":I
    aget-byte v12, v12, v4

    and-int/lit16 v1, v12, 0xff

    move v4, v5

    .line 124
    .end local v5    # "c2":I
    .restart local v1    # "alpha":I
    .restart local v4    # "c2":I
    :goto_5
    shl-int/lit8 v12, v1, 0x18

    or-int/2addr v12, v7

    shl-int/lit8 v13, v7, 0x8

    or-int/2addr v12, v13

    shl-int/lit8 v13, v7, 0x10

    or-int/2addr v12, v13

    aput v12, p3, v3

    .line 121
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "c2":I
    .restart local v5    # "c2":I
    goto :goto_4

    .line 120
    .end local v1    # "alpha":I
    .end local v3    # "c":I
    .end local v5    # "c2":I
    .end local v7    # "g":I
    .end local v8    # "ga":I
    :cond_5
    const/4 v8, -0x1

    goto :goto_3

    .line 123
    .restart local v3    # "c":I
    .restart local v4    # "c2":I
    .restart local v7    # "g":I
    .restart local v8    # "ga":I
    :cond_6
    if-eq v7, v8, :cond_7

    const/16 v1, 0xff

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .line 127
    .end local v3    # "c":I
    .end local v4    # "c2":I
    .end local v7    # "g":I
    .end local v8    # "ga":I
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/ae;->k()I

    move-result v8

    .line 128
    .restart local v8    # "ga":I
    :goto_6
    const/4 v3, 0x0

    .restart local v3    # "c":I
    const/4 v4, 0x0

    .restart local v4    # "c2":I
    move v5, v4

    .end local v4    # "c2":I
    .restart local v5    # "c2":I
    :goto_7
    if-ge v3, v6, :cond_c

    .line 129
    iget-object v12, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "c2":I
    .restart local v4    # "c2":I
    aget-byte v12, v12, v5

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    iget-object v13, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "c2":I
    .restart local v5    # "c2":I
    aget-byte v13, v13, v4

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    iget-object v13, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "c2":I
    .restart local v4    # "c2":I
    aget-byte v13, v13, v5

    and-int/lit16 v13, v13, 0xff

    or-int v11, v12, v13

    .line 132
    .restart local v11    # "rgb":I
    if-eqz v2, :cond_a

    iget-object v12, p0, Lar/com/hjg/pngj/t;->b:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "c2":I
    .restart local v5    # "c2":I
    aget-byte v12, v12, v4

    and-int/lit16 v1, v12, 0xff

    move v4, v5

    .line 133
    .end local v5    # "c2":I
    .restart local v1    # "alpha":I
    .restart local v4    # "c2":I
    :goto_8
    shl-int/lit8 v12, v1, 0x18

    or-int/2addr v12, v11

    aput v12, p3, v3

    .line 128
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "c2":I
    .restart local v5    # "c2":I
    goto :goto_7

    .line 127
    .end local v1    # "alpha":I
    .end local v3    # "c":I
    .end local v5    # "c2":I
    .end local v8    # "ga":I
    .end local v11    # "rgb":I
    :cond_9
    const/4 v8, -0x1

    goto :goto_6

    .line 132
    .restart local v3    # "c":I
    .restart local v4    # "c2":I
    .restart local v8    # "ga":I
    .restart local v11    # "rgb":I
    :cond_a
    if-eq v11, v8, :cond_b

    const/16 v1, 0xff

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    goto :goto_8

    .line 136
    .end local v4    # "c2":I
    .end local v8    # "ga":I
    .end local v11    # "rgb":I
    :cond_c
    return-object p3
.end method

.method public static a(Lar/com/hjg/pngj/v;Lar/com/hjg/pngj/chunks/w;Lar/com/hjg/pngj/chunks/ae;[I)[I
    .locals 1
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/w;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/ae;
    .param p3, "buf"    # [I

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lar/com/hjg/pngj/u;->a(Lar/com/hjg/pngj/l;Lar/com/hjg/pngj/chunks/w;Lar/com/hjg/pngj/chunks/ae;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static a(Lar/com/hjg/pngj/v;Lar/com/hjg/pngj/chunks/w;[I)[I
    .locals 2
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/w;
    .param p2, "buf"    # [I

    .prologue
    .line 246
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lar/com/hjg/pngj/u;->a(Lar/com/hjg/pngj/l;Lar/com/hjg/pngj/chunks/w;Lar/com/hjg/pngj/chunks/ae;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static b(IB)B
    .locals 1
    .param p0, "bitdepth"    # I
    .param p1, "v"    # B

    .prologue
    .line 86
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    rsub-int/lit8 v0, p0, 0x8

    shr-int v0, p1, v0

    int-to-byte p1, v0

    .end local p1    # "v":B
    :cond_0
    return p1
.end method

.method public static b(Lar/com/hjg/pngj/v;I)D
    .locals 10
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "p"    # I

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 426
    iget-object v6, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v6, v6, Lar/com/hjg/pngj/s;->d:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    int-to-double v6, p1

    const-wide v8, 0x40efffe000000000L    # 65535.0

    div-double v0, v6, v8

    .line 427
    .local v0, "d":D
    :goto_0
    cmpg-double v6, v0, v2

    if-gtz v6, :cond_2

    move-wide v0, v2

    .end local v0    # "d":D
    :cond_0
    :goto_1
    return-wide v0

    .line 426
    :cond_1
    int-to-double v6, p1

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double v0, v6, v8

    goto :goto_0

    .line 427
    .restart local v0    # "d":D
    :cond_2
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_0

    move-wide v0, v4

    goto :goto_1
.end method

.method public static b(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    const v0, 0xffff

    .line 445
    if-le p0, v0, :cond_1

    move p0, v0

    .end local p0    # "i":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "i":I
    :cond_1
    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static b(Lar/com/hjg/pngj/l;I)I
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/l;
    .param p1, "column"    # I

    .prologue
    .line 353
    instance-of v2, p0, Lar/com/hjg/pngj/v;

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 354
    check-cast v2, Lar/com/hjg/pngj/v;

    iget-object v2, v2, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->e:I

    mul-int v0, p1, v2

    .line 355
    .local v0, "offset":I
    check-cast p0, Lar/com/hjg/pngj/v;

    .end local p0    # "line":Lar/com/hjg/pngj/l;
    invoke-virtual {p0}, Lar/com/hjg/pngj/v;->f()[I

    move-result-object v1

    .line 356
    .local v1, "scanline":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    aget v3, v1, v0

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget v3, v1, v3

    or-int/2addr v2, v3

    .line 361
    .end local v1    # "scanline":[I
    :goto_0
    return v2

    .line 358
    .end local v0    # "offset":I
    .restart local p0    # "line":Lar/com/hjg/pngj/l;
    :cond_0
    instance-of v2, p0, Lar/com/hjg/pngj/t;

    if-eqz v2, :cond_1

    move-object v2, p0

    .line 359
    check-cast v2, Lar/com/hjg/pngj/t;

    iget-object v2, v2, Lar/com/hjg/pngj/t;->a:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->e:I

    mul-int v0, p1, v2

    .line 360
    .restart local v0    # "offset":I
    check-cast p0, Lar/com/hjg/pngj/t;

    .end local p0    # "line":Lar/com/hjg/pngj/l;
    invoke-virtual {p0}, Lar/com/hjg/pngj/t;->i()[B

    move-result-object v1

    .line 361
    .local v1, "scanline":[B
    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    goto :goto_0

    .line 364
    .end local v0    # "offset":I
    .end local v1    # "scanline":[B
    .restart local p0    # "line":Lar/com/hjg/pngj/l;
    :cond_1
    new-instance v2, Lar/com/hjg/pngj/PngjException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static b(Lar/com/hjg/pngj/v;D)I
    .locals 9
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "d"    # D

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/16 v0, 0x0

    .line 436
    cmpg-double v4, p1, v0

    if-gtz v4, :cond_1

    move-wide p1, v0

    .line 437
    :cond_0
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v0, v0, Lar/com/hjg/pngj/s;->d:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const-wide v0, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v0, p1

    add-double/2addr v0, v6

    double-to-int v0, v0

    :goto_1
    return v0

    .line 436
    :cond_1
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_0

    move-wide p1, v2

    goto :goto_0

    .line 437
    :cond_2
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p1

    add-double/2addr v0, v6

    double-to-int v0, v0

    goto :goto_1
.end method

.method public static b(Lar/com/hjg/pngj/m;)V
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/m;

    .prologue
    .line 64
    invoke-interface {p0}, Lar/com/hjg/pngj/m;->b()Lar/com/hjg/pngj/s;

    move-result-object v3

    iget-boolean v3, v3, Lar/com/hjg/pngj/s;->h:Z

    if-nez v3, :cond_0

    invoke-interface {p0}, Lar/com/hjg/pngj/m;->b()Lar/com/hjg/pngj/s;

    move-result-object v3

    iget v3, v3, Lar/com/hjg/pngj/s;->d:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 79
    :cond_0
    return-void

    .line 66
    :cond_1
    instance-of v3, p0, Lar/com/hjg/pngj/v;

    if-eqz v3, :cond_3

    .line 67
    invoke-interface {p0}, Lar/com/hjg/pngj/m;->b()Lar/com/hjg/pngj/s;

    move-result-object v3

    iget v3, v3, Lar/com/hjg/pngj/s;->d:I

    rsub-int/lit8 v2, v3, 0x8

    .line 68
    .local v2, "scalefactor":I
    instance-of v3, p0, Lar/com/hjg/pngj/v;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 69
    check-cast v1, Lar/com/hjg/pngj/v;

    .line 70
    .local v1, "iline":Lar/com/hjg/pngj/v;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lar/com/hjg/pngj/m;->d()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 71
    iget-object v3, v1, Lar/com/hjg/pngj/v;->b:[I

    iget-object v4, v1, Lar/com/hjg/pngj/v;->b:[I

    aget v4, v4, v0

    shr-int/2addr v4, v2

    aput v4, v3, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    .end local v1    # "iline":Lar/com/hjg/pngj/v;
    :cond_2
    instance-of v3, p0, Lar/com/hjg/pngj/t;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 73
    check-cast v1, Lar/com/hjg/pngj/t;

    .line 74
    .local v1, "iline":Lar/com/hjg/pngj/t;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p0}, Lar/com/hjg/pngj/m;->d()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 75
    iget-object v3, v1, Lar/com/hjg/pngj/t;->b:[B

    iget-object v4, v1, Lar/com/hjg/pngj/t;->b:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "i":I
    .end local v1    # "iline":Lar/com/hjg/pngj/t;
    .end local v2    # "scalefactor":I
    :cond_3
    new-instance v3, Lar/com/hjg/pngj/PngjException;

    const-string v4, "not implemented"

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static b(Lar/com/hjg/pngj/v;II)V
    .locals 6
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "col"    # I
    .param p2, "rgb"    # I

    .prologue
    .line 404
    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v2, v0, 0xff

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v3, v0, 0xff

    and-int/lit16 v4, p2, 0xff

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v5, v0, 0xff

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lar/com/hjg/pngj/u;->a(Lar/com/hjg/pngj/v;IIIII)V

    .line 405
    return-void
.end method

.method public static b(Lar/com/hjg/pngj/v;[I)V
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "rgb"    # [I

    .prologue
    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lar/com/hjg/pngj/v;->a:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->b:I

    if-ge v0, v3, :cond_0

    .line 388
    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 389
    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 390
    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 391
    iget-object v3, p0, Lar/com/hjg/pngj/v;->b:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method public static b(Lar/com/hjg/pngj/v;Lar/com/hjg/pngj/chunks/w;Lar/com/hjg/pngj/chunks/ae;[I)[I
    .locals 1
    .param p0, "line"    # Lar/com/hjg/pngj/v;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/w;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/ae;
    .param p3, "buf"    # [I

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lar/com/hjg/pngj/u;->a(Lar/com/hjg/pngj/l;Lar/com/hjg/pngj/chunks/w;Lar/com/hjg/pngj/chunks/ae;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static c(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    const/16 v0, 0x7f

    const/16 v1, -0x80

    .line 449
    if-le p0, v0, :cond_1

    move p0, v0

    .end local p0    # "x":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "x":I
    :cond_1
    if-ge p0, v1, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method public static d(I)I
    .locals 1
    .param p0, "bitDepth"    # I

    .prologue
    .line 453
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 454
    const/16 v0, 0xf0

    .line 458
    :goto_0
    return v0

    .line 455
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 456
    const/16 v0, 0xc0

    goto :goto_0

    .line 458
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public static e(I)I
    .locals 1
    .param p0, "bitDepth"    # I

    .prologue
    .line 462
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 463
    const/16 v0, 0xf

    .line 467
    :goto_0
    return v0

    .line 464
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 465
    const/4 v0, 0x3

    goto :goto_0

    .line 467
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
