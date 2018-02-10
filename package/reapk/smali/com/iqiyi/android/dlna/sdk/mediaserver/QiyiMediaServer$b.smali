.class Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;->a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 242
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 246
    .local v2, "netState":Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;->a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;

    invoke-static {v3}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->access$0(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V

    .line 259
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "netState":Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    return-void

    .line 250
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "netState":Landroid/net/NetworkInfo$State;
    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer$b;->a:Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;

    invoke-static {v3}, Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;->access$1(Lcom/iqiyi/android/dlna/sdk/mediaserver/QiyiMediaServer;)V

    goto :goto_0
.end method
