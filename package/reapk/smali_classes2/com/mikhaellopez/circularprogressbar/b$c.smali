.class public final Lcom/mikhaellopez/circularprogressbar/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikhaellopez/circularprogressbar/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final CircularProgressBar:[I

.field public static final CircularProgressBar_cpb_background_progressbar_color:I = 0x0

.field public static final CircularProgressBar_cpb_background_progressbar_width:I = 0x1

.field public static final CircularProgressBar_cpb_progress:I = 0x2

.field public static final CircularProgressBar_cpb_progressbar_color:I = 0x3

.field public static final CircularProgressBar_cpb_progressbar_width:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mikhaellopez/circularprogressbar/b$c;->CircularProgressBar:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040078
        0x7f040079
        0x7f04007a
        0x7f04007b
        0x7f04007c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
