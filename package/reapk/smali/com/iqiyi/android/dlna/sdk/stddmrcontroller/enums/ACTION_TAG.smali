.class public final enum Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum GetMediaInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum GetMute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum GetPositionInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum GetTransportInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum GetVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum GetVolumeDBRange:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum Pause:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum Play:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum Seek:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum SetAVTransportURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum SetMute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum SetVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

.field public static final enum Stop:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "Play"

    invoke-direct {v0, v1, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Play:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 5
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Pause:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 6
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "Stop"

    invoke-direct {v0, v1, v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Stop:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 7
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "Seek"

    invoke-direct {v0, v1, v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Seek:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 8
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "SetAVTransportURI"

    invoke-direct {v0, v1, v7}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->SetAVTransportURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 9
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "GetPositionInfo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetPositionInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 10
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "GetTransportInfo"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetTransportInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 11
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "SetMute"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->SetMute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 12
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "GetMute"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetMute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 13
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "SetVolume"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->SetVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 14
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "GetVolume"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 15
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "GetVolumeDBRange"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetVolumeDBRange:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 16
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    const-string v1, "GetMediaInfo"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetMediaInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Play:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Pause:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Stop:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->Seek:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->SetAVTransportURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetPositionInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetTransportInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->SetMute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetMute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->SetVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetVolumeDBRange:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->GetMediaInfo:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    array-length v1, v0

    new-array v2, v1, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_TAG;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
