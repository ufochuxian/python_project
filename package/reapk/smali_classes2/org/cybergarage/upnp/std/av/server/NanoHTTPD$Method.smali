.class public final enum Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

.field private static final synthetic ENUM$VALUES:[Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

.field public static final enum GET:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

.field public static final enum HEAD:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

.field public static final enum POST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

.field public static final enum PUT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->GET:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->PUT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->POST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->DELETE:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v6}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->HEAD:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    .line 271
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->GET:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    aput-object v1, v0, v2

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->PUT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    aput-object v1, v0, v3

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->POST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    aput-object v1, v0, v4

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->DELETE:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    aput-object v1, v0, v5

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->HEAD:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    aput-object v1, v0, v6

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->ENUM$VALUES:[Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .locals 5
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->values()[Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 284
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 277
    :cond_1
    aget-object v0, v2, v1

    .line 279
    .local v0, "m":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    return-object v0
.end method

.method public static values()[Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;->ENUM$VALUES:[Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    array-length v1, v0

    new-array v2, v1, [Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Method;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
