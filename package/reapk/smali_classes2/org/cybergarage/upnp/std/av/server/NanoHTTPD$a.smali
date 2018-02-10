.class Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;


# direct methods
.method private constructor <init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$a;->a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$a;)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$a;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public create()Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;-><init>()V

    return-object v0
.end method
