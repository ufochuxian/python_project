.class public abstract Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$a;,
        Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QiyiMediaServer"


# instance fields
.field private mDefaultRootDir:Ljava/lang/String;

.field private mLocalBinder:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$a;

.field private mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

.field private mWifiStateListener:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .line 44
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$a;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$a;-><init>(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mLocalBinder:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$a;

    .line 46
    const-string v0, "/http"

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mDefaultRootDir:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;-><init>(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mWifiStateListener:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mediaServerStop()V

    return-void
.end method

.method static synthetic access$1(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mediaServerRestart()V

    return-void
.end method

.method static synthetic access$2(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)Lorg/cybergarage/upnp/std/av/server/MediaServer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    return-object v0
.end method

.method private mediaServerInit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->getRootDir()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "rootDir":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mDefaultRootDir:Ljava/lang/String;

    .line 85
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 95
    :cond_1
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-direct {v3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;-><init>()V

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .line 96
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->getWorkingState()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->setWorkingState(I)V

    .line 97
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-virtual {p0, v3}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->setupMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    .line 98
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->setServerRootDir(Ljava/lang/String;)V

    .line 99
    return-void

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    new-instance v3, Ljava/io/IOException;

    const-string v4, "file exists, and it\'s not a directory! "

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private mediaServerRestart()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$2;

    invoke-direct {v1, p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$2;-><init>(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method

.method private mediaServerStart()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$1;

    invoke-direct {v1, p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$1;-><init>(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 157
    return-void
.end method

.method private mediaServerStop()V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$3;

    invoke-direct {v1, p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$3;-><init>(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method

.method private registerWifiStateReceiver()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mWifiStateListener:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;

    invoke-virtual {p0, v1, v0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method private unregisterWifiStateReveiver()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mWifiStateListener:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method


# virtual methods
.method public getMeidaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mMediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    return-object v0
.end method

.method protected abstract getRootDir()Ljava/lang/String;
.end method

.method protected abstract getWorkingState()I
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mLocalBinder:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$a;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mediaServerInit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-direct {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mediaServerStart()V

    .line 73
    invoke-direct {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->registerWifiStateReceiver()V

    .line 75
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 197
    invoke-direct {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->mediaServerStop()V

    .line 198
    invoke-direct {p0}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->unregisterWifiStateReveiver()V

    .line 199
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 210
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected abstract setupMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V
.end method
