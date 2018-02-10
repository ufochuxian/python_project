.class public Lcom/iqiyi/android/dlna/sdk/SDKVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "2016-09-08-01"

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/SDKVersion;->version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/SDKVersion;->version:Ljava/lang/String;

    return-object v0
.end method
