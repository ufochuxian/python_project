.class Lorg/cybergarage/upnp/std/av/server/MediaServer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cybergarage/upnp/std/av/server/MediaServer;->startWebServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/cybergarage/upnp/std/av/server/MediaServer;


# direct methods
.method constructor <init>(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 379
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-static {v3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->access$0(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 383
    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "host":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-static {v5}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->access$1(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "fullPath":Ljava/lang/String;
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    new-instance v5, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    const/16 v6, 0x1f91

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v2, v6, v7}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;-><init>(Ljava/lang/String;ILjava/io/File;)V

    invoke-static {v3, v5}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->access$2(Lorg/cybergarage/upnp/std/av/server/MediaServer;Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;)V

    .line 386
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-static {v3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->access$3(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    move-result-object v3

    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-static {v5}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->access$4(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->setCDS(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 387
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-static {v3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->access$3(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    move-result-object v3

    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-virtual {v3, v5}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->setMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    .line 388
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;->a:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-static {v3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->access$3(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .end local v1    # "fullPath":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 396
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 379
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
