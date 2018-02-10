.class Lorg/cybergarage/upnp/std/av/server/SimpleWebServer$2;
.super Ljava/io/FileInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;Ljava/io/File;J)V
    .locals 1
    .param p2, "$anonymous0"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer$2;->a:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    iput-wide p3, p0, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer$2;->b:J

    .line 284
    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-wide v0, p0, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer$2;->b:J

    long-to-int v0, v0

    return v0
.end method
