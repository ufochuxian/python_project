.class public final enum Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

.field private static final synthetic ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

.field public static final enum GET:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

.field public static final enum HEAD:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

.field public static final enum OPTIONS:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

.field public static final enum POST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

.field public static final enum PUT:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1198
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->GET:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->PUT:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->POST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->DELETE:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v7}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->HEAD:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->OPTIONS:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    .line 1196
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->GET:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->PUT:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->POST:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->DELETE:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->HEAD:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->OPTIONS:Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;
    .locals 5
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 1202
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->values()[Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 1209
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 1202
    :cond_1
    aget-object v0, v2, v1

    .line 1204
    .local v0, "m":Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    array-length v1, v0

    new-array v2, v1, [Lcom/iqiyi/android/dlna/sdk/controlpoint/qimohttpserver/NanoHTTPD$Method;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
