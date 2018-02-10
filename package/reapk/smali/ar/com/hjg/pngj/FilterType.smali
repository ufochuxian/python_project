.class public final enum Lar/com/hjg/pngj/FilterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lar/com/hjg/pngj/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_AGGRESSIVE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_NONE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_SUB:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_UP:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_VERYAGGRESSIVE:Lar/com/hjg/pngj/FilterType;

.field private static byVal:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lar/com/hjg/pngj/FilterType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 15
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_NONE"

    invoke-direct {v4, v5, v8, v8}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    .line 19
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_SUB"

    invoke-direct {v4, v5, v9, v9}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    .line 23
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_UP"

    invoke-direct {v4, v5, v10, v10}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    .line 27
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_AVERAGE"

    invoke-direct {v4, v5, v11, v11}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    .line 31
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_PAETH"

    invoke-direct {v4, v5, v12, v12}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    .line 35
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_DEFAULT"

    const/4 v6, 0x5

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    .line 39
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_AGGRESSIVE"

    const/4 v6, 0x6

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_AGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    .line 43
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_VERYAGGRESSIVE"

    const/4 v6, 0x7

    const/4 v7, -0x4

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_VERYAGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    .line 47
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_ADAPTIVE_FULL"

    const/16 v6, 0x8

    const/4 v7, -0x4

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

    .line 51
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_ADAPTIVE_MEDIUM"

    const/16 v6, 0x9

    const/4 v7, -0x3

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

    .line 55
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_ADAPTIVE_FAST"

    const/16 v6, 0xa

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

    .line 59
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_SUPER_ADAPTIVE"

    const/16 v6, 0xb

    const/16 v7, -0xa

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

    .line 63
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_PRESERVE"

    const/16 v6, 0xc

    const/16 v7, -0x28

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    .line 67
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_CYCLIC"

    const/16 v6, 0xd

    const/16 v7, -0x32

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

    .line 71
    new-instance v4, Lar/com/hjg/pngj/FilterType;

    const-string v5, "FILTER_UNKNOWN"

    const/16 v6, 0xe

    const/16 v7, -0x64

    invoke-direct {v4, v5, v6, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    .line 11
    const/16 v4, 0xf

    new-array v4, v4, [Lar/com/hjg/pngj/FilterType;

    sget-object v5, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v5, v4, v8

    sget-object v5, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v5, v4, v9

    sget-object v5, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v5, v4, v10

    sget-object v5, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v5, v4, v11

    sget-object v5, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_AGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_VERYAGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    aput-object v6, v4, v5

    sput-object v4, Lar/com/hjg/pngj/FilterType;->$VALUES:[Lar/com/hjg/pngj/FilterType;

    .line 82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lar/com/hjg/pngj/FilterType;->byVal:Ljava/util/HashMap;

    .line 83
    invoke-static {}, Lar/com/hjg/pngj/FilterType;->values()[Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    .local v0, "arr$":[Lar/com/hjg/pngj/FilterType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 84
    .local v1, "ft":Lar/com/hjg/pngj/FilterType;
    sget-object v4, Lar/com/hjg/pngj/FilterType;->byVal:Ljava/util/HashMap;

    iget v5, v1, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "ft":Lar/com/hjg/pngj/FilterType;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lar/com/hjg/pngj/FilterType;->val:I

    .line 77
    return-void
.end method

.method public static getAllStandard()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getAllStandardExceptNone()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x4

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static getAllStandardForFirstRow()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getAllStandardNoneLast()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x5

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getByVal(I)Lar/com/hjg/pngj/FilterType;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 89
    sget-object v0, Lar/com/hjg/pngj/FilterType;->byVal:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public static isAdaptive(Lar/com/hjg/pngj/FilterType;)Z
    .locals 2
    .param p0, "fy"    # Lar/com/hjg/pngj/FilterType;

    .prologue
    .line 102
    iget v0, p0, Lar/com/hjg/pngj/FilterType;->val:I

    const/4 v1, -0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/FilterType;->val:I

    const/4 v1, -0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidStandard(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 94
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidStandard(Lar/com/hjg/pngj/FilterType;)Z
    .locals 1
    .param p0, "fy"    # Lar/com/hjg/pngj/FilterType;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lar/com/hjg/pngj/FilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lar/com/hjg/pngj/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public static values()[Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lar/com/hjg/pngj/FilterType;->$VALUES:[Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v0}, [Lar/com/hjg/pngj/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method
