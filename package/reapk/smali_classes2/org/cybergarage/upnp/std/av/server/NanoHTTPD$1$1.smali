.class Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;

.field private final synthetic b:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;

.field private final synthetic c:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1$1;->a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;

    iput-object p2, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1$1;->b:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;

    iput-object p3, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1$1;->c:Ljava/net/Socket;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1$1;->b:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;->run()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1$1;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method
