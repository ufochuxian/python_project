.class public final enum Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

.field public static final enum MEDIA_ALL:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

.field public static final enum MEDIA_QIYI:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

.field public static final enum MEDIA_RENDERER:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

.field public static final enum MEDIA_SERVER:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    const-string v1, "MEDIA_QIYI"

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_QIYI:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    .line 17
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    const-string v1, "MEDIA_RENDERER"

    invoke-direct {v0, v1, v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_RENDERER:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    .line 18
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    const-string v1, "MEDIA_SERVER"

    invoke-direct {v0, v1, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_SERVER:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    .line 19
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    const-string v1, "MEDIA_ALL"

    invoke-direct {v0, v1, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_ALL:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_QIYI:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_RENDERER:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_SERVER:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_ALL:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    array-length v1, v0

    new-array v2, v1, [Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
