.class public Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;
.super Lcom/jiliguala/niuwa/watchers/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;,
        Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;
    }
.end annotation


# instance fields
.field private a:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/watchers/a/a;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;)Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;->a:Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$a;

    .line 32
    return-void
.end method

.method protected b()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher$InnerRecevier;-><init>(Lcom/jiliguala/niuwa/watchers/ScreenStateWatcher;)V

    return-object v0
.end method
