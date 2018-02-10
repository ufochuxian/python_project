.class public Lar/com/hjg/pngj/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/a/f$1;
    }
.end annotation


# static fields
.field public static final a:[D

.field private static final m:D


# instance fields
.field private final b:Lar/com/hjg/pngj/s;

.field private c:D

.field private d:I

.field private e:[D

.field private f:[D

.field private g:[D

.field private h:[I

.field private i:I

.field private j:Z

.field private k:D

.field private l:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lar/com/hjg/pngj/a/f;->a:[D

    .line 33
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lar/com/hjg/pngj/a/f;->m:D

    return-void

    .line 28
    :array_0
    .array-data 8
        0x3fe75c28f5c28f5cL    # 0.73
        0x3ff07ae147ae147bL    # 1.03
        0x3fef0a3d70a3d70aL    # 0.97
        0x3ff1c28f5c28f5c3L    # 1.11
        0x3ff3851eb851eb85L    # 1.22
    .end array-data
.end method

.method public constructor <init>(Lar/com/hjg/pngj/s;)V
    .locals 4
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/s;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lar/com/hjg/pngj/a/f;->c:D

    .line 15
    iput v3, p0, Lar/com/hjg/pngj/a/f;->d:I

    .line 16
    new-array v0, v2, [D

    iput-object v0, p0, Lar/com/hjg/pngj/a/f;->e:[D

    .line 18
    new-array v0, v2, [D

    iput-object v0, p0, Lar/com/hjg/pngj/a/f;->f:[D

    .line 19
    new-array v0, v2, [D

    iput-object v0, p0, Lar/com/hjg/pngj/a/f;->g:[D

    .line 20
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/a/f;->h:[I

    .line 21
    iput v3, p0, Lar/com/hjg/pngj/a/f;->i:I

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/a/f;->j:Z

    .line 23
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lar/com/hjg/pngj/a/f;->k:D

    .line 31
    new-array v0, v2, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lar/com/hjg/pngj/a/f;->l:[D

    .line 36
    iput-object p1, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    .line 37
    return-void

    .line 31
    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method private a(Lar/com/hjg/pngj/FilterType;[B[B[BI)V
    .locals 4
    .param p1, "ftype"    # Lar/com/hjg/pngj/FilterType;
    .param p2, "rowff"    # [B
    .param p3, "rowb"    # [B
    .param p4, "rowbprev"    # [B
    .param p5, "rown"    # I

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 67
    iget-boolean v0, p0, Lar/com/hjg/pngj/a/f;->j:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lar/com/hjg/pngj/a/f;->d()V

    .line 69
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/a/f;->d:I

    if-eq p5, v0, :cond_1

    .line 70
    iget-object v0, p0, Lar/com/hjg/pngj/a/f;->e:[D

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 71
    iget-object v0, p0, Lar/com/hjg/pngj/a/f;->f:[D

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 73
    :cond_1
    iput p5, p0, Lar/com/hjg/pngj/a/f;->d:I

    .line 74
    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/a/f;->a([B)V

    .line 78
    :goto_0
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-ne p1, v0, :cond_3

    .line 79
    iget-object v0, p0, Lar/com/hjg/pngj/a/f;->f:[D

    iget v1, p1, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/a/f;->c()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 82
    :goto_1
    return-void

    .line 77
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lar/com/hjg/pngj/a/f;->a(Lar/com/hjg/pngj/FilterType;[B[B)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/a/f;->e:[D

    iget v1, p1, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/a/f;->b()D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_1
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    iget-object v2, p0, Lar/com/hjg/pngj/a/f;->l:[D

    aget-wide v2, v2, v6

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 41
    sget-object v2, Lar/com/hjg/pngj/a/f;->a:[D

    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->l:[D

    const/4 v4, 0x5

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object v2, p0, Lar/com/hjg/pngj/a/f;->l:[D

    aget-wide v0, v2, v6

    .line 43
    .local v0, "wNone":D
    iget-object v2, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->d:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 44
    const-wide v0, 0x3ff3333333333333L    # 1.2

    .line 49
    :cond_0
    :goto_0
    iget-wide v2, p0, Lar/com/hjg/pngj/a/f;->k:D

    div-double/2addr v0, v2

    .line 50
    iget-object v2, p0, Lar/com/hjg/pngj/a/f;->l:[D

    aput-wide v0, v2, v6

    .line 52
    .end local v0    # "wNone":D
    :cond_1
    iget-object v2, p0, Lar/com/hjg/pngj/a/f;->g:[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 53
    const/4 v2, 0x1

    iput-boolean v2, p0, Lar/com/hjg/pngj/a/f;->j:Z

    .line 54
    return-void

    .line 45
    .restart local v0    # "wNone":D
    :cond_2
    iget-object v2, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget-boolean v2, v2, Lar/com/hjg/pngj/s;->f:Z

    if-eqz v2, :cond_3

    .line 46
    const-wide v0, 0x3fe999999999999aL    # 0.8

    goto :goto_0

    .line 47
    :cond_3
    iget-object v2, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget-boolean v2, v2, Lar/com/hjg/pngj/s;->h:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v2, v2, Lar/com/hjg/pngj/s;->d:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 48
    :cond_4
    const-wide v0, 0x3fd999999999999aL    # 0.4

    goto :goto_0
.end method


# virtual methods
.method public a()Lar/com/hjg/pngj/FilterType;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "fi":I
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .local v4, "vali":D
    const-wide/16 v2, 0x0

    .line 88
    .local v2, "val":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x5

    if-ge v1, v6, :cond_2

    .line 89
    iget-object v6, p0, Lar/com/hjg/pngj/a/f;->e:[D

    aget-wide v6, v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 90
    iget-object v6, p0, Lar/com/hjg/pngj/a/f;->e:[D

    aget-wide v2, v6, v1

    .line 95
    :goto_1
    iget-object v6, p0, Lar/com/hjg/pngj/a/f;->l:[D

    aget-wide v6, v6, v1

    mul-double/2addr v2, v6

    .line 96
    iget-object v6, p0, Lar/com/hjg/pngj/a/f;->g:[D

    aget-wide v6, v6, v1

    iget-wide v8, p0, Lar/com/hjg/pngj/a/f;->c:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lar/com/hjg/pngj/a/f;->c:D

    sub-double v8, v10, v8

    mul-double/2addr v8, v2

    add-double v2, v6, v8

    .line 97
    iget-object v6, p0, Lar/com/hjg/pngj/a/f;->g:[D

    aput-wide v2, v6, v1

    .line 98
    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 99
    move-wide v4, v2

    .line 100
    move v0, v1

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget-object v6, p0, Lar/com/hjg/pngj/a/f;->f:[D

    aget-wide v6, v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    .line 92
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-object v8, p0, Lar/com/hjg/pngj/a/f;->f:[D

    aget-wide v8, v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v6, v10

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v2, v6, v8

    goto :goto_1

    .line 103
    :cond_2
    iput v0, p0, Lar/com/hjg/pngj/a/f;->i:I

    .line 104
    iget v6, p0, Lar/com/hjg/pngj/a/f;->i:I

    invoke-static {v6}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v6

    return-object v6
.end method

.method public a(D)V
    .locals 1
    .param p1, "preferenceForNone"    # D

    .prologue
    .line 179
    iput-wide p1, p0, Lar/com/hjg/pngj/a/f;->k:D

    .line 180
    return-void
.end method

.method public a(Lar/com/hjg/pngj/FilterType;[BI)V
    .locals 6
    .param p1, "ftype"    # Lar/com/hjg/pngj/FilterType;
    .param p2, "rowff"    # [B
    .param p3, "rown"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/a/f;->a(Lar/com/hjg/pngj/FilterType;[B[B[BI)V

    .line 58
    return-void
.end method

.method public final a(Lar/com/hjg/pngj/FilterType;[B[B)V
    .locals 8
    .param p1, "filterType"    # Lar/com/hjg/pngj/FilterType;
    .param p2, "rowb"    # [B
    .param p3, "rowbprev"    # [B

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([II)V

    .line 109
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v1, v3, Lar/com/hjg/pngj/s;->l:I

    .line 110
    .local v1, "imax":I
    sget-object v3, Lar/com/hjg/pngj/a/f$1;->a:[I

    invoke-virtual {p1}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 139
    new-instance v3, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad filter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :pswitch_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_3

    .line 113
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    if-gt v0, v1, :cond_0

    .line 117
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget-byte v4, p2, v0

    aget-byte v5, p3, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v4, v6, v5, v6}, Lar/com/hjg/pngj/x;->a(IIII)I

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_0
    const/4 v2, 0x1

    .local v2, "j":I
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->k:I

    add-int/lit8 v0, v3, 0x1

    :goto_2
    if-gt v0, v1, :cond_3

    .line 119
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget-byte v4, p2, v0

    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p3, v0

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p3, v2

    and-int/lit16 v7, v7, 0xff

    invoke-static {v4, v5, v6, v7}, Lar/com/hjg/pngj/x;->a(IIII)I

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 118
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 123
    .end local v0    # "i":I
    .end local v2    # "j":I
    :pswitch_2
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->k:I

    if-gt v0, v3, :cond_1

    .line 124
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 125
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "j":I
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->k:I

    add-int/lit8 v0, v3, 0x1

    :goto_4
    if-gt v0, v1, :cond_3

    .line 126
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget-byte v4, p2, v0

    aget-byte v5, p2, v2

    sub-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 125
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 129
    .end local v0    # "i":I
    .end local v2    # "j":I
    :pswitch_3
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_5
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->l:I

    if-gt v0, v3, :cond_3

    .line 130
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget-byte v4, p2, v0

    aget-byte v5, p3, v0

    sub-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 133
    .end local v0    # "i":I
    :pswitch_4
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_6
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->k:I

    if-gt v0, v3, :cond_2

    .line 134
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p3, v0

    and-int/lit16 v5, v5, 0xff

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 135
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "j":I
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->k:I

    add-int/lit8 v0, v3, 0x1

    :goto_7
    if-gt v0, v1, :cond_3

    .line 136
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p3, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p2, v2

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 135
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 141
    .end local v2    # "j":I
    :cond_3
    return-void

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lar/com/hjg/pngj/FilterType;[B[BI)V
    .locals 6
    .param p1, "ftype"    # Lar/com/hjg/pngj/FilterType;
    .param p2, "rowb"    # [B
    .param p3, "rowbprev"    # [B
    .param p4, "rown"    # I

    .prologue
    .line 62
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/a/f;->a(Lar/com/hjg/pngj/FilterType;[B[B[BI)V

    .line 63
    return-void
.end method

.method public a([B)V
    .locals 4
    .param p1, "rowff"    # [B

    .prologue
    .line 144
    iget-object v1, p0, Lar/com/hjg/pngj/a/f;->h:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 145
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v1, v1, Lar/com/hjg/pngj/s;->l:I

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public a([D)V
    .locals 3
    .param p1, "weights"    # [D

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lar/com/hjg/pngj/a/f;->l:[D

    const/4 v1, 0x5

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    return-void
.end method

.method public b()D
    .locals 8

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "s":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x80

    if-ge v0, v3, :cond_0

    .line 152
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget v3, v3, v0

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    const/16 v0, 0x80

    const/16 v1, 0x80

    .local v1, "j":I
    :goto_1
    if-lez v1, :cond_1

    .line 154
    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->h:[I

    aget v3, v3, v0

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 153
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 155
    :cond_1
    int-to-double v4, v2

    iget-object v3, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v3, v3, Lar/com/hjg/pngj/s;->l:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public b(D)V
    .locals 5
    .param p1, "m"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 188
    cmpl-double v0, p1, v2

    if-nez v0, :cond_0

    .line 189
    iput-wide v2, p0, Lar/com/hjg/pngj/a/f;->c:D

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/a/f;->c:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lar/com/hjg/pngj/a/f;->c:D

    goto :goto_0
.end method

.method public final c()D
    .locals 14

    .prologue
    .line 159
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v12, p0, Lar/com/hjg/pngj/a/f;->b:Lar/com/hjg/pngj/s;

    iget v12, v12, Lar/com/hjg/pngj/s;->l:I

    int-to-double v12, v12

    div-double v8, v10, v12

    .line 160
    .local v8, "s":D
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 162
    .local v6, "ls":D
    const-wide/16 v2, 0x0

    .line 163
    .local v2, "h":D
    iget-object v0, p0, Lar/com/hjg/pngj/a/f;->h:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget v5, v0, v1

    .line 164
    .local v5, "x":I
    if-lez v5, :cond_0

    .line 165
    int-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    add-double/2addr v10, v6

    int-to-double v12, v5

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v5    # "x":I
    :cond_1
    sget-wide v10, Lar/com/hjg/pngj/a/f;->m:D

    mul-double/2addr v10, v8

    mul-double/2addr v2, v10

    .line 168
    const-wide/16 v10, 0x0

    cmpg-double v10, v2, v10

    if-gez v10, :cond_2

    .line 169
    const-wide/16 v2, 0x0

    .line 170
    :cond_2
    return-wide v2
.end method
