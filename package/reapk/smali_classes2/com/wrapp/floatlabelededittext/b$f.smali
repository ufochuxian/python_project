.class public final Lcom/wrapp/floatlabelededittext/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wrapp/floatlabelededittext/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final FloatLabeledEditText:[I

.field public static final FloatLabeledEditText_fletBackground:I = 0x0

.field public static final FloatLabeledEditText_fletPadding:I = 0x1

.field public static final FloatLabeledEditText_fletPaddingBottom:I = 0x2

.field public static final FloatLabeledEditText_fletPaddingLeft:I = 0x3

.field public static final FloatLabeledEditText_fletPaddingRight:I = 0x4

.field public static final FloatLabeledEditText_fletPaddingTop:I = 0x5

.field public static final FloatLabeledEditText_fletTextAppearance:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wrapp/floatlabelededittext/b$f;->FloatLabeledEditText:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400ba
        0x7f0400bb
        0x7f0400bc
        0x7f0400bd
        0x7f0400be
        0x7f0400bf
        0x7f0400c0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
