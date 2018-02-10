.class public final enum Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

.field public static final enum NO_MEDIA_PRESENT:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

.field public static final enum PAUSED_PLAYBACK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

.field public static final enum PAUSED_RECORDING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

.field public static final enum PLAYING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

.field public static final enum RECORDING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

.field public static final enum STOPPED:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

.field public static final enum TRANSITIONING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->STOPPED:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    .line 7
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->PLAYING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    .line 8
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    const-string v1, "TRANSITIONING"

    invoke-direct {v0, v1, v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->TRANSITIONING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    .line 9
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    const-string v1, "PAUSED_PLAYBACK"

    invoke-direct {v0, v1, v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->PAUSED_PLAYBACK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    .line 10
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    const-string v1, "PAUSED_RECORDING"

    invoke-direct {v0, v1, v7}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->PAUSED_RECORDING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    .line 11
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    const-string v1, "RECORDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->RECORDING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    .line 12
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    const-string v1, "NO_MEDIA_PRESENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->NO_MEDIA_PRESENT:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->STOPPED:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->PLAYING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->TRANSITIONING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->PAUSED_PLAYBACK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->PAUSED_RECORDING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->RECORDING:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->NO_MEDIA_PRESENT:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isState(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v2

    .line 22
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 23
    .local v1, "state":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 24
    .end local v1    # "state":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    array-length v1, v0

    new-array v2, v1, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/TRANSPORT_STATE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
