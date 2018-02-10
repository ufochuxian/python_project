.class public Lcom/jiliguala/niuwa/services/DaemonLauncher;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "EXTRA_TARGET"

.field public static final b:Ljava/lang/String; = "com.jiliguala.niuwa.LAUNCH_ACTIVITY"

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String; = "com.jiliguala.niuwa."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/jiliguala/niuwa/services/DaemonLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/services/DaemonLauncher;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/services/DaemonLauncher;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.jiliguala.niuwa.LAUNCH_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v2, "EXTRA_TARGET"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.jiliguala.niuwa.LAUNCH_ACTIVITY"

    if-ne v0, v3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/DaemonLauncher;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 102
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 103
    const-string v3, "EXTRA_TARGET"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "target":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 105
    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
