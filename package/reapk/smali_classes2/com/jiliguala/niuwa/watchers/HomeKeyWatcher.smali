.class public Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;
.super Lcom/jiliguala/niuwa/watchers/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;,
        Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "reason"

.field public static final b:Ljava/lang/String; = "globalactions"

.field public static final c:Ljava/lang/String; = "recentapps"

.field public static final d:Ljava/lang/String; = "homekey"


# instance fields
.field private i:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;

.field private j:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/watchers/a/a;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;)Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->i:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method public a(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;->i:Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$a;

    .line 37
    return-void
.end method

.method protected b()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher$InnerRecevier;-><init>(Lcom/jiliguala/niuwa/watchers/HomeKeyWatcher;)V

    return-object v0
.end method
