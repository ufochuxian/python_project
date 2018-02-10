.class public Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;
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
            "Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;)V
    .locals 1
    .param p1, "receiver"    # Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    .line 67
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-static {v2}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->a(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;)Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-static {v2}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->a(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;)Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;->onHomePressed()V

    goto :goto_0

    .line 84
    :cond_2
    const-string v2, "recentapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    invoke-static {v2}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->a(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;)Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;->onHomeLongPressed()V

    goto :goto_0
.end method
