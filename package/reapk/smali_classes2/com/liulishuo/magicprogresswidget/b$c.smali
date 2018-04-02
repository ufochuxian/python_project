.class public final Lcom/liulishuo/magicprogresswidget/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/magicprogresswidget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final MagicProgressBar:[I

.field public static final MagicProgressBar_mpb_background_color:I = 0x0

.field public static final MagicProgressBar_mpb_fill_color:I = 0x1

.field public static final MagicProgressBar_mpb_flat:I = 0x2

.field public static final MagicProgressBar_mpb_percent:I = 0x3

.field public static final MagicProgressCircle:[I

.field public static final MagicProgressCircle_mpc_default_color:I = 0x0

.field public static final MagicProgressCircle_mpc_end_color:I = 0x1

.field public static final MagicProgressCircle_mpc_percent:I = 0x2

.field public static final MagicProgressCircle_mpc_start_color:I = 0x3

.field public static final MagicProgressCircle_mpc_stroke_width:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressBar:[I

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/liulishuo/magicprogresswidget/b$c;->MagicProgressCircle:[I

    return-void

    .line 27
    nop

    :array_0
    .array-data 4
        0x7f040157
        0x7f040158
        0x7f040159
        0x7f04015a
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x7f04015b
        0x7f04015c
        0x7f04015d
        0x7f04015e
        0x7f04015f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
