.class public final Lnet/simonvt/numberpicker/b$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final NumberPicker:[I

.field public static final NumberPicker_internalLayout:I = 0x0

.field public static final NumberPicker_internalMaxHeight:I = 0x1

.field public static final NumberPicker_internalMaxWidth:I = 0x2

.field public static final NumberPicker_internalMinHeight:I = 0x3

.field public static final NumberPicker_internalMinWidth:I = 0x4

.field public static final NumberPicker_selectionDivider:I = 0x5

.field public static final NumberPicker_selectionDividerHeight:I = 0x6

.field public static final NumberPicker_selectionDividersDistance:I = 0x7

.field public static final NumberPicker_solidColor:I = 0x8

.field public static final NumberPicker_virtualButtonPressedDrawable:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/simonvt/numberpicker/b$g;->NumberPicker:[I

    return-void

    :array_0
    .array-data 4
        0x7f0400df
        0x7f0400e0
        0x7f0400e1
        0x7f0400e2
        0x7f0400e3
        0x7f0401ce
        0x7f0401cf
        0x7f0401d0
        0x7f0401dd
        0x7f040237
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
