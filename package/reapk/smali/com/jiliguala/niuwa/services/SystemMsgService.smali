.class public Lcom/jiliguala/niuwa/services/SystemMsgService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/services/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/services/SystemMsgService$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1000

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String; = "weak-lock"

.field private static final d:Ljava/lang/String; = "cmd"

.field private static final e:Ljava/lang/String; = "content"


# instance fields
.field private f:Ljava/lang/CharSequence;

.field private g:Lcom/jiliguala/niuwa/services/e;

.field private h:Lcom/jiliguala/niuwa/services/SystemMsgService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/jiliguala/niuwa/services/SystemMsgService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/services/SystemMsgService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/services/SystemMsgService;)Lcom/jiliguala/niuwa/services/e;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/services/SystemMsgService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->g:Lcom/jiliguala/niuwa/services/e;

    return-object v0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 53
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/services/SystemMsgService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 4
    .param p0, "resInt"    # I

    .prologue
    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/services/SystemMsgService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "content"

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jiliguala/niuwa/services/SystemMsgService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v2, "serviceIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    const-string v3, "weak-lock"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/jiliguala/niuwa/services/SystemMsgService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, "myIntent":Landroid/content/Intent;
    invoke-static {p0, v1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    return-void

    .line 66
    .end local v1    # "myIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->f:Ljava/lang/CharSequence;

    .line 121
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->g:Lcom/jiliguala/niuwa/services/e;

    if-eqz v1, :cond_1

    .line 123
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x1000

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->h:Lcom/jiliguala/niuwa/services/SystemMsgService$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/jiliguala/niuwa/services/SystemMsgService$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 128
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    new-instance v1, Lcom/jiliguala/niuwa/services/e;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/jiliguala/niuwa/services/e;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->g:Lcom/jiliguala/niuwa/services/e;

    .line 129
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->g:Lcom/jiliguala/niuwa/services/e;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/services/e;->a(Lcom/jiliguala/niuwa/services/e$a;)V

    .line 130
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->g:Lcom/jiliguala/niuwa/services/e;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/e;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/services/SystemMsgService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "content"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->f:Ljava/lang/CharSequence;

    .line 137
    iput-object v0, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->g:Lcom/jiliguala/niuwa/services/e;

    .line 138
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/jiliguala/niuwa/services/SystemMsgService$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/services/SystemMsgService$a;-><init>(Lcom/jiliguala/niuwa/services/SystemMsgService;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->h:Lcom/jiliguala/niuwa/services/SystemMsgService$a;

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    iput-object v1, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->f:Ljava/lang/CharSequence;

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->g:Lcom/jiliguala/niuwa/services/e;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->g:Lcom/jiliguala/niuwa/services/e;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/services/e;->a(Lcom/jiliguala/niuwa/services/e$a;)V

    .line 90
    iput-object v1, p0, Lcom/jiliguala/niuwa/services/SystemMsgService;->g:Lcom/jiliguala/niuwa/services/e;

    .line 92
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 101
    const-string v1, "content"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/CharSequence;)V

    .line 106
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
