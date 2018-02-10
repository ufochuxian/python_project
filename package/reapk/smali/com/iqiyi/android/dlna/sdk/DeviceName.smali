.class public Lcom/iqiyi/android/dlna/sdk/DeviceName;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static IQIYI_BOX:I

.field public static IQIYI_DONGLE:I

.field public static IQIYI_DONGLE_V1:I

.field public static IQIYI_DONGLE_V2:I

.field public static IQIYI_OLD_DEVICE:I

.field public static IQIYI_TV:I

.field public static MEDIA_RENDERER:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_OLD_DEVICE:I

    .line 16
    sput v1, Lcom/iqiyi/android/dlna/sdk/DeviceName;->MEDIA_RENDERER:I

    .line 17
    sput v2, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_DONGLE:I

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_BOX:I

    .line 19
    const/4 v0, 0x4

    sput v0, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_TV:I

    .line 22
    sput v1, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_DONGLE_V1:I

    .line 24
    sput v2, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_DONGLE_V2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
