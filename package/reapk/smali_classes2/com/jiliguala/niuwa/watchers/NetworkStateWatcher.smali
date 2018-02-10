.class public Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;
.super Lcom/jiliguala/niuwa/watchers/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;,
        Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;
    }
.end annotation


# instance fields
.field private a:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/watchers/a/a;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;)Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;)V
    .locals 0
    .param p1, "networkStateChangeListener"    # Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;->a:Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$a;

    .line 40
    return-void
.end method

.method protected b()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher$InnerRecevier;-><init>(Lcom/jiliguala/niuwa/watchers/NetworkStateWatcher;)V

    return-object v0
.end method
