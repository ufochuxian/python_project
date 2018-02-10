.class Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/iqiyi/android/dlna/sdk/mediaserver/IMediaServerBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$a;->a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigitalMediaServer()Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$a;->a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;

    return-object v0
.end method
