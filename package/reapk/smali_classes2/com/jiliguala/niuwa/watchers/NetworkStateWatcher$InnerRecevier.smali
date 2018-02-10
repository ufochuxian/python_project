.class public Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerRecevier"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;)V
    .locals 1
    .param p1, "receiver"    # Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v1

    .line 64
    .local v1, "nType":I
    packed-switch v1, :pswitch_data_0

    .line 85
    .end local v1    # "nType":I
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v1    # "nType":I
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-static {v2}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;)Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-static {v2}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;)Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;->onConnectionLost()V

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-static {v2}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;)Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-static {v2}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;)Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;->onWifiConnection()V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-static {v2}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;)Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    invoke-static {v2}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;)Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;->onNoneWifiConnection()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
