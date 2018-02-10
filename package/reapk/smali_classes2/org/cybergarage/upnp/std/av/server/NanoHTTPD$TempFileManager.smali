.class public interface abstract Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TempFileManager"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract createTempFile()Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
