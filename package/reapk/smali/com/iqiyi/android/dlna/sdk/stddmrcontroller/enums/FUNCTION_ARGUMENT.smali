.class public final enum Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

.field public static final enum MediaType:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

.field public static final enum Mute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

.field public static final enum Path:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

.field public static final enum Percentage:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

.field public static final enum PositionInSecond:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

.field public static final enum Title:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;


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
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    const-string v1, "Path"

    invoke-direct {v0, v1, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Path:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    .line 5
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    const-string v1, "Percentage"

    invoke-direct {v0, v1, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Percentage:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    .line 6
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    const-string v1, "PositionInSecond"

    invoke-direct {v0, v1, v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->PositionInSecond:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    .line 7
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    const-string v1, "Mute"

    invoke-direct {v0, v1, v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Mute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    .line 8
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    const-string v1, "Title"

    invoke-direct {v0, v1, v7}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Title:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    .line 9
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    const-string v1, "MediaType"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->MediaType:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Path:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Percentage:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->PositionInSecond:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Mute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->Title:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->MediaType:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    array-length v1, v0

    new-array v2, v1, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
