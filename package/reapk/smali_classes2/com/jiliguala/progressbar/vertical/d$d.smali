.class public final Lcom/jiliguala/progressbar/vertical/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/progressbar/vertical/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final Themes:[I

.field public static final Themes_VerticalProgressBarStyle:I = 0x0

.field public static final Themes_numberProgressBarStyle:I = 0x1

.field public static final VerticalProgressBar:[I

.field public static final VerticalProgressBar_v_progress_current:I = 0x0

.field public static final VerticalProgressBar_v_progress_max:I = 0x1

.field public static final VerticalProgressBar_v_progress_rect_radius_x:I = 0x2

.field public static final VerticalProgressBar_v_progress_rect_radius_y:I = 0x3

.field public static final VerticalProgressBar_v_progress_text_color:I = 0x4

.field public static final VerticalProgressBar_v_progress_text_offset:I = 0x5

.field public static final VerticalProgressBar_v_progress_text_size:I = 0x6

.field public static final VerticalProgressBar_v_progress_text_visibility:I = 0x7

.field public static final VerticalProgressBar_v_progress_vacant_bar_height:I = 0x8

.field public static final VerticalProgressBar_v_progress_vacant_color:I = 0x9

.field public static final VerticalProgressBar_v_progress_vertical_progress_bar_height:I = 0xa

.field public static final VerticalProgressBar_v_progress_vertical_progress_color:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiliguala/progressbar/vertical/d$d;->Themes:[I

    .line 36
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jiliguala/progressbar/vertical/d$d;->VerticalProgressBar:[I

    return-void

    .line 33
    :array_0
    .array-data 4
        0x7f040001
        0x7f040166
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x7f04022b
        0x7f04022c
        0x7f04022d
        0x7f04022e
        0x7f04022f
        0x7f040230
        0x7f040231
        0x7f040232
        0x7f040233
        0x7f040234
        0x7f040235
        0x7f040236
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
