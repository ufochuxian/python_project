.class public final Lorg/xwalk/core/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ButtonCompat:[I

.field public static final ButtonCompat_buttonColor:I = 0x0

.field public static final ButtonCompat_buttonRaised:I = 0x1

.field public static final DualControlLayout:[I

.field public static final DualControlLayout_primaryButtonText:I = 0x0

.field public static final DualControlLayout_secondaryButtonText:I = 0x1

.field public static final DualControlLayout_stackedMargin:I = 0x2

.field public static final TextViewWithLeading:[I

.field public static final TextViewWithLeading_leading:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 243
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/xwalk/core/R$styleable;->ButtonCompat:[I

    .line 246
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/xwalk/core/R$styleable;->DualControlLayout:[I

    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04012d

    aput v2, v0, v1

    sput-object v0, Lorg/xwalk/core/R$styleable;->TextViewWithLeading:[I

    return-void

    .line 243
    :array_0
    .array-data 4
        0x7f040050
        0x7f040053
    .end array-data

    .line 246
    :array_1
    .array-data 4
        0x7f04017b
        0x7f0401c4
        0x7f0401e6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
