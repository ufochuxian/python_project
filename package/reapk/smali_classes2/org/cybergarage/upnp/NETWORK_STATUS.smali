.class public final enum Lorg/cybergarage/upnp/NETWORK_STATUS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cybergarage/upnp/NETWORK_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD:Lorg/cybergarage/upnp/NETWORK_STATUS;

.field private static final synthetic ENUM$VALUES:[Lorg/cybergarage/upnp/NETWORK_STATUS;

.field public static final enum OK:Lorg/cybergarage/upnp/NETWORK_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lorg/cybergarage/upnp/NETWORK_STATUS;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/NETWORK_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cybergarage/upnp/NETWORK_STATUS;->OK:Lorg/cybergarage/upnp/NETWORK_STATUS;

    new-instance v0, Lorg/cybergarage/upnp/NETWORK_STATUS;

    const-string v1, "BAD"

    invoke-direct {v0, v1, v3}, Lorg/cybergarage/upnp/NETWORK_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cybergarage/upnp/NETWORK_STATUS;->BAD:Lorg/cybergarage/upnp/NETWORK_STATUS;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/cybergarage/upnp/NETWORK_STATUS;

    sget-object v1, Lorg/cybergarage/upnp/NETWORK_STATUS;->OK:Lorg/cybergarage/upnp/NETWORK_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lorg/cybergarage/upnp/NETWORK_STATUS;->BAD:Lorg/cybergarage/upnp/NETWORK_STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lorg/cybergarage/upnp/NETWORK_STATUS;->ENUM$VALUES:[Lorg/cybergarage/upnp/NETWORK_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cybergarage/upnp/NETWORK_STATUS;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/cybergarage/upnp/NETWORK_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/NETWORK_STATUS;

    return-object v0
.end method

.method public static values()[Lorg/cybergarage/upnp/NETWORK_STATUS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cybergarage/upnp/NETWORK_STATUS;->ENUM$VALUES:[Lorg/cybergarage/upnp/NETWORK_STATUS;

    array-length v1, v0

    new-array v2, v1, [Lorg/cybergarage/upnp/NETWORK_STATUS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
