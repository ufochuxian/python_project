.class public Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFileManager"
.end annotation


# instance fields
.field private final tempFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpdir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/lang/String;

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    .line 432
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 455
    return-void

    .line 445
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;

    .line 449
    .local v0, "file":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;
    :try_start_0
    invoke-interface {v0}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public createTempFile()Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;

    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "tempFile":Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    return-object v0
.end method
