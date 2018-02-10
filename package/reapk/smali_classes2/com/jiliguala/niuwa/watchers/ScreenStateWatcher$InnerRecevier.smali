.class public Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;
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
            "Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;)V
    .locals 1
    .param p1, "receiver"    # Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-static {v1}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;)Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-static {v1}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;)Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;->onScreenOff()V

    goto :goto_0

    .line 78
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-static {v1}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;)Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    invoke-static {v1}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;)Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;->onScreenOn()V

    goto :goto_0
.end method
