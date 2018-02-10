.class public Lorg/xbill/DNS/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/xbill/DNS/i;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/i;->b:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/i;->c:I

    .line 27
    return-void
.end method

.method private a(JI)V
    .locals 5
    .param p1, "val"    # J
    .param p3, "bits"    # I

    .prologue
    .line 47
    const-wide/16 v0, 0x1

    .line 48
    .local v0, "max":J
    shl-long/2addr v0, p3

    .line 49
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " out of range for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " bit value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 5
    .param p1, "n"    # I

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v2, p0, Lorg/xbill/DNS/i;->a:[B

    array-length v2, v2

    iget v3, p0, Lorg/xbill/DNS/i;->b:I

    sub-int/2addr v2, v3

    if-lt v2, p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/i;->a:[B

    array-length v2, v2

    mul-int/lit8 v1, v2, 0x2

    .line 61
    .local v1, "newsize":I
    iget v2, p0, Lorg/xbill/DNS/i;->b:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_1

    .line 62
    iget v2, p0, Lorg/xbill/DNS/i;->b:I

    add-int v1, v2, p1

    .line 64
    :cond_1
    new-array v0, v1, [B

    .line 65
    .local v0, "newarray":[B
    iget-object v2, p0, Lorg/xbill/DNS/i;->a:[B

    iget v3, p0, Lorg/xbill/DNS/i;->b:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/xbill/DNS/i;->b:I

    return v0
.end method

.method public a(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 76
    iget v0, p0, Lorg/xbill/DNS/i;->b:I

    if-le p1, v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput p1, p0, Lorg/xbill/DNS/i;->b:I

    .line 81
    return-void
.end method

.method public a(II)V
    .locals 4
    .param p1, "val"    # I
    .param p2, "where"    # I

    .prologue
    .line 134
    int-to-long v2, p1

    const/16 v1, 0x10

    invoke-direct {p0, v2, v3, v1}, Lorg/xbill/DNS/i;->a(JI)V

    .line 135
    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    add-int/lit8 v1, v1, -0x2

    if-le p2, v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot write past end of data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/i;->a:[B

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "where":I
    .local v0, "where":I
    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    .line 139
    iget-object v1, p0, Lorg/xbill/DNS/i;->a:[B

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "where":I
    .restart local p2    # "where":I
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 140
    return-void
.end method

.method public a(J)V
    .locals 7
    .param p1, "val"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 148
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/i;->a(JI)V

    .line 149
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/xbill/DNS/i;->d(I)V

    .line 150
    iget-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/i;->b:I

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 151
    iget-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/i;->b:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 152
    iget-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/i;->b:I

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    iget-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/i;->b:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    return-void
.end method

.method public a([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 175
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/xbill/DNS/i;->a([BII)V

    .line 176
    return-void
.end method

.method public a([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 164
    invoke-direct {p0, p3}, Lorg/xbill/DNS/i;->d(I)V

    .line 165
    iget-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget v0, p0, Lorg/xbill/DNS/i;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/xbill/DNS/i;->b:I

    .line 167
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/xbill/DNS/i;->b:I

    iput v0, p0, Lorg/xbill/DNS/i;->c:I

    .line 90
    return-void
.end method

.method public b(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 110
    int-to-long v0, p1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/i;->a(JI)V

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/i;->d(I)V

    .line 112
    iget-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/i;->b:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 113
    return-void
.end method

.method public b([B)V
    .locals 3
    .param p1, "s"    # [B

    .prologue
    .line 185
    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid counted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/i;->d(I)V

    .line 189
    iget-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/i;->b:I

    array-length v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 190
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/xbill/DNS/i;->a([BII)V

    .line 191
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lorg/xbill/DNS/i;->c:I

    if-gez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget v0, p0, Lorg/xbill/DNS/i;->c:I

    iput v0, p0, Lorg/xbill/DNS/i;->b:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/i;->c:I

    .line 102
    return-void
.end method

.method public c(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 121
    int-to-long v0, p1

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/i;->a(JI)V

    .line 122
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/xbill/DNS/i;->d(I)V

    .line 123
    iget-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/i;->b:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 124
    iget-object v0, p0, Lorg/xbill/DNS/i;->a:[B

    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/i;->b:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    return-void
.end method

.method public d()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iget v1, p0, Lorg/xbill/DNS/i;->b:I

    new-array v0, v1, [B

    .line 199
    .local v0, "out":[B
    iget-object v1, p0, Lorg/xbill/DNS/i;->a:[B

    iget v2, p0, Lorg/xbill/DNS/i;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    return-object v0
.end method
