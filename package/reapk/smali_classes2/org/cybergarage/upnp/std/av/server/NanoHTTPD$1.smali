.class Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;


# direct methods
.method constructor <init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;->a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 134
    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;->a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    invoke-static {v5}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->access$0(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 135
    .local v0, "finalAccept":Ljava/net/Socket;
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 136
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 137
    .local v2, "outputStream":Ljava/io/OutputStream;
    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;->a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    invoke-static {v5}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->access$1(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;

    move-result-object v5

    invoke-interface {v5}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManagerFactory;->create()Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;

    move-result-object v4

    .line 138
    .local v4, "tempFileManager":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;

    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;->a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    invoke-direct {v3, v5, v4, v1, v2}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 139
    .local v3, "session":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;
    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;->a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    invoke-static {v5}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->access$2(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;

    move-result-object v5

    new-instance v6, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1$1;

    invoke-direct {v6, p0, v3, v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1$1;-><init>(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;Ljava/net/Socket;)V

    invoke-interface {v5, v6}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$AsyncRunner;->exec(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "finalAccept":Ljava/net/Socket;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "session":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$HTTPSession;
    .end local v4    # "tempFileManager":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;
    :goto_0
    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$1;->a:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;

    invoke-static {v5}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;->access$0(Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    return-void

    .line 153
    :catch_0
    move-exception v5

    goto :goto_0
.end method
