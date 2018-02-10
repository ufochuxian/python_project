.class public final Lcom/a/b/a;
.super Ljava/security/MessageDigest;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:J

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 108
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/b/a;->c:[B

    .line 109
    invoke-virtual {p0}, Lcom/a/b/a;->a()V

    .line 110
    return-void
.end method

.method private final a([BI)V
    .locals 26
    .param p1, "input"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 478
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/b/a;->e:I

    .local v3, "b":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/b/a;->f:I

    .local v5, "c":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/b/a;->g:I

    .local v6, "d":I
    xor-int v23, v5, v6

    and-int v23, v23, v3

    xor-int v23, v23, v6

    aget-byte v24, p1, p2

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x1

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x2

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x3

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v7, v24, v25

    .local v7, "i0":I
    add-int v23, v23, v7

    const v24, -0x28955b88

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/b/a;->d:I

    move/from16 v24, v0

    add-int v2, v23, v24

    .local v2, "a":I
    shl-int/lit8 v23, v2, 0x7

    ushr-int/lit8 v24, v2, 0x19

    or-int v23, v23, v24

    add-int v2, v3, v23

    xor-int v23, v3, v5

    and-int v23, v23, v2

    xor-int v23, v23, v5

    add-int/lit8 v24, p2, 0x4

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x5

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 p2, p2, 0xa

    add-int/lit8 v25, p2, -0x4

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, -0x3

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v8, v24, v25

    .local v8, "i1":I
    add-int v23, v23, v8

    const v24, -0x173848aa

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xc

    ushr-int/lit8 v24, v6, 0x14

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v3

    and-int v23, v23, v6

    xor-int v23, v23, v3

    add-int/lit8 v24, p2, -0x2

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, -0x1

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    aget-byte v25, p1, p2

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x1

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v9, v24, v25

    .local v9, "i2":I
    add-int v23, v23, v9

    const v24, 0x242070db

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0x11

    ushr-int/lit8 v24, v5, 0xf

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v2

    and-int v23, v23, v5

    xor-int v23, v23, v2

    add-int/lit8 v24, p2, 0x2

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x3

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x4

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x5

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v10, v24, v25

    .local v10, "i3":I
    add-int v23, v23, v10

    const v24, -0x3e423112

    add-int v23, v23, v24

    add-int v4, v23, v3

    .end local v3    # "b":I
    .local v4, "b":I
    shl-int/lit8 v23, v4, 0x16

    ushr-int/lit8 v24, v4, 0xa

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v6

    and-int v23, v23, v4

    xor-int v23, v23, v6

    add-int/lit8 p2, p2, 0xa

    add-int/lit8 v24, p2, -0x4

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, -0x3

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, -0x2

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, -0x1

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v11, v24, v25

    .local v11, "i4":I
    add-int v23, v23, v11

    const v24, -0xa83f051

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x7

    ushr-int/lit8 v24, v2, 0x19

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v5

    and-int v23, v23, v2

    xor-int v23, v23, v5

    aget-byte v24, p1, p2

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x1

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x2

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x3

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v12, v24, v25

    .local v12, "i5":I
    add-int v23, v23, v12

    const v24, 0x4787c62a

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xc

    ushr-int/lit8 v24, v6, 0x14

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v4

    and-int v23, v23, v6

    xor-int v23, v23, v4

    add-int/lit8 v24, p2, 0x4

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x5

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 p2, p2, 0xa

    add-int/lit8 v25, p2, -0x4

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, -0x3

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v13, v24, v25

    .local v13, "i6":I
    add-int v23, v23, v13

    const v24, -0x57cfb9ed

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0x11

    ushr-int/lit8 v24, v5, 0xf

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v2

    and-int v23, v23, v5

    xor-int v23, v23, v2

    add-int/lit8 v24, p2, -0x2

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, -0x1

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    aget-byte v25, p1, p2

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x1

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v14, v24, v25

    .local v14, "i7":I
    add-int v23, v23, v14

    const v24, -0x2b96aff

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x16

    ushr-int/lit8 v24, v4, 0xa

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v6

    and-int v23, v23, v4

    xor-int v23, v23, v6

    add-int/lit8 v24, p2, 0x2

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x3

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x4

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x5

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v15, v24, v25

    .local v15, "i8":I
    add-int v23, v23, v15

    const v24, 0x698098d8

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x7

    ushr-int/lit8 v24, v2, 0x19

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v5

    and-int v23, v23, v2

    xor-int v23, v23, v5

    add-int/lit8 p2, p2, 0xa

    add-int/lit8 v24, p2, -0x4

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, -0x3

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, -0x2

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, -0x1

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v16, v24, v25

    .local v16, "i9":I
    add-int v23, v23, v16

    const v24, -0x74bb0851

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xc

    ushr-int/lit8 v24, v6, 0x14

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v4

    and-int v23, v23, v6

    xor-int v23, v23, v4

    aget-byte v24, p1, p2

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x1

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x2

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x3

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v17, v24, v25

    .local v17, "iA":I
    add-int v23, v23, v17

    const v24, -0xa44f

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0x11

    ushr-int/lit8 v24, v5, 0xf

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v2

    and-int v23, v23, v5

    xor-int v23, v23, v2

    add-int/lit8 v24, p2, 0x4

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x5

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 p2, p2, 0xa

    add-int/lit8 v25, p2, -0x4

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, -0x3

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v18, v24, v25

    .local v18, "iB":I
    add-int v23, v23, v18

    const v24, -0x76a32842

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x16

    ushr-int/lit8 v24, v4, 0xa

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v6

    and-int v23, v23, v4

    xor-int v23, v23, v6

    add-int/lit8 v24, p2, -0x2

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, -0x1

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    aget-byte v25, p1, p2

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x1

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v19, v24, v25

    .local v19, "iC":I
    add-int v23, v23, v19

    const v24, 0x6b901122

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x7

    ushr-int/lit8 v24, v2, 0x19

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v5

    and-int v23, v23, v2

    xor-int v23, v23, v5

    add-int/lit8 v24, p2, 0x2

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x3

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x4

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x5

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v20, v24, v25

    .local v20, "iD":I
    add-int v23, v23, v20

    const v24, -0x2678e6d

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xc

    ushr-int/lit8 v24, v6, 0x14

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v4

    and-int v23, v23, v6

    xor-int v23, v23, v4

    add-int/lit8 p2, p2, 0xa

    add-int/lit8 v24, p2, -0x4

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, -0x3

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, -0x2

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, -0x1

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v21, v24, v25

    .local v21, "iE":I
    add-int v23, v23, v21

    const v24, -0x5986bc72

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0x11

    ushr-int/lit8 v24, v5, 0xf

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v2

    and-int v23, v23, v5

    xor-int v23, v23, v2

    aget-byte v24, p1, p2

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, p2, 0x1

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x2

    aget-byte v25, p1, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x10

    or-int v24, v24, v25

    add-int/lit8 v25, p2, 0x3

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x18

    or-int v22, v24, v25

    .local v22, "iF":I
    add-int v23, v23, v22

    const v24, 0x49b40821

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x16

    ushr-int/lit8 v24, v4, 0xa

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v4

    and-int v23, v23, v6

    xor-int v23, v23, v5

    add-int v23, v23, v8

    const v24, -0x9e1da9e

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x5

    ushr-int/lit8 v24, v2, 0x1b

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v2

    and-int v23, v23, v5

    xor-int v23, v23, v4

    add-int v23, v23, v13

    const v24, -0x3fbf4cc0

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0x9

    ushr-int/lit8 v24, v6, 0x17

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v6

    and-int v23, v23, v4

    xor-int v23, v23, v2

    add-int v23, v23, v18

    const v24, 0x265e5a51

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0xe

    ushr-int/lit8 v24, v5, 0x12

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v5

    and-int v23, v23, v2

    xor-int v23, v23, v6

    add-int v23, v23, v7

    const v24, -0x16493856

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x14

    ushr-int/lit8 v24, v4, 0xc

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v4

    and-int v23, v23, v6

    xor-int v23, v23, v5

    add-int v23, v23, v12

    const v24, -0x29d0efa3

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x5

    ushr-int/lit8 v24, v2, 0x1b

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v2

    and-int v23, v23, v5

    xor-int v23, v23, v4

    add-int v23, v23, v17

    const v24, 0x2441453

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0x9

    ushr-int/lit8 v24, v6, 0x17

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v6

    and-int v23, v23, v4

    xor-int v23, v23, v2

    add-int v23, v23, v22

    const v24, -0x275e197f

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0xe

    ushr-int/lit8 v24, v5, 0x12

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v5

    and-int v23, v23, v2

    xor-int v23, v23, v6

    add-int v23, v23, v11

    const v24, -0x182c0438

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x14

    ushr-int/lit8 v24, v4, 0xc

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v4

    and-int v23, v23, v6

    xor-int v23, v23, v5

    add-int v23, v23, v16

    const v24, 0x21e1cde6

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x5

    ushr-int/lit8 v24, v2, 0x1b

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v2

    and-int v23, v23, v5

    xor-int v23, v23, v4

    add-int v23, v23, v21

    const v24, -0x3cc8f82a

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0x9

    ushr-int/lit8 v24, v6, 0x17

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v6

    and-int v23, v23, v4

    xor-int v23, v23, v2

    add-int v23, v23, v10

    const v24, -0xb2af279

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0xe

    ushr-int/lit8 v24, v5, 0x12

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v5

    and-int v23, v23, v2

    xor-int v23, v23, v6

    add-int v23, v23, v15

    const v24, 0x455a14ed

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x14

    ushr-int/lit8 v24, v4, 0xc

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v4

    and-int v23, v23, v6

    xor-int v23, v23, v5

    add-int v23, v23, v20

    const v24, -0x561c16fb

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x5

    ushr-int/lit8 v24, v2, 0x1b

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v2

    and-int v23, v23, v5

    xor-int v23, v23, v4

    add-int v23, v23, v9

    const v24, -0x3105c08

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0x9

    ushr-int/lit8 v24, v6, 0x17

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v6

    and-int v23, v23, v4

    xor-int v23, v23, v2

    add-int v23, v23, v14

    const v24, 0x676f02d9

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0xe

    ushr-int/lit8 v24, v5, 0x12

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v5

    and-int v23, v23, v2

    xor-int v23, v23, v6

    add-int v23, v23, v19

    const v24, -0x72d5b376

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x14

    ushr-int/lit8 v24, v4, 0xc

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v4

    xor-int v23, v23, v6

    add-int v23, v23, v12

    const v24, -0x5c6be

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x4

    ushr-int/lit8 v24, v2, 0x1c

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v2

    xor-int v23, v23, v5

    add-int v23, v23, v15

    const v24, -0x788e097f

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xb

    ushr-int/lit8 v24, v6, 0x15

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v6

    xor-int v23, v23, v4

    add-int v23, v23, v18

    const v24, 0x6d9d6122

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0x10

    ushr-int/lit8 v24, v5, 0x10

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v5

    xor-int v23, v23, v2

    add-int v23, v23, v21

    const v24, -0x21ac7f4

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x17

    ushr-int/lit8 v24, v4, 0x9

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v4

    xor-int v23, v23, v6

    add-int v23, v23, v8

    const v24, -0x5b4115bc

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x4

    ushr-int/lit8 v24, v2, 0x1c

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v2

    xor-int v23, v23, v5

    add-int v23, v23, v11

    const v24, 0x4bdecfa9    # 2.9204306E7f

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xb

    ushr-int/lit8 v24, v6, 0x15

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v6

    xor-int v23, v23, v4

    add-int v23, v23, v14

    const v24, -0x944b4a0

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0x10

    ushr-int/lit8 v24, v5, 0x10

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v5

    xor-int v23, v23, v2

    add-int v23, v23, v17

    const v24, -0x41404390

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x17

    ushr-int/lit8 v24, v4, 0x9

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v4

    xor-int v23, v23, v6

    add-int v23, v23, v20

    const v24, 0x289b7ec6

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x4

    ushr-int/lit8 v24, v2, 0x1c

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v2

    xor-int v23, v23, v5

    add-int v23, v23, v7

    const v24, -0x155ed806

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xb

    ushr-int/lit8 v24, v6, 0x15

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v6

    xor-int v23, v23, v4

    add-int v23, v23, v10

    const v24, -0x2b10cf7b

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0x10

    ushr-int/lit8 v24, v5, 0x10

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v5

    xor-int v23, v23, v2

    add-int v23, v23, v13

    const v24, 0x4881d05    # 3.2000097E-36f

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x17

    ushr-int/lit8 v24, v4, 0x9

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int v23, v5, v4

    xor-int v23, v23, v6

    add-int v23, v23, v16

    const v24, -0x262b2fc7

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x4

    ushr-int/lit8 v24, v2, 0x1c

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int v23, v4, v2

    xor-int v23, v23, v5

    add-int v23, v23, v19

    const v24, -0x1924661b

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xb

    ushr-int/lit8 v24, v6, 0x15

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int v23, v2, v6

    xor-int v23, v23, v4

    add-int v23, v23, v22

    const v24, 0x1fa27cf8

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0x10

    ushr-int/lit8 v24, v5, 0x10

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int v23, v6, v5

    xor-int v23, v23, v2

    add-int v23, v23, v9

    const v24, -0x3b53a99b

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x17

    ushr-int/lit8 v24, v4, 0x9

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int/lit8 v23, v6, -0x1

    or-int v23, v23, v4

    xor-int v23, v23, v5

    add-int v23, v23, v7

    const v24, -0xbd6ddbc

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x6

    ushr-int/lit8 v24, v2, 0x1a

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int/lit8 v23, v5, -0x1

    or-int v23, v23, v2

    xor-int v23, v23, v4

    add-int v23, v23, v14

    const v24, 0x432aff97

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xa

    ushr-int/lit8 v24, v6, 0x16

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int/lit8 v23, v4, -0x1

    or-int v23, v23, v6

    xor-int v23, v23, v2

    add-int v23, v23, v21

    const v24, -0x546bdc59

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0xf

    ushr-int/lit8 v24, v5, 0x11

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int/lit8 v23, v2, -0x1

    or-int v23, v23, v5

    xor-int v23, v23, v6

    add-int v23, v23, v12

    const v24, -0x36c5fc7

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x15

    ushr-int/lit8 v24, v4, 0xb

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int/lit8 v23, v6, -0x1

    or-int v23, v23, v4

    xor-int v23, v23, v5

    add-int v23, v23, v19

    const v24, 0x655b59c3

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x6

    ushr-int/lit8 v24, v2, 0x1a

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int/lit8 v23, v5, -0x1

    or-int v23, v23, v2

    xor-int v23, v23, v4

    add-int v23, v23, v10

    const v24, -0x70f3336e

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xa

    ushr-int/lit8 v24, v6, 0x16

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int/lit8 v23, v4, -0x1

    or-int v23, v23, v6

    xor-int v23, v23, v2

    add-int v23, v23, v17

    const v24, -0x100b83

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0xf

    ushr-int/lit8 v24, v5, 0x11

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int/lit8 v23, v2, -0x1

    or-int v23, v23, v5

    xor-int v23, v23, v6

    add-int v23, v23, v8

    const v24, -0x7a7ba22f

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x15

    ushr-int/lit8 v24, v4, 0xb

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int/lit8 v23, v6, -0x1

    or-int v23, v23, v4

    xor-int v23, v23, v5

    add-int v23, v23, v15

    const v24, 0x6fa87e4f

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x6

    ushr-int/lit8 v24, v2, 0x1a

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int/lit8 v23, v5, -0x1

    or-int v23, v23, v2

    xor-int v23, v23, v4

    add-int v23, v23, v22

    const v24, -0x1d31920

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xa

    ushr-int/lit8 v24, v6, 0x16

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int/lit8 v23, v4, -0x1

    or-int v23, v23, v6

    xor-int v23, v23, v2

    add-int v23, v23, v13

    const v24, -0x5cfebcec

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0xf

    ushr-int/lit8 v24, v5, 0x11

    or-int v23, v23, v24

    add-int v5, v6, v23

    xor-int/lit8 v23, v2, -0x1

    or-int v23, v23, v5

    xor-int v23, v23, v6

    add-int v23, v23, v20

    const v24, 0x4e0811a1    # 5.7071418E8f

    add-int v23, v23, v24

    add-int v4, v4, v23

    shl-int/lit8 v23, v4, 0x15

    ushr-int/lit8 v24, v4, 0xb

    or-int v23, v23, v24

    add-int v4, v5, v23

    xor-int/lit8 v23, v6, -0x1

    or-int v23, v23, v4

    xor-int v23, v23, v5

    add-int v23, v23, v11

    const v24, -0x8ac817e

    add-int v23, v23, v24

    add-int v2, v2, v23

    shl-int/lit8 v23, v2, 0x6

    ushr-int/lit8 v24, v2, 0x1a

    or-int v23, v23, v24

    add-int v2, v4, v23

    xor-int/lit8 v23, v5, -0x1

    or-int v23, v23, v2

    xor-int v23, v23, v4

    add-int v23, v23, v18

    const v24, -0x42c50dcb

    add-int v23, v23, v24

    add-int v6, v6, v23

    shl-int/lit8 v23, v6, 0xa

    ushr-int/lit8 v24, v6, 0x16

    or-int v23, v23, v24

    add-int v6, v2, v23

    xor-int/lit8 v23, v4, -0x1

    or-int v23, v23, v6

    xor-int v23, v23, v2

    add-int v23, v23, v9

    const v24, 0x2ad7d2bb

    add-int v23, v23, v24

    add-int v5, v5, v23

    shl-int/lit8 v23, v5, 0xf

    ushr-int/lit8 v24, v5, 0x11

    or-int v23, v23, v24

    add-int v5, v6, v23

    add-int v23, v3, v5

    xor-int/lit8 v24, v2, -0x1

    or-int v24, v24, v5

    xor-int v24, v24, v6

    add-int v24, v24, v16

    const v25, -0x14792c6f

    add-int v24, v24, v25

    add-int v3, v24, v4

    .end local v4    # "b":I
    .restart local v3    # "b":I
    shl-int/lit8 v24, v3, 0x15

    ushr-int/lit8 v25, v3, 0xb

    or-int v24, v24, v25

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/b/a;->e:I

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/b/a;->f:I

    move/from16 v23, v0

    add-int v23, v23, v5

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/b/a;->f:I

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/b/a;->g:I

    move/from16 v23, v0

    add-int v23, v23, v6

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/b/a;->g:I

    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/b/a;->d:I

    move/from16 v23, v0

    add-int v23, v23, v2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/a/b/a;->d:I

    .line 504
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 154
    const v0, 0x67452301

    iput v0, p0, Lcom/a/b/a;->d:I

    .line 155
    const v0, -0x10325477

    iput v0, p0, Lcom/a/b/a;->e:I

    .line 156
    const v0, -0x67452302

    iput v0, p0, Lcom/a/b/a;->f:I

    .line 157
    const v0, 0x10325476

    iput v0, p0, Lcom/a/b/a;->g:I

    .line 158
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-super {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a;

    .line 117
    .local v0, "that":Lcom/a/b/a;
    iget-object v1, p0, Lcom/a/b/a;->c:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, v0, Lcom/a/b/a;->c:[B

    .line 118
    return-object v0
.end method

.method public engineDigest([BII)I
    .locals 11
    .param p1, "hashvalue"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3b

    const/16 v9, 0x3a

    const/16 v8, 0x39

    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 298
    if-lt p3, v7, :cond_2

    .line 299
    array-length v2, p1

    sub-int/2addr v2, p2

    if-lt v2, v7, :cond_1

    .line 306
    iget-object v0, p0, Lcom/a/b/a;->c:[B

    .local v0, "buf":[B
    iget v1, p0, Lcom/a/b/a;->b:I

    .local v1, "i":I
    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 309
    packed-switch v1, :pswitch_data_0

    .line 329
    :goto_0
    and-int/lit8 v2, v1, 0x7

    packed-switch v2, :pswitch_data_1

    .line 376
    :goto_1
    add-int/lit8 v1, v1, 0x8

    const/16 v2, 0x34

    if-gt v1, v2, :cond_0

    .line 377
    add-int/lit8 v2, v1, -0x4

    aput-byte v6, v0, v2

    .line 378
    add-int/lit8 v2, v1, -0x3

    aput-byte v6, v0, v2

    .line 379
    add-int/lit8 v2, v1, -0x2

    aput-byte v6, v0, v2

    .line 380
    add-int/lit8 v2, v1, -0x1

    aput-byte v6, v0, v2

    .line 381
    aput-byte v6, v0, v1

    .line 382
    add-int/lit8 v2, v1, 0x1

    aput-byte v6, v0, v2

    .line 383
    add-int/lit8 v2, v1, 0x2

    aput-byte v6, v0, v2

    .line 384
    add-int/lit8 v2, v1, 0x3

    aput-byte v6, v0, v2

    goto :goto_1

    .line 311
    :pswitch_0
    aput-byte v6, v0, v8

    .line 313
    :pswitch_1
    aput-byte v6, v0, v9

    .line 315
    :pswitch_2
    aput-byte v6, v0, v10

    .line 317
    :pswitch_3
    const/16 v2, 0x3c

    aput-byte v6, v0, v2

    .line 319
    :pswitch_4
    const/16 v2, 0x3d

    aput-byte v6, v0, v2

    .line 321
    :pswitch_5
    const/16 v2, 0x3e

    aput-byte v6, v0, v2

    .line 323
    :pswitch_6
    const/16 v2, 0x3f

    aput-byte v6, v0, v2

    .line 325
    :pswitch_7
    invoke-direct {p0, v0, v6}, Lcom/a/b/a;->a([BI)V

    .line 326
    const/4 v1, -0x1

    goto :goto_0

    .line 331
    :pswitch_8
    add-int/lit8 v1, v1, -0x3

    .line 332
    goto :goto_1

    .line 334
    :pswitch_9
    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v2, v1, 0x3

    aput-byte v6, v0, v2

    goto :goto_1

    .line 337
    :pswitch_a
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v1, 0x2

    aput-byte v6, v0, v2

    .line 338
    add-int/lit8 v2, v1, 0x3

    aput-byte v6, v0, v2

    goto :goto_1

    .line 341
    :pswitch_b
    add-int/lit8 v2, v1, 0x1

    aput-byte v6, v0, v2

    .line 342
    add-int/lit8 v2, v1, 0x2

    aput-byte v6, v0, v2

    .line 343
    add-int/lit8 v2, v1, 0x3

    aput-byte v6, v0, v2

    goto :goto_1

    .line 346
    :pswitch_c
    add-int/lit8 v1, v1, 0x1

    aput-byte v6, v0, v1

    .line 347
    add-int/lit8 v2, v1, 0x1

    aput-byte v6, v0, v2

    .line 348
    add-int/lit8 v2, v1, 0x2

    aput-byte v6, v0, v2

    .line 349
    add-int/lit8 v2, v1, 0x3

    aput-byte v6, v0, v2

    goto :goto_1

    .line 352
    :pswitch_d
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, -0x1

    aput-byte v6, v0, v2

    .line 353
    aput-byte v6, v0, v1

    .line 354
    add-int/lit8 v2, v1, 0x1

    aput-byte v6, v0, v2

    .line 355
    add-int/lit8 v2, v1, 0x2

    aput-byte v6, v0, v2

    .line 356
    add-int/lit8 v2, v1, 0x3

    aput-byte v6, v0, v2

    goto/16 :goto_1

    .line 359
    :pswitch_e
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, -0x2

    aput-byte v6, v0, v2

    .line 360
    add-int/lit8 v2, v1, -0x1

    aput-byte v6, v0, v2

    .line 361
    aput-byte v6, v0, v1

    .line 362
    add-int/lit8 v2, v1, 0x1

    aput-byte v6, v0, v2

    .line 363
    add-int/lit8 v2, v1, 0x2

    aput-byte v6, v0, v2

    .line 364
    add-int/lit8 v2, v1, 0x3

    aput-byte v6, v0, v2

    goto/16 :goto_1

    .line 367
    :pswitch_f
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v1, -0x3

    aput-byte v6, v0, v2

    .line 368
    add-int/lit8 v2, v1, -0x2

    aput-byte v6, v0, v2

    .line 369
    add-int/lit8 v2, v1, -0x1

    aput-byte v6, v0, v2

    .line 370
    aput-byte v6, v0, v1

    .line 371
    add-int/lit8 v2, v1, 0x1

    aput-byte v6, v0, v2

    .line 372
    add-int/lit8 v2, v1, 0x2

    aput-byte v6, v0, v2

    .line 373
    add-int/lit8 v2, v1, 0x3

    aput-byte v6, v0, v2

    goto/16 :goto_1

    .line 387
    :cond_0
    const/16 v2, 0x38

    iget-wide v4, p0, Lcom/a/b/a;->a:J

    long-to-int v3, v4

    shl-int/lit8 v1, v3, 0x3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 388
    ushr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    .line 389
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v9

    .line 390
    ushr-int/lit8 v2, v1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v10

    .line 391
    const/16 v2, 0x3c

    iget-wide v4, p0, Lcom/a/b/a;->a:J

    const/16 v3, 0x1d

    ushr-long/2addr v4, v3

    long-to-int v1, v4

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 392
    const/16 v2, 0x3d

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 393
    const/16 v2, 0x3e

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 394
    const/16 v2, 0x3f

    ushr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 395
    invoke-direct {p0, v0, v6}, Lcom/a/b/a;->a([BI)V

    .line 397
    iget v1, p0, Lcom/a/b/a;->d:I

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    .line 398
    add-int/lit8 v2, p2, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 399
    add-int/lit8 v2, p2, 0x2

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 400
    add-int/lit8 v2, p2, 0x3

    ushr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 401
    add-int/lit8 v2, p2, 0x4

    iget v1, p0, Lcom/a/b/a;->e:I

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 402
    add-int/lit8 v2, p2, 0x5

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 403
    add-int/lit8 p2, p2, 0xa

    add-int/lit8 v2, p2, -0x4

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 404
    add-int/lit8 v2, p2, -0x3

    ushr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 405
    add-int/lit8 v2, p2, -0x2

    iget v1, p0, Lcom/a/b/a;->f:I

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 406
    add-int/lit8 v2, p2, -0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 407
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 408
    add-int/lit8 v2, p2, 0x1

    ushr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 409
    add-int/lit8 v2, p2, 0x2

    iget v1, p0, Lcom/a/b/a;->g:I

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 410
    add-int/lit8 v2, p2, 0x3

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 411
    add-int/lit8 v2, p2, 0x4

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 412
    add-int/lit8 v2, p2, 0x5

    ushr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 413
    invoke-virtual {p0}, Lcom/a/b/a;->engineReset()V

    .line 414
    return v7

    .line 416
    .end local v0    # "buf":[B
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/security/DigestException;

    const-string v3, "insufficient space in output buffer to store the digest"

    invoke-direct {v2, v3}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_2
    new-instance v2, Ljava/security/DigestException;

    const-string v3, "partial digests not returned"

    invoke-direct {v2, v3}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 329
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public engineDigest()[B
    .locals 4

    .prologue
    .line 254
    const/16 v2, 0x10

    :try_start_0
    new-array v1, v2, [B

    .line 255
    .local v1, "hashvalue":[B
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lcom/a/b/a;->engineDigest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v1    # "hashvalue":[B
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/security/DigestException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetDigestLength()I
    .locals 1

    .prologue
    .line 272
    const/16 v0, 0x10

    return v0
.end method

.method public engineReset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    iput v4, p0, Lcom/a/b/a;->b:I

    .line 131
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/a/b/a;->a:J

    .line 132
    const/16 v1, 0x3c

    .line 133
    .local v1, "i":I
    iget-object v0, p0, Lcom/a/b/a;->c:[B

    .line 135
    .local v0, "buf":[B
    :cond_0
    add-int/lit8 v2, v1, -0x4

    aput-byte v4, v0, v2

    .line 136
    add-int/lit8 v2, v1, -0x3

    aput-byte v4, v0, v2

    .line 137
    add-int/lit8 v2, v1, -0x2

    aput-byte v4, v0, v2

    .line 138
    add-int/lit8 v2, v1, -0x1

    aput-byte v4, v0, v2

    .line 139
    aput-byte v4, v0, v1

    .line 140
    add-int/lit8 v2, v1, 0x1

    aput-byte v4, v0, v2

    .line 141
    add-int/lit8 v2, v1, 0x2

    aput-byte v4, v0, v2

    .line 142
    add-int/lit8 v2, v1, 0x3

    aput-byte v4, v0, v2

    .line 143
    add-int/lit8 v1, v1, -0x8

    if-gez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/a/b/a;->a()V

    .line 145
    return-void
.end method

.method public engineUpdate(B)V
    .locals 5
    .param p1, "input"    # B

    .prologue
    const/16 v4, 0x3f

    .line 171
    iget-wide v0, p0, Lcom/a/b/a;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/a/b/a;->a:J

    .line 172
    iget v0, p0, Lcom/a/b/a;->b:I

    if-ge v0, v4, :cond_0

    .line 173
    iget-object v0, p0, Lcom/a/b/a;->c:[B

    iget v1, p0, Lcom/a/b/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/b/a;->b:I

    aput-byte p1, v0, v1

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/a/b/a;->c:[B

    aput-byte p1, v0, v4

    .line 177
    iget-object v0, p0, Lcom/a/b/a;->c:[B

    iget v1, p0, Lcom/a/b/a;->b:I

    invoke-direct {p0, v0, v1}, Lcom/a/b/a;->a([BI)V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/a;->b:I

    goto :goto_0
.end method

.method public engineUpdate([BII)V
    .locals 7
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v6, 0x40

    .line 197
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_4

    .line 198
    iget-wide v2, p0, Lcom/a/b/a;->a:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/a/b/a;->a:J

    .line 200
    iget v1, p0, Lcom/a/b/a;->b:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/a/b/a;->b:I

    add-int/2addr v1, p3

    if-lt v1, v6, :cond_0

    .line 202
    iget-object v1, p0, Lcom/a/b/a;->c:[B

    iget v2, p0, Lcom/a/b/a;->b:I

    iget v3, p0, Lcom/a/b/a;->b:I

    rsub-int/lit8 v0, v3, 0x40

    .local v0, "remaining":I
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v1, p0, Lcom/a/b/a;->c:[B

    const/4 v2, 0x0

    iput v2, p0, Lcom/a/b/a;->b:I

    invoke-direct {p0, v1, v2}, Lcom/a/b/a;->a([BI)V

    .line 204
    add-int/2addr p2, v0

    .line 205
    sub-int/2addr p3, v0

    .line 208
    .end local v0    # "remaining":I
    :cond_0
    :goto_0
    const/16 v1, 0x200

    if-lt p3, v1, :cond_1

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/a/b/a;->a([BI)V

    .line 210
    add-int/lit8 v1, p2, 0x40

    invoke-direct {p0, p1, v1}, Lcom/a/b/a;->a([BI)V

    .line 211
    add-int/lit16 v1, p2, 0x80

    invoke-direct {p0, p1, v1}, Lcom/a/b/a;->a([BI)V

    .line 212
    add-int/lit16 v1, p2, 0xc0

    invoke-direct {p0, p1, v1}, Lcom/a/b/a;->a([BI)V

    .line 213
    add-int/lit16 v1, p2, 0x100

    invoke-direct {p0, p1, v1}, Lcom/a/b/a;->a([BI)V

    .line 214
    add-int/lit16 v1, p2, 0x140

    invoke-direct {p0, p1, v1}, Lcom/a/b/a;->a([BI)V

    .line 215
    add-int/lit16 v1, p2, 0x180

    invoke-direct {p0, p1, v1}, Lcom/a/b/a;->a([BI)V

    .line 216
    add-int/lit16 v1, p2, 0x1c0

    invoke-direct {p0, p1, v1}, Lcom/a/b/a;->a([BI)V

    .line 217
    add-int/lit16 p2, p2, 0x200

    .line 218
    add-int/lit16 p3, p3, -0x200

    goto :goto_0

    .line 221
    :cond_1
    :goto_1
    if-lt p3, v6, :cond_2

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/a/b/a;->a([BI)V

    .line 223
    add-int/lit8 p2, p2, 0x40

    .line 224
    add-int/lit8 p3, p3, -0x40

    goto :goto_1

    .line 227
    :cond_2
    if-lez p3, :cond_3

    .line 228
    iget-object v1, p0, Lcom/a/b/a;->c:[B

    iget v2, p0, Lcom/a/b/a;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget v1, p0, Lcom/a/b/a;->b:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/a/b/a;->b:I

    .line 231
    :cond_3
    return-void

    .line 233
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method
