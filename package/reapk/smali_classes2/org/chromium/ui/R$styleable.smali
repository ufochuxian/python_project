.class public final Lorg/chromium/ui/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/R;
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

.field public static final DualControlLayout_primaryButtonText:I = 0x1

.field public static final DualControlLayout_secondaryButtonText:I = 0x2

.field public static final DualControlLayout_stackedMargin:I

.field public static final TextViewWithLeading:[I

.field public static final TextViewWithLeading_leading:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/chromium/ui/R$styleable;->DualControlLayout:[I

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010005

    aput v2, v0, v1

    sput-object v0, Lorg/chromium/ui/R$styleable;->TextViewWithLeading:[I

    return-void

    .line 150
    :array_0
    .array-data 4
        0x7f010003
        0x7f010004
    .end array-data

    .line 153
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
