.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 167
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 168
    .local v2, "noConnectivity":Z
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "reason":Ljava/lang/String;
    const-string v5, "isFailover"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 171
    .local v1, "isFailover":Z
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 172
    .local v0, "currentNetworkInfo":Landroid/net/NetworkInfo;
    const-string v5, "otherNetwork"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 174
    .local v3, "otherNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$1;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->reportBulkTrack()V

    .line 180
    :cond_0
    return-void
.end method
