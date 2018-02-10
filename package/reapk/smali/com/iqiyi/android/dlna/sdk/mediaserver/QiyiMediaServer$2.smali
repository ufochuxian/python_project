.class Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mediaServerRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$2;->a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$2;->a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;

    invoke-static {v0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->access$2(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->restart()Z

    .line 167
    return-void
.end method
