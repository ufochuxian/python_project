.class Landroid/support/v7/widget/af$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:[Z

.field static final b:[I

.field static final c:[J

.field static final d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    new-array v0, v1, [Z

    sput-object v0, Landroid/support/v7/widget/af$a;->a:[Z

    .line 435
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v7/widget/af$a;->b:[I

    .line 436
    new-array v0, v1, [J

    sput-object v0, Landroid/support/v7/widget/af$a;->c:[J

    .line 437
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v7/widget/af$a;->d:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([III)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 444
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 445
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 446
    .local v2, "mid":I
    aget v3, p0, v2

    .line 448
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 449
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 450
    :cond_0
    if-le v3, p2, :cond_2

    .line 451
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 456
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method
