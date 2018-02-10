.class public Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFile"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private fstream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "tempdir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const-string v0, "NanoHTTPD-"

    const-string v1, ""

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    .line 473
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    .line 474
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 486
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    return-object v0
.end method
