.class public final enum Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

.field private static final synthetic ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

.field public static final enum RenderingControl:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;


# instance fields
.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    const-string v1, "AVTransport"

    const-string v2, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-direct {v0, v1, v3, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    .line 5
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    const-string v1, "RenderingControl"

    const-string v2, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-direct {v0, v1, v4, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->RenderingControl:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->AVTransport:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->RenderingControl:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object p3, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->mTag:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    array-length v1, v0

    new-array v2, v1, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/SERVICE;->mTag:Ljava/lang/String;

    return-object v0
.end method
